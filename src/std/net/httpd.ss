;;; -*- Gerbil -*-
;;; (C) vyzo
;;; embedded HTTP/1.1 server
package: std/net

(import :gerbil/gambit/threads
        :gerbil/gambit/exceptions
        :gerbil/gambit/os
        :std/os/socket
        :std/net/server
        :std/net/bio
        :std/actor/message
        :std/actor/proto
        :std/misc/sync
        :std/text/utf8
        :std/logger
        :std/sugar
        :std/error
        :std/pregexp
        (only-in :std/srfi/1 reverse!)
        (only-in :std/srfi/13 string-titlecase!))

(export http-request?
        http-request-method http-request-url http-request-path http-request-params
        http-request-proto http-request-client http-request-headers
        http-request-body
        http-request-timeout-set!
        http-response?
        http-response-write
        http-response-begin http-response-chunk http-response-end
        http-response-force-output
        http-response-timeout-set!
        current-http-server
        start-http-server!
        stop-http-server!
        http-register-handler
        set-httpd-request-timeout!
        set-httpd-response-timeout!
        set-httpd-max-request-headers!
        set-httpd-max-token-length!
        set-httpd-max-request-body-length!)

(defstruct http-request (buf client method url path params proto headers data)
  final: #t)
(defstruct http-response (buf output close?)
  final: #t)

(defproto httpd
  (register path handler)
  event:
  (join thread)
  (shutdown))

(def current-http-server
  (make-parameter #f))

(def (start-http-server! addr . addrs)
  (start-logger!)
  (let* ((socksrv (start-socket-server!))
         (sas (map socket-address (cons addr addrs)))
         (socks (map (cut server-listen socksrv <>) sas)))
    (spawn/group 'http-server http-server socks sas)))

(def (stop-http-server! httpd)
  (!!httpd.shutdown httpd)
  (thread-join! httpd))

;; handler: lambda (request response)
(def (http-register-handler httpd path handler)
  (if (string? path)
    (if (procedure? handler)
      (!!httpd.register httpd path handler)
      (error "Bad handler; expected procedure" handler))
    (error "Bad path; expected string" path)))

;;; implementation
(def (http-server socks sas)
  (def handlers
    (make-sync-hash (make-hash-table)))

  (def acceptors
    (map (lambda (sock sa)
           (spawn/name 'http-server-accept
                       http-server-accept handlers sock (socket-address-family sa)))
         socks sas))

  (def (shutdown!)
    (for-each server-close socks))

  (def (monitor thread)
    (def (join server thread)
      (with-catch void (cut thread-join! thread))
      (!!httpd.join server thread))
    (spawn/name 'http-server-monitor join (current-thread) thread))

  (def (loop)
    (<- ((!httpd.register path handler k)
         (sync-hash-put! handlers path handler)
         (!!value (void) k)
         (loop))
        ((!httpd.shutdown)
         (void))
        ((!httpd.join thread)
         (try
          (thread-join! thread)
          (warning "acceptor thread ~a exited unexpectedly" (thread-name thread))
          (catch (uncaught-exception? e)
            (log-error "acceptor error" (uncaught-exception-reason e)))
          (catch (e)
            (log-error "acceptor error" e)))
         (loop))
        (bogus
         (warning "unexpected message ~a" bogus)
         (loop))))

  (try
   (for-each monitor acceptors)
   (loop)
   (catch (e)
     (log-error "unhandled exception" e)
     (raise e))
   (finally
    (shutdown!))))

(def (http-server-accept handlers sock safamily)
  (def cliaddr (make-socket-address safamily))
  (while #t
    (try
     (let (clisock (server-accept sock cliaddr))
       (spawn/name 'http-request-handler
                   http-request-handler handlers clisock (socket-address->address cliaddr)))
     (catch (os-exception? e)
       (log-error "error accepting connection" e)))))


(def (http-request-handler handlers sock addr)
  (def ibuf (open-server-input-buffer sock))
  (def obuf (open-server-output-buffer sock))

  (def (get-handler path)
    (sync-hash-do handlers
      (lambda (ht)
        (let lp ((path path))
          (cond
           ((hash-get ht path) => values)
           ((string-rindex path #\/)
            => (lambda (ix) (lp (substring path 0 ix))))
           (else #f))))))

  (def (loop)
    (let ((req (make-http-request ibuf addr #f #f #f #f #f #f #!void))
          (res (make-http-response obuf #f #f)))

      (set! (server-input-buffer-timeout ibuf)
         request-timeout)
      (set! (server-output-buffer-timeout obuf)
        response-timeout)

      (try
       (read-request! req)
       (catch (timeout-error? e)
         (log-error "request error" e)
         (set! (http-response-close? res) #t)
         (http-response-write res 408 [] #f)
         (raise 'abort))
       (catch (io-error? e)
         (log-error "request error" e)
         (set! (http-response-close? res) #t)
         (http-response-write res 400 [] #f)
         (raise 'abort)))

      (let* ((method  (http-request-method req))
             (path    (http-request-path req))
             (proto   (http-request-proto req))
             (headers (http-request-headers req))
             (close?
              (case proto
                (("HTTP/1.1")
                 (equal? (assget "Connection" headers) "close"))
                (("HTTP/1.0")
                 (not (equal? (assget "Connection" headers) "Keep-Alive")))
                (else #t))))

        (when close?
          (set! (http-response-close? res) #t))

        (cond
         ((not (member proto '("HTTP/1.1" "HTTP/1.0")))
          (http-response-write res 505 [] #f))
         ((not (symbol? method))
          (http-response-write res 501 [] #f))
         ((and (eq? method 'OPTIONS) (equal? path "*"))
          (http-response-write res 200 [] #f))
         ((eq? method 'TRACE)
          (http-response-trace res req))
         ((get-handler path)
          => (lambda (handler)
               (try
                (handler req res)
                (catch (io-error? e)
                  (log-error "request i/o error" e)
                  (unless (http-response-output res)
                    (set! (http-response-close? res) #t)
                    (http-response-write res 500 [] #f))
                  (raise 'abort))
                (catch (e)
                  (log-error "request handler error" e)
                  (if (http-response-output res)
                    ;; if there was output from the handler, the connection
                    ;; is unusable; abort
                    (raise 'abort)
                    (http-response-write res 500 [] #f))))))
         (else
          (http-response-write res 404 [] #f)))

        (unless close?
          (http-request-skip-body req)
          (loop)))))

  (try
   (loop)
   (catch (e)
     (unless (memq e '(abort eof))
       (log-error "unhandled exception" e)
       (raise e))
     e)
   (finally
    (server-close sock))))

;;; handler interface
;; request
(def (http-request-body req)
  (with ((http-request ibuf _ method _ _ _ _ headers data) req)
    (if (void? data)
      (case method
        ((POST PUT)
         (let (data (read-request-body ibuf headers))
           (set! (http-request-data req)
             data)
           data))
        (else
         (http-request-skip-body req)
         #f))
      data)))

(def (http-request-timeout-set! req timeo)
  (with ((http-request ibuf) req)
    (set! (server-input-buffer-timeout ibuf)
      timeo)))

;; response
;; write a full response
(def (http-response-write res status headers body)
  (with ((http-response obuf output close?) res)
    (when output
      (error "duplicate response" res))
    (set! (http-response-output res) 'END)
    (let* ((len
            (cond
             ((u8vector? body)
              (u8vector-length body))
             ((string? body)
              (string-utf8-length body))
             ((not body)
              0)
             (else
              (error "Bad response body; expected string, u8vector, or #f" body))))
           (headers
            (cons (cons "Content-Length" (number->string len)) headers))
           (headers
            (if close?
              (cons '("Connection" . "close") headers)
              headers))
           (headers
            (cons (cons "Date" (http-date)) headers)))
      (write-response-line obuf status)
      (write-response-headers obuf headers)
      (write-crlf obuf)
      (cond
       ((u8vector? body)
        (bio-write-bytes body obuf))
       ((string? body)
        (bio-write-string body obuf)))
      (bio-force-output obuf))))

;; begin a chunked response
(def (http-response-begin res status headers)
  (with ((http-response obuf output close?) res)
    (when output
      (error "duplicate response" res))
    (set! (http-response-output res) 'CHUNK)
    (let* ((headers (cons '("Transfer-Encoding" . "chunked") headers))
           (headers (if close?
                      (cons '("Connection" . "close") headers)
                      headers))
           (headers
            (cons (cons "Date" (http-date)) headers)))
      (write-response-line obuf status)
      (write-response-headers obuf headers)
      (write-crlf obuf))))

;; write the next chunk in the response
(def (http-response-chunk res chunk)
  (with ((http-response obuf output) res)
    (unless (eq? output 'CHUNK)
      (error "illegal response; not writing chunks" res output))
    (write-chunk obuf chunk)))

;; end chunked response
(def (http-response-end res)
  (with ((http-response obuf output) res)
    (unless (eq? output 'CHUNK)
      (error "illegal response; not writing chunks" res output))
    (set! (http-response-output res) 'END)
    (write-last-chunk obuf)
    (bio-force-output obuf)))

;; force output of current chunks
(def (http-response-force-output res)
  (bio-force-output (http-response-buf res)))

(def (http-response-timeout-set! res timeo)
  (with ((http-response obuf) res)
    (set! (server-output-buffer-timeout obuf)
      timeo)))

;;; server internal
(def (http-request-skip-body req)
  (when (void? (http-request-data req))
    (set! (http-request-data req) #f)
    (skip-request-body (http-request-buf req) (http-request-headers req))))

(def (http-response-trace res req)
  (with ((http-request _ _ method url _ _ proto headers) req)
    (let (xbuf (open-chunked-output-buffer))
      (bio-write-string (symbol->string method) xbuf)
      (bio-write-u8 SPC xbuf)
      (bio-write-string url xbuf)
      (bio-write-u8 SPC xbuf)
      (bio-write-string proto xbuf)
      (write-crlf xbuf)
      (write-response-headers xbuf headers)
      (write-crlf xbuf)
      (let (chunks (chunked-output-chunks xbuf))
        (http-response-begin res 200 '(("Content-Type". "message/http")))
        (for-each (cut http-response-chunk res <>) chunks)
        (http-response-end res)))))

(extern http-date)
(begin-foreign
  (namespace ("std/net/httpd#" http-date))
  (define-macro (define-c-lambda id args ret #!optional (name #f))
    (let ((name (or name (##symbol->string id))))
      `(define ,id
         (c-lambda ,args ,ret ,name))))

  (c-declare #<<END-C
#include <time.h>
#include <string.h>
__thread char buf[64];
static char *ffi_http_date () {
 struct tm tm;
 time_t t = time(NULL);
 asctime_r (gmtime_r (&t, &tm), buf);
 // clobber newline
 buf[strlen(buf)-1] = 0;
 return buf;
}
END-C
)
  (define-c-lambda http-date () char-string
    "ffi_http_date"))

;;; i/o helpers
;; limits
(def request-timeout 60)
(def response-timeout 120)
(def max-request-headers 256)
(def max-token-length 1024)
(def max-request-body-length (expt 2 20)) ; 1MB

(defrules defsetter ()
  ((_ (setf id) pred)
   (def (setf val)
     (if (? pred val)
       (set! id val)
       (error "Cannot set httpd parameter; Bad argument" val)))))

(defsetter (set-httpd-request-timeout! request-timeout)
  (or not real? time?))
(defsetter (set-httpd-response-timeout! response-timeout)
  (or not real? time?))
(defsetter (set-httpd-max-request-headers! max-request-headers)
  (and fixnum? fxpositive?))
(defsetter (set-httpd-max-token-length! max-token-length)
  (and fixnum? fxpositive?))
(defsetter (set-httpd-max-request-body-length! max-request-body-length)
  (and fixnum? fxpositive?))

(def (read-request! req)
  (let* ((ibuf (http-request-buf req))
         ((values method url proto) (read-request-line ibuf))
         ((values path params)
          (split-request-url url))
         (headers (read-request-headers ibuf)))
    (set! (http-request-method req)
      method)
    (set! (http-request-url req)
      url)
    (set! (http-request-path req)
      path)
    (set! (http-request-params req)
      params)
    (set! (http-request-proto req)
      proto)
    (set! (http-request-headers req)
      headers)))

(def split-request-url-rx
  (pregexp "^[^/]+://[^/]*(/.*)$"))

(def (split-request-url url)
  (cond
   ((string-index url #\:)              ; absolute uri
    => (lambda (ix)
         (match (pregexp-match split-request-url-rx url)
           ([_ base]
            (split-request-url base))
           (else
            (raise-io-error 'http-read-request "invalid url" url)))))
   ((string-index url #\?)             ; parameters
    => (lambda (ix)
         (values (substring url 0 ix) (substring url (fx1+ ix) (string-length url)))))
   (else
    (values url #f))))

(def (read-request-line ibuf)
  (let* ((_ (read-skip* ibuf CR LF))
         (method (read-token ibuf SPC))
         (_ (read-skip ibuf SPC))
         (url (read-token ibuf SPC))
         (_ (read-skip ibuf SPC))
         (proto (read-token ibuf CR))
         (_ (read-skip ibuf CR LF))
         (method
          (or (hash-get +http-request-methods+ method)
              method)))
    (values method url proto)))

(def (read-request-headers ibuf)
  (let lp ((headers []) (count 0))
    (let (next (bio-peek-u8 ibuf))
      (cond
       ((eof-object? next)
        (raise 'eof))
       ((eq? next CR)
        (read-skip ibuf CR LF)
        (reverse! headers))
       ((fx< count max-request-headers)
        (let (hdr (read-header ibuf))
          (lp (cons hdr headers) (fx1+ count))))
       (else
        (raise-io-error 'http-read-request "too many headers" count))))))

(def (read-header ibuf)
  (let* ((key (read-token ibuf COL))
         (_ (string-titlecase! key))
         (_ (read-skip ibuf COL))
         (_ (read-skip* ibuf SPC))
         (val (read-token ibuf CR))
         (_ (read-skip ibuf CR LF)))
    (cons key val)))

(def (read-token ibuf sep)
  (let lp ((chars []) (count 0))
    (let (next (bio-peek-u8 ibuf))
      (cond
       ((eof-object? next)
        (raise 'eof))
       ((eq? next sep)
        (list->string (reverse! chars)))
       ((fx< count max-token-length)
        (let (char (integer->char (bio-read-u8 ibuf)))
          (lp (cons char chars) (fx1+ count))))
       (else
        (raise-io-error 'http-read-request "Maximum token length exceeded" count))))))

(def (read-skip ibuf . cs)
  (let lp ((rest cs))
    (match rest
      ([c . rest]
       (let (next (bio-read-u8 ibuf))
         (if (eq? c next)
           (lp rest)
           (raise-io-error 'http-read-request "Unexpected character" c))))
      (else
       (void)))))

(def (read-skip* ibuf c . cs)
  (let lp ()
    (let (next (bio-peek-u8 ibuf))
      (when (eq? next c)
        (bio-read-u8 ibuf)
        (unless (null? cs)
          (apply read-skip ibuf cs))
        (lp)))))

(def (read-request-body ibuf headers)
  (def (read-simple-body)
    (cond
     ((assget "Content-Length" headers)
      => (lambda (len)
           (let* ((len (string->number len))
                  (_ (unless (fx<= len max-request-body-length)
                       (raise-io-error 'http-request-body "Maximum body length exceeded" len)))
                  (bytes (make-u8vector len)))
             (bio-read-bytes bytes ibuf)
             bytes)))
     (else #f)))

  (cond
   ((assget "Transfer-Encoding" headers)
    => (lambda (tenc)
         (if (not (equal? "identity" tenc))
           (read-request-chunks ibuf)
           (read-simple-body))))
   (else
    (read-simple-body))))

(def (read-request-chunks ibuf)
  (let lp ((chunks []) (count 0))
    (let* ((next (read-token ibuf CR))
           (_ (read-skip ibuf CR LF))
           (len (string->number next 16)))
      (if (fx> len 0)
        (let (count (fx+ count len))
          (if (fx<= count max-request-body-length)
            (let (chunk (make-u8vector len))
              (bio-read-bytes chunk ibuf)
              (read-skip ibuf CR LF)
              (lp (cons chunk chunks) count))
            (raise-io-error 'http-request-body "Maximum body length exceeded" count len)))
        (append-u8vectors (reverse! chunks))))))

(def (skip-request-body ibuf headers)
  (def (skip-simple-body)
    (alet (clen (assget "Content-Length" headers))
      (let (len (string->number clen))
        (if (fixnum? len)
          (bio-input-skip len ibuf)
          (raise-io-error 'http-request-skip-body "Illegal body length" clen)))))

  (cond
   ((assget "Transfer-Encoding" headers)
    => (lambda (tenc)
         (if (not (equal? "identity" tenc))
           (skip-request-chunks ibuf)
           (skip-simple-body))))
   (else
    (skip-simple-body))))

(def (skip-request-chunks ibuf)
  (let* ((next (read-token ibuf CR))
         (_ (read-skip ibuf CR LF))
         (len (string->number next 16)))
    (when (fx> len 0)
      (bio-input-skip len ibuf)
      (read-skip ibuf CR LF)
      (skip-request-chunks ibuf))))

(def (write-response-line obuf status)
  (let (text
        (cond
         ((hash-get +http-response-codes+ status)
          => values)
         (else "Gremlins!")))
    (bio-write-string "HTTP/1.1" obuf)
    (bio-write-u8 SPC obuf)
    (bio-write-string (number->string status) obuf)
    (bio-write-u8 SPC obuf)
    (bio-write-string text obuf)
    (write-crlf obuf)))

(def (write-response-headers obuf headers)
  (def (write-header hdr)
    (with ([key . val] hdr)
      (if (string? key)
        (if (string? val)
          (begin
            (bio-write-string key obuf)
            (bio-write-u8 COL obuf)
            (bio-write-u8 SPC obuf)
            (bio-write-string val obuf)
            (write-crlf obuf))
          (error "Bad header value; expected string" hdr val))
        (error "Bad header key; expected string" hdr key))))
  (for-each write-header headers))

(def (write-crlf obuf)
  (bio-write-u8 CR obuf)
  (bio-write-u8 LF obuf))

(def (write-chunk obuf chunk)
  (let (len
        (cond
         ((u8vector? chunk)
          (u8vector-length chunk))
         ((string? chunk)
          (string-utf8-length chunk))
         ((not chunk)
          0)
         (else
          (error "Bad chunk; expected u8vector or string" chunk))))
    (when (fx> len 0)
      (bio-write-string (number->string len 16) obuf)
      (write-crlf obuf)
      (cond
       ((u8vector? chunk)
        (bio-write-bytes chunk obuf))
       ((string? chunk)
        (bio-write-string chunk obuf)))
      (write-crlf obuf))))

(def (write-last-chunk obuf)
  (bio-write-u8 C0 obuf)
  (write-crlf obuf)
  (write-crlf obuf))

(def C0 (char->integer #\0))
(def CR (char->integer #\return))
(def LF (char->integer #\linefeed))
(def COL (char->integer #\:))
(def SPC (char->integer #\space))
(def QMARK (char->integer #\?))

(def +http-request-methods+
  (hash ("GET"     'GET)
        ("HEAD"    'HEAD)
        ("POST"    'POST)
        ("PUT"     'PUT)
        ("DELETE"  'DELETE)
        ("TRACE"   'TRACE)
        ("OPTIONS" 'OPTIONS)))

(def +http-response-codes+
  (hash-eq (100 "Continue")
           (101 "Switching Protocols")
           (200 "OK")
           (201 "Created")
           (202 "Accepted")
           (203 "Non-Authoritative Information")
           (204 "No Content")
           (205 "Reset Content")
           (206 "Partial Content")
           (300 "Multiple Choices")
           (301 "Moved Permanently")
           (302 "Found")
           (303 "See Other")
           (304 "Not Modified")
           (305 "Use Proxy")
           (307 "Temporary Redirect")
           (400 "Bad Request")
           (401 "Unauthorized")
           (402 "Payment Required")
           (403 "Forbidden")
           (404 "Not Found")
           (405 "Method Not Allowed")
           (406 "Not Acceptable")
           (407 "Proxy Authentication Required")
           (408 "Request Timeout")
           (409 "Conflict")
           (410 "Gone")
           (411 "Length Required")
           (412 "Precondition Failed")
           (413 "Request Entity Too Large")
           (414 "Request-URI Too Long")
           (415 "Unsupported Media Type")
           (416 "Requested Range Not Satisfiable")
           (417 "Expectation Failed")
           (500 "Internal Server Error")
           (501 "Not Implemented")
           (502 "Bad Gateway")
           (503 "Service Unavailable")
           (504 "Gateway Timeout")
           (505 "HTTP Version Not Supported")))
