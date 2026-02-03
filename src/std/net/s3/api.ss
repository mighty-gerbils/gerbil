;;; -*- Gerbil -*-
;;; (C) vyzo
;;; AWS S3 client
(import "sigv4"
        "interface"
        :std/net/request
        :std/misc/func
        :std/net/uri
        :std/crypto/digest
        :std/text/hex
        :std/markup/xml
        :std/error
        :std/sugar
        :std/srfi/19
        (only-in :std/srfi/13 string-trim-both string-prefix? string-suffix? string-index))

(export S3Client S3ClientError aws-resolve-credentials)

; precomputed empty sha256
(def emptySHA256 (sha256 #u8()))

;; Parse a simple INI file into a hash table of sections.
;; Each section is a hash table of key-value pairs.
(def (parse-ini-file path)
  (and (file-exists? path)
       (call-with-input-file path
         (lambda (port)
           (let ((sections (make-hash-table))
                 (current-section #f)
                 (current-hash #f))
             (let loop ()
               (let (line (read-line port))
                 (unless (eof-object? line)
                   (let (trimmed (string-trim-both line))
                     (cond
                       ;; Empty line or comment
                       ((or (string-empty? trimmed)
                            (string-prefix? "#" trimmed)
                            (string-prefix? ";" trimmed))
                        (void))
                       ;; Section header [name] or [profile name]
                       ((and (string-prefix? "[" trimmed)
                             (string-suffix? "]" trimmed))
                        (let* ((section-name (substring trimmed 1 (- (string-length trimmed) 1)))
                               ;; Handle [profile foo] syntax from config file
                               (section-name (if (string-prefix? "profile " section-name)
                                               (substring section-name 8 (string-length section-name))
                                               section-name)))
                          (set! current-section section-name)
                          (set! current-hash (make-hash-table))
                          (hash-put! sections section-name current-hash)))
                       ;; Key = value
                       ((and current-hash (string-index trimmed #\=))
                        (let* ((idx (string-index trimmed #\=))
                               (key (string-trim-both (substring trimmed 0 idx)))
                               (val (string-trim-both (substring trimmed (+ idx 1) (string-length trimmed)))))
                          (hash-put! current-hash key val)))))
                   (loop))))
             sections)))))

;; Get a value from parsed INI sections for a given profile
(def (ini-get sections profile key)
  (and sections
       (alet (section (hash-get sections profile))
         (hash-get section key))))

;; Get environment variable, returning #f if not set or empty
(def (getenv* name)
  (let (val (getenv name #f))
    (and val (not (string-empty? val)) val)))

;; Resolve AWS credentials using standard credential chain:
;; 1. Environment variables
;; 2. ~/.aws/credentials file
;; 3. ~/.aws/config file (for region)
(def (aws-resolve-credentials profile)
  (let* ((profile (or profile (getenv* "AWS_PROFILE") "default"))
         (home (getenv "HOME" ""))
         (creds-file (path-expand ".aws/credentials" home))
         (config-file (path-expand ".aws/config" home))
         (creds (parse-ini-file creds-file))
         (config (parse-ini-file config-file))
         ;; Resolve access key: env -> credentials file
         (access-key (or (getenv* "AWS_ACCESS_KEY_ID")
                         (ini-get creds profile "aws_access_key_id")))
         ;; Resolve secret key: env (both names) -> credentials file
         (secret-key (or (getenv* "AWS_SECRET_ACCESS_KEY")
                         (getenv* "AWS_SECRET_KEY")
                         (ini-get creds profile "aws_secret_access_key")))
         ;; Resolve region: env -> credentials -> config -> default
         (region (or (getenv* "AWS_DEFAULT_REGION")
                     (getenv* "AWS_REGION")
                     (ini-get creds profile "region")
                     (ini-get config profile "region")
                     "us-east-1")))
    (values access-key secret-key region)))

(def (S3Client
       endpoint: (endpoint "s3.amazonaws.com")
       profile: (profile #f)
       access-key: (access-key #f)
       secret-key: (secret-key #f)
       region: (region #f))
     (let-values (((resolved-access-key resolved-secret-key resolved-region)
                   (aws-resolve-credentials profile)))
       (let ((access-key (or access-key resolved-access-key))
             (secret-key (or secret-key resolved-secret-key))
             (region (or region resolved-region)))
         (cond
           ((not access-key)
            (raise-s3-error make-s3-client "Must provide access key" "access-key"))
           ((not secret-key)
            (raise-s3-error make-s3-client "Must provide secret key" "secret-key")))
         (S3 (make-s3-client endpoint access-key secret-key region)))))

(defstruct s3-client (endpoint access-key secret-key region)
  final: #t)

(defstruct bucket (client name region)
  final: #t)

(deferror-class (S3ClientError Error) () s3-client-error?)

(defraise/context (raise-s3-error where message irritants ...)
  (S3ClientError message irritants: [irritants ...]))

; Retrieves buckets accessible to this client.
(defmethod {list-buckets s3-client} ; => (list : bucket)
  (lambda (self)
    (using (self :- s3-client)
      (let* ((req (s3-request/error self verb: 'GET))
             (xml (s3-parse-xml req))
             (buckets (sxml-find xml (sxml-e? 's3:Buckets) sxml-children))
             (names (map (chain <>
                           (sxml-select <> (sxml-e? 's3:Name))
                           (cadar <>)
                           (make-bucket self <> (s3-client-region self))
                           (S3Bucket <>))
                         buckets)))
        ; buckets is #f if none are returned
        (request-close req)
        names))))

;; NOTE: all bucket operations need the correct region for the bucket or they will 400
(defmethod {create-bucket! s3-client}
  (lambda (self bucket-name)
    (using (self :- s3-client)
      (let (req (s3-request/error self verb: 'PUT bucket: bucket-name))
        (request-close req)
        (S3Bucket (make-bucket self bucket-name self.region))))))

; Gets a bucket struct that can be used to fetch objects.
(defmethod {get-bucket s3-client} ; => bucket
  (lambda (self bucket-name)
    (using (self :- s3-client)
      (if (s3-client::bucket-exists? self bucket-name)
        (S3Bucket (make-bucket self bucket-name self.region))
        (raise-s3-error s3-client::get-bucket "Bucket does not exist" bucket-name)))))

; Delete a bucket by name
(defmethod {delete-bucket! s3-client}
  (lambda (self bucket)
    (using (self :- s3-client)
      (when (s3-client::bucket-exists? self bucket)
        (let (req (s3-request/error self verb: 'DELETE bucket: bucket))
          (request-close req)
          (void))))))

(defmethod {bucket-exists? s3-client}
  (lambda (self bucket)
    (using (self :- s3-client)
      (let* ((bucket (if (bucket? bucket) (bucket-name bucket) bucket))
             (req {self.request verb: 'HEAD bucket: bucket})
             (code (request-status req)))
        ; 200 and 404 are expected codes
        ; we explicitly handle 404 so we get proper predicate
        ; semantics and don't raise on what would otherwise be
        ; #f condition.
        (if (memq code [200 404])
          (begin
            (request-close req)
            (= code 200))
          (with-request-error req))))))

(defmethod {bucket s3-client}
  (lambda (self name)
    (using (self :- s3-client)
      (if (s3-client::bucket-exists? self name)
        (S3Bucket (make-bucket self name (s3-client-region self)))
        (raise-s3-error s3-client::bucket "bucket does not exist" name)))))

; Lists the objects stored within the bucket
(defmethod {list-objects bucket}
  (lambda (self)
    (using ((self :- bucket)
            (client self.client :- s3-client))
      (let* ((name (bucket-name self))
             (req (s3-request/error client verb: 'GET bucket: name))
             (xml (s3-parse-xml req))
             (keys (sxml-select xml (sxml-e? 's3:Key) cadr)))
        (request-close req)
        keys))))

(defmethod {get bucket}
  (lambda (self key)
    (using ((self :- bucket)
            (client self.client :- s3-client))
           (let* ((req (s3-request/error client
                                         verb: 'GET
                                         bucket: (bucket-name self)
                                         path: (string-append "/" key)))
                  (data (request-content req)))
             (request-close req)
             data))))

(defmethod {exists? bucket}
  (lambda (self key)
    (using ((self :- bucket)
            (client self.client :- s3-client))
      (let* ((req {client.request verb: 'HEAD
                                  bucket: (bucket-name self)
                                  path: (string-append "/" key)})
             (code (request-status req)))
        (if (memq code [200 404])
          (begin
            (request-close req)
            (= code 200))
          (with-request-error req))))))

(defmethod {put! bucket}
  (lambda (self key data content-type: (content-type "binary/octet-stream"))
    (using ((self :- bucket)
            (client self.client :- s3-client))
           (let (req (s3-request/error client verb: 'PUT bucket: (bucket-name self)
                                       path: (string-append "/" key)
                                       body: data
                                       content-type: content-type))
             (request-close req)
             (void)))))

(defmethod {delete! bucket}
  (lambda (self key)
    (using ((self :- bucket)
            (client self.client :- s3-client))
           (let (req (s3-request/error client verb: 'DELETE bucket: (bucket-name self)
                     path: (string-append "/" key)))
             (request-close req)
             (void)))))

(defmethod {copy-to! bucket}
  (lambda (self src dest)
    (using ((self :- bucket)
            (client self.client :- s3-client))
      (let* ((headers [["x-amz-copy-source" :: src]])
             (req (s3-client::request client
                                    verb: 'PUT
                                    bucket: (bucket-name self)
                                    path: (string-append "/" dest)
                                    extra-headers: headers))
             (error (s3-response-error? (s3-parse-xml req))))
        (request-close req)
        (when error
          (raise-s3-error
            bucket::copy-to!
            "Unable to perform server-side copy"
            ; when error isn't empty, it should be a parsed XML tree
            (sxml-find error (sxml-e? 'Code) cadr)
            (request-status-text req)))
        (void)))))


; The core request method. Handles AWS Sig. v4, auth, and calls correct http- function based on
; `verb`.
(defmethod {request s3-client}
  (lambda (self
            verb:   (verb 'GET)
            bucket: (bucket #f)
            path:   (path "/")
            query:  (query #f)
            body:   (body #f)
            ; optional extra headers
            extra-headers: (extra-headers #f)
            content-type: (content-type #f)) ; must be specified if body is specified
    (using (self :- s3-client)
      (let* ((now (current-date))
             (ts (date->string now "~Y~m~dT~H~M~SZ"))
             (scopets (date->string now "~Y~m~d"))
             (scope (string-append scopets "/" (s3-client-region self) "/s3"))
             (hash (if body (sha256 body) emptySHA256))
             (host (if bucket
                     (string-append bucket "." (s3-client-endpoint self))
                     (s3-client-endpoint self)))
             (headers [["Host" :: host]
                       ["x-amz-date" :: ts]
                       ["x-amz-content-sha256" :: (hex-encode hash)]
                       (if body [["Content-Type" :: content-type]] []) ...
                       (if extra-headers extra-headers []) ...])
             (creq (aws4-canonical-request
                     verb: verb
                     uri: path
                     query: query
                     headers: headers
                     hash: hash))
             (headers [["Authorization" :: (aws4-auth scope creq ts headers
                                                      (s3-client-secret-key self) (s3-client-access-key self))]
                       :: headers])
             (url (string-append "https://" host path)))
        (case verb
          ((GET)
           (http-get url headers: headers params: query))
          ((PUT)
           (http-put url headers: headers params: query data: body))
          ((DELETE)
           (http-delete url headers: headers params: query))
          ((HEAD)
           (http-head url headers: headers params: query))
          (else
            (error "Bad request verb" verb)))))))

(defrule (s3-request/error self ...)
  (with-request-error
    (s3-client::request self ...)))

(def (s3-parse-xml req)
  (read-xml (request-content req)
    namespaces: '(("http://s3.amazonaws.com/doc/2006-03-01/" . "s3")
                  ("http://doc.s3.amazonaws.com/2006-03-01" . "s3"))))

(defrule (s3-response-error? xml)
  (sxml-find xml (sxml-e? 'Error)))

(def (with-request-error req)
  (using (req :~ request?)
    (if (and (fx>= (request-status req) 200)
             (fx< (request-status req) 300))
      req
      (begin
        (request-close req)
        (raise-s3-error
          s3-client::request
          (request-status-text req)
          (request-status req))))))
