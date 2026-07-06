;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network implementation
(import :std/error
        :std/net/ssl
        ../interface
        ../config)
(export new-network)

(def (new-network (tls-context :~ (? (or not SSL_CTX?)))
                  (sec-ctx : SecurityContext)
                  (evt-bus : EventBus)
                  (limits : Limits))
  (TODO new-network))
