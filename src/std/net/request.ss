;;; -*- Gerbil -*-
;;; (C) vyzo
;;; HTTP requests for humans; py requests-like http client interface
package: std/net

(import :gerbil/gambit/ports
        :gerbil/gambit/hvectors
        :gerbil/gambit/misc
        :std/sugar
        :std/format
        :std/pregexp
        :std/error
        :std/net/uri
        :std/text/json
        :std/srfi/13
        )

(export
  http-get http-head http-post http-put http-delete http-options
  request? request-url request-status request-status-text
  request-headers
  request-encoding request-encoding-set!
  request-content
  request-text
  request-json
  request-cookies
  )

(defstruct request (port url history status status-text headers body encoding)
  id: std/net#request::t
  constructor: :init!)

(defmethod {:init! request}
  (lambda (self port url history)
    (direct-struct-instance-init! self port url history
                                  #f #f #f #f #f)))

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

(def (make-http/1.1-headers headers cookies)
  (http-headers-cons! headers
    (http-headers-cons http/1.1-base-headers
      (http-headers-cookies cookies))))

(def http/1.1-base-headers
  '(("User-Agent" . "Mozilla/5.0 (compatible; gerbil/1.0)")
    ("Connection" . "close")
    ("Accept" . "*/*")))

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
               params:   (params #f))
  (let ((url (url-target-e url params))
        (headers (make-http/1.1-headers headers cookies)))
    (http-request 'GET url headers #f [] redirect)))

(def (http-head url
                redirect: (redirect #t)
                headers:  (headers #f)
                cookies:  (cookies #f)
                params:   (params #f))
  (let ((url (url-target-e url params))
        (headers (make-http/1.1-headers headers cookies)))
    (http-request 'HEAD url headers #f [] redirect)))

(def (http-post url
                headers:  (headers #f)
                cookies:  (cookies #f)
                params:   (params #f)
                data:     (data #f))
                
  (let ((values headers data)
        (if params
          (let (form-data (form-url-encode params #t))
            (values
              (http-headers-cons
               '(("Content-Type" . "application/x-www-form-urlencoded"))
               (make-http/1.1-headers headers cookies))
              form-data))
          (values
            (make-http/1.1-headers headers cookies)
            data)))
    (http-request 'POST url headers data [] #f)))

(def (http-put url
               headers:  (headers #f)
               cookies:  (cookies #f)
               params:   (params #f)
               data:     (data #f))
  (let ((url (url-target-e url params))
        (headers (make-http/1.1-headers headers cookies)))
    (http-request 'PUT url headers data [] #f)))

(def (http-delete url
                  headers:  (headers #f)
                  cookies:  (cookies #f)
                  params:   (params #f))
  (let ((url (url-target-e url params))
        (headers (make-http/1.1-headers headers cookies)))
    (http-request 'DELETE url #f [] #f)))

(def (http-options url
                   headers:  (headers #f)
                   cookies:  (cookies #f)
                   params:   (params #f))
  (let ((url (url-target-e url params))
        (headers (make-http/1.1-headers headers cookies)))
    (http-request 'HEAD url headers #f [] #f)))

(def url-rx
  (pregexp "(?:(https?)://)?([^/:]+)(:[0-9]+)?(/.*)?"))

(def (http-request method url headers body history redirect)
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
           (headers (http-headers-cons [["Host" . host]] headers))
           (body
            (cond
             ((not body) #f)
             ((u8vector? body) body)
             ((string? body) (string->bytes body))
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
              (cons* tls-context: (make-tls-context) tcp-client-options)
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
                  (close-port sock)
                  (http-request method new-url headers body (cons url history) #t))))))
       (else req)))))

(def (http-request-write port method target headers body)
  (fprintf port "~a ~a HTTP/1.1~n" method target)
  (for-each (match <> ([key . val](fprintf port "~a: ~a~n" key val)))
            headers)
  (newline port)
  (when body
    (write-subu8vector body 0 (u8vector-length body) port)
    (newline port))
  (force-output port))

(def status-line-rx
  (pregexp "([0-9]{3})\\s+(.*)"))

(def header-line-rx
  (pregexp "([^:]+):\\s+(.*)"))

(def (http-request-read-response! req)
  (let* ((port (request-port req))
         (status-line (read-response-line port)))
    (match (pregexp-match status-line-rx status-line)
      ([_ status status-text]
       (set! (request-status req)
         (string->number status))
       (set! (request-status-text req)
         (string-trim-both status-text))
       (let lp ((headers []))
         (let (next (read-response-line port))
           (if (string-empty? next)
             (set! (request-headers req)
               (reverse headers))
             (match (pregexp-match header-line-rx next)
               ([_ key value]
                (lp (cons (cons (string-titlecase key)
                                (string-trim-both value))
                          headers)))
               (else
                (raise-io-error 'http-request-read-response!
                                "Malformed header" port next)))))))
      (else
       (raise-io-error 'http-request-read-response!
                       "malformed status line" port status-line)))))

(def (http-request-read-body port headers)
  (def (length-e headers)
    (cond
     ((assoc "Content-Length" headers)
      => (match <> ([_ . len] (string->number len))))
     (else #f)))
  
  (cond
   ((assoc "Transfer-encoding" headers)
    => (lambda (tenc)
         (if (not (equal? "identity" tenc))
           (http-request-read-chunked-body port)
           (http-request-read-simple-body port (length-e headers)))))
   (else
    (http-request-read-simple-body port (length-e headers)))))

(def (http-request-read-chunked-body port)
  (let ((out (open-input-bytes))
        (buf #f))
  (let lp ()
    (let (next (string->number (read-response-line port)))
      (if (fxzero? next)
        (begin
          (read-response-line port)     ; end of data
          (get-output-u8vector out))
        (begin
          (when (or (not buf)
                    (fx> next (u8vector-length buf)))
            (set! buf (make-u8vector next)))
          (let (rd (read-subu8vector buf 0 next port))
            (write-subu8vector buf 0 rd)
            (lp))))))))

(def (http-request-read-simple-body port length)
  (def (read/length port length)
    (let* ((data (make-u8vector length))
           (rd (read-subu8vector data 0 length port)))
      (if (fx< rd length)
        (u8vector-shrink! data rd)
        data)))

  (def (read/end port)
    (let ((out (open-output-bytes))
          (buf (make-u8vector 1024)))
      (let lp ()
        (let (rd (read-subu8vector buf 0 1024 port))
          (if (fx< rd 1024)
            (begin
              (write-subu8vector buf 0 rd out)
              (get-output-u8vector out))
            (begin
              (write-subu8vector buf 0 rd out)
              (lp)))))))

  (if length
    (read/length port length)
    (read/end port)))

(def cr (char->integer #\return))
(def lf (char->integer #\newline))
(def crlf (u8vector cr lf))

(def (read-response-line port)
  (let lp ((r []))
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
            (bytes->string (list->u8vector (reverse r))))
           (else
            (lp (cons* next cr r))))))
        (else
         (lp (cons next r)))))))

(def (request-content req)
  (cond
   ((request-body req) => values)
   ((request-port req)
    => (lambda (port)
         (let (headers (request-headers req))
           (try
            (let (body (http-request-read-body port headers))
              (set! (request-body req) body)
              body)
            (finally
             (close-port port)
             (set! (request-port req) #f))))))
   (else #f)))

(def (request-text req)
  (def (get-text enc)
    (let* ((data (request-content req))
           (in   (open-input-u8vector [init: data char-encoding: enc]))
           (len  (u8vector-length data))
           (out  (make-string len))
           (len  (read-substring out 0 len in)))
      (string-shrink! out len)
      out))
  
  (cond
   ((request-encoding req) => get-text)
   (else
    (get-text 'UTF-8))))

(def (request-json req)
  (string->json-object (request-text req)))

(def (request-cookies req)
  (let lp ((rest (request-headers req))
           (cookies []))
    (match rest
      ([hd . rest]
       (match hd
         (["Set-Cookie" . cookie]
          (lp rest (cons cookie cookies)))
         (else
          (lp rest cookies))))
      (else
       (reverse cookies)))))

