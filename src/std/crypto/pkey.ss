;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; libcrypto public-key signatures

(import :gerbil/gambit/bytes
        :gerbil/gambit/foreign
        ./libcrypto
        ./etc)

(export
  keygen/ed25519 EVP_PKEY_ED25519
  bytes->private-key bytes->public-key
  private-key->bytes public-key->bytes
  digest-sign digest-verify)
;; NB: for other key types, there may be parameters to set before keygen
(def (keygen/ed25519)
  (def ctx (EVP_PKEY_CTX_new_id EVP_PKEY_ED25519 #f))
  (unless (and ctx (< 0 (EVP_PKEY_keygen_init ctx)))
    (error "Can't create ED25519 keygen context"))
  (unwind-protect
    (EVP_PKEY_keygen ctx)
    (foreign-release! ctx)))

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
   ((< len (bytes-length bytes))
    (u8vector-shrink! bytes len)
    bytes)
   (else #f)))

(def (key->bytes pkey bytes get_raw)
  (def b (or (bytes-argument bytes) (make-bytes (get_raw pkey #f))))
  (def len (get_raw pkey b))
  (bytes-result b len))

(def (private-key->bytes pkey (bytes #f))
  (key->bytes pkey bytes EVP_PKEY_get_raw_private_key))

(def (public-key->bytes pkey (bytes #f))
  (key->bytes pkey bytes EVP_PKEY_get_raw_public_key))

(def (digest-sign pkey bytes engine: (engine #f) sig: (sig #f))
  (let (mctx (EVP_MD_CTX_create))
    (unless mctx
      (error "Cannot create signing context"))
    (unwind-protect
      (begin
        (with-libcrypto-error (EVP_DigestSignInit mctx pkey))
        (let* ((s (or (bytes-argument sig) (make-bytes 8192)))
               (result (EVP_DigestSign mctx s bytes)))
          (if (##fxzero? result)
            (raise-libcrypto-error)
            (bytes-result s result))))
      (foreign-release! mctx))))

;; NB: for other key types, there may be parameters to set before DigestVerify
(def (digest-verify pkey sig bytes engine: (engine #f))
  (let (mctx (EVP_MD_CTX_create))
    (unless mctx
      (error "Cannot create signing context"))
    (unwind-protect
      (begin
        (with-libcrypto-error (EVP_DigestVerifyInit mctx pkey))
        (= 1 (EVP_DigestVerify mctx sig bytes)))
      (foreign-release! mctx))))
