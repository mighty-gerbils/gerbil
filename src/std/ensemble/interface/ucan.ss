;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble ucan envelopes
(export #t)

(deftype @Token Token)
(deftype @VerificationResult VerificationResult)

;; UCAN Capability tokens
;; see https://github.com/ucan-wg/spec
(defstruct Token
  ((type       :  :fixnum)     ; the type of the token
   (issuer     :  :string)     ; the issuing principal did
   (subject    :  :string)     ; the recipient did or * for any recipient.
   (method     :  :string)     ; the method capability granted
   (begin      :? :integer)    ; token validity begin time in UNIX seconds
   (expire     :? :integer)    ; token expiration time in UNIX seconds
   (depth      :? :fixnum)     ; the maximum depth in the token chain
   (chain      :? @Token)      ; the next token in the chain
   (nonce      :- :u8vector)   ; the token nonce
   (signature  :- :u8vector))  ; the token signature by the principal
  final: #t)

(interface CapabilityContext
  ;; key management

  ;; add a private key to the context, so that it can be used
  ;; for signing
  ;; returns the did of the key
  (add-private-key! (priv : PrivKey))
  => :string

  ;; returns the public key associated with a did
  ;; the keys may be cached in order to avoid repeatedly
  ;; caching
  (get-public-key (did : :string))
  => PubKey

  ;; token management

  ;; signs a token, provided the principal is one of
  ;; of the private keys in the context
  (sign-token! (token : Token))
  => :void

  ;; verifies a token
  ;; - all signatures in the chain must be valid
  ;; - no part of the chain must have expired
  ;; - capabilities in the chain can only be narrowed
  ;; - the token must be anchored either at a root anchor
  ;;   or extend a trust anchor in the chain
  (verify-token (token : Token))
  => @VerificationResult

  ;; trust management

  ;; adds a trust anchor token.
  (add-trust-anchor! (token : token))
  => :void

  ;; removes a trust anchor
  (remove-trust-anchor! (token : token))
  => :void

  ;; lists the trust anchors
  (list-trust-anchors)
  => :list

  ;; adds a root anchor.
  ;; a root anchor is a did trusted as a issuer anywhere in the chain
  ;; of a valid token.
  ;; Note: this be should be used only for fully trusted entities,
  ;; like the owner of an actor.
  (add-root-anchor (did : :string))
  => :void

  ;; removes a root anchor
  (remove-root-anchor! (did : :string))
  => :void

  ;; lists existing root anchors.
  (list-root-anchors)
  => :list
  )

;; token types
(def DELEGATE  0)
(def INVOKE    1)
(def BROADCAST 2)
(def REVOKE    3)

;; verification results
(defstruct VerificationResult ())
(defstruct (VerificationOK VerificationResult) ())
(defstruct (VerificationError VerificationResult)
  ((reason : :string)))

(def !OK (VerificationOK))
