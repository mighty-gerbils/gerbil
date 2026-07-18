;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble tls contexts
(import :std/error
        :std/net/ssl
        :std/net/ssl/libssl
        :std/crypto/libcrypto
        :std/crypto/pkey
        :std/ffi
        ./interface
        ./ucan/did)
(export #t)

(def (make-tls-context (host : :string)
                       (pkey : PrivKey))
  => :foreign
  (check-pointer make-tls-context
                 (make-self-signed-tls-context pkey.key host)))

(def (tls-certificate->host-id (cert :~ X509?))
  => HostID
  (let* ((pubk (X509_get_pubkey cert))
         (pubk (PubKey (EVP_PKEY_type pubk) pubk)))
    (HostID (X509_get_common_name cert)
            (public-key->did pubk))))
