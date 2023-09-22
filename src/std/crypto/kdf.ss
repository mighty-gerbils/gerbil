;;; -*- Gerbil -*-
;;; © vyzo
;;; Key Derivation functions

(import :gerbil/gambit
        :std/error
        ./libcrypto
        ./etc)
(export scrypt)

(def (scrypt pass salt size (N 1024) (r 8) (p 16))
  (let (pctx (EVP_PKEY_CTX_new_id EVP_PKEY_SCRYPT #f))
    (unless pctx
      (error "Cannot create SCRYPT key context"))
    (unwind-protect
      (begin
        (with-libcrypto-error (EVP_PKEY_derive_init pctx))
        (with-libcrypto-error (EVP_PKEY_CTX_set1_pbe_pass pctx (as-bytes pass)))
        (with-libcrypto-error (EVP_PKEY_CTX_set1_scrypt_salt pctx (as-bytes salt)))
        (with-libcrypto-error (EVP_PKEY_CTX_set_scrypt_N pctx N))
        (with-libcrypto-error (EVP_PKEY_CTX_set_scrypt_r pctx r))
        (with-libcrypto-error (EVP_PKEY_CTX_set_scrypt_p pctx p))
        (let* ((output (make-u8vector size))
               (outlen (with-libcrypto-error (EVP_PKEY_derive pctx output))))
          (when (< outlen size)
            (u8vector-shrink! output outlen))
          output))
      (foreign-release! pctx))))
