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

(defstruct Digest
  ((type :- :foreign)  ; EVP_MD?
   (ctx  :- :foreign)) ; EVP_MD_CTX?
  constructor: :init!
  transparent: #f)

(defmethod {:init! Digest}
  (lambda (self (type :~ EVP_MD? :- :foreign))
    (let (ctx (check-pointer Digest:::init! (EVP_MD_CTX_new)))
      (with-libcrypto-error Digest:::init! (EVP_DigestInit ctx type))
      (set! self.type type)
      (set! self.ctx ctx))))

(def (digest-size digest)
  => :fixnum
  (: (cond
      ((Digest? digest)
       (EVP_MD_size (Digest-type digest)))
      ((EVP_MD? digest)
       (EVP_MD_size digest))
      (else
       (raise-bad-argument digest-size "digest or digest context" digest)))
     :fixnum))

(def (digest-name digest)
  => :string
  (: (cond
      ((Digest? digest)
       (EVP_MD_name (Digest-type digest)))
      ((EVP_MD? digest)
       (EVP_MD_name digest))
      (else
       (raise-bad-argument digest-name "digest or digest context" digest)))
     :string))

(def (digest-context (digest : Digest))
  => :foreign
  (cond
   ((Digest-ctx digest))
   (else
    (raise-contract-violation digest-context "finalized context" digest))))

(def (digest-copy (digest : Digest))
  => Digest
  (let* ((ctx (digest-context digest))
         (copy (make-instance (object-class digest))))
    (with-libcrypto-error digest-copy
      (EVP_MD_CTX_copy (Digest-ctx copy) ctx))
    copy))

(def (digest-update! (digest : Digest)
                     (bytes  : :u8vector)
                     (start  :~ (in-range? 0 (fxmax (u8vector-length bytes) 1))
                             :- :fixnum :=  0)
                     (end    :~ (in-range-inclusive? start (u8vector-length bytes))
                             :- :fixnum := (u8vector-length bytes)))
  => :void
  (with-libcrypto-error digest-update!
    (EVP_DigestUpdate (digest-context digest) bytes start end)))

(def (digest-final! (digest : Digest)
                    (bytes  :? :u8vector := #f))
  => :u8vector
  (let* ((ctx (digest-context digest))
         (size (EVP_MD_CTX_size ctx))
         (bytes
          (if bytes
            (begin
              (unless (fx= (u8vector-length bytes) size)
                (raise-contract-violation digest-final! "invalid u8vector size" bytes size))
              bytes)
            (make-u8vector size))))
    (with-libcrypto-error digest-final!
      (EVP_DigestFinal ctx bytes))
    (set! digest.ctx #f)
    (foreign-release! ctx)
    bytes))

(def (digest-update-from-reader! (digest : Digest)
                                 (reader : Reader))
  => :integer
  (declare (mostly-fixnum))
  (let* ((ctx (digest-context digest))
         (buffer (buffer-cache.get default-buffer-size)))
    (let loop ((count 0 :- :integer))
      => :integer
      (let (rd (reader.read buffer))
        (if (fx= rd 0)
          (begin
            (buffer-cache.put! buffer)
            count)
          (begin
            (with-libcrypto-error digest-update-from-reader!
              (EVP_DigestUpdate (digest-context digest) buffer 0 rd))
            (loop (+ count rd))))))))

(def (digest-from-reader! (digest : Digest)
                          (reader : Reader))
  (digest-update-from-reader! digest reader)
  (digest-final! digest))

(defsyntax-case defdigest ()
  ((_ name)
   (with-identifiers
       ((evp-digest #'name "EVP_" #'name)
        (klass      #'name "Digest::" #'name)
        (available? #'name #'klass "-available?")
        (:init      ,:init!))
     #'(begin
         (def (available?)
           => :boolean
           (and (evp-digest) #t))
         (defstruct (klass Digest) ())
         (defmethod {:init! klass}
           (lambda (self)
             (let (type (evp-digest))
               (if type
                 (let (ctx (check-pointer Digest:::init! (EVP_MD_CTX_new)))
                   (with-libcrypto-error Digest:::init! (EVP_DigestInit ctx type))
                   (set! (Digest-type self) type)
                   (set! (Digest-ctx self) ctx))
                 (raise-contract-violation Digest:::init! "digest is not available in this configuration" 'name)))))
         (def (name (bytes : :u8vector))
           => :u8vector
           (let (digest (klass))
             (digest-update! digest bytes)
             (digest-final! digest)))))))

(defdigest md5)
(defdigest sha1)
(defdigest sha224)
(defdigest sha256)
(defdigest sha384)
(defdigest sha512)
(defdigest ripemd160)
(defdigest whirlpool)

;;; blake2 variants only available since openssl 1.1.0-pre4. Will return #f before 1.1.0.
(defdigest blake2s256)
(defdigest blake2b512)

;; sha3 variants only available since 1.1.1-pre1. Will return #f before 1.1.0.
(defdigest sha3_224)
(defdigest sha3_256)
(defdigest sha3_384)
(defdigest sha3_512)
(defdigest shake128)
(defdigest shake256)

;; NB: keccak256 still not actually available as of openssl 3.0.0-alpha6. Will return #f.
(defdigest keccak256)
