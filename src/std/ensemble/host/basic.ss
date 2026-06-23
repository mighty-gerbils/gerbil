;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble basic host functionality
(import :std/error
        :std/interface
        :std/io/interface
        :std/iter
        :std/sync/channel
        :std/os/hostname
        :std/net/address
        :std/log
        ../interface
        ../ucan/context
        ../config
        ../network
        ../broadcast
        ./db
        ./types
        ./stream-handler
        ./conn-handler
        ./actor-handler
        ./security-context
        ./actor-context
        ./actor-space
        ./resolver
        ./bus)
(export #t)

(deflogger log name: "/ensemble/host")

(defmethod {:init! basic-host}
  (lambda (self (cfg : BasicHostConfig))
    (set! self.mx              (make-mutex 'host))
    (set! self.tgroup          (make-thread-group ['host cfg.name]))
    (set! self.name            cfg.name)
    (set! self.did             cfg.did)
    (set! self.limits          cfg.limits)
    (set! self.connections-in  0)
    (set! self.connections-out 0)
    (set! self.streams-in      0)
    (set! self.streams-out     0)
    (set! self.actor-threads   0)
    (let* ((this (Host self))
           (_ (set! self.this this))
           (actors
            (make-hash-table))
           (_ (set! self.actors actors))
           (reactors
            (make-hash-table-string))
           (_ (set! self.reactors reactors))
           (bus
            (event-bus))
           (_ (set! self.bus bus))
           (host-db-path
            (path-expand "host.db" cfg.dir))
           (host-db
            (host-db host-db-path self.tgroup))
           (_ (set! self.db host-db))
           (cap-db-path
            (path-expand "cap.db" cfg.dir))
           (capability-ctx
            (new-capability-context cap-db-path cfg.passphrase))
           (_ (set! self.capability-context capability-ctx))
           (security-ctx
            (new-security-context self))
           (_ (set! self.security-context security-ctx))
           (network
            (new-network this cfg.limits))
           (_ (set! self.network network))
           (broadcast
            (new-broadcast this cfg.limits))
           (_ (set! self.broadcast broadcast))
           (resolver
            (new-resolver self cfg.resolver))
           (_ (set! self.resolver resolver))
           (actor-space
            (new-actor-space self))
           (_ (set! self.actor-space actor-space))
           (actor-context
            (new-actor-context self))
           (_ (set! self.actor-context actor-context)))
      (self.network.set-connection-handler!
       (new-host-connection-handler self))
      (basic-host-set-stream-handler!
       self proto:/host/actor
       (new-host-actor-stream-handler self)
       0 #f))))

(def (basic-host-close (self : basic-host))
  => :void
  (let (reactors
        (do-with-lock self.mx
          (if self.closed?
            []
            (let (reactors (hash-values self.reactors))
              (hash-clear! self.actors)
              (hash-clear! self.reactors)
              (report-errors (self.actor-context.close))
              (report-errors (self.actor-space.close))
              (report-errors (self.resolver.close))
              (report-errors (self.broadcast.close))
              (report-errors (self.network.close))
              (report-errors (self.security-context.close))
              (report-errors (self.capability-context.close))
              (report-errors (event-bus-close self.bus))
              (report-errors (host-db-close self.db))
              reactors))))
    (for (reactor reactors :- stream-reactor)
      (ignore-errors (stream-reactor-close reactor)))))

(def (basic-host-register-actor! (self    : basic-host)
                                 (name    : :string)
                                 (handler : ActorHandler))
  => Handle
  (let (handle (Handle self.did self.name name))
    (do-with-lock self.mx
      (cond
       ((self.actors.ref handle #f)
        (raise-contract-violation register-actor! "actor already registered" handle))
       (else
        (self.actors.set! handle handler))))
    handle))

(def (basic-host-unregister-actor! (self   : basic-host)
                                   (handle : Handle))
  => :void
  (do-with-lock self.mx
    (self.actors.delete! handle)))

(def (basic-host-connect! (self : basic-host)
                          (peer : :string))
  => Connection
  (cond
   ((self.network.peer-connection peer)
    => (cut : <> Connection))
   (else
    (let (addrs (select-addresses (self.resolver.resolve peer)))
      (let loop ((rest addrs))
        (match rest
          ([addr . rest]
           (try
            (log.debug "connecting to peer"
                       peer: peer
                       address: addr)
            (self.network.connect! peer addr self.tls-context)
            (catch (e)
              (log.debug "error connecting to peer"
                         peer: peer
                         address: addr
                         exception: (exception->string e))
              (loop rest))))
          (else
           (raise-contract-violation connect! "no usable addresses"
                                     addrs))))))))

(def (select-addresses (lst : :list))
  => :list
  (let ((localhost (hostid))
        (inet  [])
        (local [])
        (relay []))
    (for (addr lst)
      (cond
       ((InetAddress? addr)
        (set! inet (cons addr inet)))
       ((LocalAddress? addr)
        (when (equal? (LocalAddress-hostid addr)
                      localhost)
          (set! local (cons addr local))))
       ((RelayAddress? addr)
        (let loop ((through (RelayAddress-address addr)))
          (cond
           ((InetAddress? through)
            (set! relay (cons addr relay)))
           ((LocalAddress? through)
            (when (equal? (LocalAddress-hostid through)
                          localhost)
              (set! relay (cons addr relay))))
           ((RelayAddress? through)
            (loop (RelayAddress-address through))))))))
    (append (reverse! local)
            (reverse! inet)
            (reverse! relay))))

(def (basic-host-open-stream! (self  : basic-host)
                              (peer  : :string)
                              (proto : :string)
                              (auth  :? Token))
  => Stream
  (using (conn (basic-host-connect! self peer)
               : Connection)
    (conn.open-stream! proto auth)))

(def (basic-host-set-stream-handler! (self     : basic-host)
                                     (proto    : :string)
                                     (handler  : StreamHandler)
                                     (expire   : :integer)
                                     (one-shot : :boolean))
  => :void
  (do-with-lock self.mx
    (cond
     ((self.reactors.ref proto #f)
      (raise-contract-violation set-stream-handler! "stream handler already exists" proto: proto))
     (else
      (using (reactor (stream-reactor handler:  handler
                                      proto:    proto
                                      one-shot: one-shot
                                      thread:   #f)
                      : stream-reactor)
        (when (> expire 0)
          (set! reactor.thread
            (spawn-actor (cut stream-reactor-expire self proto reactor expire)
                         []
                         ['reactor/expire proto]
                         self.tgroup)))
        (self.reactors.set! proto reactor))))))

(def (stream-reactor-expire (self     : basic-host)
                            (proto    : :string)
                            (reactor  : stream-reactor)
                            (expire   : :integer))
  => :void
  (unless (thread-receive (seconds->time expire) #f)
    (do-with-lock self.mx
      (when (eq? (self.reactors.ref proto #f) reactor)
        (self.reactors.delete! proto)))))

(def (stream-reactor-close (reactor : stream-reactor))
  (when reactor.thread
    (thread-send reactor.thread 't)))

(def (basic-host-notify! (self : basic-host))
  => Channel
  (event-bus-get-channel self.bus))

(def (basic-host-emit! (self : basic-host)
                       (evt  : Event))
  => :void
  (event-bus-emit! self.bus evt))

(implement Closer basic-host
  (close __basic-host-close))

(implement Host basic-host
  (name          &basic-host-name)
  (did           &basic-host-did)
  (network       &basic-host-network)
  (resolver      &basic-host-resolver)
  (broadcast     &basic-host-broadcast)
  (actor-space   &basic-host-actor-space)
  (actor-context &basic-host-actor-context)
  (register-actor!     __basic-host-register-actor!)
  (unregister-actor!   __basic-host-unregister-actor!)
  (connect!            __basic-host-connect!)
  (open-stream!        __basic-host-open-stream!)
  (set-stream-handler! __basic-host-set-stream-handler!)
  (notify!             __basic-host-notify!)
  (emit!               __basic-host-emit!))
