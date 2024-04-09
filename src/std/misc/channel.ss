;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; buffered channels

(import :std/misc/queue
        :std/misc/timeout
        :std/generic
        :std/iter
        :std/error)
(export channel make-channel channel?
        channel-put channel-try-put channel-sync
        channel-get channel-try-get
        channel-close channel-closed?)

(defstruct channel ((q     :- queue)
                    (mx    :- :mutex)
                    (cv    :- :condvar)
                    (limit :? :fixnum)
                    (eof   :- :boolean))
  constructor: :init!
  final: #t )

(defmethod {:init! channel}
  (lambda (self (limit :? :fixnum := #f))
    (struct-instance-init! self
      (make-queue)
      (make-mutex 'channel)
      (make-condition-variable 'channel)
      limit #f)))

(def (channel-put (ch : channel) val (timeo #f))
  (let (timeo (make-timeout timeo))
    (let lp ()
      (mutex-lock! ch.mx)
      (cond
       (ch.eof
        (mutex-unlock! ch.mx)
        (raise-io-error channel-put "channel is closed" ch))
       ((or (not ch.limit) (fx< (queue-length ch.q) (:- ch.limit :fixnum)))
        (enqueue! ch.q val)
        (when (fx= (queue-length ch.q) 1)
          (condition-variable-broadcast! ch.cv)) ; unblock readers
        (mutex-unlock! ch.mx)
        #t)
       (else
        (if (mutex-unlock! ch.mx ch.cv timeo)
          (lp)
          #f))))))

(def (channel-try-put (ch : channel) val)
  (mutex-lock! ch.mx)
  (cond
   (ch.eof
    (mutex-unlock! ch.mx)
    (raise-io-error channel-try-put "channel is closed" ch))
   ((or (not ch.limit) (fx< (queue-length ch.q) (:- ch.limit :fixnum)))
    (enqueue! ch.q val)
    (when (fx= (queue-length ch.q) 1)
      (condition-variable-broadcast! ch.cv)) ; unblock readers
    (mutex-unlock! ch.mx)
    #t)
   (else
    (mutex-unlock! ch.mx)
    #f)))

(def (channel-sync (ch : channel) . vals)
  (mutex-lock! ch.mx)
  (cond
   (ch.eof
    (mutex-unlock! ch.mx)
    (raise-io-error channel-sync "channel is closed" ch))
   (else
    (unless (null? vals)
      (for-each (cut enqueue! ch.q <>) vals)
      (condition-variable-broadcast! ch.cv))
    (mutex-unlock! ch.mx))))

(def (channel-get (ch : channel) (timeo #f) (default #f))
  (let (timeo (make-timeout timeo))
    (let lp ()
      (mutex-lock! ch.mx)
      (cond
       ((queue-empty? ch.q)
        (cond
         (ch.eof
          (mutex-unlock! ch.mx)
          #!eof)
         ((mutex-unlock! ch.mx ch.cv timeo)
          (lp))
         (else default)))
       (else
        (let (next (dequeue! ch.q))
          (when (and ch.limit (fx= (queue-length ch.q) (fx- (:- ch.limit :fixnum) 1)))
            (condition-variable-broadcast! ch.cv)) ; unblock writers
          (mutex-unlock! ch.mx)
          next))))))

(def (channel-try-get (ch : channel) (default #f))
  (mutex-lock! ch.mx)
  (cond
   ((queue-empty? ch.q)
    (mutex-unlock! ch.mx)
    (if ch.eof #!eof default))
   (else
    (let (next (dequeue! ch.q))
      (when (and ch.limit (fx= (queue-length ch.q) (fx- (:- ch.limit :fixnum) 1)))
        (condition-variable-broadcast! ch.cv)) ; unblock writers
      (mutex-unlock! ch.mx)
      next))))

(def (channel-close (ch : channel))
  => :void
  (unless ch.eof
    (mutex-lock! ch.mx)
    (set! ch.eof #t)
    (condition-variable-broadcast! ch.cv)
    (mutex-unlock! ch.mx)
    (void)))

(defmethod {destroy channel}
  channel-close)

(def (channel-closed? ch)
  (channel-eof ch))

(defmethod (:iter (ch channel))
  (iter-channel ch))

(def (iter-channel (ch : channel))
  (def (next it)
    (with ((iterator ch) it)
      (using (ch :- channel)
        (let (val (channel-get ch))
          (if (eof-object? val)
            iter-end
            val)))))
  (make-iterator e: ch next: next))
