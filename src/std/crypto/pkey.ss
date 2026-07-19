;;; -*- Gerbil -*-
;;; © fare, vyzo
;;; libcrypto public key signatures
(import :std/error
        :std/ffi
        ./libcrypto
        ./error)
(export #t)

(defstruct PrivKey
  ((type : :fixnum)
   (key :- :foreign))
  transparent: #f)

(defstruct PubKey
  ((type : :fixnum)
   (key :- :foreign))
  transparent: #f)

(def (keygen-ed25519)
  => PrivKey
  (let (ctx (check-pointer keygen-ed25519 (EVP_PKEY_CTX_new_id EVP_PKEY_ED25519 #f)))
    (with-libcrypto-error keygen-ed25519
      (EVP_PKEY_keygen_init ctx)
      (cut >= <> 0))
    (let (evp (check-pointer keygen-ed25519 (EVP_PKEY_keygen ctx)))
      (foreign-release! ctx)
      (PrivKey EVP_PKEY_ED25519 evp))))

(def (private-key->private-bytes (pk : PrivKey))
  => :u8vector
  (key->bytes pk.key EVP_PKEY_get_raw_private_key))

(def (private-key->public-bytes (pk : PrivKey))
  => :u8vector
  (key->bytes pk.key EVP_PKEY_get_raw_public_key))

(def (public-key->bytes (pk : PubKey))
  => :u8vector
  (key->bytes pk.key EVP_PKEY_get_raw_public_key))

(defrule (key->bytes pkey get_raw)
  (let (bytes (make-u8vector (get_raw pkey #f)))
    (with-libcrypto-error key->bytes
      (get_raw pkey bytes)
      (cut > <> 0))
    bytes))

(def (bytes->ed25519-private-key (bytes : :u8vector))
  => PrivKey
  (bytes->private-key EVP_PKEY_ED25519 bytes))

(def (bytes->ed25519-public-key (bytes : :u8vector))
  => PubKey
  (bytes->public-key EVP_PKEY_ED25519 bytes))

(def (bytes->private-key (type  : :fixnum)
                         (bytes : :u8vector))
  => PrivKey
  (PrivKey type
           (check-pointer bytes->private-key
                          (EVP_PKEY_new_raw_private_key type #f bytes))))
(def (bytes->public-key (type  : :fixnum)
                        (bytes : :u8vector))
  => PubKey
  (PubKey type
          (check-pointer bytes->public-key
                         (EVP_PKEY_new_raw_public_key type #f bytes))))

(def (digest-sign! (pk    : PrivKey)
                   (bytes : :u8vector)
                   (sig   : :u8vector := (make-u8vector 256)))
  => :u8vector
  (let (mctx (check-pointer digest-sign! (EVP_MD_CTX_new)))
    (with-libcrypto-error digest-sign! (EVP_DigestSignInit mctx pk.key))
    (let (len (with-libcrypto-error digest-sign!
                (EVP_DigestSign mctx sig bytes)))
      (when (fx< len (u8vector-length sig))
        (u8vector-shrink! sig len))
      (foreign-release! mctx)
      sig)))

(def (digest-verify! (pk    : PubKey)
                     (bytes : :u8vector)
                     (sig   : :u8vector))
  => :boolean
  (let (mctx (check-pointer digest-verify! (EVP_MD_CTX_new)))
    (with-libcrypto-error digest-verify!
      (EVP_DigestVerifyInit mctx pk.key))
    (begin0 (fx= 1 (EVP_DigestVerify mctx sig bytes))
      (foreign-release! mctx))))
