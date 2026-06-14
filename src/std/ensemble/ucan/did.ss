;;; -*- Gerbil -*-
;;; © vyzo
;;; did utilities
(import :std/error
        :std/crypto/pkey
        :std/crypto/libcrypto
        :std/encoding/multibase)
(export #t)

(def DID-KEY-ED25519 #xed)
(def did-key-prefix "did:key:")

(def (private-key->did (privk : PrivKey))
  => :string
  (let* ((type privk.type)
         (code
          (cond
           ((fx= type EVP_PKEY_ED25519)
            DID-KEY-ED25519)
           (else
            (raise-bad-argument private-key->did "unknown key type" type))))
         (bytes (private-key->public-bytes privk)))
    (public-key-bytes->did code bytes)))

(def (public-key-bytes->did (code  : :fixnum)
                            (bytes : :u8vector))
  => :string
  (string-append did-key-prefix (multibase-encode code bytes)))

(def (did->public-key (did : :string))
  => PubKey
  (if (string-prefix? did-key-prefix did)
    (let ((values code bytes)
          (multibase-decode
           (substring did (string-length did-key-prefix) (string-length did))))
      (cond
       ((fx= code DID-KEY-ED25519)
        (bytes->ed25519-public-key bytes))
       (else
        (raise-contract-violation did->public-key "unknwon key type" code))))
    (raise-bad-argument did->public-key "unknown did type" did)))
