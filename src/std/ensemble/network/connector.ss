;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network connector
(import :std/error
        :std/interface
        :std/io
        :std/log
        :std/net/ssl
        :std/net/address
        :std/sync/completion
        :std/os/hostname
        ../interface
        ./base
        ./handshake)
(export address-connect!)

(defcall-interface-method AddressConnector connect!
  (address-connect! addr net host))

(def (inet-connect! (self : InetAddress)
                    (net  : network)
                    (addr : HostAddress))
  => Completion
  (let (completion (Completion 'connect))
    (spawn/net (cut connect!
                    net addr
                    completion
                    (cut ssl-connect self
                         context: net.tls-context
                         host:    addr.host.name))
                 ['net/connect addr]
                 net)
    completion))

(def (local-connect! (self : LocalAddress)
                     (net  : network)
                     (addr : HostAddress))
  => Completion
  (let (completion (Completion 'connect))
    (spawn/net (cut connect!
                    net addr
                    completion
                    (cut unix-connect self.address))
               ['net/connect addr]
               net)
    completion))

(def (connect! (net        : network)
               (addr       : HostAddress)
               (completion : Completion)
               (do-connect : :procedure))
  (try
   (let* ((sock (do-connect))
          (conn (new-outgoing-connection net sock addr.host)))
     (try (completion-post! completion conn)
          (catch (e)
            (ignore-errors (Connection-close conn)))))
   (catch (e)
     (completion-error! completion e))))

(implement AddressConnector
  (InetAddress
   (connect! __inet-connect!))
  (LocalAddress
   (connect! __local-connect!)))
