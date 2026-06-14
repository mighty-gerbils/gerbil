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
  (TODO verify-token))

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

(def (token-expired? (token : Token)
                     (now   : CoarseTime := (current-time-coarse)))
  (TODO token-expired?))


(def (token-rooted-at? (token : Token)
                       (did   : :string))
  => :boolean
  (TODO is-token-rooted-at?))

(def (token-anchored-at? (token  : Token)
                         (anchor : Token))
  => :boolean
  (TODO is-token-anchored-at?))
