;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network implementation
(import :std/error
        :std/interface
        :std/io/interface
        :std/net/ssl
        ../interface
        ../config
        ./types
        ./connector
        ./listener)
(export new-network)

(defmethod {:init! network}
  (lambda (self (tls-context :~ (? (or not SSL_CTX?)))
           (security    : SecurityContext)
           (event-bus   : EventBus)
           (limits      : Limits)
           (monitor     : NetworkMonitor))
    (set! self.tls-context tls-context)
    (set! self.security security)
    (set! self.event-bus event-bus)
    (set! self.limits limits)
    (set! self.monitor monitor)
    (set! self.mx (make-mutex 'network))
    ))

(def (new-network (tls-context :~ (? (or not SSL_CTX?)))
                  (security    : SecurityContext)
                  (event-bus   : EventBus)
                  (limits      : Limits)
                  (monitor     : NetworkMonitor))
  (Network
   (network tls-context
            security
            event-bus
            limits
            monitor)))

(def (network-connect! (self : network)
                       (peer : HostAddress))
  => Connection
  (TODO network-connect!))

(def (network-connect-any! (self  : network)
                           (addrs : :list))
  => Connection
  (TODO network-connect-any!))

(def (network-listen! (self : network)
                      (addr : HostAddress))
  => :void
  (TODO network-listen!))

(def (network-listen-all! (self  : network)
                          (addrs : :list))
  => :void
  (TODO network-listen-all!))

(def (network-close (self : network))
  (TODO network-close))

(implement Closer network
  (close __network-close))

(implement Network network
  (peers
   (lambda (self)
     (TODO peers)))
  (connections
   (lambda (self)
     (TODO connections)))
  (peer-connections
   (lambda (self host)
     (TODO peer-connections)))
  (listening
   (lambda (self)
     (TODO listening)))
  (connect!     __network-connect!)
  (connect-any! __network-connect-any!)
  (listen!      __network-listen!)
  (listen-all!  __network-listen-all!))
