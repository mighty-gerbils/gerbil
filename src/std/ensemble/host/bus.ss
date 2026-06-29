;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host event bus
(import :std/error
        :std/interface
        :std/io/interface
        :std/iter
        :std/sync/channel
        ../interface
        ./types)
(export #t)

(defmethod {:init! event-bus}
  (lambda (self)
    (set! self.mx (make-mutex 'event-bus))
    (set! self.channels [])))

(def (new-event-bus)
  => EventBus
  (EventBus (event-bus)))

(def (event-bus-close (self : event-bus))
  => :void
  (do-with-lock self.mx
    (for (ch self.channels :- Channel)
      (channel-close ch))
    (set! self.channels [])))

(def (event-bus-emit! (self : event-bus)
                      (evt  : Event))
  => :void
  (let* ((channels (do-with-lock self.mx self.channels))
         (closed []))
    (for (ch channels :- Channel)
      (try
       (channel-put ch evt)
       (catch (Closed? e)
         (set! closed (cons ch closed)))))
    (unless (null? closed)
      (do-with-lock self.mx
        (for (ch closed)
          (set! self.channels (remq1 ch self.channels)))))))

(def (event-bus-get-channel (self : event-bus))
  (let (ch (make-channel))
    (do-with-lock self.mx
      (set! self.channels (cons ch self.channels)))
    ch))

(implement Closer event-bus
  (close event-bus-close))

(implement EventBus event-bus
  (notify! __event-bus-get-channel)
  (emit!   __event-bus-emit!))
