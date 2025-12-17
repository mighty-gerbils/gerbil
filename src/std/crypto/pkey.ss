;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; libcrypto public-key signatures

(import (only-in :gerbil/gambit foreign-release!)
        :std/error
	:std/sugar
	:std/format
        ./libcrypto
        ./etc)

(export
  pkey-type pkey-type-id pkey-is-a? pkey?
  bytes->pkey pkey->bytes
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

;;; * Meta: pkey-[type|type-id|is-a?|?]

(def pkey-type EVP_PKEY_get0_type_name)
(def pkey-type-id EVP_PKEY_get_base_id)
(def pkey-is-a? EVP_PKEY_is_a)
(def (pkey? k) (and (EVP_PKEY? k) #t))

;;; * EVP_PKEY_* Aliases: 'FOO = EVP_PKEY_FOO

(def evp-pkey-alias-table (make-hash-table))

(def (evp-pkey-alias name)
  (def (find-alias)
    (ignore-errors
     (eval (string->symbol (format "std/crypto/libcrypto#EVP_PKEY_~a" name)))))
  
  (or (hash-get evp-pkey-alias-table name)
      (let (t (find-alias))
	(if (not t) t 
	    (begin (hash-put! evp-pkey-alias-table name t)
		   t)))))

(def (evp-pkey-enum n)
  (if (number? n) n
      (evp-pkey-alias n)))

;;; * EVP_* Aliases: 'sha256 = EVP_sha256

(def evp-alias-table (make-hash-table))

(def (evp-alias name)
  (def (find-alias)
    (ignore-errors
     (eval (string->symbol (format "std/crypto/libcrypto#EVP_~a" name)))))
  
  (or (hash-get evp-alias-table name)
      (let (t (find-alias))
	(if (not t) t 
	    (begin (hash-put! evp-alias-table name t)
		   t)))))

(def (evp-md md)
  (and md (if (EVP_MD? md) md
	      (or (let (proc (evp-alias md))
		    (and proc (proc)))
		  (error "Cannot find cryptographic hash model function" md)))))

;;; * pkey types and subtypes

(def pkey-types-with-raw-private-key
  (map evp-pkey-enum
       '(HMAC POLY1305 SIPHASH X25519 ED25519 X448 ED448)))

(def (pkey-type-raw-private-key? type) 
  (memv (evp-pkey-enum type) pkey-types-with-raw-private-key))

(def pkey-types-with-raw-public-key
  (map evp-pkey-enum
       '(X25519 ED25519 X448 ED448)))

(def (pkey-type-raw-public-key? type) 
  (memv (evp-pkey-enum type) pkey-types-with-raw-public-key))

;;; * bytes->[pkey|private-key|public-key]

(def (bytes->pkey bytes
		  type: (type #f)
		  input-type: (input-type #f)
		  raw?: (raw? #f)
		  engine: (engine #f)
		  selection: (selection 0))
  (if raw?
    ((cond ((eq? raw? 'private)
	    bytes->private-key)
	   ((eq? raw? 'public)
	    bytes->private-key))
     type bytes raw?: #t engine: engine)
    (let (in (BIO_new_mem_buf bytes))
      (EVP_PKEY_new_from_bio
       in input-type type (evp-pkey-enum selection)))))

(def (%bytes->pkey type bytes engine raw? input-type selection raw-fn)
  (let* ((type-id (evp-pkey-enum type))
	 (raw? (if (procedure? raw?) (raw? type-id) raw?)))
    (if raw?
      (raw-fn type-id engine bytes)
      (bytes->pkey bytes type: type input-type: input-type selection: selection))))


#;(def (bytes->private-key type bytes engine: (engine #f))
  (EVP_PKEY_new_raw_private_key type engine bytes))
#;(def (bytes->public-key type bytes engine: (engine #f))
  (EVP_PKEY_new_raw_public_key type engine bytes))
  
(def (bytes->private-key type bytes
			 engine: (engine #f)
			 raw?: (raw? pkey-type-raw-private-key?)
			 input-type: (input-type #f))
  (%bytes->pkey type bytes engine raw? input-type 0
		EVP_PKEY_new_raw_private_key))

(def (bytes->public-key type bytes
			engine: (engine #f)
			raw?: (raw? pkey-type-raw-public-key?)
			input-type: (input-type #f))
  (%bytes->pkey type bytes engine raw? input-type
		EVP_PKEY_PUBLIC_KEY EVP_PKEY_new_raw_public_key))


;;; * [pkey|private-key|public-key]->bytes

(def (bytes-argument bytes)
  (cond
   ((u8vector? bytes) bytes)
   ((fixnum? bytes) (make-u8vector bytes))
   ((not bytes) #f)
   (else (error "invalid bytes argument" bytes))))

(def (bytes-result bytes len)
  (cond
   ((zero? len) #f)
   ((= len (u8vector-length bytes)) bytes)
   ((< len (u8vector-length bytes))
    (u8vector-shrink! bytes len)
    bytes)
   (else #f)))

(def (BIO-read-all bio buff (parents []))
  (let ((bend (u8vector-length buff))
	(readn (BIO_read bio buff -1)))
    (if (= bend readn)
      (BIO-read-all bio (make-u8vector bend) (cons buff parents))
      (let ((len (apply + readn (map u8vector-length parents)))
	    (cats (reverse (cons buff parents))))
	(if (< len 0) (make-u8vector 0)
	    (bytes-result (u8vector-concatenate cats) len))))))

(def (pkey->bytes pkey
		  bytes: (bytes #f)
		  format: (format "PEM")
		  structure: (structure #f)
		  raw?: (raw? #f)
		  selection: (selection EVP_PKEY_KEYPAIR))
  (let (bytes (bytes-argument bytes))
    (if raw?
    ((cond ((eq? raw? 'private) private-key->bytes)
	   ((eq? raw? 'public) public-key->bytes))
     pkey bytes)
    (let ((out (BIO_new (BIO_s_mem)))
	  (bytes (or bytes (make-u8vector 4096))))
      (EVP_PKEY_to_bio pkey out format structure (evp-pkey-enum selection))
      (BIO-read-all out bytes)))))

(def (key->bytes pkey bytes get_raw)
  (def b (or (bytes-argument bytes) (make-u8vector (get_raw pkey #f))))
  (def len (get_raw pkey b))
  (bytes-result b len))

(def (%pkey->bytes pkey bytes raw? format structure selection raw-fn)
  (let* ((type-id (EVP_PKEY_get_base_id pkey))
	 (raw? (if (procedure? raw?) (raw? type-id) raw?)))
    (if raw? 
      (key->bytes pkey bytes raw-fn)
      (pkey->bytes pkey bytes: bytes format: format
		   structure: structure selection: selection))))

#;(def (private-key->bytes pkey (bytes #f))
  (key->bytes pkey bytes EVP_PKEY_get_raw_private_key))

#;(def (public-key->bytes pkey (bytes #f))
  (key->bytes pkey bytes EVP_PKEY_get_raw_public_key))

(def (private-key->bytes pkey (bytes #f)
			 raw?: (raw? pkey-type-raw-private-key?)
			 format: (format "PEM")
			 structure: (structure #f))
  (%pkey->bytes pkey bytes raw? format structure
		EVP_PKEY_KEYPAIR EVP_PKEY_get_raw_private_key))
  
(def (public-key->bytes pkey (bytes #f)
			 raw?: (raw? pkey-type-raw-public-key?)
			 format: (format "PEM")
			 structure: (structure #f))
  (%pkey->bytes pkey bytes raw? format structure
		EVP_PKEY_PUBLIC_KEY EVP_PKEY_get_raw_public_key))

(def (digest-sign pkey bytes engine: (engine #f) sig: (sig #f) model: (md #f))
  (let ((mctx (EVP_MD_CTX_create))
	(md (evp-md md)))
    (unless mctx
      (error "Cannot create signing context"))
    (unwind-protect
      (begin
        (with-libcrypto-error (EVP_DigestSignInit mctx md pkey))
        (let* ((s (or (bytes-argument sig) (make-u8vector 8192)))
               (result (EVP_DigestSign mctx s bytes)))
          (if (##fxzero? result)
            (raise-libcrypto-error digest-sign)
            (bytes-result s result))))
      (foreign-release! mctx))))

;; NB: for other key types, there may be parameters to set before DigestVerify

(def (digest-verify pkey sig bytes engine: (engine #f) model: (md #f))
  (let ((mctx (EVP_MD_CTX_create))
	(md (evp-md md)))
    (unless mctx
      (error "Cannot create signing context"))
    (unwind-protect
      (begin
        (with-libcrypto-error (EVP_DigestVerifyInit mctx md engine pkey))
        (= 1 (EVP_DigestVerify mctx sig bytes)))
      (foreign-release! mctx))))
