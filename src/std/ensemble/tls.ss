;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble tls contexts
(import :std/error
        :std/net/ssl
        :std/crypto/pkey)
(export make-tls-context)

(def (make-tls-context (host : :string)
                       (did  : :string)
                       (pkey : PrivKey))
  => :foreign
  (TODO make-tls-context))
