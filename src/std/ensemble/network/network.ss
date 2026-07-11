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
        :std/iter
        ../interface
        ../config
        ./types
        ./connector
        ./listener)
(export new-network)

(defmethod {:init! network}
  (lambda (self (host        : HostID)
           (tls-context :~ SSL_CTX?)
           (security    : SecurityContext)
           (limits      : Limits)
           (monitor     : NetworkMonitor))
    (set! self.host host)
    (set! self.tls-context tls-context)
    (set! self.security security)
    (set! self.limits limits)
    (set! self.monitor monitor)
    (set! self.tgroup (make-thread-group 'network))
    (set! self.mx (make-mutex 'network))
    (set! self.outgoing (make-hash-table))
    (set! self.incoming (make-hash-table))
    (set! self.pending (make-hash-table))
    (set! self.listeners (make-hash-table))
    ))

(def (new-network (host        : HostID)
                  (tls-context :~ SSL_CTX?)
                  (security    : SecurityContext)
                  (limits      : Limits)
                  (monitor     : NetworkMonitor))
  (Network
   (network host
            tls-context
            security
            limits
            monitor)))

(def (network-connect1 (self : network)
                       (peer : HostAddress))
  => Connection
  (when (equal? peer.host self.host)
    (raise-contract-violation network-connect! "cannot connect to self"))
  (let (state
        (do-with-lock self.mx
          (cond
           (self.closed?
            (raise-io-closed network-connect! "network closed"))
           ((self.outgoing.ref peer.host #f))
           ((self.incoming.ref peer.host #f))
           ((self.pending.ref peer.host #f))
           (else
            (log.debug "connecting to peer"
                       peer: peer)
            (let (completion (address-connect! peer.address self peer))
              (self.pending.set! peer.host completion)
              completion)))))
    (cond
     ((Connection? state)
      state)
     ((Completion? state)
      (def (wait!)
        (try (completion-wait! state)
             (catch (e)
               (do-with-lock self.mx
                 (self.pending.delete! peer.host))
               (raise e))))
      (:- (using (conn (wait!) : Connection)
            (do-with-lock self.mx
              (self.pending.delete! peer.host)
              (cond
               (self.closed?
                (ignore-errors (conn.close))
                (raise-io-closed network-connect! "network closed"))
               (else
                (log.debug "connected to peer"
                           peer: peer)
                (try
                 (self.monitor.on-open-connection conn)
                 (catch (e)
                   (log.debug "connection rejected"
                              exception: (exception->string e))
                   (ignore-errors (conn.close))
                   (raise e)))
                (self.outgoing.set! peer.host conn)
                conn))))
         Connection))
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
        (local []))
    (for (addr addrs : HostAddress)
      (cond
       ((InetAddress? addr.address)
        (set! inet (cons addr inet)))
       ((LocalAddress? addr.address)
        (when (equal? localhost (LocalAddress-hostid addr.address))
          (set! local (cons addr local))))))
    (append (reverse! local)
            (reverse! inet))))

(def (network-listen1 (self : network)
                      (addr : HostAddress))
  => :void
  (do-with-lock self.mx
    (cond
     (self.closed?
      (raise-io-closed network-connect! "network closed"))
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
        (cond
         (self.closed?
          (ignore-errors (conn.close)))
         ((self.incoming.ref peer.host #f)
          (log.debug "closing duplicate incoming connection"
                     peer: peer)
          (ignore-errors (conn.close)))
         (else
          (let/cc continue
            (log.debug "incoming connection"
                       peer: peer)
            (try
             (self.monitor.on-open-connection conn)
             (catch (e)
               (log.debug "connection rejected"
                          exception: (exception->string e))
               (ignore-errors (conn.close))
               (continue)))
            (self.incoming.set! peer.host conn))))))))

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
  (do-with-lock self.mx
    (unless self.closed?
      (set! self.closed? #t)
      (for (c (in-hash-values self.outgoing) : Connection)
        (ignore-errors (c.close))
        (self.monitor.on-close-connection c))
      (self.outgoing.clear!)
      (for (c (in-hash-values self.incoming) : Connection)
        (ignore-errors (c.close))
        (self.monitor.on-close-connection c))
      (self.incoming.clear!)
      (for (l (in-hash-values self.listeners) : ConnectionListener)
        (ignore-errors (l.close)))
      (self.listeners.clear!)
      (for (c (in-hash-values self.pending) : Completion)
        (ignore-errors (completion-error! c (Closed "network closed"))))
      (self.pending.clear!))))

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
