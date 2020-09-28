;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; libcrypto public-key signatures

(import :gerbil/gambit/bytes
        :gerbil/gambit/foreign
        :std/crypto/libcrypto
        :std/crypto/etc
        (for-syntax :std/stxutil))

(export
  keygen/ed25519 EVP_PKEY_ED25519
  bytes->private-key bytes->public-key
  private-key->bytes public-key->bytes
  digest-sign digest-verify)

(import :gerbil/gambit/ports);;DBG

;; NB: for other key types, there may be parameters to set before keygen
(def (keygen/ed25519)
  (def ctx (EVP_PKEY_CTX_new_id EVP_PKEY_ED25519 #f))
  (unless (and ctx (< 0 (EVP_PKEY_keygen_init ctx)))
    (error "Can't create ED25519 keygen context"))
  (EVP_PKEY_keygen ctx)) ;; shouldn't we be calling (foreign-release! ctx) afterwards?

(def (bytes->private-key type bytes engine: (engine #f))
  (EVP_PKEY_new_raw_private_key type engine bytes))
(def (bytes->public-key type bytes engine: (engine #f))
  (EVP_PKEY_new_raw_public_key type engine bytes))

(def (bytes-argument bytes)
  (cond
   ((bytes? bytes) bytes)
   ((fixnum? bytes) (make-bytes bytes))
   ((not bytes) #f)
   (else (error "invalid bytes argument" bytes))))

(def (bytes-result bytes len)
  (cond
   ((zero? len) #f)
   ((= len (bytes-length bytes)) bytes)
   ((< len (bytes-length bytes)) (subu8vector bytes 0 len))
   (else #f)))

(def (key->bytes pkey bytes get_raw)
  (def b (or (bytes-argument bytes) (make-bytes (get_raw pkey #f))))
  (def len (get_raw pkey b))
  (bytes-result b len))

(def (private-key->bytes pkey (bytes #f))
  (key->bytes pkey bytes EVP_PKEY_get_raw_private_key))

(def (public-key->bytes pkey (bytes #f))
  (key->bytes pkey bytes EVP_PKEY_get_raw_public_key))

;; NB: for other key types, there may be parameters to set before DigestSign
(def (digest-sign pkey bytes engine: (engine #f) sig: (sig #f))
  (def mctx (EVP_MD_CTX_create))
  (def pctx (EVP_PKEY_CTX_new pkey engine))
  (if (and mctx pctx)
    (EVP_MD_CTX_set_pkey_ctx mctx pctx)
    (error "Can't create signing context"))
  (def s (or (bytes-argument sig) (make-bytes 8192)))
  (def len (EVP_DigestSign mctx s bytes))
  (bytes-result s len))

;; NB: for other key types, there may be parameters to set before DigestVerify
(def (digest-verify pkey sig bytes engine: (engine #f))
  (def mctx (EVP_MD_CTX_create))
  (def pctx (EVP_PKEY_CTX_new pkey engine))
  (if (and mctx pctx)
    (EVP_MD_CTX_set_pkey_ctx mctx pctx)
    (error "Can't create verification context"))
  (= 1 (EVP_DigestVerify mctx sig bytes)))
