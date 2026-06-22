;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble basic host functionality
(import :std/error
        :std/interface
        :std/io/interface
        ../interface
        ../ucan/context
        ../config
        ../network
        ../broadcast
        ./db
        ./types
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
            (new-broadcast this cfg.limits.broadcast cfg.limits.network))
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
       0 #f)))))

(def (basic-host-close (host : basic-host))
  => :void
  (let ((values actors reactors)
        (do-with-lock self.mx
          (if self.closed?
            (values [] [])
            (let ((actors (hash-values self.actors))
                  (reactors (hash-values self.reactors)))
              (hash-clear! self.actors)
              (hash-clear! self.stream-reactors)
              (report-errors (self.actor-context.close))
              (report-errors (self.actor-space.close))
              (report-errors (self.resolver.close))
              (report-errors (self.broadcast.close))
              (report-errors (self.network.close))
              (report-errors (self.security-context.close))
              (report-errors (self.capability-context.close))
              (report-errors (host-db-close self.db))
              (values actors reactors)))))
    (for (actor actors :- ActorHandler)
      (ignore-errors (actor.close)))
    (for (reactor reactors :- stream-reactor)
      (ignore-errors (stream-reactor-close reactor)))))

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
                                      one-shot: one-shot)
                      : stream-reactor)
        (when (> expire 0)
          (set! reactor.thread
            (spawn stream-reactor-expire self proto reactor expire)))
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

(implement Closer basic-host
  (close __basic-host-close))
