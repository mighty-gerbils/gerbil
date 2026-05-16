;;; -*- Gerbil -*-
;;; © vyzo
;;; address resolution
(import ./address
        ./inet)
(export #t)

(def (resolve-address->endpoint (addr : Address))
  => EndpointAddress
  XXX)
