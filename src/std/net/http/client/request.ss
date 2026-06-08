;;; -*- Gerbil -*-
;;; © vyzo
;;; HTTP client requests
(export (struct-out Request)
        Request-close
        Request-content
        http-request
        http-connect)
(import :std/build-config
        :std/error
        :std/io
        :std/net/ssl
        :std/net/uri
        :std/net/url
        :std/net/address
        ../common/ioutil
        ../common/chunked)
(cond-expand
  (config-have-zlib
   (import :std/encoding/zlib)))

(defclass Request
  ((url         :- URL)
   (method      :- :string)
   (history     :- :list)
   (status      :- :fixnum)
   (status-line :- :string)
   (headers     :- :list)
   (sock        :- StreamSocket)
   (reader      :- BufferedReader)
   (writer      :- BufferedWriter))
  final: #t
  transparent: #f
  print: (url method status))

;; http connect proxy
;; Maybe lambda (InetAddress) => StreamSocket
(def http-connect
  (make-parameter #f))

(def (http-request (url :  URL)
                   method:           (method   : :string)
                   headers:          (user-headers : :list)      ; AList [string . string]; user supplied headers
                   body:             (body     : :u8vector := '#u8()) ; request body
                   follow-redirects: (follow?  :  :boolean)  ; follow redirects?
                   redirect-history: (history  :  :list)     ; List URL; redirect history
                   max-redirects:    (max-redirects : :fixnum)
                   ssl-context:      (ssl-ctx :~ SSL_CTX? :- :foreign)) ; SSL context for https
  => Request
  ;; first check for redirect loops
  (when (and follow? (member url history))
    (raise-io-error http-request "redirect loop" url: url history: history))
  ;; prepare the request
  (using ((sock (__request-connect url ssl-ctx) : StreamSocket)
          (writer (open-buffered-writer (sock.writer)) : BufferedWriter)
          (reader (open-buffered-reader (sock.reader)) : BufferedReader))
    (try
     ;; write request
     (write-request-line! writer url method)
     (__request-write-headers! writer url user-headers body)
     (write-newline! writer)
     (__request-write-body! writer body)
     (writer.flush)
     ;; read request head
     (let* (((values status status-line)
             (read-status-line! reader))
            (headers
             (read-headers! reader))
            (content-length
             (aget "Content-Length" headers))
            (reader
             (if content-length
               (reader.delimit (string->number content-length))
               reader))
            (transfer-encoding
             (aget "Transfer-Encoding" headers))
            (reader
             (if (and (not content-length)
                      transfer-encoding
                      (string-contains transfer-encoding "chunked"))
               (open-chunked-reader reader)
               reader))
            (content-encoding
             (aget "Content-Encoding" headers))
            (reader
             (if content-encoding
               (cond-expand
                 (config-have-zlib
                  (if (or (string-contains content-encoding "gzip")
                          (string-contains content-encoding "deflate"))
                    (open-inflate-reader reader)
                    reader))
                 (else reader))
               reader))
            ;; rewrap buffer
            (reader (open-buffered-reader reader)))
       (if (and follow? (memv status '(301 302 303 307)))
         (let* (location (aget "Location" headers))
           (unless location
             (raise-io-error http-request "redirect without location"))
           (unless (fxpositive? max-redirects)
             (raise-io-error http-request "too many redirects"))
           (http-request (URL-relative location url)
                         method: method
                         headers: user-headers
                         body: body
                         follow-redirects: #t
                         redirect-history: (cons url history)
                         max-redirects: (fx1- max-redirects)
                         ssl-context: ssl-ctx))
         (Request
          url: url
          method: method
          history: history
          status: status
          status-line: status-line
          headers: headers
          sock: sock
          reader: reader
          writer: writer)))
     (catch (e)
       (ignore-errors (BufferedReader-close reader))
       (ignore-errors (BufferedWriter-close writer))
       (ignore-errors (sock.close))
       (raise e)))))

(def (Request-close (req : Request))
  => :void
  (ignore-errors (req.reader.close))
  (ignore-errors (req.writer.close))
  (ignore-errors (req.sock.close)))

(def (Request-content (req : Request))
  => :u8vector
  (begin0
      (read-all-from-reader req.reader)
    (Request-close req)))

(def (__request-connect (url :- URL) (ssl-ctx :- :foreign))
  => StreamSocket
  (unless (member url.proto '("http" "https"))
    (raise-bad-argument http-request "unknown protocol" url))
  (cond
   ((http-connect)
    => (lambda ((proxy : :procedure))
         (using (sock (proxy (resolve->endpoint url.address))
                      : StreamSocket)
           (if (equal? url.proto "https")
             (ssl-client-upgrade sock
                                 context: ssl-ctx
                                 host: (resolve->host url.address))
             sock))))
   ((equal? url.proto "https")
    (ssl-connect url.address context: ssl-ctx))
   (else
    (tcp-connect (resolve->endpoint url.address)))))

(def __std-headers
  `(("User-Agent" . "Mozilla/5.0 (compatible; gerbil/1.0)")
    ("Connection" . "close")
    ("Accept" . "*/*")
    ,(cond-expand
        (config-have-zlib
         '("Accept-Encoding" . "gzip, deflate, identity"))
        (else
         '("Accept-Encoding" . "identity")))))

(def (__request-write-headers! (writer :- BufferedWriter)
                               (url    :- URL)
                               (user   :- :list)
                               (body   :- :u8vector))
  => :void
  (write-header! writer "Host" url.host)
  (write-headers! writer __std-headers)
  (write-header! writer "Content-Length" (number->string (u8vector-length body)))
  (write-headers! writer user))

(def (__request-write-body! (writer :- BufferedWriter)
                            (body   :- :u8vector))
  => :void
  (when (fx> (u8vector-length body))
    (writer.write body)))
