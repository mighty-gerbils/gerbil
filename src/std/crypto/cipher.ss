;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; libcrypto ciphers

(import :gerbil/gambit
        :std/error
        :std/text/utf8
        ./libcrypto
        ./etc
        (for-syntax :std/stxutil))

(export
  cipher make-cipher cipher? cipher-type cipher-ctx cipher-context
  cipher-name cipher-block-size cipher-key-length cipher-iv-length
  cipher-copy
  encrypt encrypt-u8vector encrypt-u8vector!
  encrypt-init!
  encrypt-update!
  encrypt-final!
  decrypt decrypt-u8vector decrypt-u8vector!
  decrypt-init!
  decrypt-update!
  decrypt-final!
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
      (struct-instance-init! self type ctx))))

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

(def (cipher-init! cipher key iv EVP-init)
  (cipher-check-key+iv-length cipher key iv)
  (with-libcrypto-error
   (EVP-init (cipher-context cipher)
             (cipher-type cipher)
             key iv)))

(def (cipher-update! ctx out out-start in start end EVP-update)
  (let (r (EVP-update ctx out out-start in start end))
    (if (not (##fxnegative? r)) r
        (raise-libcrypto-error ctx))))  ; racey with multiple threads

(def (cipher-final! ctx out out-start EVP-final)
  (let (r (EVP-final ctx out out-start))
    (if (not (##fxnegative? r)) r
        (raise-libcrypto-error ctx))))  ; racey with multiple threads

;; encrypt/decrypt streaming interface
(def (encrypt-init! cipher key iv)
  (cipher-init! cipher key iv EVP_EncryptInit))

(def (encrypt-update! cipher out out-start in start end)
  (cipher-update! (cipher-context cipher) out out-start in start end EVP_EncryptUpdate))

(def (encrypt-final! cipher out (out-start 0))
  (let (olen (cipher-final! (cipher-context cipher) out out-start EVP_EncryptFinal))
    (set! (cipher-ctx cipher) #f)
    olen))

(def (decrypt-init! cipher key iv)
  (cipher-init! cipher key iv EVP_DecryptInit))

(def (decrypt-update! cipher out out-start in start end)
  (cipher-update! (cipher-context cipher) out out-start in start end EVP_DecryptUpdate))

(def (decrypt-final! cipher out (out-start 0))
  (let (olen (cipher-final! (cipher-context cipher) out out-start EVP_DecryptFinal))
    (set! (cipher-ctx cipher) #f)
    olen))

;; high level API: encrypt/decrypt bytes or input-port
(defrules cipher-port-encrypt/decrypt ()
  ((_ cipher key iv inp
      cipher-init!
      cipher-update!
      cipher-final!)
   (let* ((bufsz 1024)
          (buf (make-u8vector (##fx+ bufsz (cipher-block-size cipher))))
          (outp (open-output-u8vector)))

     (def (grow-buffer-if-needed ilen)
       (let (max-olen (##fx+ ilen (cipher-block-size cipher)))
         (when (##fx> max-olen (u8vector-length buf))
           (set! buf (make-u8vector max-olen)))))

     (cipher-init! cipher key iv)
     (call-with-binary-input
      (lambda (bytes start end)
        (grow-buffer-if-needed (- end start))
        (let (olen (cipher-update! cipher buf 0 bytes start end))
          (write-subu8vector buf 0 olen outp)))
      inp)
     (let (olen (cipher-final! cipher buf))
       (write-subu8vector buf 0 olen outp)
       (get-output-u8vector outp)))))

(defrules cipher-u8vector-encrypt/decrypt ()
  ((_ cipher key iv bytes start end
      cipher-init!
      cipher-update!
      cipher-final!)
   (let* ((len (##fx- end start))
          (buflen (##fx+ len (##fx* 2 (cipher-block-size cipher))))
          (buf (make-u8vector buflen)))
     (cipher-init! cipher key iv)
     (let* ((ulen (cipher-update! cipher buf 0 bytes start end))
            (flen (cipher-final! cipher buf ulen))
            (olen (##fx+ ulen flen)))
       (when (##fx< olen buflen)
         (u8vector-shrink! buf olen))
       buf))))

(def (encrypt cipher key iv in)
  (cond
   ((string? in)
    (encrypt-u8vector cipher key iv (string->utf8 in)))
   ((u8vector? in)
    (encrypt-u8vector cipher key iv in))
   ((input-port? in)
    (encrypt-port cipher key iv in))
   (else
    (error "Bad input source" in))))

(def (encrypt-u8vector cipher key iv in (start 0) (end (u8vector-length in)))
  (cipher-u8vector-encrypt/decrypt cipher key iv in start end
                                   encrypt-init!
                                   encrypt-update!
                                   encrypt-final!))

(def (encrypt-u8vector! cipher key iv bytes start end buf)
  (encrypt-init! cipher key iv)
  (let* ((ulen (encrypt-update! cipher buf 0 bytes start end))
         (flen (encrypt-final! cipher buf ulen))
         (olen (##fx+ ulen flen)))
    olen))

(def (encrypt-port cipher key iv inp)
  (cipher-port-encrypt/decrypt cipher key iv inp
                               encrypt-init!
                               encrypt-update!
                               encrypt-final!))

(def (decrypt cipher key iv in)
  (cond
   ((u8vector? in)
    (decrypt-u8vector cipher key iv in))
   ((input-port? in)
    (decrypt-port cipher key iv in))
   (else
    (error "Bad input source" in))))

(def (decrypt-u8vector cipher key iv in (start 0) (end (u8vector-length in)))
  (cipher-u8vector-encrypt/decrypt cipher key iv in start end
                                   decrypt-init!
                                   decrypt-update!
                                   decrypt-final!))

(def (decrypt-u8vector! cipher key iv bytes start end buf)
  (decrypt-init! cipher key iv)
  (let* ((ulen (decrypt-update! cipher buf 0 bytes start end))
         (flen (decrypt-final! cipher buf ulen))
         (olen (##fx+ ulen flen)))
    olen))

(def (decrypt-port cipher key iv inp)
  (cipher-port-encrypt/decrypt cipher key iv inp
                               decrypt-init!
                               decrypt-update!
                               decrypt-final!))

;;; Library defined Ciphers
(defsyntax (define-cipher stx)
  (def (generate-defn name len mode)
    (let (len (and len (number->string (stx-e len))))
      (with-syntax
          ((evp-cipher
            (cond
             (len
              (format-id name "EVP_~a_~a_~a" name len mode))
             (mode
              (format-id name "EVP_~a_~a" name mode))
             (else
              (format-id name "EVP_~a" name))))
           (cipher-t
            (cond
             (len
              (format-id name "cipher::~a-~a-~a" name len mode))
             (mode
              (format-id name "cipher::~a-~a" name mode))
             (else
              (format-id name "cipher::~a" name))))
           (make-cipher-t
            (cond
             (len
              (format-id name "make-~a-~a-~a-cipher" name len mode))
             (mode
              (format-id name "make-~a-~a-cipher" name mode))
             (else
              (format-id name "make-~a-cipher" name))))
           (cipher-t?
            (cond
             (len
              (format-id name "~a-~a-~a-cipher?" name len mode))
             (mode
              (format-id name "~a-~a-cipher?" name mode))
             (else
              (format-id name "~a-cipher?" name)))))
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
    ((_ name len (mode ...))
     (with-syntax (((defn ...)
                    (stx-map (cut generate-defn #'name #'len <>)
                             #'(mode ...))))
       #'(begin defn ...)))
    ((_ name (mode ...))
     (with-syntax (((defn ...)
                    (stx-map (cut generate-defn #'name #f <>)
                             #'(mode ...))))
       #'(begin defn ...)))
    ((_ name)
     (generate-defn #'name #f #f))))

(define-cipher aes 128 (ecb cbc cfb ofb ctr ccm gcm xts))
(define-cipher aes 192 (ecb cbc cfb ofb ctr ccm gcm))
(define-cipher aes 256 (ecb cbc cfb ofb ctr ccm gcm xts))
(define-cipher camellia 128 (ecb cbc cfb ofb))
(define-cipher camellia 192 (ecb cbc cfb ofb))
(define-cipher camellia 256 (ecb cbc cfb ofb))
(define-cipher cast5 (ecb cbc cfb ofb))
(define-cipher bf (ecb cbc cfb ofb))
(define-cipher rc4)
