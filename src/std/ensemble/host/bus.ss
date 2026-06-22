;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host event bus
(import :std/sync/channel
        :std/iter
        ../interface)
(export #t)

(def (new-event-bus)
  => event-bus
  (event-bus (make-mutex 'event-bus)
             []))

(def (event-bus-close (self : event-bus))
  => :void
  (do-with-lock self.mx
    (for (ch self.channels :- Channel)
      (channel-close ch))
    (set! self.channels [])))

(def (event-bus-emit! (self : event-bus)
                      (evt : Event))
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
      (set! self.channels (cons ch channels)))
    ch))
