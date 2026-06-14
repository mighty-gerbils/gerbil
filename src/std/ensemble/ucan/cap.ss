;;; -*- Gerbil -*-
;;; © vyzo
;;; ucan capability utilities
(import :std/error
        :std/crypto/pkey
        :std/crypto/random
        :std/serde/marshal
        :std/time/precise
        ../interface/ucan)
(export #t)

(def (capability-includes? (cap   : :string)
                           (other : :string))
  => :boolean
  (if (string-empty? cap)
    (string-empty? other)
    (or (equal? cap "/")
        (equal? cap other)
        (and (fx< (string-length cap) (string-length other))
             (string-prefix? cap other)
             (eq? (##string-ref other (string-length cap))
                  #\/)))))

(def (verify-token (token : Token)
                   (get-public-key : :procedure))
  => VerificationResult
  (let (now (current-time-coarse))
    (if (token-expired? token now)
      !TokenExpiredVerificationError
      (let (result (verify-token-signature token get-public-key))
        (if (!OK? result)
          (if token.chain
            (let loop ((next   token.chain  :- Token)
                       (issuer token.issuer :- :string)
                       (method token.method :- :string)
                       (group  token.group  :- :string)
                       (expire token.expire :- :integer))
              => VerificationResult
              (if (or (equal? next.audience issuer)
                      (equal? next.audience "*"))
                (if (token-expired? next now)
                  !TokenExpiredVerificationError
                  (if (expiration-before? next.expire expire)
                    !ExpirationVerificationError
                    (if (capability-includes? next.method method)
                      (if (capability-includes? next.group group)
                        (let (result (verify-token-signature next get-public-key))
                          (if (!OK? result)
                            (if next.chain
                              (loop next.issuer
                                    next.chain
                                    next.method
                                    next.group
                                    next.expire)
                              !OK)
                            result))
                        !CapabilityVerificationError)
                      !CapabilityVerificationError)))
                !IssuerVerificationError))
            !OK)
          result)))))

(def (verify-token-signature (token : Token)
                             (get-public-key : :procedure))
  => VerificationResult
  (let* ((pubk (get-public-key token.issuer))
         (sig  token.signature)
         (_    (set! token.signature #f))
         (data (marshal token))
         (_    (set! token.signature sig)))
    (if (digest-verify! pubk data sig)
      !OK
      !SignatureVerificationError)))

(def nonce-length 16)
(def (sign-token! (token : Token)
                  (get-private-key : :procedure)
                  (get-public-key : :procedure))
  (when token.chain
    ;; verify the chain
    (let (result (verify-token token.chain get-public-key))
      (unless (!OK? result)
        (raise-bad-argument sign-token! "invalid token chain"
                            (VerificationError-reason result))))
    ;; check expiration
    (when (> token.chain.expire 0)
      (unless (<= token.expire token.chain.expire)
        (raise-bad-argument sign-token! "invalid token expiration"
                            token.expire token.chain.expire)))
    ;; check capabilities
    (unless (capability-includes? token.chain.method token.method)
      (raise-bad-argument sign-token! "invalid token method"
                          token.method token.chain.method))
    (unless (capability-includes? token.chain.group token.group)
      (raise-bad-argument sign-token! "invalid token group"
                          token.group token.chain.group)))
  ;; and sign it
  (let* ((privk (get-private-key token.issuer))
         (nonce (random-bytes nonce-length))
         (_     (set! token.nonce nonce))
         (data  (marshal token))
         (sig   (digest-sign! privk data)))
    (set! token.signature sig)))

;; true if the token has an expiration time before now
;; in seconds
(def (token-expired? (token : Token)
                     (now   : CoarseTime := (current-time-coarse)))
  (and (not (fx= token.expire 0))
       (< token.expire (CoarseTime-seconds now))))

(def (expiration-before? (left  : :integer)
                         (right : :integer))
  => :boolean
  (cond
   ((fx= right 0)
    #t)
   ((fx= left 0)
    #f)
   (else
    (<= left right))))

;; roots are absolute trust anchors.
;; returns true if the token has the root as an issuer,
;; either immediate or at its chain
(def (token-rooted-at? (token : Token)
                       (did   : :string))
  => :boolean
  (let loop ((token token :- Token))
    => :boolean
    (cond
     ((equal? token.issuer did))
     (token.chain => loop)
     (else #f))))

;; anchors confer partial trust for some capability.
;; true if the token or its chain has the anchor's
;; issuer and audience with the proper narrowing
;; of capabilities.
(def (token-anchored-at? (token  : Token)
                         (anchor : Token))
  => :boolean
  (let loop ((token token :- Token))
    => :boolean
    (cond
     ((and (equal? token.issuer anchor.issuer)
           (equal? token.audience anchor.audience)
           (capability-includes? anchor.method token.method)
           (capability-includes? anchor.group token.group))
      #t)
     (token.chain => loop)
     (else #f))))
