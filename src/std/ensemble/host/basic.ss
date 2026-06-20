;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble basic host functionality
(import :std/error
        :std/interface
        :std/io/interface
        ../interface
        ../ucan/context
        ./db
        ./type
        ./reactor
        ./conn-handler
        ./actor-handler
        ./security-context
        ./actor-context
        ./actor-space
        ./resolver)
(export #t)

(defmethod {:init! basic-host}
  (lambda (self (cfg : BasicHostConfig))
    (set! self.mx              (make-mutex 'host))
    (set! self.tgroup          (make-thread-group [host cfg.name])
    (set! self.name            cfg.name)
    (set! self.did             cfg.did)
    (set! self.limits          cfg.limits)
    (set! self.connections-in  0)
    (set! self.connections-out 0)
    (set! self.streams-in      0)
    (set! self.streams-out     0)
    (set! self.monitors        [])
    (let* ((this : (Host self))
           (_ (set! self.this this))
           (actors
            (make-hash-table))
           (_ (set! self.actors actors))
           (reactors
            (make-hash-table-string))
           (_ (set! self.reactors reactors))
           (host-db-path (path-expand "host.db" cfg.dir))
           (host-db (new-host-db host-db-path))
           (_ (set! self.db host-db))
           (cap-db-path (path-expand "cap.db" cfg.dir))
           (capability-ctx
            (new-capability-context cap-db-path))
           (_ (set! self.capability-context capability-ctx))
           (security-ctx
            (new-security-context self))
           (_ (set! self.security-context security-ctx))
           (network
            (new-network this))
           (_ (set! self.network network))
           (broadcast
            (new-broadcast this))
           (_ (set! self.broadcast broadcast))
           (resolver
            (new-resolver self cfg.resolver))
           (_ (set! self.resolver resolver))
           (actor-space
            (new-actor-space self))
           (_ (set! self.actor-space actor-space))
           (actor-context
            (new-actor-context self))
           (_ (set! self.actor-context actor-ctx)))
      (self.network.set-connection-handler!
       (new-host-connection-handler self))
      (basic-host-set-stream-handler!
       self proto:/host/actor
       (new-host-actor-stream-handler self)
       0 #f))))

(def (basic-host-close (host : basic-host))
  => :void
  (do-with-lock self.mx
    (unless self.closed?
      (report-errors (self.actor-context.close))
      (report-errors (self.actor-space.close))
      (report-errors (self.resolver.close))
      (report-errors (self.broadcast.close))
      (report-errors (self.network.close))
      (report-errors (self.security-context.close))
      (report-errors (self.capability-context.close))
      (report-errors (host-db-close self.db))
      (let (actors (hash-values self.actors))
        (hash-clear! self.actors)
        (for (actor actors :- ActorHandler)
          (ignore-errors (actor.close))))
      (let (reactors (hash-values self.stream-reactors))
        (hash-clear! self.stream-reactors)
        (for (reactor reactors :- stream-reactor)
          (when reactor.thread
            (thread-send reactor.thread 't))
          (ignore-errors (reactor.handler.close))))
      (set! self.closed? #t))))

(def (basic-host-set-stream-handler! (self     : basic-host)
                                     (handler  : StreamHandler)
                                     (expire   : :integer)
                                     (one-shot : :boolean))
  => :void
  XXX
  )
