;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor protocols
package: std/actor

(import :std/event
        :std/actor/message
        ;; :std/actor/xdr
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
  ((_ dest e k send-e args ...)
   (let (token k)
     (send-e dest (make-!call e token) args ...)
     (<- ((!values val (eq? token))
          val)
         ((!error msg (eq? token))
          (error (string-append "remote error: " msg))))))
  ((recur dest e)
   (recur dest e (gensym 'call) send-message))
  ((recur dest e timeout: timeo)
   (recur dest e (gensym 'call) send-message/timeout timeo))
  ((recur dest e k)
   (recur dest e k send-message))
  ((recur dest e k timeout: timeo)
   (recur dest e k send-message/timeout timeo)))

(defrules !!value ()
  ((_ dest e k)
   (send-message dest (make-!value e k))))

(defrules !!error ()
  ((_ dest e k)
   (send-message dest (make-!error e k))))

(defrules !!event ()
  ((_ dest e)
   (send-message dest (make-!event e))))

;;; protocols
;; defproto name
;;   [extend: proto-id]
;;   [id: proto-id]
;;   [call: (message . args) => type] ...
;;   [event: (message . args)] ...
;;   [struct: (struct . types)] ...
;;  args:
;;   _ or id or (id type)
;;  types:
;;   _ or xdr-type decl
;; messages: call: or event:
;;  creates message struct and !message and !!message macros
;;  !message wraps a !call or !event around the value
;;  !!message wraps and sends to dest
;; 
(defrules defproto ()
  )

;;; protocol i/o
(def (rpc-proto-write-message proto msg outp)
  XXX
  )

(def (rpc-proto-read-message-envelope inp)
  XXX
  )

(def (rpc-proto-read-message-content proto inp)
  XXX
  )

