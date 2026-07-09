;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network listener
(import :std/error
        :std/interface
        :std/io
        :std/net/ssl
        :std/net/address
        ../interface
        ./types)
(export address-listen!)

(defcall-interface-method AddressListener listen!
  (address-listen! addr net host))

(def (inet-listen! (self : InetAddress)
                   (net  : network)
                   (addr : HostAddress))
  => ConnectionListener
  (TODO inet-listen!)
  )

(def (local-listen! (self : LocalAddress)
                    (net  : network)
                    (addr : HostAddress))
  => ConnectionListener
  (TODO local-listen!)
  )

(implement AddressListener
  (InetAddress
   (listen! __inet-listen!))
  (LocalAddress
   (listen! __local-listen!)))
