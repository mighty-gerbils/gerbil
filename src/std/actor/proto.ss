;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor protocols
package: std/actor

(import :std/event
        )
(export
  !call make-!call !call? !call-e !call-k
  !value make-!value !value-e !value-k
  !error make-!error !error-e !error-k
  !event make-!event !event-e
  !!call !!value !!error !!event
  defproto
  )

;;; rpc messages
(defstruct !call (e k))
(defstruct !value (e k))
(defstruct !error (e k))
(defstruct !event (e))

(defrules !!call ()
  ((_ dest e k)
   (send-message dest (make-!call e k))))

(defrules !!value ()
  ((_ dest e k)
   (send-message dest (make-!value e k))))

(defrules !!error ()
  ((_ dest e k)
   (send-message dest (make-!error e k))))

(defrules !!event ()
  ((_ dest e)
   (send-message dest (make-!event e))))

(defrules defproto ()
  )
