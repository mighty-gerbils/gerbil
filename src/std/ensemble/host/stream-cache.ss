;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host stream cache
(import :std/error
        :std/iter
        ../interface
        ./types
        ./util)
(export #t)

(def stream-cache-ttl 300)

(defmethod {:init! stream-cache}
  (lambda (self (host : basic-host) (proto : :string) name)
    (set! self.host host)
    (set! self.proto proto)
    (set! self.mx
      (make-mutex name))
    (set! self.table
      (make-hash-table))
    (set! self.thread
      (spawn-actor
       (cut stream-cache-cleanup-thread self)
       [] name host.tgroup))))

(def (stream-cache-get (self : stream-cache)
                       (dest : HostID))
  => cached-stream
  (let (cached
        (do-with-lock self.mx
          (cond
           (self.closed?
            (raise-io-closed stream-cache-get "stream cache is closed"))
           ((self.table.ref dest #f)
            => refresh-stream-ttl!)
           (else #f))))
    (if cached
      (: cached cached-stream)
      (let (stream (self.host.this.open-stream! dest self.proto))
        (stream-cache-put! self dest stream)))))

(def (stream-cache-put! (self : stream-cache)
                        (dest : HostID)
                        (stream : Stream))
  => cached-stream
  (do-with-lock self.mx :- cached-stream
    (cond
     (self.closed?
      (ignore-errors (stream.close))
      (raise-io-closed stream-cache-put! "stream cache is closed"))
     ((self.table.ref dest #f)
      => (lambda (other-stream)
           (ignore-errors (stream.close))
           (refresh-stream-ttl! other-stream)))
     (else
      (let (c (cached-stream stream
                             (make-mutex 'stream)
                             (coarse-time-now)))
        (self.table.set! dest c)
        c)))))

(def (stream-cache-remove! (self : stream-cache)
                           (dest : HostID))
  => :void
  (do-with-lock self.mx
    (cond
     ((self.table.ref dest #f)
      => (lambda ((c :- cached-stream))
           (ignore-errors (c.stream.close))
           (self.table.delete! dest))))))

(def (stream-cache-close (self : stream-cache))
  (do-with-lock self.mx
    (thread-send self.thread 't)
    (let (streams (hash-values self.table))
      (self.table.clear!)
      (for (c streams :- cached-stream)
        (ignore-errors (c.stream.close))))))

(def (refresh-stream-ttl! (c : cached-stream))
  => cached-stream
  (let (now (coarse-time-now))
    (set! c.last-use now)
    c))

(def (stream-cache-cleanup-thread (self : stream-cache))
  (let loop ()
    (unless (thread-receive stream-cache-ttl #f)
      (do-with-lock self.mx
        (let (now (coarse-time-now))
          (for ([dest . c] (hash->list self.table))
            (using (c : cached-stream)
              (when (< (+ c.last-use stream-cache-ttl)
                       now)
                (ignore-errors (c.stream.close))
                (self.table.delete! dest))))))
      (loop))))
