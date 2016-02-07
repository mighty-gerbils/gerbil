;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor protocols
package: std/actor

(import :std/event
        :std/actor/message
        :std/actor/xdr
        )
(export
  !prc !rpc?
  !call make-!call !call? !call-e !call-k
  !value make-!value !value? !value-e !value-k
  !error make-!error !error? !error-e !error-k
  !event make-!event !event? !event-e
  !!call !!value !!error !!event
  !protocol make-!protocol !protocol?
  !protocol-id !protocol-super !protocol-types
  defproto
  defproto-default-type
  )

;;; rpc messages
(defstruct !rpc ()
  id: std/actor#!rpc::t))
(defstruct (!call !rpc) (e k)
  id: std/actor#!call::t))
(defstruct (!value !rpc) (e k)
  id: std/actor#!value::t)
(defstruct (!error !rpc) (e k)
  id: std/actor#!error::t)
(defstruct (!event !rpc) (e)
  id: std/actor#!event::t))

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
(defstruct !protocol (id super types)
  id: std/actor#protocol::t)

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
(defsyntax (defproto stx)
  (syntax-case stx ()
    ((_ clause ...)
     XXX
     )))

;; default proto type registry
(def *default-proto-type-registry*
  (make-hash-table-eq))

;; default protocol types
(defrules defproto-default-type ()
  ((_ rule ...)
   (begin (defproto-type-decl rule) ...)))

(defrules defproto-default-type-decl ()
  ((_ (type::t type-t type? xdr-type-read xdr-type-write))
   (begin
     (def type-t
       (make-XDR type? xdr-type-read xdr-type-write))
     (hash-put! *default-proto-type-registry*
                (##type-id type::t)
                type-t))))


     
