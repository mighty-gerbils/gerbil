;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; libcrypto digests

(import :std/error
        ./libcrypto
        ./etc
        (for-syntax :std/stxutil))

(export make-digest digest? digest-update! digest-update* digest-final!
        digest-size digest-name digest-copy)

(defstruct digest (type ctx)
  id: std/crypto#digest::t
  constructor: :init!)

(defmethod {:init! digest}
  (lambda (self type)
    (unless (EVP_MD? type)
      (error "Invalid digest type" type))
    (let (ctx (EVP_MD_CTX_create))
      (unless ctx
        (error "Failed to allocate digest context"))
      (with-libcrypto-error (EVP_DigestInit ctx type))
      (struct-instance-init! self type ctx))))

(def (digest-size digest)
  (if (EVP_MD? digest)
    (EVP_MD_size digest)
    (EVP_MD_size (digest-type digest))))

(def (digest-name digest)
  (if (EVP_MD? digest)
    (EVP_MD_name digest)
    (EVP_MD_name (digest-type digest))))

(def (digest-copy digest)
  (let* ((ctx (digest-context digest))
         (copy (make-digest (digest-type digest))))
    (with-libcrypto-error (EVP_MD_CTX_copy (digest-ctx copy) ctx))
    copy))

(def (digest-context digest)
  (or (digest-ctx digest)
      (error "Digest has been finalized" digest)))

(def (digest-update! digest bytes (start #f) (end #f))
  (let* ((start (or start 0))
         (end (or end (u8vector-length bytes))))
    (with-libcrypto-error
     (EVP_DigestUpdate (digest-context digest) bytes start end))))

(def (digest-update* digest in . args)
  (apply call-with-binary-input
    (lambda (bytes start end)
      (with-libcrypto-error
       (EVP_DigestUpdate (digest-context digest) bytes start end)))
    in args))

(def (digest-final! digest (bytes #f))
  (let* ((ctx (digest-context digest))
         (size (EVP_MD_CTX_size ctx))
         (bytes (or bytes (make-u8vector size))))
    (with-libcrypto-error (EVP_DigestFinal ctx bytes))
    (set! (digest-ctx digest) #f)
    bytes))

(defsyntax (define-digest stx)
  (syntax-case stx ()
    ((_ name)
     (with-syntax
         ((digest-md-t   (format-id #'name "digest::~a" #'name))
          (digest-md     (format-id #'name "EVP_~a" #'name))
          (make-digest-t (format-id #'name "make-~a-digest" #'name))
          (digest-t?     (format-id #'name "~a-digest?" #'name)))
       #'(begin
           (def digest-md-t (digest-md))
           (def make-digest-t (and digest-md-t (lambda () (make-digest digest-md-t))))
           (def digest-t?
             (and digest-md-t
                  (lambda (obj)
                    (and (digest? obj)
                         (eq? (EVP_MD_type (digest-type obj))
                              (EVP_MD_type digest-md-t))))))
           (def name
             (and digest-md-t
                  (lambda args
                    (let (digest (make-digest-t))
                      (apply digest-update* digest args)
                      (digest-final! digest)))))
           (export digest-md-t make-digest-t digest-t? name))))))

(define-digest md5)
(define-digest sha1)
(define-digest sha224)
(define-digest sha256)
(define-digest sha384)
(define-digest sha512)
(define-digest ripemd160)
(define-digest whirlpool)

;;; blake2 variants only available since openssl 1.1.0-pre4. Will return #f before 1.1.0.
(define-digest blake2s256)
(define-digest blake2b512)

;; sha3 variants only available since 1.1.1-pre1. Will return #f before 1.1.0.
(define-digest sha3_224)
(define-digest sha3_256)
(define-digest sha3_384)
(define-digest sha3_512)
(define-digest shake128)
(define-digest shake256)

;; NB: keccak256 still not actually available as of openssl 3.0.0-alpha6. Will return #f.
(define-digest keccak256)
