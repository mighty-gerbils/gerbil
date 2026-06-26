;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host actor dispatch
(import :std/error
        :std/log
        ../interface
        ./types)
(export spawn-actor-dispatch)

(deflogger log name: "/host/actor/dispatch")

(def (spawn-actor-dispatch (host    : basic-host)
                           (handler : ActorHandler)
                           (msg     : Message))
  (do-with-lock host.mx
    (if (fx< host.actor-threads
             host.limits.host.actor-threads)
      (cond
       ((host.actors.ref (Message-dest msg) #f)
        => (lambda ((handler :- ActorHandler))
             (set! host.actor-threads
               (fx+ host.actor-threads 1))
             (spawn-actor
              (cut actor-dispatch-message host handler msg)
              [] 'actor/dispatch host.tgroup)))
       (else
        (log.warn "message for unknown actor; dropping message"
                  message: msg)))
      (log.warn "actor thread limit exceeded; dropping message"
                message: msg))))

(def (actor-dispatch-message (host    : basic-host)
                             (handler : ActorHandler)
                             (msg     : Message))
  (try
   (parameterize ((current-host host.this))
     (handler.receive! host.actor-context msg))
   (catch (e)
     (log.error "unhandled exception in actor message dispatch"
                message:   msg
                exception: (exception->string e))
     (host.actor-context.send-error-reply! msg (!Error e)))
   (finally
    (do-with-lock host.mx
      (set! host.actor-threads
        (fx- host.actor-threads 1))))))
