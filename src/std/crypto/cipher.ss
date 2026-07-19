;;; -*- Gerbil -*-
;;; © vyzo
;;; libcrypto digests
(import :std/error
        :std/ffi
        :std/io
        :std/io/bio/cache
        ./libcrypto
        ./error)
(export #t)

(defstruct Cipher
  ((type :- :foreign)  ; EVP_CIPHER?
   (ctx  :- :foreign)) ; EVP_CIPHER_CTX?
  constructor: :init!
  transparent: #f)

(defmethod {:init! Cipher}
  (lambda (self (type :~ EVP_CIPHER? :- :foreign))
    (let (ctx (check-pointer Cipher:::init! (EVP_CIPHER_CTX_create)))
      (set! self.type type)
      (set! self.ctx ctx))))

(def (cipher-name cipher)
  => :string
  (: (cond
      ((Cipher? cipher)
       (EVP_CIPHER_name (Cipher-type cipher)))
      ((EVP_CIPHER? cipher)
       (EVP_CIPHER_name cipher))
      (else
       (raise-bad-argument cipher-name "cipher or cipher context" cipher)))
     :string))

(def (cipher-block-size cipher)
  => :fixnum
  (: (cond
      ((Cipher? cipher)
       (EVP_CIPHER_block_size (Cipher-type cipher)))
      ((EVP_CIPHER? cipher)
       (EVP_CIPHER_block_size cipher))
      (else
       (raise-bad-argument cipher-block-size "cipher or cipher context" cipher)))
     :fixnum))

(def (cipher-key-length cipher)
  => :fixnum
  (: (cond
      ((Cipher? cipher)
       (EVP_CIPHER_key_length (Cipher-type cipher)))
      ((EVP_CIPHER? cipher)
       (EVP_CIPHER_key_length cipher))
      (else
       (raise-bad-argument cipher-key-length "cipher or cipher context" cipher)))
     :fixnum))

(def (cipher-iv-length cipher)
  => :fixnum
  (: (cond
      ((Cipher? cipher)
       (EVP_CIPHER_iv_length (Cipher-type cipher)))
      ((EVP_CIPHER? cipher)
       (EVP_CIPHER_iv_length cipher))
      (else
       (raise-bad-argument cipher-iv-length "cipher or cipher context" cipher)))
     :fixnum))

(def (cipher-copy (cipher : Cipher))
  => Cipher
  (let* ((ctx (cipher-context cipher))
         (copy (make-instance (object-class cipher))))
    (with-libcrypto-error cipher-copy
      (EVP_CIPHER_CTX_copy (Cipher-ctx copy) ctx))
    copy))

(def (cipher-context (cipher : Cipher))
  => :foreign
  (cond
   ((Cipher-ctx cipher))
   (else
    (raise-contract-violation cipher-context "finalized context" cipher))))

(def (check-cipher-key+iv-length! (cipher : Cipher)
                                  (key    : :u8vector)
                                  (iv     : :u8vector))
  => :void
  (unless (fx= (cipher-key-length cipher)
               (u8vector-length key))
    (raise-bad-argument check-cipher-key+iv-length!  "key length mismatch" cipher key))
  (unless (fx= (cipher-iv-length cipher)
               (u8vector-length iv))
    (raise-bad-argument check-cipher-key+iv-length! "iv length mismatch" cipher iv)))

(defrule (cipher-init! cipher key iv EVP-init)
  (begin
    (check-cipher-key+iv-length! cipher key iv)
    (with-libcrypto-error cipher-init!
      (EVP-init (cipher-context cipher) (Cipher-type cipher) key iv))))

(defrule (cipher-update! cipher
                         out out-start
                         in in-start in-end
                         EVP-update)
  (: (with-libcrypto-error cipher-update!
       (EVP-update (cipher-context cipher)
                   out out-start
                   in in-start in-end)
       (? (not negative?)))
     :fixnum))

(defrule (cipher-final! cipher out out-start EVP-final)
  (: (let* ((ctx (cipher-context cipher))
            (result
             (with-libcrypto-error cipher-final!
               (EVP-final ctx out out-start)
               (? (not negative?)))))
       (set! (Cipher-ctx cipher) #f)
       (foreign-release! ctx)
       result)
     :fixnum))

(def (encrypt-init! (cipher   : Cipher)
                    (key      : :u8vector)
                    (iv       : :u8vector))
  => :void
  (cipher-init! cipher key iv
                EVP_EncryptInit))

(def (encrypt-update! (cipher     : Cipher)
                      (out        : :u8vector)
                      (out-start  :~ (in-range? 0 (u8vector-length out))
                                  :- :fixnum)
                      (in         : :u8vector)
                      (in-start   :~ (in-range? 0 (u8vector-length in))
                                  :- :fixnum := 0)
                      (in-end     :~ (in-range-inclusive? in-start (u8vector-length in))
                                  :- :fixnum := (u8vector-length in)))
  => :fixnum
  (cipher-update! cipher out out-start in in-start in-end
                  EVP_EncryptUpdate))

(def (encrypt-final! (cipher     : Cipher)
                     (out        : :u8vector)
                     (out-start  :~ (in-range? 0 (u8vector-length out))
                                 :- :fixnum := 0))
  => :fixnum
  (cipher-final! cipher out out-start
                 EVP_EncryptFinal))

(def (decrypt-init! (cipher   : Cipher)
                    (key      : :u8vector)
                    (iv       : :u8vector))
  => :void
  (cipher-init! cipher key iv
                EVP_DecryptInit))

(def (decrypt-update! (cipher     : Cipher)
                      (out        : :u8vector)
                      (out-start  :~ (in-range? 0 (u8vector-length out))
                                  :- :fixnum)
                      (in         : :u8vector)
                      (in-start   :~ (in-range? 0 (u8vector-length in))
                                  :- :fixnum := 0)
                      (in-end     :~ (in-range-inclusive? in-start (u8vector-length in))
                                  :- :fixnum := (u8vector-length in)))
  => :fixnum
  (cipher-update! cipher out out-start in in-start in-end
                  EVP_DecryptUpdate))

(def (decrypt-final! (cipher     : Cipher)
                     (out        : :u8vector)
                     (out-start  :~ (in-range? 0 (u8vector-length out))
                                 :- :fixnum := 0))
  => :fixnum
  (cipher-final! cipher out out-start
                 EVP_DecryptFinal))

(defrule (do-cipher! cipher key iv
                     bytes start end
                     cipher-init!
                     cipher-update!
                     cipher-final!)
   (let* ((len (fx- end start))
          (buflen (fx+ len (fx* 2 (cipher-block-size cipher))))
          (buf (make-u8vector buflen)))
     (cipher-init! cipher key iv)
     (let* ((ulen (cipher-update! cipher buf 0 bytes start end))
            (flen (cipher-final! cipher buf ulen))
            (olen (fx+ ulen flen)))
       (when (fx< olen buflen)
         (u8vector-shrink! buf olen))
       buf)))

(def (encrypt (cipher : Cipher)
              (key    : :u8vector)
              (iv     : :u8vector)
              (in     : :u8vector))
  => :u8vector
  (do-cipher! cipher key iv in 0 (u8vector-length in)
              encrypt-init!
              encrypt-update!
              encrypt-final!))

(def (decrypt (cipher : Cipher)
              (key    : :u8vector)
              (iv     : :u8vector)
              (in     : :u8vector))
  => :u8vector
  (do-cipher! cipher key iv in 0 (u8vector-length in)
              decrypt-init!
              decrypt-update!
              decrypt-final!))

(defrule (do-cipher-io! reader writer
                        cipher key iv
                        cipher-init!
                        cipher-update!
                        cipher-final!)
  (begin
    (cipher-init! cipher key iv)
    (let ((input-buffer  (buffer-cache.get default-buffer-size))
          (output-buffer (buffer-cache.get default-buffer-size))
          (buffer-end    (fx- default-buffer-size (fx* 2 (cipher-block-size cipher)))))
      (let loop ((count 0 :- :fixnum))
        => :fixnum
        (let (rd (Reader-read reader input-buffer 0 buffer-end))
          (if (fx= rd 0)
            (let (wr (cipher-final! cipher output-buffer 0))
              (Writer-write writer output-buffer 0 wr)
              (buffer-cache.put! input-buffer)
              (buffer-cache.put! output-buffer)
              (fx+ count wr))
            (let (wr (cipher-update! cipher
                                     output-buffer 0
                                     input-buffer 0 rd))
              (Writer-write writer output-buffer 0 wr)
              (loop (fx+ count wr)))))))))

(def (io-encrypt! (reader : Reader)
                  (writer : Writer)
                  (cipher : Cipher)
                  (key    : :u8vector)
                  (iv     : :u8vector))
  => :fixnum
  (do-cipher-io! reader writer
                 cipher key iv
                 encrypt-init!
                 encrypt-update!
                 encrypt-final!))

(def (io-decrypt! (reader : Reader)
                  (writer : Writer)
                  (cipher : Cipher)
                  (key    : :u8vector)
                  (iv     : :u8vector))
  => :fixnum
  (do-cipher-io! reader writer
                 cipher key iv
                 decrypt-init!
                 decrypt-update!
                 decrypt-final!))

(defsyntax-case defcipher ()
  ((_ name len mode)
   (let ((len  (stx-e #'len))
         (mode (stx-e #'mode)))
     (with-syntax ((evp-cipher
                    (cond
                     (len (stx-identifier #'name "EVP_" #'name "_" len "_" mode))
                     (mode (stx-identifier #'name "EVP_" #'name "_" mode))
                     (else
                      (stx-identifier #'name "EVP_" #'name))))
                   (klass
                    (cond
                     (len (stx-identifier #'name "Cipher::" #'name "-" len "-" mode))
                     (mode (stx-identifier #'name "Cipher::" #'name "-" mode))
                     (else
                      (stx-identifier #'name "Cipher::" #'name)))))
       (with-identifier (::init! ,::init!)
         #'(begin
             (defstruct (klass Cipher) ())
             (defmethod {:init! klass}
               (lambda (self)
                 (let* ((type (evp-cipher))
                        (ctx (check-pointer Cipher:::init! (EVP_CIPHER_CTX_create))))
                   (set! (Cipher-type self) type)
                   (set! (Cipher-ctx self) ctx))))))))))

(defrules defcipher* ()
  ((_ name len (mode ...))
   (begin (defcipher name len mode) ...))
  ((_ name (mode ...))
   (begin (defcipher name #f mode) ...))
  ((_ name)
   (defcipher name #f #f)))

(defcipher* aes 128 (ecb cbc cfb ofb ctr ccm gcm xts))
(defcipher* aes 192 (ecb cbc cfb ofb ctr ccm gcm))
(defcipher* aes 256 (ecb cbc cfb ofb ctr ccm gcm xts))
(defcipher* camellia 128 (ecb cbc cfb ofb))
(defcipher* camellia 192 (ecb cbc cfb ofb))
(defcipher* camellia 256 (ecb cbc cfb ofb))
(defcipher* cast5 (ecb cbc cfb ofb))
(defcipher* bf (ecb cbc cfb ofb))
(defcipher* rc4)
