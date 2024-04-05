;;; -*- Gerbil -*-
;;; (C) vyzo
;;; embedded HTTP/1.1 server; request handler

(import :gerbil/gambit
        :std/error
        :std/sugar
        :std/io
        :std/io/dummy
        :std/foreign
        :std/text/utf8
        :std/pregexp
        (only-in :std/os/error os-error?)
        ./base
        (for-syntax :std/stxutil
                    :std/misc/string))

(export http-request-handler
        http-request
        http-request?
        http-request-method http-request-url http-request-path http-request-params
        http-request-proto http-request-client http-request-headers
        http-request-body
        http-request-timeout-set!
        http-response?
        http-response-write
        http-response-begin http-response-chunk http-response-end
        http-response-force-output
        http-response-timeout-set!
        http-response-upgrade!
        set-httpd-request-timeout!
        set-httpd-response-timeout!
        set-httpd-max-request-headers!
        set-httpd-max-token-length!
        set-httpd-max-request-body-length!
        set-httpd-input-buffer-size!
        set-httpd-output-buffer-size!
        http-response-write-condition
        condition-handler)

(declare (not safe))

(defstruct http-request (buf sock client method url path params proto headers data)
  final: #t )
(defstruct http-response (buf sock output close?)
  final: #t )

(def (http-request-handler sock get-handler request-logger)
  (using (sock :- StreamSocket)
    (def ibuf (get-input-buffer sock))
    (def obuf (get-output-buffer sock))

    (def (loop)
      (let ((req (make-http-request ibuf sock (sock.peer-address)
                                    #f #f #f #f #f #f #!void))
            (res (make-http-response obuf sock #f #f)))
        (using ((req :- http-request)
                (res :- http-response))
          (sock.set-input-timeout! request-timeout)
          (sock.set-output-timeout! response-timeout)

          (try
           (read-request! req)
           (catch (timeout-error? e)
             (errorf "request error: ~a" e)
             (set! res.close? #t)
             (http-response-write res 408 [] #f)
             (raise 'abort))
           (catch (io-error? e)
             (errorf "request error: ~a" e)
             (set! res.close? #t)
             (http-response-write res 400 [] #f)
             (raise 'abort)))

          (when request-logger
            (request-logger req))

          (let* ((method  req.method)
                 (path    req.path)
                 (proto   req.proto)
                 (headers req.headers)
                 (host    (header-e "Host" headers))
                 (close?
                  (case proto
                    (("HTTP/1.1")
                     (equal? (header-e "Connection" headers) "close"))
                    (("HTTP/1.0")
                     (not (equal? (header-e "Connection" headers) "Keep-Alive")))
                    (else #t))))

            (when close?
              (set! res.close? #t))

            (cond
             ((not (member proto '("HTTP/1.1" "HTTP/1.0")))
              (http-response-write res 505 [] #f))
             ((not (symbol? method))
              (http-response-write res 501 [] #f))
             ((and (eq? method 'OPTIONS) (equal? path "*"))
              (http-response-write res 200 [] #f))
             ((eq? method 'TRACE)
              (http-response-trace res req))
             ((get-handler host path)
              => (lambda (handler)
                   (cond
                    ((procedure? handler)
                     (try
                      (handler req res)
                      (catch (io-error? e)
                        (errorf "request i/o error: ~a" e)
                        (unless res.output
                          (set! res.close? #t)
                          (http-response-write res 500 [] #f))
                        (raise 'abort))
                      (catch (e)
                        (errorf "request handler error: ~a" e)
                        (if res.output
                          ;; if there was output from the handler, the connection
                          ;; is unusable; abort
                          (raise 'abort)
                          (http-response-write res 500 [] #f)))))
                    ((not handler)
                     (http-response-write res 404 [] "Not Found"))
                    (else
                     (warnf "bad request handler: ~a ~a ~a" host path handler)
                     (http-response-write res 500 [] #f)))))
             (else
              (http-response-write res 404 [] #f)))

            (unless (or close? res.close?)
              (http-request-skip-body req)
              (loop))))))

    (try
     (loop)
     (catch (os-error? e)
       (errorf "unhandled exception: ~a" e)
       (raise e))
     (catch (e)
       (unless (memq e '(abort eof))
         (errorf "unhandled exception: ~a" e)
         (raise e))
       e)
     (finally
      (with-catch void (cut &StreamSocket-shutdown sock 'out))
      (sock.close)
      (put-input-buffer! ibuf)
      (put-output-buffer! obuf)))))

;;; handler interface
;; request
(def (http-request-body req)
  (using (req : http-request)
    (if (void? req.data)
      (case req.method
        ((POST PUT)
         (let (data (read-request-body req.buf req.headers))
           (set! req.data data)
           data))
        (else
         (http-request-skip-body req)
         #f))
      req.data)))

(def (http-request-timeout-set! req timeo)
  (using ((req : http-request)
          (sock req.sock :- StreamSocket))
    (sock.set-input-timeout! timeo)))

;; response
;; write a full response
(def (http-response-write res status headers body)
  (using ((res : http-response)
          (obuf res.buf :- BufferedWriter))
    (when res.output
      (error "duplicate response" res))
    (set! res.output 'END)
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
            (if (assoc "Content-Length" headers)
              headers
              (cons (cons "Content-Length" (number->string len)) headers)))
           (headers
            (if res.close?
              (cons '("Connection" . "close") headers)
              headers))
           (headers
            (cons (cons "Date" (http-date)) headers)))
      (write-response-line obuf status)
      (write-response-headers obuf headers)
      (write-crlf obuf)
      (cond
       ((u8vector? body)
        (obuf.write body))
       ((string? body)
        (obuf.write-string body)))
      (obuf.flush))))

;; begin a chunked response
(def (http-response-begin res status headers)
  (using (res : http-response)
    (when res.output
      (error "duplicate response" res))
    (set! res.output 'CHUNK)
    (let* ((headers (cons '("Transfer-Encoding" . "chunked") headers))
           (headers (if res.close?
                      (cons '("Connection" . "close") headers)
                      headers))
           (headers
            (cons (cons "Date" (http-date)) headers)))
      (write-response-line res.buf status)
      (write-response-headers res.buf headers)
      (write-crlf res.buf))))

;; write the next chunk in the response
(def (http-response-chunk res chunk (start 0) (end #f))
  (using (res : http-response)
    (unless (eq? res.output 'CHUNK)
      (error "illegal response; not writing chunks" res res.output))
    (write-chunk res.buf chunk start end)))

;; end chunked response
(def (http-response-end res)
  (using (res : http-response)
    (unless (eq? res.output 'CHUNK)
      (error "illegal response; not writing chunks" res res.output))
    (set! res.output 'END)
    (write-last-chunk res.buf)))

;; force output of current chunks
(def (http-response-force-output res)
  (using ((res : http-response)
          (buf res.buf :- BufferedWriter))
    (buf.flush)))

;; set the response output timeout
(def (http-response-timeout-set! res timeo)
  (using ((res : http-response)
          (sock res.sock :- StreamSocket))
    (sock.set-output-timeout! timeo)))

;; upgrade a connect, with the supplied headers
;; automatically adds Connection: upgrade to the headers
;; returns 3 values: the socket, the reader, and the writer
(def (http-response-upgrade! res headers)
  (using ((res : http-response)
          (buf res.buf :- BufferedWriter)
          (sock res.sock :- StreamSocket))
    (let (headers (cons '("Connection" . "upgrade") headers))
      (write-response-line buf 101)
      (write-response-headers buf headers)
      (write-crlf buf)
      (buf.flush)
      (set! res.close? #t)
      (values res.sock
              (open-buffered-reader (sock.reader))
              buf))))

;;; server internal
(def (header-e key lst)
  (let lp ((rest lst))
    (match rest
      ([hd . rest]
       (if (##string-equal? key (car hd))
         (cdr hd)
         (lp rest)))
      (else #f))))

(def (http-request-skip-body req)
  (using (req :- http-request)
    (when (void? req.data)
      (set! req.data #f)
      (skip-request-body req.buf req.headers))))

(def (http-response-trace res req)
  (using ((res :- http-response)
          (req :- http-request))
    (let (xbuf (open-buffered-writer #f 4096))
      (using (xbuf :- BufferedWriter)
        (xbuf.write-string (symbol->string req.method))
        (xbuf.write-u8-inline SPC)
        (xbuf.write-string req.url)
        (xbuf.write-u8-inline SPC)
        (xbuf.write-string req.proto)
        (write-crlf xbuf)
        (write-response-headers xbuf req.headers)
        (write-crlf xbuf)
        (let (chunks (get-buffer-output-chunks xbuf))
          (http-response-begin res 200 '(("Content-Type". "message/http")))
          (for-each (cut http-response-chunk res <>) chunks)
          (http-response-end res))))))


(begin-ffi (http-date)
  (c-declare #<<END-C
#include <time.h>
#include <string.h>
__thread char date_buf[64];
static char *ffi_httpd_date () {
 struct tm tm;
 time_t t = time(NULL);
 asctime_r (gmtime_r (&t, &tm), date_buf);
 // clobber newline
 date_buf[strlen(date_buf)-1] = 0;
 return date_buf;
}
END-C
)
  (define-c-lambda http-date () char-string
    "ffi_httpd_date"))

;;; i/o helpers
;; limits
(def request-timeout 60)
(def response-timeout 120)
(def max-request-headers 256)
(def max-token-length 1024)
(def max-request-body-length (expt 2 20)) ; 1MB
(def input-buffer-size 8192)
(def output-buffer-size 32768)

(defrule (defsetter (setf id) pred)
  (def (setf val)
    (if (? pred val)
      (set! id val)
      (error "Cannot set httpd parameter; Bad argument" val))))

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
(defsetter (set-httpd-input-buffer-size! input-buffer-size)
  (and fixnum? fxpositive?))
(defsetter (set-httpd-output-buffer-size! output-buffer-size)
  (and fixnum? fxpositive?))

(def (read-request! req)
  (using (req :- http-request)
    (let* ((ibuf req.buf)
           ((values method url proto)
            (read-request-line ibuf))
           ((values path params)
            (split-request-url url))
           (headers (read-request-headers ibuf)))
      (set! req.method method)
      (set! req.url url)
      (set! req.path path)
      (set! req.params params)
      (set! req.proto proto)
      (set! req.headers headers))))

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
            (raise-io-error http-read-request "invalid url" url)))))
   ((string-index url #\?)             ; parameters
    => (lambda (ix)
         (values (substring url 0 ix) (substring url (fx1+ ix) (string-length url)))))
   (else
    (values url #f))))

(def (read-request-line ibuf)
  (let* ((_ (read-skip* ibuf CR LF))
         (method (read-token ibuf SPC))
         (url (read-token ibuf SPC))
         (proto (read-token ibuf CR))
         (_ (read-skip ibuf LF))
         (method
          (or (hash-get +http-request-methods+ method)
              method)))
    (values method url proto)))

(def (read-request-headers ibuf)
  (using (ibuf :- BufferedReader)
    (let (root [#f])
      (let lp ((tl root) (count 0))
        (let (next (ibuf.peek-u8-inline))
          (cond
           ((eof-object? next)
            (raise 'eof))
           ((eq? next CR)
            (read-skip ibuf CR LF)
            (cdr root))
           ((fx< count max-request-headers)
            (let* ((hdr (read-header ibuf))
                   (tl* [hdr]))
              (set! (cdr tl) tl*)
              (lp tl* (fx1+ count))))
           (else
            (raise-io-error http-read-request "too many headers" count))))))))

(def (read-header ibuf)
  (let* ((key (read-token ibuf COL))
         (_ (header-titlecase! key))
         (_ (read-skip* ibuf SPC))
         (val (read-token ibuf CR))
         (_ (read-skip ibuf LF)))
    (cons key val)))

(def (header-titlecase! str)
  (let (len (string-length str))
    (let lp ((i 0) (upcase? #t))
      (if (fx< i len)
        (let* ((char (string-ref str i))
               (int (char->integer char)))
          (cond
           ((fx<= 97 int 122)           ; a-z
            (when upcase?
              (let (char (integer->char (fx- int 32)))
                (string-set! str i char)))
            (lp (fx1+ i) #f))
           ((fx<= 65 int 90)            ; A-Z
            (unless upcase?
              (let (char (integer->char (fx+ int 32)))
                (string-set! str i char)))
            (lp (fx1+ i) #f))
           (else
            (lp (fx1+ i) #t))))
        str))))

(def (read-token ibuf sep)
  (using (ibuf : BufferedReader)
    (def tbuf (get-token-buffer))
    (let lp ((count 0))
      (let (next (ibuf.read-u8-inline))
        (cond
         ((eof-object? next)
          (put-token-buffer! tbuf)
          (raise 'eof))
         ((eq? next sep)
          (let (token (substring tbuf 0 count))
            (put-token-buffer! tbuf)
            token))
         ((fx< count max-token-length)
          (let (char (integer->char next))
            (string-set! tbuf count char)
            (lp (fx1+ count))))
         (else
          (put-token-buffer! tbuf)
          (raise-io-error http-read-request "Maximum token length exceeded" count)))))))

(def* read-skip
  ((ibuf c)
   (let (next (&BufferedReader-read-u8-inline ibuf))
    (unless (eq? c next)
      (raise-io-error http-read-request "Unexpected character" next))))
  ((ibuf c1 c2)
   (read-skip ibuf c1)
   (read-skip ibuf c2)))

(def* read-skip*
  ((ibuf c)
   (let lp ()
     (let (next (&BufferedReader-peek-u8-inline ibuf))
       (when (eq? next c)
         (&BufferedReader-read-u8-inline ibuf)
         (lp)))))
  ((ibuf c1 c2)
   (let lp ()
     (let (next (&BufferedReader-peek-u8-inline ibuf))
       (when (eq? next c1)
         (&BufferedReader-read-u8-inline ibuf)
         (read-skip ibuf c2)
         (lp))))))

(def (read-request-body ibuf headers)
  (def (read-simple-body)
    (cond
     ((header-e "Content-Length" headers)
      => (lambda (len)
           (let* ((len (string->number len))
                  (_ (unless (fx<= len max-request-body-length)
                       (raise-io-error http-request-body "Maximum body length exceeded" len)))
                  (bytes (make-u8vector len)))
             (&BufferedReader-read ibuf bytes 0 len len)
             bytes)))
     (else #f)))

  (cond
   ((header-e "Transfer-Encoding" headers)
    => (lambda (tenc)
         (if (not (equal? "identity" tenc))
           (read-request-chunks ibuf)
           (read-simple-body))))
   (else
    (read-simple-body))))

(def (read-request-chunks ibuf)
  (let (root [#f])
    (let lp ((tl root) (count 0))
      (let* ((next (read-token ibuf CR))
             (_ (read-skip ibuf LF))
             (len (string->number next 16)))
        (if (fx> len 0)
          (let (count (fx+ count len))
            (if (fx<= count max-request-body-length)
              (let (chunk (make-u8vector len))
                (&BufferedReader-read ibuf chunk 0 len len)
                (read-skip ibuf CR LF)
                (let (tl* [chunk])
                  (set! (cdr tl) tl*)
                  (lp tl* count)))
              (raise-io-error http-request-body "Maximum body length exceeded" count len)))
          (u8vector-concatenate (cdr root)))))))

(def (skip-request-body ibuf headers)
  (def (skip-simple-body)
    (alet (clen (header-e "Content-Length" headers))
      (let (len (string->number clen))
        (if (fixnum? len)
          (&BufferedReader-skip ibuf len)
          (raise-io-error http-request-skip-body "Illegal body length" clen)))))

  (cond
   ((header-e "Transfer-Encoding" headers)
    => (lambda (tenc)
         (if (not (equal? "identity" tenc))
           (skip-request-chunks ibuf)
           (skip-simple-body))))
   (else
    (skip-simple-body))))

(def (skip-request-chunks ibuf)
  (using (ibuf : BufferedReader)
    (let* ((next (read-token ibuf CR))
           (_ (read-skip ibuf LF))
           (len (string->number next 16)))
      (when (fx> len 0)
        (ibuf.skip len)
        (read-skip ibuf CR LF)
        (skip-request-chunks ibuf)))))

(def (write-response-line obuf status)
  (using (obuf :- BufferedWriter)
    (let (text
          (cond
           ((hash-get +http-response-codes+ status)
            => values)
           (else "Gremlins!")))
      (obuf.write-string "HTTP/1.1")
      (obuf.write-u8-inline SPC)
      (obuf.write-string (number->string status))
      (obuf.write-u8-inline SPC)
      (obuf.write-string text)
      (write-crlf obuf))))

(def (write-response-headers obuf headers)
  (using (obuf :- BufferedWriter)
    (def (write-header hdr)
      (with ([key . val] hdr)
        (if (string? key)
          (if (string? val)
            (begin
              (obuf.write-string key)
              (obuf.write-u8-inline COL)
              (obuf.write-u8-inline SPC)
              (obuf.write-string val)
              (write-crlf obuf))
            (error "Bad header value; expected string" hdr val))
          (error "Bad header key; expected string" hdr key))))
    (for-each write-header headers)))

(def (write-crlf obuf)
  (using (obuf :- BufferedWriter)
    (obuf.write-u8-inline CR)
    (obuf.write-u8-inline LF)))

(def (write-chunk obuf chunk start end)
  (using (obuf :- BufferedWriter)
    (let* ((end
            (cond
             (end end)
             ((u8vector? chunk)
              (u8vector-length chunk))
             ((string? chunk)
              (string-length chunk))
             ((not chunk) 0)
             (else
              (error "Bad chunk; expected u8vector or string" chunk))))
           (len
            (cond
             ((u8vector? chunk)
              (fx- end start))
             ((string? chunk)
              (string-utf8-length chunk start end))
             (else
              0))))
      (when (fx> len 0)
        (obuf.write-string (number->string len 16))
        (write-crlf obuf)
        (cond
         ((u8vector? chunk)
          (obuf.write chunk start end))
         ((string? chunk)
          (obuf.write-string chunk start end)))
        (write-crlf obuf)
        (obuf.flush)))))

(def (write-last-chunk obuf)
  (using (obuf :- BufferedWriter)
    (obuf.write-u8-inline C0)
    (write-crlf obuf)
    (write-crlf obuf)
    (obuf.flush)))

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

(def +http-response-codes+ (make-hash-table-eq))

(defstruct http-condition (code message))

(defsyntax (defhttp-condition stx)
  (syntax-case stx ()
    ((_ code message-string)
     (stx-string? #'message-string)
     (with-syntax ((condition
                    (syntax-local-introduce
                     (make-symbol
                      (string-substitute-char (stx-e #'message-string) #\- #\space)))))
       #'(begin
           (def condition
             (make-http-condition code (quote message-string)))
           (export condition)
           (hash-put! +http-response-codes+ code (quote message-string)))))))

(defrules defhttp-conditions ()
  ((_ (number message) ...)
   (begin (defhttp-condition number message) ...)))

(defhttp-conditions
  (100 "Continue")
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
  (505 "HTTP Version Not Supported"))

(def (http-response-write-condition res condition)
  (http-response-write res (http-condition-code condition)
                       `(("Content-Type" . "text/plain"))
                       (http-condition-message condition)))

(def (condition-handler handler)
  (lambda (req res)
    (try (handler req res)
     (catch (e)
       (http-response-write-condition
        res (if (http-condition? e) e Internal-Server-Error))))))

;;; buffer management
(extern namespace: #f
  macro-mutex-lock!
  macro-mutex-unlock!
  macro-current-thread)

;; using these gives a 35% boost in microbenchmarks
(defrule (mutex-lock-inline! mx)
  (macro-mutex-lock! mx #f (macro-current-thread)))
(defrule (mutex-unlock-inline! mx)
  (macro-mutex-unlock! mx))

(def +input-buffers+ [])
(def +input-buffers-mx+
  (make-mutex 'httpd-input-buffer))

(def +output-buffers+ [])
(def +output-buffers-mx+
  (make-mutex 'httpd-output-buffer))

(def +token-buffers+ [])
(def +token-buffers-mx+
  (make-mutex 'httpd-token-buffer))

(defrules defgetbuf ()
  ((_ (id . args) buffers mx reset! alloc)
   (def (id . args)
     (declare (not interrupts-enabled))
     (mutex-lock-inline! mx)
     (match buffers
       ([buf . rest]
        (set! buffers rest)
        (mutex-unlock-inline! mx)
        (reset! buf . args)
        buf)
       (else
        (mutex-unlock-inline! mx)
        alloc)))))

(defrules defputbuf ()
  ((_ id buffers mx release!)
   (def (id buf)
     (declare (not interrupts-enabled))
     (release! buf)
     (mutex-lock-inline! mx)
     (set! buffers (cons buf buffers))
     (mutex-unlock-inline! mx))))

(defgetbuf (get-input-buffer sock) +input-buffers+ +input-buffers-mx+
  (lambda (buf sock)  (&BufferedReader-reset! buf (StreamSocket-reader sock)))
  (open-buffered-reader (StreamSocket-reader sock) input-buffer-size))
(defputbuf put-input-buffer! +input-buffers+ +input-buffers-mx+
  (cut &BufferedReader-reset! <> dummy-reader))

(defgetbuf (get-output-buffer sock) +output-buffers+ +output-buffers-mx+
  (lambda (buf sock) (&BufferedWriter-reset! buf (StreamSocket-writer sock)))
  (open-buffered-writer (StreamSocket-writer sock) output-buffer-size))
(defputbuf put-output-buffer! +output-buffers+ +output-buffers-mx+
  (cut &BufferedWriter-reset! <> dummy-writer))

(defgetbuf (get-token-buffer) +token-buffers+ +token-buffers-mx+
  void (make-string max-token-length))
(defputbuf put-token-buffer! +token-buffers+ +token-buffers-mx+
  void)
