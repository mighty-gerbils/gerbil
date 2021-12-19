;;; -*- Gerbil -*-
;;; (C) vyzo
;;; HTTP requests for humans; py requests-like http client interface

(import :gerbil/gambit/ports
        :std/error
        :std/format
        :std/net/uri
        :std/pregexp
        :std/srfi/13
        :std/sugar
        :std/misc/list-builder
        :std/text/base64
        :std/text/json
        :std/text/utf8
        :std/text/zlib)
(export
  http-get http-head http-post http-put http-delete http-options
  request? request-url request-status request-status-text
  request-headers
  request-encoding request-encoding-set!
  request-content
  request-text
  request-json
  request-cookies
  request-close
  request-port)

(defstruct request (port url history status status-text headers body encoding)
  id: std/net#request::t
  constructor: :init!)

(defmethod {:init! request}
  (lambda (self port url history)
    (struct-instance-init! self port url history)))

(def (url-target-e url params)
  (if params
    (string-append url "?" (form-url-encode params #f))
    url))

(def (header-string-e str)
  (cond
   ((string? str) str)
   ((symbol? str) (symbol->string str))
   ((keyword? str) (keyword->string str))
   (else
    (error "bad header key" str))))

(def (make-http/1.1-headers headers cookies auth)
  (http-headers-cons! headers
    (chain http/1.1-base-headers
      (http-headers-cons <> (http-headers-cookies (or cookies [])))
      (http-headers-cons <> (http-headers-auth auth)))))

(def http/1.1-base-headers
  '(("User-Agent" . "Mozilla/5.0 (compatible; gerbil/1.0)")
    ("Connection" . "close")
    ("Accept" . "*/*")
    ("Accept-Encoding" . "gzip, deflate, identity")))

(def (http-headers-auth auth)
  (def (basic-auth-header user password)
    (let ((credentials (u8vector->base64-string
                        (with-output-to-u8vector
                         (lambda ()
                           (display user)
                           (display ":")
                           (display password))))))
      (cons "Authorization" (string-append "Basic " credentials))))
  (match auth
    ([basic: user password] [(basic-auth-header user password)])
    (#f                     [])
    (_                      (error "unknown auth value" auth))))

(def (http-headers-cookies cookies)
  (def (fold-e cookie str)
    (with ([key . value] cookie)
      (if (string-empty? str)
        (format "~a=~a" key value)
        (format "~a; ~a=~a" str key value))))
  (if (null? cookies) []
      [(cons "Cookie" (foldr fold-e cookies ""))]))

(def (http-headers-cons new-headers headers)
  (def (fold-e header headers)
    (with ([key . value] header)
      (let (key (string-titlecase (header-string-e key)))
        (if (assoc key headers)
          headers
          (let (value (format "~a" value))
            (cons (cons key value) headers))))))
  (foldr fold-e headers new-headers))

(def (http-headers-cons! new-headers headers)
  (def (fold-e header headers)
    (with ([key . value] header)
      (let ((key (string-titlecase (header-string-e key)))
            (value (format "~a" value)))
        (cond
         ((assoc key headers)
          => (lambda (pair)
               (set! (cdr pair) value)
               headers))
         (else
          (cons (cons key value) headers))))))
  (foldr fold-e headers new-headers))


(def (http-get url
               redirect: (redirect #t)
               headers:  (headers #f)
               cookies:  (cookies #f)
               params:   (params #f)
               data:     (data #f)
               auth:     (auth #f))
  (let ((url (url-target-e url params))
        (headers (make-http/1.1-headers headers cookies auth)))
    (http-request 'GET url headers data [] redirect)))

(def (http-head url
                redirect: (redirect #t)
                headers:  (headers #f)
                cookies:  (cookies #f)
                params:   (params #f)
                data:     (data #f)
                auth:     (auth #f))
  (let ((url (url-target-e url params))
        (headers (make-http/1.1-headers headers cookies auth)))
    (http-request 'HEAD url headers data [] redirect)))

(def (http-post url
                redirect: (redirect #t)
                headers:  (headers #f)
                cookies:  (cookies #f)
                params:   (params #f)
                data:     (data #f)
                auth:     (auth #f))
  (let ((values headers data)
        (if params
          (let (form-data (form-url-encode params #t))
            (values
              (http-headers-cons
               '(("Content-Type" . "application/x-www-form-urlencoded"))
               (make-http/1.1-headers headers cookies auth))
              form-data))
          (values
            (make-http/1.1-headers headers cookies auth)
            data)))
    (http-request 'POST url headers data [] redirect)))

(def (http-put url
               redirect: (redirect #t)
               headers:  (headers #f)
               cookies:  (cookies #f)
               params:   (params #f)
               data:     (data #f)
               auth:     (auth #f))
  (let ((url (url-target-e url params))
        (headers (make-http/1.1-headers headers cookies auth)))
    (http-request 'PUT url headers data [] redirect)))

(def (http-delete url
                  redirect: (redirect #t)
                  headers:  (headers #f)
                  cookies:  (cookies #f)
                  params:   (params #f)
                  data:     (data #f)
                  auth:     (auth #f))
  (let ((url (url-target-e url params))
        (headers (make-http/1.1-headers headers cookies auth)))
    (http-request 'DELETE url headers data [] redirect)))

(def (http-options url
                   redirect: (redirect #t)
                   headers:  (headers #f)
                   cookies:  (cookies #f)
                   params:   (params #f)
                   data:     (data #f)
                   auth:     (auth #f))
  (let ((url (url-target-e url params))
        (headers (make-http/1.1-headers headers cookies auth)))
    (http-request 'OPTIONS url headers data [] redirect)))

(def url-rx
  (pregexp "(?:(https?)://)?([^/:]+)(:[0-9]+)?(/.*)?"))

(def +tls-context+ (delay (make-tls-context)))

(def (http-request method url user-headers body history redirect)
  ;; extra headers:
  ;;  Host: url host
  ;;  Content-Length: binary body length if body is string/bytes
  ;;  Transfer-Encoding: chunk if body is input-port
  (with ([_ scheme host port target]
         (pregexp-match url-rx url))
    (let* ((scheme (or scheme "http"))
           (port
            (cond
             (port
              (string->number
               (substring port 1 (string-length port))))
             ((equal? scheme "https")
              443)
             (else 80)))
           (target (or target "/"))
           (host-header
            (case port
              ((80 443) host)
              (else                     ; non-standard port
               (format "~a:~a" host port))))
           (headers (http-headers-cons [["Host" . host-header]] user-headers))
           (body
            (cond
             ((not body) #f)
             ((u8vector? body) body)
             ((string? body) (string->utf8 body))
             (else
              (error "bad request body" body))))
           (headers
            (if body
              (http-headers-cons! [(cons "Content-Length" (u8vector-length body))]
                                  headers)
              headers))
           (tcp-client-options
            [server-address: host port-number: port eol-encoding: 'cr-lf])
           (tcp-client-options
            (if (equal? scheme "https")
              (cons* tls-context: (force +tls-context+) tcp-client-options)
              tcp-client-options))
           (sock (open-tcp-client tcp-client-options))
           (req (make-request sock url history)))
      (http-request-write sock method target headers body)
      (http-request-read-response! req)
      (cond
       ((and redirect
             (memv (request-status req) '(301 302 303 307))
             (memq method '(GET HEAD))
             (assoc "Location" (request-headers req)))
        => (match <>
             ([_ . new-url]
              (if (member new-url history)
                (error "URL redirection loop" url)
                (begin
                  (request-close req)
                  (http-request method new-url user-headers body (cons url history) #t))))))
       (else req)))))

(def (http-request-write port method target headers body)
  (fprintf port "~a ~a HTTP/1.1~n" method target)
  (for-each (match <> ([key . val](fprintf port "~a: ~a~n" key val)))
            headers)
  (newline port)
  (when body
    (write-subu8vector body 0 (u8vector-length body) port))
  (force-output port))

(def status-line-rx
  (pregexp "([0-9]{3})\\s+(.*)"))

(def header-line-rx
  (pregexp "([^:]+):\\s*(.*)?"))

(def (http-request-read-response! req)
  (let* ((port (request-port req))
         (status-line (read-response-line port)))
    (match (pregexp-match status-line-rx status-line)
      ([_ status status-text]
       (set! (request-status req)
         (string->number status))
       (set! (request-status-text req)
         (string-trim-both status-text))
       (let (root [#f])
         (let lp ((tl root))
           (let (next (read-response-line port))
             (if (string-empty? next)
               (set! (request-headers req)
                 (cdr root))
               (match (pregexp-match header-line-rx next)
                 ([_ key value]
                  (let (tl* [(cons (string-titlecase key) (string-trim-both value))])
                    (set! (cdr tl) tl*)
                    (lp tl*)))
                 (else
                  (raise-io-error 'http-request-read-response!
                                  "Malformed header" port next))))))))
      (else
       (raise-io-error 'http-request-read-response!
                       "malformed status line" port status-line)))))

(def (http-request-read-body port headers)
  (def (length-e headers)
    (cond
     ((assget "Content-Length" headers)
      => string->number)
     (else #f)))

  (cond
   ((assget "Transfer-Encoding" headers)
    => (lambda (tenc)
         (if (not (equal? "identity" tenc))
           (http-request-read-chunked-body port)
           (http-request-read-simple-body port (length-e headers)))))
   (else
    (http-request-read-simple-body port (length-e headers)))))

(def (http-request-read-chunked-body port)
  (let (root [#f])
    (let lp ((tl root))
      (let* ((line (read-response-line port))
             (clen (string->number (car (string-split line #\space)) 16)))
        (if (fxzero? clen)
          (u8vector-concatenate (cdr root))
          (let* ((chunk (make-u8vector clen))
                 (rd    (read-subu8vector chunk 0 clen port)))
            (when (##fx< rd clen)
              (raise-io-error 'http-request-read-body
                              "error reading chunk; premature end of port"))
            (read-response-line port)     ; read chunk trailing CRLF
            (let (tl* [chunk])
              (set! (cdr tl) tl*)
              (lp tl*))))))))

(def (http-request-read-simple-body port length)
  (def (read/length port length)
    (let* ((data (make-u8vector length))
           (rd (read-subu8vector data 0 length port)))
      (if (##fx< rd length)
        (begin
          (u8vector-shrink! data rd)
          data)
        data)))

  (def (read/end port)
    (let (root [#f])
      (let lp ((tl root))
        (let* ((buflen 4096)
               (buf (make-u8vector buflen))
               (rd  (read-subu8vector buf 0 buflen port)))
          (cond
           ((##fxzero? rd)
            (u8vector-concatenate (cdr root)))
           ((##fx< rd buflen)
            (u8vector-shrink! buf rd)
            (set! (cdr tl) [buf])
            (u8vector-concatenate (cdr root)))
           (else
            (let (tl* [buf])
              (set! (cdr tl) tl*)
              (lp tl*))))))))

  (if length
    (read/length port length)
    (read/end port)))

(def cr (char->integer #\return))
(def lf (char->integer #\newline))
(def crlf (u8vector cr lf))

(def (read-response-line port)
  (let (root [#f])
    (let lp ((tl root))
      (let (next (read-u8 port))
        (cond
         ((eof-object? next)
          (raise-io-error 'request-read-response-line
                          "Incomplete response; connection closed" port))
         ((eq? next cr)
          (let (next (read-u8 port))
            (cond
             ((eof-object? next)
              (raise-io-error 'request-read-response-line
                              "Incomplete response; connection closed" port))
             ((eq? next lf)
              (utf8->string (list->u8vector (cdr root))))
             (else
              (let (tl* [cr next])
                (set! (cdr tl) tl*)
                (lp (cdr tl*)))))))
         (else
          (let (tl* [next])
            (set! (cdr tl) tl*)
            (lp tl*))))))))

(def (request-close req)
  (alet (port (request-port req))
    (with-catch void (cut close-port port))
    (set! (request-port req) #f)))

(defmethod {destroy request}
  request-close)

(def (request-content req)
  (cond
   ((request-body req) => values)
   ((request-port req)
    => (lambda (port)
         (let (headers (request-headers req))
           (try
            (let* ((body (http-request-read-body port headers))
                   (body
                    (cond
                     ((assoc "Content-Encoding" headers)
                      => (lambda (enc)
                           (case (cdr enc)
                             (("gzip" "deflate")
                              (uncompress body))
                             (("identity")
                              body)
                             (else
                              (error "Unsupported content encoding" enc)))))
                     (else body))))
              (set! (request-body req) body)
              body)
            (finally
             (close-port port)
             (set! (request-port req) #f))))))
   (else #f)))

(def (request-text req)
  (def (get-text enc)
    (if (eq? enc 'UTF-8)
      (utf8->string (request-content req))
      (bytes->string (request-content req) enc)))
  (cond
   ((request-encoding req) => get-text)
   (else
    (get-text 'UTF-8))))

(def (request-json req)
  (string->json-object (request-text req)))

(def (request-cookies req)
  (with-list-builder (push!)
    (let lp ((rest (request-headers req)))
      (match rest
        ([hd . rest]
         (match hd
           (["Set-Cookie" . cookie]
            (push! cookie)
            (lp rest))
           (else
            (lp rest))))
        (else (void))))))
