;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble tls contexts
(import :std/error
        :std/net/ssl
        :std/net/ssl/libssl
        :std/crypto/pkey
        ./interface)
(export #t)

(def (make-tls-context (host : :string)
                       (pkey : PrivKey))
  => :foreign
  (TODO make-tls-context))

(def (tls-certificate->host-id (cert :~ X509?))
  => HostID
  (TODO tls-certificate->host-id)
  )
