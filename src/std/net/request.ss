;;; -*- Gerbil -*-
;;; © vyzo
;;; HTTP requests for humans; py requests-like http client interface
(export
  http-connect
  http-head http-get http-post http-put http-delete http-options http-any
  request? request-url request-status request-status-text
  request-headers
  request-encoding request-encoding-set!
  request-content
  request-text
  request-json
  request-cookies
  request-close
  request-response-bytes
  http-get-content
  (rename: request-sock request-socket)
  (rename: request-reader request-socket-reader)
  (rename: request-writer request-socket-writer))

(import :std/build-config
        :std/error
        :std/sugar
        :std/interface
        :std/contract
        :std/io
        :std/net/ssl
        :std/net/uri
        :std/format
        :std/pregexp
        :std/srfi/13
        :std/misc/timeout
        :std/misc/list-builder
        :std/text/base64
        :std/text/json
        :std/text/utf8)

(cond-expand
  (cofing-enable-zlib
   (import :std/text/zlib)))

;; proxy connect function: lambda (addr) -> StreamSocket
(def http-connect
  (make-parameter #f))

;; the request structure
(defstruct request (sock reader writer url history status status-text headers body encoding)
  constructor: :init!
  final: #t unchecked: #t)

(defmethod {:init! request}
  (lambda (self sock url history)
    (set! (&request-sock self) sock)
    (set! (&request-reader self)
      (open-buffered-reader (StreamSocket-reader sock)))
    (set! (&request-writer self)
      (open-buffered-writer (StreamSocket-writer sock)))
    (set! (&request-url self) url)
    (set! (&request-history self) history)))

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
  `(("User-Agent" . "Mozilla/5.0 (compatible; gerbil/1.0)")
    ("Connection" . "close")
    ("Accept" . "*/*")
    ,(cond-expand
        (config-enable-zlib
         '("Accept-Encoding" . "gzip, deflate, identity"))
        (else
         '("Accept-Encoding" . "identity")))))

(def (http-headers-auth auth)
  (def (basic-auth-header user password)
    (let (credentials
          (u8vector->base64-string
           (string->utf8
            (string-append user ":" password))))
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

(defsyntax (defhttp-method stx)
  (syntax-case stx (=>)
    ((_ (http-method url arg ...) body ...)
     (with-syntax ((redirect    (stx-identifier #'http-method 'redirect))
                   (headers     (stx-identifier #'http-method 'headers))
                   (cookies     (stx-identifier #'http-method 'cookies))
                   (params      (stx-identifier #'http-method 'params))
                   (data        (stx-identifier #'http-method 'data))
                   (auth        (stx-identifier #'http-method 'auth))
                   (ssl-context (stx-identifier #'http-method 'ssl-context))
                   (deadline    (stx-identifier #'http-method 'deadline)))
       #'(def (http-method url arg ...
                           redirect:     (redirect #f)
                           headers:      (headers #f)
                           cookies:      (cookies #f)
                           params:       (params #f)
                           data:         (data #f)
                           auth:         (auth #f)
                           ssl-context:  (ssl-context (default-client-ssl-context))
                           timeout:      (timeo #f))
           (let (deadline (make-timeout timeo #f))
             body ...))))
    ((_ http-method => method)
     (with-syntax ((redirect    (stx-identifier #'http-method 'redirect))
                   (headers     (stx-identifier #'http-method 'headers))
                   (cookies     (stx-identifier #'http-method 'cookies))
                   (params      (stx-identifier #'http-method 'params))
                   (data        (stx-identifier #'http-method 'data))
                   (auth        (stx-identifier #'http-method 'auth))
                   (ssl-context (stx-identifier #'http-method 'ssl-context)))
       #'(def (http-method url
                           redirect:     (redirect #f)
                           headers:      (headers #f)
                           cookies:      (cookies #f)
                           params:       (params #f)
                           data:         (data #f)
                           auth:         (auth #f)
                           ssl-context:  (ssl-context (default-client-ssl-context))
                           timeout:      (timeo #f))
           (http-any 'method url
                     redirect:     redirect
                     headers:     headers
                     cookies:     cookies
                     params:      params
                     data:        data
                     auth:        auth
                     ssl-context:  ssl-context
                     timeout: timeo))))))

(defhttp-method http-get => GET)
(defhttp-method http-head => HEAD)

(defhttp-method (http-post url)
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
    (http-request 'POST url headers data [] redirect ssl-context deadline)))

(defhttp-method http-put => PUT)
(defhttp-method http-delete => DELETE)
(defhttp-method http-options => OPTIONS)

(defhttp-method (http-any method url)
  (let ((url (url-target-e url params))
        (headers (make-http/1.1-headers headers cookies auth)))
    (http-request method url headers data [] redirect ssl-context deadline)))

(def url-rx
  (pregexp "(?:(https?)://)?([^/:]+)(:[0-9]+)?(/.*)?"))

;; the http request main logic
(def (http-request method url
                   user-headers
                   body
                   history
                   redirect
                   ssl-context
                   deadline)
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
           (ssl? (equal? scheme "https"))
           (connect
            (cond
             ((http-connect)            ; proxy function: lambda (addr) -> StreamSocket
              => (lambda (connectf)
                   (if ssl?
                     (lambda (addr)
                       (let (sock (connectf addr))
                         (try
                          (ssl-client-upgrade sock deadline
                                              context: ssl-context
                                              host: host)
                          (catch (e)
                            (Socket-close sock)
                            (raise e)))))
                     connectf)))
             (ssl?
              (lambda (addr)
                (ssl-connect addr deadline
                             context: ssl-context
                             host: host)))
             (else
              (lambda (addr)
                (tcp-connect addr deadline)))))
           (sock (connect (cons host port)))
           (req (make-request sock url history)))
      (http-request-write req method target headers body)
      (http-request-read-response! req)
      (cond
       ((and redirect
             (memv (&request-status req) '(301 302 303 307))
             (memq method '(GET HEAD))
             (assoc "Location" (&request-headers req)))
        => (match <>
             ([_ . new-url]
              (if (member new-url history)
                (error "URL redirection loop" url)
                (begin
                  (request-close req)
                  (http-request method new-url
                                user-headers
                                body
                                (cons url history)
                                #t
                                ssl-context
                                deadline))))))
       (else req)))))

(def (http-request-write req method target headers body)
  (let (writer (&request-writer req))
    (with-interface (writer :- BufferedWriter)
      (writeln writer "~a ~a HTTP/1.1" method target)
      (for-each (match <> ([key . val](writeln writer "~a: ~a" key val)))
                headers)
      (writeln writer)
      (when body
        (.write writer body))
      (.flush writer))))

(def* writeln
  ((writer)
   (with-interface (writer :- BufferedWriter)
     (.write-char-inline writer #\return)
     (.write-char-inline writer #\newline)))
  ((writer fmt . args)
   (let (str (apply format fmt args))
     (with-interface (writer :- BufferedWriter)
       (.write-line writer str '(#\return #\newline))))))

(def status-line-rx
  (pregexp "([0-9]{3})\\s+(.*)"))

(def header-line-rx
  (pregexp "([^:]+):\\s*(.*)?"))

(def (http-request-read-response! req)
  (let (status-line (read-response-line req))
    (match (pregexp-match status-line-rx status-line)
      ([_ status status-text]
       (set! (&request-status req)
         (string->number status))
       (set! (&request-status-text req)
         (string-trim-both status-text))
       (let (root [#f])
         (let lp ((tl root))
           (let (next (read-response-line req))
             (if (string-empty? next)
               (set! (&request-headers req)
                 (cdr root))
               (match (pregexp-match header-line-rx next)
                 ([_ key value]
                  (let (tl* [(cons (string-titlecase key) (string-trim-both value))])
                    (set! (cdr tl) tl*)
                    (lp tl*)))
                 (else
                  (raise-io-error http-request-read-response!
                                  "Malformed header" req next))))))))
      (else
       (raise-io-error http-request-read-response!
                       "malformed status line" req status-line)))))

(def (http-request-read-body req headers)
  (def (length-e headers)
    (cond
     ((assget "Content-Length" headers)
      => string->number)
     (else #f)))

  (cond
   ((assget "Transfer-Encoding" headers)
    => (lambda (tenc)
         (if (not (equal? "identity" tenc))
           (http-request-read-chunked-body req)
           (http-request-read-simple-body req (length-e headers)))))
   (else
    (http-request-read-simple-body req (length-e headers)))))

(def (http-request-read-chunked-body req)
  (let ((reader (&request-reader req))
        (root [#f]))
    (with-interface (reader :- BufferedReader)
      (let lp ((tl root))
        (let* ((line (read-response-line req))
               (clen (string->number (car (string-split line #\space)) 16)))
          (if (fxzero? clen)
            (u8vector-concatenate (cdr root))
            (let (chunk (make-u8vector clen))
              (.read reader chunk 0 clen clen)
              (read-response-line req)  ; read chunk trailing CRLF
              (let (tl* [chunk])
                (set! (cdr tl) tl*)
                (lp tl*)))))))))

(def (http-request-read-simple-body req length)
  (let (reader (&request-reader req))
    (with-interface (reader :- BufferedReader)
      (def (read/length length)
        (let* ((data (make-u8vector length))
               (rd (.read reader data 0 length length)))
          data))

      (def (read/end)
        (let (root [#f])
          (let lp ((tl root))
            (let* ((buflen 4096)
                   (buf (make-u8vector buflen))
                   (rd  (.read reader buf)))
              (cond
               ((##fxzero? rd)
                (u8vector-concatenate (cdr root)))
               (else
                (let (tl* [buf])
                  (set! (cdr tl) tl*)
                  (lp tl*))))))))

      (if length
        (read/length length)
        (read/end)))))

(def cr (char->integer #\return))
(def lf (char->integer #\newline))

(def (read-response-line req)
  (let ((reader (&request-reader req))
        (root [#f]))
    (with-interface (reader :- BufferedReader)
      (let lp ((tl root))
        (let (next (.read-u8-inline reader))
          (cond
           ((eof-object? next)
            (raise-io-error request-read-response-line
                            "Incomplete response; connection closed" req))
           ((eq? next cr)
            (let (next (.read-u8-inline reader))
              (cond
               ((eof-object? next)
                (raise-io-error request-read-response-line
                                "Incomplete response; connection closed" reader))
               ((eq? next lf)
                (utf8->string (list->u8vector (cdr root))))
               (else
                (let (tl* [cr next])
                  (set! (cdr tl) tl*)
                  (lp (cdr tl*)))))))
           (else
            (let (tl* [next])
              (set! (cdr tl) tl*)
              (lp tl*)))))))))

(def (request-close req)
  (alet (sock (request-sock req))
    (with-catch void (cut Socket-close sock))
    (set! (&request-sock req) #f)
    (set! (&request-reader req) #f)
    (set! (&request-writer req) #f)))

(defmethod {destroy request}
  request-close)

(def (request-content req)
  (cond
   ((request-body req))
   ((&request-sock req)
    => (lambda (sock)
         (let (headers (request-headers req))
           (try
            (let* ((body (http-request-read-body req headers))
                   (body
                    (cond-expand
                      (config-enable-zlib
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
                        (else body)))
                      (else body))))
              (set! (&request-body req) body)
              body)
            (finally
             (request-close req))))))
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

(def (request-response-bytes req)
  (try
   (if (eq? (request-status req) 200)
     (request-content req)
     (error "HTTP request failed" (request-status req) (request-status-text req)))
   (finally
    (request-close req))))

(def (http-get-content url)
  (and url (request-response-bytes (http-get url))))
