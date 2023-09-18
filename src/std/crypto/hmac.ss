;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; libcrypto hmac

(import :std/error
        ./libcrypto
        ./etc
        ./digest)
(export hmac hmac? make-hmac
        hmac-init! hmac-update! hmac-final!
        hmac-digest hmac-md5 hmac-sha1 hmac-sha256 hmac-sha384 hmac-sha512)

(defstruct hmac (md ctx)
  id: std/crypto#hmac::t
  constructor: :init!)

(defmethod {:init! hmac}
  (lambda (self md)
    (unless (EVP_MD? md)
      (error "Invalid digest type" md))
    (let (ctx (HMAC_CTX_create))
      (unless ctx
        (error "Failed to allocate hmac context"))
      (struct-instance-init! self md ctx))))

(def (hmac-init! hmac key)
  (with-libcrypto-error
   (HMAC_Init (hmac-ctx hmac) key (hmac-md hmac))))

(def (hmac-update! hmac bytes (start #f) (end #f))
  (let* ((start (or start 0))
         (end (or end (u8vector-length bytes))))
    (with-libcrypto-error
     (HMAC_Update (hmac-ctx hmac) bytes start end))))

(def (hmac-final! hmac (bytes #f))
  (let* ((size (EVP_MD_size (hmac-md hmac)))
         (bytes (or bytes (make-u8vector size))))
    (with-libcrypto-error
     (HMAC_Final (hmac-ctx hmac) bytes))
    bytes))

(def (hmac-digest md key bytes (start #f) (end #f))
  (unless (EVP_MD? md)
    (error "Bad digest type" md))
  (let* ((start (or start 0))
         (end (or end (u8vector-length bytes)))
         (size
          (EVP_MD_size md))
         (digest
          (make-u8vector size)))
    (HMAC md key bytes start end digest)
    digest))

(defrules define-hmac ()
  ((_ name digest)
   (def (name key bytes (start #f) (end #f))
     (hmac-digest digest key bytes start end))))

(define-hmac hmac-md5 digest::md5)
(define-hmac hmac-sha1 digest::sha1)
(define-hmac hmac-sha256 digest::sha256)
(define-hmac hmac-sha384 digest::sha384)
(define-hmac hmac-sha512 digest::sha512)
