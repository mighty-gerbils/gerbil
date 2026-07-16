;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network listener
(import :std/error
        :std/interface
        :std/io
        :std/iter
        :std/net/ssl
        :std/net/address
        ../interface
        ./base
        ./handshake)
(export address-listen!)

(defcall-interface-method AddressListener listen!
  (address-listen! addr net host))

(def (inet-listen! (self : InetAddress)
                   (net  : network)
                   (addr : HostAddress))
  => ConnectionListener
  (let (srv (ssl-listen self net.tls-context))
    (ConnectionListener
     (connection-listener net srv))))

(def (local-listen! (self : LocalAddress)
                    (net  : network)
                    (addr : HostAddress))
  => ConnectionListener
  (let (srv (unix-listen self.address))
    (ConnectionListener
     (connection-listener net srv))))

(def (connection-listener-close (self : connection-listener))
  (self.sock.close))

(def (connection-listener-next! (self : connection-listener))
  (let loop ()
    (try
     (let (sock (self.sock.accept))
       (new-incoming-connection self.net sock))
     (catch (Closed? e)
       #!eof)
     (catch (e)
       (log.error "error accepting connection"
                  exception: (exception->string e))
       (loop)))))

(implement AddressListener
  (InetAddress
   (listen! __inet-listen!))
  (LocalAddress
   (listen! __local-listen!)))

(implement Closer connection-listener
  (close __connection-listener-close))

(implement Iterator connection-listener
  (next! __connection-listener-next!))

(implement ConnectionListener connection-listener)
