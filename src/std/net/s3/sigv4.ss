;;; -*- Gerbil -*-
;;; (C) vyzo
;;; AWS sigv4 request signatures
(import :std/misc/bytes
        :std/srfi/13
        :std/crypto/digest
        :std/crypto/hmac
        :std/text/hex
        :std/net/uri
        :std/contract
        :std/sort)
(export aws4-canonical-request aws4-sign aws4-auth)

;; Reference: http://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-header-based-auth.html

;; create a canonical request string for signing
(def (aws4-canonical-request
      verb: verb       ; symbol -- http verb (GET PUT DELETE ...)
      uri: uri         ; string -- canonical request uri
      query: query     ; [[string . value] ...] -- query parameters
      headers: headers ; [[string . value] ...] -- signed request headers
      hash: hash       ; bytes -- SHA256 content hash
      )
  (string-append
   (symbol->string verb) "\n"
   uri "\n"
   (if query (canonical-query-string query) "") "\n"
   (canonical-headers headers) "\n"
   (signed-headers headers) "\n"
   (hex-encode hash)))

;; calculate a signature for a canonical request
;; scope is the request scope: string in the form yyyymmdd/region/service
;; ts is the request timestamp string
;; request is a the canonical request string
(def (aws4-sign scope request-str ts secret-key)
  (let ((key (signing-key scope secret-key))
        (str (string-to-sign scope request-str ts)))
    (hmac-sha256 key (string->bytes str))))

;; Calcuate the authorization header
(def (aws4-auth scope request-str ts headers secret-key access-key)
  (let (sig (aws4-sign scope request-str ts secret-key))
    (string-append "AWS4-HMAC-SHA256 "
                   "Credential=" access-key "/" scope "/aws4_request,"
                   "SignedHeaders=" (signed-headers headers) ","
                   "Signature=" (hex-encode sig))))

;;; internal
(def (car-string<? a b)
  (string<? (car a) (car b)))

(def (canonical-repr val)
  (uri-encode
   (with-output-to-string []
     (cut display val))))

(def (canonical-query-string query)
  (let* ((query (map (lambda (q)
                       (cons (car q)
                             (canonical-repr (cdr q))))
                     query))
         (query (sort query car-string<?)))
    (string-join
     (map (lambda (q) (string-append (car q) "=" (cdr q))) query)
     "&")))

(def (canonical-headers headers)
  (let* ((headers (map (lambda (h)
                         (cons (string-downcase (car h))
                               (cdr h)))
                       headers))
         (headers (sort headers car-string<?)))
    (apply string-append
      (map (lambda (h) (string-append (car h) ":" (cdr h) "\n")) headers))))

(def (signed-headers headers)
  (string-join
   (sort (map (lambda (h) (string-downcase (car h))) headers)
         string<?)
   ";"))

(def (signing-key scope secret-key)
  ;; TODO cache signing keys
  (match (string-split scope #\/)
    ([date region service]
     (let* ((date-key
             (hmac-sha256 (string->bytes
                           (string-append "AWS4" secret-key))
                          (string->bytes date)))
            (date-region-key
             (hmac-sha256 date-key
                          (string->bytes region)))
            (date-region-svc-key
             (hmac-sha256 date-region-key
                          (string->bytes service))))
       (hmac-sha256 date-region-svc-key
                    (@bytes "aws4_request"))))
    (else
     (error "Bad request scope; expected date/region/service string" scope))))

(def (string-to-sign scope req ts)
  (string-append "AWS4-HMAC-SHA256\n"
                 ts "\n"
                 scope "/aws4_request" "\n"
                 (hex-encode (sha256 req))))
