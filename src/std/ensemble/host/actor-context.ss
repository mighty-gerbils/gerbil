;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host actor context
(import :std/error
        :std/interface
        :std/time/precise
        ../interface
        ./types
        (only-in ./actor-handler proto:/host/actor))
(export new-actor-context)

(def (new-actor-context (host : basic-host))
  => ActorContext
  (let (ctx (actor-context host
                           (make-mutex 'actor/context)
                           (make-hash-table-string)
                           #f #f))
    (set! (actor-context-thread ctx)
      (spawn/name 'actor/context
        (cut actor-context-cleanup-thread ctx)))
  (ActorContext ctx)))

(def stream-cache-ttl 300)

(defstruct cached-stream
  ((steam     : Stream)
   (last-use  : :integer)))

(def (coarse-time-now)
  (CoarseTime-seconds (current-time-coarse)))

(def (refresh-stream-ttl! (c : cached-stream))
  => Stream
  (let (now (coarse-time-now))
    (set! c.last-use now)
    c.stream))

(def (actor-context-cleanup-thread (self : actor-context))
  (let loop ()
    (unless (thread-receive stream-cache-ttl #f)
      (do-with-lock self.mx
        (let (now (coarse-time-now))
          (for ([dest . c] (hash->list self.streams))
            (using (c : cached-stream)
              (when (< (+ c.last-use stream-cache-ttl)
                       now)
                (self.streams.delete! dest))))))
      (loop))))

(def (actor-context-stream-ref (self : actor-context)
                               (peer : :string))
  (do-with-lock self.mx
    (cond
     (self.closed?
      (raise-io-closed actor-context-stream-ref))
     ((self.streams.ref peer #f)
      => refresh-stream-ttl!)
     (else #f))))

(def (actor-context-get-stream (self : actor-context)
                               (peer : :string))
  => Stream
  (cond
   ((actor-context-stream-ref self peer)
    => (cut :- <> Stream))
   (else
    (let (stream (self.host.this.open-stream!
                  peer
                  proto:/host/actor))
      (do-with-lock self.mx :- Stream
        (cond
         (self.closed?
          (ignore-errors (stream.close))
          (raise-io-closed actor-context-get-stream))
         ((self.streams.ref peer #f)
          => (lambda ((other-stream :- cached-stream))
               (ignore-errors (stream.close))
               (refresh-stream-ttl! other-stream)))
         (else
          (let (c (cached-stream stream (coarse-time-now)))
            (self.streams.set! peer c)
            stream))))))))

(def (actor-context-send! (self : actor-context)
                          (msg  : Message))
  => :void
  (let* ((blob (marshal msg))
         (size (u8vector-length blob)))

    (when (fx> size self.host.limits.max-message-size)
      (raise-contract-violation actor-context-send! "message too large"
                                message: msg))

    (let again ()
      (try
       (using ((stream (get-stream self msg.dest.host)
                       : Stream)
               (writer (open-buffered-writer (stream.writer))
                       : BufferedWriter))
         (do-with-lock self.mx
           (try
            (writer.write-varuint size)
            (writer.write blob)
            (writer.flush)
            (catch (e)
              ;; stream is unusable
              (ignore-errors (stream.close))
              (self.streams.delete! msg.dest.host))
            (finally
             (ignore-errors (buffer-detach! writer)))))
         (catch (Closed? e)
           (if self.closed?
             (raise e)
             (again))))))))

(def (actor-context-close (self : actor-context))
  (do-with-lock self.mx
    (unless self.closed?
      (set! self.closed? #t)
    (thread-send self.thread 't)
    (let (streams (hash-values self.streams))
      (self.streams.clear!)
      (for (c streams :- cached-stream)
        (ignore-errors (c.stream.close))))))

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
