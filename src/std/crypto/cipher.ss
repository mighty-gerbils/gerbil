;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; libcrypto ciphers
package: std/crypto

(import :gerbil/gambit/hvectors
        :gerbil/gambit/ports
        :std/crypto/libcrypto
        :std/crypto/etc)

(export
  cipher cipher-type cipher-ctx cipher-context
  cipher-name cipher-block-size cipher-key-length cipher-iv-length
  cipher-copy
  encrypt
  encrypt-init!
  encrypt-update! encrypt-update/nocheck!
  encrypt-final! encrypt-final/nocheck!
  decrypt
  decrypt-init!
  decrypt-update! decrypt-update/nocheck!
  decrypt-final! decrypt-final/nocheck!
  )

(defstruct cipher (type ctx)
  id: std/crypto#cipher::t
  constructor: :init!)

(defmethod {:init! cipher}
  (lambda (self type)
    (unless (EVP_CIPHER? type)
      (error "Invalid cipher" type))
    (let (ctx (EVP_CIPHER_CTX_create))
      (unless ctx
        (error "Failed to allocate cipher context"))
      (direct-struct-instance-init! self type ctx))))

(def (cipher-name cipher)
  (if (EVP_CIPHER? cipher)
    (EVP_CIPHER_name cipher)
    (EVP_CIPHER_name (cipher-type cipher))))

(def (cipher-block-size cipher)
  (if (EVP_CIPHER? cipher)
    (EVP_CIPHER_block_size cipher)
    (EVP_CIPHER_block_size (cipher-type cipher))))

(def (cipher-key-length cipher)
  (if (EVP_CIPHER? cipher)
    (EVP_CIPHER_key_length cipher)
    (EVP_CIPHER_key_length (cipher-type cipher))))

(def (cipher-iv-length cipher)
  (if (EVP_CIPHER? cipher)
    (EVP_CIPHER_iv_length cipher)
    (EVP_CIPHER_iv_length (cipher-type cipher))))

(def (cipher-copy cipher)
  (let* ((ctx (cipher-context cipher))
         (copy (make-cipher (cipher-type cipher))))
    (with-libcrypto-error (EVP_CIPHER_CTX_copy (cipher-ctx copy) ctx))
    copy))

(def (cipher-context cipher)
  (or (cipher-ctx cipher)
      (error "Cipher has been finalized" cipher)))

(def (cipher-check-key+iv-length cipher key iv)
  (unless (= (cipher-key-length (cipher-type cipher))
             (u8vector-length key))
    (error "Bad cipher key; key length mismatch"))
  (unless (= (cipher-iv-length (cipher-type cipher))
             (u8vector-length iv))
    (error "Bad cipher iv; iv length mismatch")))

(def (cipher-check-buffer-size ctx bufsz inl)
  (let (blocksz (EVP_CIPHER_CTX_block_size ctx))
    (unless (fx>= bufsz (fx1- (fx+ inl blocksz)))
      (error "Bad cipher buffer; insufficient buffer space" bufsz blocksz inl))))

(def (cipher-check-buffer-size/final ctx bufsz)
  (let (blocksz (EVP_CIPHER_CTX_block_size ctx))
    (unless (fx>= bufsz (fx1- blocksz))
      (error "Bad cipher buffer; insufficient buffer space" bufsz blocksz))))

(def (cipher-init! cipher key iv EVP-init)
  (cipher-check-key+iv-length cipher key iv)
  (with-libcrypto-error
   (EVP-init (cipher-context cipher)
             (cipher-type cipher)
             key iv)))

(def (cipher-update/nocheck! ctx out in start end EVP-update)
  (let (r (EVP-update ctx out in start end))
    (if (not (fxnegative? r)) r
        (raise-libcrypto-error ctx))))  ; racey with multiple threads

(def (cipher-update! ctx out in start end EVP-update)
  (cipher-check-buffer-size ctx (u8vector-length out) (fx- end start))
  (cipher-update/nocheck! ctx out in start end EVP_EncryptUpdate))

(def (cipher-final/nocheck! ctx out EVP-final)
  (let (r (EVP-final ctx out))
    (if (not (fxnegative? r)) r
        (raise-libcrypto-error ctx))))  ; racey with multiple threads

(def (cipher-final! ctx out EVP-final)
  (cipher-check-buffer-size/final ctx (u8vector-length out))
  (let (r (EVP-final ctx out))
    (if (not (fxnegative? r)) r
        (raise-libcrypto-error ctx))))  ; racey with multiple threads

;; encrypt/decrypt streaming interface
(def (encrypt-init! cipher key iv)
  (cipher-init! cipher key iv EVP_EncryptInit))

(def (encrypt-update/nocheck! cipher out in start end)
  (cipher-update/nocheck! (cipher-context cipher) out in start end EVP_EncryptUpdate))

