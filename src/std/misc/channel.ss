;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; buffered channels
package: std/misc

(import :gerbil/gambit/threads
        :gerbil/gambit/os
        :std/misc/queue
        :std/error)
(export make-channel channel?
        channel-put channel-try-put channel-sync
        channel-get channel-try-get
        channel-close channel-closed?)

(defstruct channel (q mx cv limit eof)
  constructor: :init!
  final: #t unchecked: #t)

(defmethod {:init! channel}
  (lambda (self (limit #f))
    (struct-instance-init! self
      (make-queue)
      (make-mutex 'channel)
      (make-condition-variable 'channel)
      limit #f)))

(def (channel-put ch val (timeo #f))
  (let (timeo (make-timeout timeo))
    (with ((channel q mx cv limit) ch)
      (let lp ()
        (mutex-lock! mx)
        (cond
         ((&channel-eof ch)
          (mutex-unlock! mx)
          (raise-io-error 'channel-put "channel is closed" ch))
         ((or (not limit) (fx< (queue-length q) limit))
          (enqueue! q val)
          (when (fx= (queue-length q) 1)
            (condition-variable-broadcast! cv))
          (mutex-unlock! mx)
          #t)
         (else
          (if (mutex-unlock! mx cv timeo)
            (lp)
            #f)))))))

(def (channel-try-put ch val)
  (with ((channel q mx cv limit eof) ch)
    (cond
     (eof
      (mutex-unlock! mx)
      (raise-io-error 'channel-try-put "channel is closed" ch))
     ((or (not limit) (fx< (queue-length q) limit))
      (enqueue! q val)
      (when (fx= (queue-length q) 1)
        (condition-variable-broadcast! cv))
      (mutex-unlock! mx)
      #t)
     (else
      (mutex-unlock! mx)
      #f))))

(def (channel-sync ch . vals)
  (with ((channel q mx cv limit eof) ch)
    (mutex-lock! mx)
    (cond
     (eof
      (mutex-unlock! mx)
      (raise-io-error 'channel-sync "channel is closed" ch))
     (else
      (unless (null? vals)
        (for-each (cut enqueue! q <>) vals)
        (condition-variable-broadcast! cv))
      (mutex-unlock! mx)))))

(def (channel-get ch (timeo #f) (default #f))
  (let (timeo (make-timeout timeo))
    (with ((channel q mx cv) ch)
      (let lp ()
        (mutex-lock! mx)
        (cond
         ((queue-empty? q)
          (cond
           ((&channel-eof ch)
            (mutex-unlock! mx)
            #!eof)
           ((mutex-unlock! mx cv timeo)
            (lp))
           (else default)))
         (else
          (let (next (dequeue! q))
            (condition-variable-broadcast! cv)
            (mutex-unlock! mx)
            next)))))))

(def (channel-try-get ch (default #f))
  (with ((channel q mx cv _ eof) ch)
    (mutex-lock! mx)
    (cond
     ((queue-empty? q)
      (mutex-unlock! mx)
      (if eof #!eof default))
     (else
      (let (next (dequeue! q))
        (condition-variable-broadcast! cv)
        (mutex-unlock! mx)
        next)))))

(def (channel-close ch)
  (with ((channel q mx cv _ eof) ch)
    (unless eof
      (mutex-lock! mx)
      (set! (&channel-eof ch) #t)
      (condition-variable-broadcast! (channel-cv ch))
      (mutex-unlock! mx))))

(def (channel-closed? ch)
  (channel-eof ch))

(def (make-timeout t)
  (cond
   ((not t) absent-obj)
   ((time? t) t)
   ((real? t)
    (seconds->time (+ (##current-time-point) t)))
   (else
    (error "Bad argument; expected timeout or #f" t))))
