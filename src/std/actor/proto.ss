;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor protocols
package: std/actor

(import :gerbil/gambit/hash ; table-merge! -- this should be in the prelude
        :std/event
        :std/actor/message
        :std/actor/xdr
        )
(export
  !rpc !rpc?
  !call make-!call !call? !call-e !call-e-set! !call-k !call-k-set!
  !value make-!value !value? !value-e !value-e-set! !value-k !value-k-set!
  !error make-!error !error? !error-e !error-e-set! !error-k !error-k-set!
  !event make-!event !event? !event-e !event-e-set!
  !!call !!value !!error !!event
  !protocol make-!protocol !protocol?
  !protocol-id !protocol-super !protocol-types
  defproto
  defproto-default-type
  (phi: +1 make-protocol-info protocol-info?
        protocol-info-runtime-identifier
        protocol-info-id
        protocol-info-extend
        protocol-info-calls
        protocol-info-events)
  )

;;; rpc messages
(defstruct !rpc ()
  id: std/actor#!rpc::t)
(defstruct (!call !rpc) (e k)
  id: std/actor#!call::t)
(defstruct (!value !rpc) (e k)
  id: std/actor#!value::t)
(defstruct (!error !rpc) (e k)
  id: std/actor#!error::t)
(defstruct (!event !rpc) (e)
  id: std/actor#!event::t)

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
(begin-syntax
  (defstruct protocol-info (id runtime-identifier extend calls events)
    id: std/actor#protocol-info::t))

(defsyntax (defproto stx)
  (def (parse-proto-body clauses)
    (let lp ((rest clauses)
             (id #f) (extend []) (calls []) (events []) (structures []))
      (syntax-case rest (=>)
        ((id: proto-id . rest)
         (identifier? #'proto-id)
         (if (not id)
           (lp #'rest #'proto-id
               extend calls events structures)
           (raise-syntax-error #f "Bad syntax; duplicate id")))
        ((extend: id .rest)
         (identifier? #'id)
         (let (proto-info (syntax-local-value #'id))
           (if (protocol-info? proto-info)
             (lp #'rest #'id
                 (cons #'id extend)
                 calls events structures)
             (raise-syntax-error #f "Bad syntax; unknown protocol"
                                 stx #'id))))
        ((call: (call-id arg ...) . rest)
         (and (identifier? #'call-id)
              (identifier-list? #'(arg ...)))
         (lp #'rest id extend
             (cons #'(call-id arg ...) calls)
             events structures))
        ((event: (event-id arg ...) . rest)
         (and (identifier? #'event-id)
              (identifier-list? #'(arg ...)))
         (lp #'rest id extend calls
             (cons #'(event-id arg ...) events)
             structures))
        ((struct: struct-id . rest)
         (identifier? #'struct-id)
         (if (syntax-local-type-info? #'struct-id)
           (lp #'rest id extend calls events
               (cons #'struct-id structures))
           (raise-syntax-error #f "Bad syntax; unknown struct type"
                               stx #'struct-id)))
        ((struct: (struct-id xdr-read-e xdr-write-e) . rest)
         (and (identifier? #'struct-id)
              (identifier? #'xdr-read-e)
              (identifier? #'xdr-write-e))
         (if (syntax-local-type-info? stx)
           (lp #'rest id extend calls events
               (cons #'(struct-id xdr-read-e xdr-write-e) structures))
           (raise-syntax-error #f "Bad syntax; unknown struct type"
                               stx #'struct-id)))
        (()
         (values id
                 (reverse extend)
                 (reverse calls)
                 (reverse events)
                 (reverse structures)))
        (_ (raise-syntax-error #f "Bad syntax; bad clause" stx rest)))))

  (def (generate-make-proto-info proto-id id extend calls events)
    (def (type-id id)
      (stx-identifier proto-id proto-id "." id))
    
    (with-syntax* ((proto-id proto-id)
                   (id id)
                   (proto::proto (stx-identifier #'proto-id #'proto-id "::proto"))
                   ((extend-id ...) extend)
                   ((call-id ...) (map type-id (map stx-car calls)))
                   ((event-id ...) (map type-id (map stx-car events))))
      #'(defsyntax proto-id
          (make-protocol-info 'id
                              (quote-syntax proto::proto)
                              [(quote-syntax extend-id) ...]
                              [(quote-syntax call-id) ...]
                              [(quote-syntax event-id) ...]))))

  (def (generate-make-proto-registry proto-id id extend)
    (with-syntax*
        ((id id)
         (proto::proto          (stx-identifier proto-id proto-id "::proto"))
         ((values extend-infos) (map syntax-local-value extend))
         ((extend::proto ...)   (map protocol-info-runtime-identifier extend-infos))
         (make-proto
          #'(def proto::proto
              (make-!protocol 'id [extend::proto ...]
                              (hash-copy *default-proto-type-registry* )))))
      (let lp ((rest #'(extend::proto ...)) (merges []))
        (syntax-case rest ()
          ((extender . rest)
           (lp #'rest
               (cons #'(table-merge! (!protocol-types proto::proto)
                                     (!protocol-types extender))
                     merges)))
          (_ (with-syntax (((merge-proto! ...) merges))
           #'(begin
               make-proto
               merge-proto! ...)))))))

  (def (generate-proto-call proto-id id call-spec)
    (with-syntax*
        ((id id)
         ((call-id arg ...) call-spec)
         (kall-id        (stx-identifier #'call-id proto-id "." #'call-id))
         (kall-rt-id     (stx-identifier #'call-id #'id "." #'call-id "::t"))
         (make-kall      (stx-identifier #'call-id "make-" #'kall-id))
         (kall::t        (stx-identifier #'call-id #'kall-id "::t"))
         (kall?          (stx-identifier #'call-id #'kall-id "?"))
         (kall::xdr      (stx-identifier #'call-id #'kal "::xdr"))
         (kall-xdr-read  (stx-identifier #'call-id "xdr-" #'kall-id "-read"))
         (kall-xdr-write (stx-identifier #'call-id "xdr-" #'kall-id "-write"))
         (!kall          (stx-identifier #'call-id "!" #'kall-id))
         (!!kall         (stx-identifier #'call-id "!!" #'kall-id))
         (proto::proto   (stx-identifier proto-id proto-id "::proto"))
         (defn-kall
           #'(defstruct kall-id (arg ...) id: kall-rt-id))
         (defn-!kall
           #'(defsyntax-for-match !kall
               (syntax-rules ()
                 ((_ pat (... ...) k)
                  (!call (kall-id pat (... ...)) k)))
               (syntax-rules ()
                 ((_ arg ... k)
                  (make-!call (make-kall arg ...) k)))))
         (defn-!!kall
           #'(defrules !!kall ()
               ((_ dest arg ... k)
                (!!call dest (make-kall arg ...) k))
               ((_ dest arg ... k timeout: timeo)
                (!!call dest (make-kall arg ...) timeout: timeo))))
         (defn-xdr
           #'(begin
               (def (kall-xdr-read port)
                 (xdr-vector-like-read (cut make-object kall::t <>) 1 port))
               (def (kall-xdr-write obj port)
                 (xdr-vector-like-write obj 1 port))
               (def kall::xdr
                 (make-XDR kall? xdr-read xdr-write))
               (hash-put! (!protocol-types proto::proto) 'kall-rt-id kall::xdr))))
      #'(begin defn-kall defn-!kall defn-!!kall defn-xdr)))

  (def (generate-proto-calls proto-id id calls)
    (map (cut generate-proto-call proto-id id <>)
         calls))

  (def (generate-proto-event proto-id id event-spec)
    (with-syntax*
        ((id id)
         ((event-id arg ...) event-spec)
         (kall-id        (stx-identifier #'event-id proto-id "." #'event-id))
         (kall-rt-id     (stx-identifier #'event-id #'id "." #'event-id "::t"))
         (make-kall      (stx-identifier #'event-id "make-" #'kall-id))
         (kall::t        (stx-identifier #'event-id #'kall-id ":: t"))
         (kall?          (stx-identifier #'event-id #'kall-id "?"))
         (kall::xdr      (stx-identifier #'event-id #'kall "::xdr"))
         (kall-xdr-read  (stx-identifier #'event-id "xdr-" #'kall-id "-read"))
         (kall-xdr-write (stx-identifier #'event-id "xdr-" #'kall-id "-write"))
         (!kall          (stx-identifier #'event-id "!" #'kall-id))
         (!!kall         (stx-identifier #'event-id "!!" #'kall-id))
         (proto::proto   (stx-identifier proto-id proto-id "::proto"))
         (defn-kall
           #'(defstruct kall-id (arg ...) id: kall-rt-id))
         (defn-!kall
           #'(defsyntax-for-match !kall
               (syntax-rules ()
                 ((_ pat (... ...))
                  (!event (kall-id pat (... ...)))))
               (syntax-rules ()
                 ((_ arg ...)
                  (make-!event (make-kall arg ...))))))
         (defn-!!kall
           #'(defrules !!kall ()
               ((_ dest arg ...)
                (!!event dest (make-kall arg ...)))))
         (defn-xdr
           #'(begin
               (def (kall-xdr-read port)
                 (xdr-vector-like-read (cut make-object kall::t <>) 1 port))
               (def (kall-xdr-write obj port)
                 (xdr-vector-like-write obj 1 port))
               (def kall::xdr
                 (make-XDR kall? xdr-read xdr-write))
               (hash-put! (!protocol-types proto::proto) 'kall-rt-id kall::xdr))))
      #'(begin defn-kall defn-!kall defn-!!kall defn-xdr)))
  
  (def (generate-proto-events proto-id id events)
    (map (cut generate-proto-event proto-id id <>)
         events))

  (def (generate-proto-structure proto-id struct-spec)
    (syntax-case struct-spec ()
      ((struct-id struct-xdr-read structu-xdr-write)
       (with-syntax* (((values info) (syntax-local-value #'struct-id))
                      (struct::t     (runtime-type-identifier info))
                      (proto::proto  (stx-identifier proto-id proto-id "::proto")))
         #'(hash-put! (!protocol-types proto::proto)
                      (##type-id struct::t)
                      (make-XDR (lambda (obj) (struct-instance? struct::t obj))
                                struct-xdr-read struct-xdr-write))))
      (struct-id
       (with-syntax*
           (((values info) (syntax-local-value #'struct-id))
            (struct::t     (runtime-type-identifier info))
            (proto::proto  (stx-identifier proto-id proto-id "::proto")))
         #'(begin
             (hash-put! (!protocol-type proto::proto)
                        (##type-id struct::t)
                        (make-XDR
                         (lambda (obj)
                           (struct-instance? struct::t obj))
                         (lambda (port)
                           (xdr-vector-like-read (cut make-object struct::t <>)
                                                 1 port))
                         (lambda (obj port)
                           (xdr-vector-like-wrte obj 1 port)))))))))
  
  (def (generate-proto-structures proto-id structures)
    (map (cut generate-proto-structure proto-id <>)
         structures))
  
  (syntax-case stx ()
    ((_ proto-id clause ...)
     (identifier? #'proto-id)
     (with-syntax*
         (((values id extend calls events structures)
           (parse-proto-body #'(clause ...)))
          (id (or id (gensym)))
          (defn-proto-info
            (generate-make-proto-info #'proto-id #'id extend calls events))
          (defn-proto-registry
            (generate-make-proto-registry #'proto-id #'id extend))
          ((defn-call ...)
           (generate-proto-calls #'proto-id #'id calls))
          ((defn-event ...)
           (generate-proto-events #'proto-id #'id events))
          ((defn-struct ...)
           (generate-proto-structures #'proto-id structures)))
       #'(begin defn-proto-info
                defn-proto-registry
                (begin defn-call ...)
                (begin defn-event ...)
                (begin defn-struct ...))))))

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


     
