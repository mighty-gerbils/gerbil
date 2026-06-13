;;; -*- Gerbil -*-
;;; © vyzo
;;; Key Derivation functions

(import :std/ffi
        ./libcrypto
        ./error)
(export scrypt)

(def (scrypt (pass : :u8vector)
             (salt : :u8vector)
             (size : :fixnum)
             (N    : :fixnum := 131072)
             (r    : :fixnum := 8)
             (p    : :fixnum := 1))
  => :u8vector
  (let (pctx (check-pointer scrypt
                            (EVP_PKEY_CTX_new_id EVP_PKEY_SCRYPT #f)))
    (unwind-protect
      (begin
        (with-libcrypto-error scrypt (EVP_PKEY_derive_init pctx))
        (with-libcrypto-error scrypt (EVP_PKEY_CTX_set1_pbe_pass pctx pass))
        (with-libcrypto-error scrypt (EVP_PKEY_CTX_set1_scrypt_salt pctx salt))
        (with-libcrypto-error scrypt (EVP_PKEY_CTX_set_scrypt_N pctx N))
        (with-libcrypto-error scrypt (EVP_PKEY_CTX_set_scrypt_r pctx r))
        (with-libcrypto-error scrypt (EVP_PKEY_CTX_set_scrypt_p pctx p))
        (let* ((output (make-u8vector size))
               (outlen (with-libcrypto-error scrypt (EVP_PKEY_derive pctx output))))
          (when (< outlen size)
            (u8vector-shrink! output outlen))
          output))
      (foreign-release! pctx))))
