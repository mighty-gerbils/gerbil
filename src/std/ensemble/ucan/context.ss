;;; -*- Gerbil -*-
;;; © vyzo
;;; ucan capability context
(import :std/error
        :std/interface
        :std/io/interface
        :std/crypto/pkey
        :std/time/precise
        :std/iter
        ../interface/ucan
        ./type
        ./cap
        ./did
        ./serde)
(export #t)

(def (load-capability-context (path : :string)
                              (key  : :u8vector))
  => CapabilityContext
  (unless (file-exists? path)
    (raise-bad-argument load-capability-context "file does not exist" path))
  (capability-context-init!
   (read-capability-context-from-file path key)))

(def (new-capability-context (path : :string)
                             (key  : :u8vector))
  => CapabilityContext
  (CapabilityContext
   (capability-context-init!
    (capability-context
     path: path
     key: key
     private-keys:   (make-hash-table-string)
     public-keys:    (make-hash-table-string)
     roots:          (make-hash-table-string)
     root-input-anchors:  (make-hash-table-eq)
     root-output-anchors: (make-hash-table-eq)
     subject-input-anchors:  (make-hash-table-string)
     subject-output-anchors: (make-hash-table-string)
     tokens:         (make-hash-table-eq)))))

(def (capability-context-init! (ctx : capability-context))
  => capability-context
  (TODO capability-context-init!))

(def (save-capability-context! (ctx : capability-context))
  => :void
  (TODO save-capability-context!))

(def public-key-cache-ttl 1200)
(defmethod {__pubk capability-context}
  (lambda (self (did :- :string))
    (cond
     ((do-with-lock self.mx
        (self.public-keys.ref did #f))
      => (lambda (entry)
           (let (now  (current-time-coarse))
             (set! (cdr entry)
               (+ (CoarseTime-seconds now)
                  public-key-cache-ttl)))
           (car entry)))
     (else
      (let* ((pubk (did->public-key did))
             (now  (current-time-coarse))
             (entry (cons pubk
                          (+ (CoarseTime-seconds now)
                             public-key-cache-ttl))))
        (do-with-lock self.mx
          (self.public-keys.set! did entry))
        pubk)))))

(defmethod {__privk capability-context}
  (lambda (self (did :- :string))
    (cond
     ((do-with-lock self.mx
        (self.private-keys.ref did #f)))
     (else
      (raise-bad-argument get-private-key  "unknown principal" did)))))

(defmethod {__filter capability-context}
  (lambda (self (root    :- HashTable)
           (subject :- HashTable)
           (filter  :- :procedure))
    (do-with-lock self.mx
      (let (now (current-time-coarse))
        (def (fold (token :- Token) r)
          (cond
           ((token-expired? token now)
            r)
           ((filter token)
            (cons token r))
           (else r)))

        (let (result
              (for/fold (r []) (token (in-hash-keys root))
                (fold token r)))
          (if subject
            (for/fold (r result) (token (in-hash-keys subject))
              (fold token r))
            result))))))

(defmethod {__roots capability-context}
  (lambda (self)
    (do-with-lock self.mx (hash-keys self.roots))))

(implement
  (Closer
   (capability-context
    (close
     (lambda (self)
       (TODO close)))))
  (CapabilityContext
   (capability-context
    (add-principal!
     (lambda (self privk)
       (let (did (private-key->did privk))
         (do-with-lock self.mx
           (self.private-keys.set! did privk))
         did)))
    (list-principals
     (lambda (self)
       (:- (do-with-lock self.mx
             (hash-keys self.private-keys))
           :list)))
    (public-key
     (lambda (self did)
       (:- {self.__pubk did} PubKey)))
    (sign!
     (lambda (self token)
       (cond
        (token.signature
         token)
        (else
         (sign-token! token
                      (lambda (issuer)
                        {self.__privk issuer})
                      (lambda (issuer)
                        {self.__pubk issuer}))
         (do-with-lock self.mx
           (self.tokens.set! token token.expire))
         token))))
    (verify
     (lambda (self token subject)
       (: (let/cc return
            ;; verify the token first
            (let (result
                  (verify-token token
                                (lambda (issuer)
                                  {self.__pubk issuer})))
              (unless (!OK? result)
                (return result)))
            ;; verify it is rooted in the subject
            ;; or in one of our roots or input anchors
            (when subject
              (when (token-rooted-at? token subject)
                (return !OK)))
            (for (root {self.__roots})
              (when (token-rooted-at? token root)
                (return !OK)))
            (for (anchor
                  {self.__filter self.root-input-anchors
                                 (and subject (self.subject-input-anchors.ref subject #f))
                                 (lambda (t) #t)})
              (when (token-anchored-at? token anchor)
                (return !OK)))
            !AnchorVerificationError)
          VerificationResult)))
    (list-tokens
     (lambda (self filter)
       (:- {self.__filter self.tokens #f filter}
           :list)))
    (add-output-anchor!
     (lambda (self token subject)
       (let (result (verify-token token
                                  (lambda (issuer)
                                    {self.__pubk issuer})))
         (unless (!OK? result)
           (raise-bad-argument sign-token! "invalid token"
                               (VerificationError-reason result))))
       (if subject
         (do-with-lock self.mx
           (let (subject-anchors (self.subject-output-anchors.ref subject #f))
             (unless subject-anchors
               (set! subject-anchors (make-hash-table-eq))
               (self.subject-output-anchors.set! subject subject-anchors))
             (using (subject-anchors :- HashTable)
               (subject-anchors.set! token #t)))
         (do-with-lock self.mx
           (self.root-output-anchors.set! token #t))))))
    (remove-output-anchor!
     (lambda (self token subject)
       (if subject
         (do-with-lock self.mx
           (let (subject-anchors (self.subject-output-anchors.ref subject #f))
             (when subject-anchors
               (using (subject-anchors :- HashTable)
                 (subject-anchors.delete! token)))))
         (do-with-lock self.mx
           (self.root-output-anchors.delete! token)))))
    (list-output-anchors
     (lambda (self filter subject)
       (:- {self.__filter self.root-output-anchors
                          (and subject (self.subject-output-anchors.ref subject #f))
                          filter}
           :list)))
    (add-input-anchor!
     (lambda (self token subject)
       (let (result (verify-token token
                                  (lambda (issuer)
                                    {self.__pubk issuer})))
         (unless (!OK? result)
           (raise-bad-argument sign-token! "invalid token"
                               (VerificationError-reason result))))
       (if subject
         (do-with-lock self.mx
           (let (subject-anchors (self.subject-input-anchors.ref subject #f))
             (unless subject-anchors
               (set! subject-anchors (make-hash-table-eq))
               (self.subject-input-anchors.set! subject subject-anchors))
             (using (subject-anchors :- HashTable)
               (subject-anchors.set! token #t)))
         (do-with-lock self.mx
           (self.root-input-anchors.set! token #t))))))
    (remove-input-anchor!
     (lambda (self token subject)
       (if subject
         (do-with-lock self.mx
           (let (subject-anchors (self.subject-input-anchors.ref subject #f))
             (when subject-anchors
               (using (subject-anchors :- HashTable)
                 (subject-anchors.delete! token)))))
         (do-with-lock self.mx
           (self.root-input-anchors.delete! token)))))
    (list-input-anchors
     (lambda (self filter subject)
       (:- {self.__filter self.root-input-anchors
                          (and subject (self.subject-input-anchors.ref subject #f))
                          filter}
           :list)))
    (add-root!
     (lambda (self did)
       (do-with-lock self.mx
         (self.roots.set! did #t))))
    (remove-root!
     (lambda (self did)
       (do-with-lock self.mx
         (self.roots.delete! did))))
    (list-roots
     (lambda (self)
       (:- {self.__roots} :list))))))
