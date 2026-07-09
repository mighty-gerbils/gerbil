;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network implementation
(import :std/error
        :std/interface
        :std/io/interface
        :std/net/ssl
        :std/net/address
        :std/sync/completion
        :std/os/hostname
        :std/log
        :std/iter
        ../interface
        ../config
        ./types
        ./connector
        ./listener)
(export new-network)

(deflogger log name: "/ensemble/network")

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
    (set! self.tgroup (make-thread-group 'network))
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

(def (network-connect1 (self : network)
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

(def (network-connect! (self  : network)
                       (addrs : :list))
  => Connection
  (let (addrs (select-addresses addrs))
    (let loop ((rest addrs))
      (match rest
        ([addr . rest]
         (try (network-connect1 self addr)
              (catch (e)
                (log.error "error connecting to peer"
                           address: addr
                           exception: (exception->string e))
                (loop rest))))
        (else
         (raise-io-error network-connect! "error connecting to peer; all addresses failed" addresses: addrs))))))

(def (select-addresses addrs)
  (let ((localhost (hostid))
        (inet  [])
        (local [])
        (relay []))
    (for (addr addrs : HostAddress)
      (cond
       ((InetAddress? addr.address)
        (set! inet (cons addr inet)))
       ((LocalAddress? addr.address)
        (when (equal? localhost (LocalAddress-hostid addr.address))
          (set! local (cons addr local))))
       ((RelayAddress? addr.address)
        (set! relay (cons addr relay)))))
    (append (reverse! local)
            (reverse! inet)
            (reverse! relay))))

(def (network-listen1 (self : network)
                      (addr : HostAddress))
  => :void
  (do-with-lock self.mx
    (cond
     ((self.listeners.ref addr #f)
      #!void)
     (else
      (using (listener (address-listen! addr.address self addr)
                       : ConnectionListener)
        (self.listeners.set! addr listener)
        (spawn-actor (cut network-listener self listener) []
                     'network/listener self.tgroup))))))

(def (network-listener (self     : network)
                       (listener : ConnectionListener))
  (for (conn listener : Connection)
    (using (peer (conn.peer) : HostAddress)
      (do-with-lock self.mx
        (if (self.incoming.ref peer.host #f)
          (begin
            (log.debug "closing duplicate incoming connection"
                       peer: peer)
            (ignore-errors (conn.close))
            (self.monitor.on-close-connection conn))
          (begin
            (log.debug "incoming connection"
                       peer: peer)
            (self.incoming.set! peer.host conn)))))))

(def (network-listen! (self  : network)
                      (addrs : :list))
  => :void
  (for (addr addrs : HostAddress)
    (try (network-listen1 self addr)
         (catch (e)
           (log.error "error listening to address"
                      address: addr
                      exception: (exception->string e))))))

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
  (listen!      __network-listen!))
