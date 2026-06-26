;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host actor context
(import :std/error
        :std/interface
        :std/log
        :std/io
        :std/io/bio/buffer
        :std/serde/marshal
        ../interface
        ./types
        ./util
        ./actor-dispatch
        ./stream-cache)
(export new-actor-context)

(deflogger log name: "/host/actor/context")

(def (new-actor-context (host : basic-host))
  => ActorContext
  (ActorContext
   (actor-context host
                  (stream-cache host
                                proto:/host/actor
                                'actor/context))))

(def (actor-context-send! (self : actor-context)
                          (msg  : Message))
  => :void
  (when (< msg.expire (coarse-time-now))
    (raise-contract-violation actor-context-send! "message expired"
                              message: msg))
  (if (equal? msg.dest.host (self.host.id))
    (let (handler
          (do-with-lock self.host.mx
            (self.host.actors.ref (Message-dest msg) #f)))
          (if handler
            (spawn-actor-dispatch self.host handler msg)
            (log.warn "message for unknown actor; dropping message"
                      actor:   msg.dest
                      message: msg)))
    (let* ((blob (marshal msg (marshal-context dag: #t)))
           (size (u8vector-length blob)))

      (when (fx> size self.host.limits.network.message-size)
        (raise-contract-violation actor-context-send! "message too large"
                                  message: msg))

      (using ((cached (stream-cache-get self.streams msg.dest.host)
                      : cached-stream)
              (writer (open-buffered-writer (cached.stream.writer))
                      : BufferedWriter))
        (do-with-lock cached.mx
          (try
           (writer.write-varuint size)
           (writer.write blob)
           (writer.flush)
           (catch (e)
             ;; stream is unusable
             (stream-cache-remove! self.streams msg.dest.host)
             (raise e))
           (finally
            (ignore-errors (buffer-detach! writer)))))))))

(def (actor-context-broadcast! (self : actor-context)
                               (msg  : BroadcastMessage)
                               (loopback : :boolean))
  => :void
  (when (< msg.expire (coarse-time-now))
    (raise-contract-violation actor-context-send! "message expired"
                              message: msg))
  (self.host.broadcast.broadcast! msg loopback))

(def (actor-context-close (self : actor-context))
  (stream-cache-close self.streams))

(implement Closer actor-context
  (close __actor-context-close))

(implement ActorContext actor-context
  (actor-space
   (lambda (self)
     self.host.actor-space))
  (security-context
   (lambda (self)
     self.host.security-context))
  (send!      __actor-context-send!)
  (broadcast! __actor-context-broadcast!))
