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
        ../ucan/security
         ../config
        ../network
        ../broadcast
        ../tls
        ./db
        ./types
        ./monitor
        ./actor-handler
        ./actor-context
        ./actor-space
        ./resolver
        ./bus)
(export #t)

(deflogger log name: "/ensemble/host")

(defmethod {:init! basic-host}
  (lambda (self (cfg : BasicHostConfig) (passphrase : :string))
    (set! self.mx              (make-mutex 'host))
    (set! self.id              cfg.id)
    (set! self.tgroup          (make-thread-group ['host cfg.id.name]))
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
            (new-event-bus))
           (_ (set! self.event-bus bus))
           (host-db-path
            (path-expand "host.db" cfg.dir))
           (host-db
            (host-db host-db-path self.tgroup))
           (_ (set! self.db host-db))
           (cap-db-path
            (path-expand "cap.db" cfg.dir))
           (capability-ctx
            (new-capability-context cap-db-path passphrase))
           (_ (set! self.capability-context capability-ctx))
           (security-ctx
            (new-security-context self.capability-context))
           (_ (set! self.security-context security-ctx))
           (tls-context
            (make-tls-context
             self.id.name
             self.id.did
             (self.capability-context.get-principal self.id.did)))
           (network
            (new-network self.tls-context
                         self.security-context
                         self.event-bus
                         cfg.limits
                         (NetworkMonitor self)))
           (_ (set! self.network network))
           (broadcast
            (new-broadcast self.this cfg.limits))
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
      (basic-host-set-stream-handler!
       self proto:/host/actor
       (StreamHandler self)
       0 #f))))

(def (basic-host-close (self : basic-host))
  => :void
  (let ((values actors reactors)
        (do-with-lock self.mx
          (if self.closed?
            (values [] [])
            (let ((actors   (hash-values self.actors))
                  (reactors (hash-values self.reactors)))
              (hash-clear! self.actors)
              (hash-clear! self.reactors)
              (report-errors (self.actor-context.close))
              (report-errors (self.actor-space.close))
              (report-errors (self.resolver.close))
              (report-errors (self.broadcast.close))
              (report-errors (self.network.close))
              (report-errors (self.security-context.close))
              (report-errors (self.capability-context.close))
              (report-errors (self.event-bus.close))
              (report-errors (host-db-close self.db))
              (values actors reactors)))))
    (for (actor actors :- ActorHandler)
      (ignore-errors (actor.close)))
    (for (reactor reactors :- stream-reactor)
      (ignore-errors (stream-reactor-close reactor)))))

(def (basic-host-register-actor! (self    : basic-host)
                                 (name    : :string)
                                 (handler : ActorHandler))
  => Handle
  (let (handle (Handle self.id name))
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
                          (peer : HostID))
  => :void
  (unless (self.network.peer-connection peer)
    (let (addrs (self.resolver.resolve peer))
      (self.network.connect! addrs)
      #!void)))

(def (basic-host-open-stream! (self  : basic-host)
                              (peer  : HostID)
                              (proto : :string)
                              (auth  :? Token))
  => Stream
  (let again ()
    (basic-host-connect! self peer)
    (cond
     ((self.network.peer-connection peer)
      => (lambda ((conn :- Connection))
           (conn.open-stream! proto auth)))
     (else (again)))))

(def (basic-host-set-stream-handler! (self     : basic-host)
                                     (proto    : :string)
                                     (handler  : StreamHandler)
                                     (expire   : :integer)
                                     (one-shot : :boolean))
  => :void
  (do-with-lock self.mx
    (cond
     ((self.reactors.ref proto #f)
      (raise-contract-violation set-stream-reactor! "stream reactor already exists" proto: proto))
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
    (try
     (reactor.handler.on-expire)
     (catch (e)
       (log.warn "unhandled exception in reactor on-expire"
                 protocol: proto
                 exception: (exception->string e))))
    (do-with-lock self.mx
      (when (eq? (self.reactors.ref proto #f) reactor)
        (self.reactors.delete! proto)))))

(def (stream-reactor-close (reactor : stream-reactor))
  (when reactor.thread
    (thread-send reactor.thread 't)))

(implement Closer basic-host
  (close __basic-host-close))

(implement Host basic-host
  (id            &basic-host-id)
  (network       &basic-host-network)
  (resolver      &basic-host-resolver)
  (broadcast     &basic-host-broadcast)
  (actor-space   &basic-host-actor-space)
  (actor-context &basic-host-actor-context)
  (event-bus     &basic-host-event-bus)
  (register-actor!     __basic-host-register-actor!)
  (unregister-actor!   __basic-host-unregister-actor!)
  (connect!            __basic-host-connect!)
  (open-stream!        __basic-host-open-stream!)
  (set-stream-handler! __basic-host-set-stream-handler!))