(def (encrypt-update! cipher out in (start #f) (end #f))
  (cipher-update! (cipher-context cipher) out in
                  (or start 0)
                  (or end (u8vector-length in))
                  EVP_EncryptUpdate))

(def (encrypt-final! cipher out)
  (let (olen (cipher-final! (cipher-context cipher) out EVP_EncryptFinal))
    (set! (cipher-ctx cipher) #f)
    olen))

(def (encrypt-final/nocheck! cipher out)
  (let (olen (cipher-final/nocheck! (cipher-context cipher) out EVP_EncryptFinal))
    (set! (cipher-ctx cipher) #f)
    olen))

(def (decrypt-init! cipher key iv)
  (cipher-init! cipher key iv EVP_DecryptInit))

(def (decrypt-update/nocheck! cipher out in start end)
  (cipher-update/nocheck! (cipher-context cipher) out in start end EVP_DecryptUpdate))

(def (decrypt-update! cipher out in (start #f) (end #f))
  (cipher-update! (cipher-context cipher) out in
                  (or start 0)
                  (or end (u8vector-length in))
                  EVP_DecryptUpdate))

(def (decrypt-final! cipher out)
  (let (olen (cipher-final/nocheck! (cipher-context cipher) out EVP_DecryptFinal))
    (set! (cipher-ctx cipher) #f)
    olen))

(def (decrypt-final/nocheck! cipher out)
  (let (olen (cipher-final! (cipher-context cipher) out EVP_DecryptFinal))
    (set! (cipher-ctx cipher) #f)
    olen))

;; high level API: encrypt/decrypt bytes or input-port
(def (cipher-port-encrypt/decrypt cipher key iv inp
                                  cipher-init!
                                  cipher-update!
                                  cipher-final!)
  (let* ((bufsz 1024)
         (buf (make-u8vector (fx+ bufsz (cipher-block-size cipher))))
         (outp (open-output-u8vector)))

    (def (grow-buffer-if-needed olen)
      (when (fx> olen (u8vector-length buf))
        (set! buf (make-u8vector olen))))
    
    (cipher-init! cipher key iv)
    (call-with-binary-input
     (lambda (bytes start end)
       (let (olen (cipher-update! cipher buf bytes start end))
         (grow-buffer-if-needed olen)
         (write-subu8vector buf 0 olen outp)))
     inp)
    (let (olen (cipher-final! cipher buf))
      (grow-buffer-if-needed olen)
      (write-subu8vector buf 0 olen outp)
      (get-output-u8vector outp))))

(def (encrypt cipher key iv in)
  (cond
   ((string? in)
    (encrypt-u8vector cipher key iv (string->bytes in)))
   ((u8vector? in)
    (encrypt-u8vector cipher key iv in))
   ((input-port? in)
    (encrypt-port cipher key iv in))
   (else
    (error "Bad input source" in))))

(def (encrypt-u8vector cipher key iv in)
  (encrypt-port cipher key iv (open-input-u8vector in)))

(def (encrypt-port cipher key iv inp)
  (cipher-port-encrypt/decrypt cipher key iv inp
                               encrypt-init!
                               encrypt-update/nocheck!
                               encrypt-final/nocheck!))

(def (decrypt cipher key iv in)
  (cond
   ((u8vector? in)
    (decrypt-u8vector cipher key iv in))
   ((input-port? in)
    (decrypt-port cipher key iv in))
   (else
    (error "Bad input source" in))))

(def (decrypt-u8vector cipher key iv in)
  (decrypt-port cipher key iv (open-input-u8vector in)))

(def (decrypt-port cipher key iv inp)
  (cipher-port-encrypt/decrypt cipher key iv inp
                               decrypt-init!
                               decrypt-update/nocheck!
                               decrypt-final/nocheck!))

;;; Library defined Ciphers
(defsyntax (define-cipher stx)
  (def (generate-defn name length mode)
    (let (length (number->string (stx-e length)))
      (with-syntax
          ((evp-cipher (stx-identifier name
                         "EVP_" name "_" length "_" mode))
           (cipher-t (stx-identifier name
                       "cipher::" name "-" length "-" mode))
           (make-cipher-t (stx-identifier name
                            "make-" name "-" length "-" mode "-cipher"))
           (cipher-t? (stx-identifier name
                        name "-" length "-" mode "-cipher?")))
        #'(begin
            (def cipher-t (evp-cipher))
            (def (make-cipher-t)
              (make-cipher cipher-t))
            (def (cipher-t? obj)
              (and (cipher? obj)
                   (eq? (EVP_CIPHER_nid (cipher-type obj))
                        (EVP_CIPHER_nid cipher-t))))
            (export cipher-t make-cipher-t cipher-t?)))))
  (syntax-case stx ()
    ((_ name length (mode ...))
     (with-syntax (((defn ...)
                    (stx-map (cut generate-defn #'name #'length <>)
                             #'(mode ...))))
       #'(begin defn ...)))))

(define-cipher aes 128 (ecb cbc cfb ofb ctr ccm gcm xts))
(define-cipher aes 192 (ecb cbc cfb ofb ctr ccm gcm))
(define-cipher aes 256 (ecb cbc cfb ofb ctr ccm gcm xts))