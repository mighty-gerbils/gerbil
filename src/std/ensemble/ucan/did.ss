;;; -*- Gerbil -*-
;;; © vyzo
;;; did utilities
(import :std/error
        :std/crypto/pkey
        :std/crypto/libcrypto
        :std/encoding/multibase)
(export #t)

(def DID-KEY-ED25519 #xed)
(def DID-KEY-ED25519-code #u8(#xed #x01))
(def did-key-prefix "did:key:")

(def (private-key->did (privk : PrivKey))
  => :string
  (let* ((type privk.type)
         (code
          (cond
           ((fx= type EVP_PKEY_ED25519)
            DID-KEY-ED25519-code)
           (else
            (raise-bad-argument private-key->did "unknown key type" type))))
         (bytes (private-key->public-bytes privk)))
    (public-key-bytes->did code bytes)))

(def (public-key->did (pubk : PubKey))
  => :string
  (let* ((type pubk.type)
         (code
          (cond
           ((fx= type EVP_PKEY_ED25519)
            DID-KEY-ED25519-code)
           (else
            (raise-bad-argument private-key->did "unknown key type" type))))
         (bytes (public-key->bytes pubk)))
    (public-key-bytes->did code bytes)))

(def (public-key-bytes->did (code  : :u8vector)
                            (bytes : :u8vector))
  => :string
  (string-append
   did-key-prefix
   (multibase-encode multibase-base64-url
                     (u8vector-append code bytes))))

(def (did->public-key (did : :string))
  => PubKey
  (if (string-prefix? did-key-prefix did)
    (let* ((decoded
            (multibase-decode
             (substring did (string-length did-key-prefix) (string-length did))))
           ;; TODO proper multicodec code decoding
           (code (subu8vector decoded 0 2))
           (bytes (subu8vector decoded 2 (u8vector-length decoded))))
      (cond
       ((equal? code DID-KEY-ED25519-code)
        (bytes->ed25519-public-key bytes))
       (else
        (raise-contract-violation did->public-key "unknown key type" code))))
    (raise-bad-argument did->public-key "unknown did type" did)))
