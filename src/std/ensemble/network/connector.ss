;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network connector
(import :std/error
        :std/interface
        :std/io
        :std/net/ssl
        :std/net/address
        ../interface
        ./types)
(export address-connect!)

(defcall-interface-method AddressConnector connect!
  (address-connect! addr net host))

(def (inet-connect! (self : InetAddress)
                    (net  : network)
                    (addr : HostAddress))
  => Connection
  (TODO inet-connect!)
  )

(def (local-connect! (self : LocalAddress)
                     (net  : network)
                     (addr : HostAddress))
  => Connection
  (TODO local-connect!)
  )

(def (relay-connect! (self : RelayAddress)
                     (net  : network)
                     (addr : HostAddress))
  => Connection
  (TODO relay-connect!)
  )

(implement AddressConnector
  (InetAddress
   (connect! __inet-connect!))
  (LocalAddress
   (connect! __local-connect!))
  (RelayAddress
   (connect! __relay-connect!)))
