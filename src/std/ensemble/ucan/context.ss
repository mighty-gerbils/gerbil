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
     input-anchors:  (make-hash-table-eq)
     output-anchors: (make-hash-table-eq)
     tokens:         (make-hash-table-eq)))))

(def (capability-context-init! (ctx : capability-context))
  => capability-context
  (TODO capability-context-init!))

(def (save-capability-context! (ctx : capability-context))
  => :void
  (TODO save-capability-context!))

(def public-key-cache-ttl 120)
(defmethod {__pubk capability-context}
  (lambda (self (did :- :string))
    (cond
     ((do-with-lock self.mx
        (alet (entry (self.public-keys.ref did #f))
          (car entry))))
     (else
      (let* ((pubk (did->public-key did))
             (now  (current-time-coarse))
             (entry (cons pubk (+ (CoarseTime-seconds now)
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
  (lambda (self (ht :- HashTable) (filter :- :procedure))
    (do-with-lock self.mx
      (let (now (current-time-coarse))
        (for/fold (r []) (token (in-hash-keys ht) :- Token)
          (cond
           ((token-expired? token now)
            r)
           ((filter token)
            (cons token r))
           (else r)))))))

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
     (lambda (self token)
       (: (let/cc return
            ;; verify the token first
            (let (result
                  (verify-token token
                                (lambda (issuer)
                                  {self.__pubk issuer})))
              (unless (!OK? result)
                (return result)))
            ;; verify it is rooted in one of our roots or input anchors
            (for (root {self.__roots})
              (when (token-rooted-at? token root)
                (return !OK)))
            (for (anchor {self.__filter self.input-anchors (lambda (t) #t)})
              (when (token-anchored-at? token anchor)
                (return !OK)))
            !AnchorVerificationError)
          VerificationResult)))
    (list-tokens
     (lambda (self filter)
       (:- {self.__filter self.tokens filter}
           :list)))
    (add-output-anchor!
     (lambda (self token)
       (let (result (verify-token token
                                  (lambda (issuer)
                                    {self.__pubk issuer})))
         (unless (!OK? result)
           (raise-bad-argument sign-token! "invalid token"
                               (VerificationError-reason result))))
       (do-with-lock self.mx
         (self.output-anchors.set! token #t))))
    (remove-output-anchor!
     (lambda (self token)
       (do-with-lock self.mx
         (self.output-anchors.delete! token))))
    (list-output-anchors
     (lambda (self filter)
       (:- {self.__filter self.output-anchors filter}
           :list)))
    (add-input-anchor!
     (lambda (self token)
       (let (result (verify-token token
                                  (lambda (issuer)
                                    {self.__pubk issuer})))
         (unless (!OK? result)
           (raise-bad-argument sign-token! "invalid token"
                               (VerificationError-reason result))))
       (do-with-lock self.mx
         (self.input-anchors.set! token #t))))
    (remove-input-anchor!
     (lambda (self token)
       (do-with-lock self.mx
         (self.input-anchors.delete! token))))
    (list-input-anchors
     (lambda (self filter)
       (:- {self.__filter self.input-anchors filter}
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
