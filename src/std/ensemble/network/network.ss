;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network implementation
(import :std/error
        :std/interface
        :std/io/interface
        :std/net/ssl
        :std/sync/completion
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
    (set! self.outgoing (make-hash-table))
    (set! self.incoming (make-hash-table))
    (set! self.pending (make-hash-table))
    (set! self.listeners (make-hash-table))
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
  (let (state
        (do-with-lock self.mx
          (cond
           ((self.outgoing.ref peer.host #f))
           ((self.incoming.ref peer.host #f))
           ((self.pending.ref peer.host #f))
           (else
            (let (completion (address-connect! peer.address self peer))
              (self.pending.set! peer.host completion)
              completion)))))
    (cond
     ((Connection? state)
      state)
     ((Completion? state)
      (: (completion-wait! state) Connection))
     (else
      (BUG "unexpected connection state" state)))))

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
  (peer-connection
   (lambda (self host)
     (TODO peer-connection)))
  (listening
   (lambda (self)
     (TODO listening)))
  (connect!     __network-connect!)
  (connect-any! __network-connect-any!)
  (listen!      __network-listen!)
  (listen-all!  __network-listen-all!))
