;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble ucan interfaces
(import :std/crypto/pkey
        :std/serde/interface
        :std/io)
(export #t)

(deftype @Token Token)
(deftype @VerificationResult VerificationResult)

;; token types
(def DELEGATE  0)
(def INVOKE    1)
(def BROADCAST 2)
(def REVOKE    3)

(defrule (token-type? o)
  (and (fixnum? o)
       (one-of ,DELEGATE ,INVOKE ,BROADCAST ,REVOKE)))

;; UCAN Capability tokens
;; see https://github.com/ucan-wg/spec
(defstruct Token
  ((type       :~ token-type? :- :fixnum) ; the type of the token
   (issuer     :  :string)     ; the issuing principal did
   (audience   :  :string)     ; the recipient did or * for any recipient.
   (method     :  :string)     ; the method capability granted
   (group      :  :string)     ; the broadcast group
   (args       :  :list)       ; optional list of arguments as a keyword-value plist; used only in revocation
   (expire     :  :integer)    ; token expiration time in UNIX seconds; 0 means no expiration
   (chain      :? @Token)      ; the next token in the chain, if any
   (nonce      :- :u8vector)   ; the token nonce
   (signature  :- :u8vector))  ; the token signature by the principal
  final: #t)

(defobject-untaint Token)

(interface (CapabilityContext Closer)
  ;; key management

  ;; add a principal private key to the context, so that it can be used
  ;; for signing
  ;; returns the did of the principal
  (add-principal! (priv : PrivKey))
  => :string

  ;; lists the principal dids
  (list-principals)
  => :list

  ;; returns the public key associated with a did
  ;; the keys may be cached in order to avoid repeatedly
  ;; caching
  (public-key (did : :string))
  => PubKey

  ;; token management

  ;; signs a token, provided the principal is one of
  ;; of the private keys in the context.
  (sign! (token : Token))
  => :void

  ;; verifies a token for a subject
  ;; - all signatures in the chain must be valid
  ;; - no part of the chain must have expired
  ;; - capabilities in the chain can only be narrowed
  ;; - the token must be anchored either at a root anchor
  ;;   or extend a trust anchor in the chain
  (verify (token : Token)
          (subject :? :string := #f))
  => @VerificationResult

  ;; save a (longer lived) token for future revocation
  (save-token! (token : Token))
  => :void

  ;; list issued unexpired tokens that have been remembered
  (list-tokens (filter : :procedure))
  => :list

  ;; trust management

  ;; adds an output trust anchor for rooting output tokens
  ;; output anchors are used to chain tokens for output
  ;; operations e.g. sending a message or opening a stream
  (add-output-anchor! (token : Token)
                      (subject :? :string := #f))
  => :void

  ;; remove an output trust anchor
  (remove-output-anchor! (token : Token)
                         (subject :? :string := #f))
  => :void

  ;; list output trust anchors
  (list-output-anchors (filter : :procedure)
                       (subject :? :string := #f))
  => :list

  ;; adds an input trust anchor for input tokens
  ;; an input anchor confers partial trust for some audience
  ;; and specific capabilities
  (add-input-anchor! (token : Token)
                     (subject :? :string := #f))
  => :void

  ;; removes an input trust anchor
  (remove-input-anchor! (token : Token)
                        (subject :? :string := #f))
  => :void

  ;; lists the input trust anchors
  (list-input-anchors (filter : :procedure)
                      (subject :? :string := #f))
  => :list

  ;; adds a root anchor.
  ;; a root anchor is a did trusted as a issuer anywhere in the chain
  ;; of a valid token.
  ;; Note: this be should be used only for fully trusted entities,
  ;; like the owner of an actor.
  (add-root! (did : :string))
  => :void

  ;; removes a root anchor
  (remove-root! (did : :string))
  => :void

  ;; lists existing root anchors.
  (list-roots)
  => :list
  )

;; verification results
(defstruct VerificationResult ())
(defstruct (VerificationOK VerificationResult) ())
(defstruct (VerificationError VerificationResult)
  ((reason : :string)))

(def !VerificationOK
  (VerificationOK))
(def (!VerificationOK? result)
  (eq? result !VerificationOK))

(def !SignatureVerificationError
  (VerificationError "signature verification failed"))
(def !DelegationVerificationError
  (VerificationError "delegation verification failed"))
(def !ExpirationVerificationError
  (VerificationError "expiration verification failed"))
(def !IssuerVerificationError
  (VerificationError "issuer verification failed"))
(def !CapabilityVerificationError
  (VerificationError "capability verification failed"))
(def !AnchorVerificationError
  (VerificationError "anchor verification failed"))
(def !TokenExpiredVerificationError
  (VerificationError "token expired"))
