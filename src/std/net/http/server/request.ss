;;; -*- Gerbil -*-
;;; © vyzo
;;; http server implementation
(import :std/error
        :std/interface
        :std/io
        :std/io/bio/buffer
        :std/net/url
        :std/net/ssl
        :std/net/address
        :std/encoding/zlib
        :std/string/stringer
        ../common/ioutil
        ../common/chunked
        ./interface
        ./status)
(export new-request
        new-response-handler)

(def (new-request (method : :string)
                  (target : :string)
                  (proto  : :string)
                  (headers : :list)
                  (sock    : StreamSocket)
                  (reader  : BufferedReader))
  => Request
  (let* ((url
          (if (string-contains target "://")
            (URL target)
            (URL-from-components
             (if (is-TLS? sock)
               "https"
               "http")
             (or (aget "Host" headers)
                 (to-string (InetAddress-net (sock.address))))
             target
             (sock.address))))
         (body-reader
          (cond
           ((aget "Content-Length" headers)
            => (lambda (len-str)
                 (let (len (: (string->number len-str) :integer))
                   (open-buffered-reader
                    (delimit-reader reader (: len :integer))))))
           ((equal? (aget "Transfer-Encoding" headers) "chunked")
            (open-buffered-reader
             (open-chunked-reader reader)))
           (else
            (open-buffered-reader '#u8())))))
    (Request url proto method headers body-reader
             (sock.peer-address))))

(defstruct response-handler
  ((ctx              :- RequestContext)
   (acted            :- :symbol)
   (proto            :- :string)
   (request-headers  :- :list)
   (response-headers :- :list)
   (redirect         :- :procedure)
   (chunked          :- Writer)
   (compressed       :- Writer))
  final: #t)

(def (new-response-handler (ctx      : RequestContext)
                           (url      : URL)
                           (headers  : :list)
                           (redirect : :procedure))
  => ResponseHandler
  (ResponseHandler
   (response-handler ctx #f "HTTP/1.1" headers
                     [["Connection" . "close"]]
                     redirect #f #f)))

(def (response-handler-check-act! (self : response-handler) (how : :symbol))
  => :void
  (when self.acted
    (raise-io-error response-handler-act! "already acted on output"
                    acted: self.acted requested: how)))

(def (response-handler-act! (self : response-handler) (how : :symbol))
  => :void
  (response-handler-check-act! self how)1
  (set! self.acted how))

(def compress-threshold 4096)

(implement ResponseHandler response-handler
  (write!
   (lambda (self status headers body)
     (response-handler-act! self 'write!)
     (let* ((body-length (u8vector-length body))
            (compress-method
             (cond
              ((fx<= body-length compress-threshold)
               #f)
              ((aget "Accept-Encoding" self.request-headers)
               => (lambda (accept-encoding)
                    (cond
                     ((string-contains accept-encoding "gzip")
                      "gzip")
                     ((string-contains accept-encoding "deflate")
                      "deflate")
                     (else #f))))
              (else #f))))
       (write-status-line! self.ctx.writer self.proto status.code status.text)
       (write-headers! self.ctx.writer self.response-headers)
       (when (fx> body-length 0)
         (if compress-method
           (begin
             (write-header! self.ctx.writer
                            "Transfer-Encoding"
                            "chunked")
             (write-header! self.ctx.writer
                            "Content-Encoding"
                            compress-method))
           (begin
             (write-header! self.ctx.writer
                            "Content-Length"
                            (number->string (u8vector-length body)))
             (write-header! self.ctx.writer
                            "Content-Encoding"
                            "identity"))))
     (write-headers! self.ctx.writer headers)
     (write-newline! self.ctx.writer)
     (when (fx> body-length 0)
       (if compress-method
         (let* ((chunked
                 (open-chunked-writer self.ctx.writer))
                (compressed
                 (if (equal? compress-method "gzip")
                   (open-deflate-gz-writer chunked)
                   (open-deflate-writer chunked))))
           (unwind-protect
             (Writer-write compressed body)
             (unwind-protect
               (Closer-close compressed)
               (Closer-close chunked))))
         (self.ctx.writer.write body)))
     (self.ctx.writer.close))))
  (begin!
   (lambda (self status headers)
     (response-handler-act! self 'begin!)
     (let* ((accept-encoding
             (aget "Accept-Encoding" self.request-headers))
            (compress-method
             (and accept-encoding
                  (cond
                   ((string-contains accept-encoding "gzip")
                    "gzip")
                   ((string-contains accept-encoding "deflate")
                    "deflate")
                   (else #f)))))
       (write-status-line! self.ctx.writer self.proto status.code status.text)
       (write-headers! self.ctx.writer self.response-headers)
       (write-header! self.ctx.writer
                      "Transfer-Encoding"
                      "chunked")
       (if compress-method
         (write-header! self.ctx.writer
                        "Content-Encoding"
                        compress-method)
         (write-header! self.ctx.writer
                        "Content-Encoding"
                        "identity"))
       (write-headers! self.ctx.writer headers)
       (write-newline! self.ctx.writer)
       (self.ctx.writer.flush)
       (let* ((chunked
               (open-chunked-writer self.ctx.writer))
              (compressed
               (cond
                ((equal? compress-method "gzip")
                 (open-deflate-gz-writer chunked))
                ((equal? compress-method "deflate")
                 (open-deflate-writer chunked))
                (else #f))))
         (set! self.chunked chunked)
         (set! self.compressed compressed)
         (open-buffered-writer
          (or compressed chunked))))))
  (redirect!
   (lambda (self url headers)
     (response-handler-check-act! self 'redirect!)
     (self.redirect url headers)))
  (upgrade!
   (lambda (self headers)
     (response-handler-act! self 'upgrade!)
     (using (status Switching-Protocols : Status)
       (write-status-line! self.ctx.writer self.proto status.code status.text)
       (write-header! self.ctx.writer "Connection" "ugrade")
       (write-headers! self.ctx.writer headers)
       (write-newline! self.ctx.writer)
       (self.ctx.writer.flush)
       self.ctx)))
  (proxy!
   (lambda (self)
     self.ctx)))

(implement Closer response-handler
  (close
   (lambda (self)
     (when self.compressed
       (self.compressed.close))
     (when self.chunked
       (self.chunked.close))
     (self.ctx.writer.close))))
