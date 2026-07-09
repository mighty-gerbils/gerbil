;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network connector
(import :std/error
        :std/interface
        :std/io
        :std/net/ssl
        :std/net/address
        :std/sync/completion
        ../interface
        ./types)
(export address-connect!)

(defcall-interface-method AddressConnector connect!
  (address-connect! addr net host))

(def (inet-connect! (self : InetAddress)
                    (net  : network)
                    (addr : HostAddress))
  => Completion
  (TODO inet-connect!)
  )

(def (local-connect! (self : LocalAddress)
                     (net  : network)
                     (addr : HostAddress))
  => Completion
  (TODO local-connect!)
  )

(implement AddressConnector
  (InetAddress
   (connect! __inet-connect!))
  (LocalAddress
   (connect! __local-connect!)))
