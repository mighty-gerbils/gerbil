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
    (set! self.outgoing (make-hash-table))
    (set! self.incoming (make-hash-table))
    (set! self.pending (make-hash-table))
    (set! self.listeners (make-hash-table))
    (set! self.thread
      (spawn/net (cut network-thread self)
                 'network
                 self))))

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

(def (network-thread (self : network))
  (until self.closed?
    (let (op (thread-receive))
      (network-dispatch! op self)))
  ;; closed: linger while there are pending completions
  (while (fx> (self.pending.length) 0)
    (let (op (thread-receive))
      (network-dispatch! op self))))

(def (network-dispatch-connect (op : NetworkConnect) (net : network))
  (cond
   (net.closed?
    (completion-error! op.completion (Closed "network closed")))
   ((or (net.outgoing.ref op.peer.host #f)
        (net.incoming.ref op.peer.host #f))
    => (cut completion-post! op.completion <>))
   ((net.pending.ref op.peer #f)
    => (lambda (completions)
         (net.pending.set! op.peer (cons op.completion completions))))
   (else
    (net.pending.set! op.peer [op.completion])
    (let (completion (address-connect! op.peer.address net op.peer))
      (spawn/net (cut network-connect-complete net op.peer completion)
                 ['network/connect-complete op.peer]
                 net)))))

(def (network-connect-complete (net        : network)
                               (peer       : HostAddress)
                               (completion : Completion))
  (try
   (using (conn (completion-wait! completion) : Connection)
     (net.monitor.on-open-connection conn)
     (thread-send net.thread (NetworkConnectComplete peer conn)))
   (catch (e)
     (thread-send net.thread (NetworkConnectError peer e)))))

(def (network-dispatch-connect-complete (op  : NetworkConnectComplete)
                                        (net : network))
  (defrule (complete! how what)
    (cond
     ((net.pending.ref op.peer #f)
      => (lambda (completions)
           (net.pending.delete! op.peer)
           (for (c (reverse! completions) :- Completion)
             (how c what))))))

  (def (complete-closed!)
    (ignore-errors (op.conn.close))
    (net.monitor.on-close-connection op.conn)
    (complete! completion-error! (Closed "network closed")))

  (def (complete-duplicate! other-conn)
    (ignore-errors (op.conn.close))
    (net.monitor.on-close-connection op.conn)
    (complete! completion-post! other-conn))

  (def (complete-ok!)
    (cond
     ((net.outgoing.ref op.peer.host #f)
      => complete-duplicate!)
     (else
      (net.outgoing.set! op.peer.host op.conn)
      (complete! completion-post! op.conn))))

  (if net.closed?
    (complete-closed!)
    (complete-ok!)))

(def (network-dispatch-connect-error (op  : NetworkConnectError)
                                     (net : network))
  (cond
   ((net.pending.ref op.peer #f)
    => (lambda (completions)
         (net.pending.delete! op.peer)
         (for (c (reverse! completions) :- Completion)
           (completion-error! c op.error))))))

(def (network-dispatch-listen (op  : NetworkListen)
                              (net : network))
  (cond
   (net.closed?
    (completion-error! op.completion (Closed "network closed")))
   ((net.listeners.ref op.addr #f)
    (completion-post! op.completion #!void))
   (else
    (try
     (using (listener (address-listen! op.addr.address net op.addr)
                      : ConnectionListener)
       (net.listeners.set! op.addr listener)
       (spawn/net (cut network-listener net listener)
                  ['network/listener op.addr]
                  net)
       (completion-post! op.completion #!void))
     (catch (e)
       (completion-error! op.completion e))))))

(def (network-dispatch-accept (op  : NetworkAccept)
                              (net : network))
  (def (close-it! reason)
    (log.debug "closing connection"
               peer: (op.conn.peer)
               reason: reason)
    (ignore-errors (op.conn.close))
    (net.monitor.on-close-connection op.conn))

  (cond
   (net.closed?
    (close-it! "network closed"))
   ((net.incoming.ref (HostAddress-host (op.conn.peer)) #f)
    (close-it! "duplicate connection"))
   (else
    (net.incoming.set! (HostAddress-host (op.conn.peer)) op.conn))))

(def (network-dispatch-connection-close (op  : NetworkConnectionClose)
                                        (net : network))
  (unless net.closed?
    (let (peer (HostAddress-host (op.conn.peer)))
      (if (fx= (op.conn.direction) DIRECTION-IN)
        (net.incoming.delete! peer)
        (net.outgoing.delete! peer)))
    (net.monitor.on-close-connection op.conn)))

(def (network-dispatch-close (op  : NetworkClose)
                             (net : network))
  (unless net.closed?
    (set! net.closed? #t)
    (for (c (in-hash-values net.outgoing) : Connection)
      (ignore-errors (c.close))
      (net.monitor.on-close-connection c))
    (net.outgoing.clear!)
    (for (c (in-hash-values net.incoming) : Connection)
      (ignore-errors (c.close))
      (net.monitor.on-close-connection c))
    (net.incoming.clear!)
    (for (l (in-hash-values net.listeners) : ConnectionListener)
      (ignore-errors (l.close)))
    (net.listeners.clear!)))

(def (network-connect1 (self : network)
                       (peer : HostAddress))
  => Connection
  (when self.closed?
    (raise-io-closed network-connect! "network closed"))
  (when (equal? peer.host self.host)
    (raise-contract-violation network-connect! "cannot connect to self"))
  (let (completion (make-completion 'connect))
    (thread-send self.thread (NetworkConnect completion peer))
    (completion-wait! completion)))

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
  (when self.closed?
    (raise-io-closed network-listen! "network closed"))
  (let (completion (make-completion 'connect))
    (thread-send self.thread (NetworkListen completion addr))
    (completion-wait! completion)))

(def (network-listener (net     : network)
                       (listener : ConnectionListener))
  (for (conn listener : Connection)
    (try
     (log.debug "incoming connection"
                peer: (conn.peer))
     (net.monitor.on-open-connection conn)
     (thread-send net.thread (NetworkAccept conn))
     (catch (e)
       (log.debug "connection rejected"
                  peer: (conn.peer)
                  exception: (exception->string e))))))

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
  (unless self.closed?
    (thread-send self.thread (NetworkClose))))

(defcall-interface-method NetworkDispatch dispatch!
  (network-dispatch! op net))

(implement NetworkDispatch
  (NetworkConnect
   (dispatch! __network-dispatch-connect))
  (NetworkConnectComplete
   (dispatch! __network-dispatch-connect-complete))
  (NetworkConnectError
   (dispatch! __network-dispatch-connect-error))
  (NetworkListen
   (dispatch! __network-dispatch-listen))
  (NetworkAccept
   (dispatch! __network-dispatch-accept))
  (NetworkConnectionClose
   (dispatch! __network-dispatch-connection-close))
  (NetworkClose
   (dispatch! __network-dispatch-close)))

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
