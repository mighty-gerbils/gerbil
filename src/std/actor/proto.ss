;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor protocols
package: std/actor

(import :gerbil/gambit/threads
        :gerbil/gambit/ports
        :std/event
        :std/error
        :std/net/address
        :std/misc/uuid
        :std/actor/message
        :std/actor/xdr
        )
(export
  rpc-error? raise-rpc-error
  remote-error? raise-remote-error
  (struct-out handle remote)
  (struct-out !rpc !call !value !error !event !stream !end)
  !!call !!call-recv !!value !!error !!event !!stream !!stream-recv
  (struct-out !protocol !rpc-protocol)
  defproto
  defproto-default-type
  *default-proto-type-registry*
  (phi: +1 make-protocol-info protocol-info?
        protocol-info-runtime-identifier
        protocol-info-id
        protocol-info-extend
        protocol-info-calls
        protocol-info-events)
  )

(defstruct (rpc-error io-error) ()
  id: std/actor#rpc-error::t)

(defstruct (remote-error <error>) ()
  id: std/actor#remote-error::t)

(def (raise-rpc-error where what . irritants)
  (raise (make-rpc-error what irritants where)))

(def (raise-remote-error where what . irritants)
  (raise (make-remote-error what irritants where)))

;;; handles
(defstruct (handle proxy) (uuid)
  id: std/actor#handle::t
  constructor: :init!)

(defstruct (remote handle) (address proto)
  id: std/actor#remote-handle::t)

(defmethod {:init! handle}
  (lambda (self handler id)
    (set! (proxy-handler self)
      handler)
    (set! (handle-uuid self)
      (UUID id))))

(defmethod {:init! remote}
  (lambda (self handler id address proto)
    (handle:::init! self handler id)
    (set! (remote-address self)
      (inet-address address))
    (set! (remote-proto self)
      proto)))

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
(defstruct (!stream !rpc) (e k)
  id: std/actor#!stream::t)
(defstruct (!end !rpc) (k)
  id: std/actor#!end::t)

(defrules !!call ()
  ((recur dest e)
   (recur dest e (gensym 'k) send-message))
  ((recur dest e timeout: timeo)
   (recur dest e (gensym 'k) send-message/timeout timeo))
  ((recur dest e k)
   (recur dest e k send-message))
  ((recur dest e k timeout: timeo)
   (recur dest e k send-message/timeout timeo))
  ((_ actor e k send-e args ...)
   (let ((token k)
         (dest actor))
     (send-e dest (make-!call e token) args ...)
     (!!call-recv token dest))))

(def (!!call-recv k dest)
  (<- ((!value val (eq? k))
       val)
      ((!error msg (eq? k))
       (raise-remote-error '!!call (string-append "remote error: " msg)))
      (! (if (remote? dest) (proxy-handler dest) never-evt)
         => (lambda (thread)
              (raise-remote-error '!!call "proxy failure"
                                  (with-catch values (cut thread-join! thread)))))))

(defsyntax (!!value stx)
  (syntax-case stx ()
    ((_ dest e k)
     #'(send-message dest (make-!value e k)))
    ((macro e k)
     (with-syntax ((dest (stx-identifier #'macro '@source)))
       #'(send-message dest (make-!value e k))))))

(defsyntax (!!error stx)
  (syntax-case stx ()
    ((_ dest e k)
     #'(send-message dest (make-!error e k)))
    ((macro e k)
     (with-syntax ((dest (stx-identifier #'macro '@source)))
       #'(send-message dest (make-!error e k))))))

(defrules !!event ()
  ((_ dest e)
   (send-message dest (make-!event e))))

(defrules !!stream ()
  ((recur dest e)
   (recur dest e (gensym 'k) send-message))
  ((recur dest e timeout: timeo)
   (recur dest e (gensym 'k) send-message/timeout timeo))
  ((recur dest e k)
   (recur dest e k send-message))
  ((recur dest e k timeout: timeo)
   (recur dest e k send-message/timeout timeo))
  ((_ actor e k send-e args ...)
   (let ((token k)
         (dest actor))
     (!!stream-recv e token dest send-e args ...))))

(def (!!stream-recv e k dest send-e . send-args)
  (def (stream-handler outp)
    (apply send-e dest (make-!stream e k) send-args)
    (let (err-evt (if (remote? dest) (proxy-handler dest) never-evt))
      (let lp ()
        (<- ((!value val (eq? k))
             (write val outp)
             (lp))
            ((!end (eq? k))
             (close-port outp))
            ((!error msg k)
             (let (err (make-remote-error '!!call (string-append "remote error: " msg)))
               (write err outp)
               (close-port outp)))
            (! err-evt
               => (lambda (thread)
                    (let (err (make-remote-error '!!call "proxy failure"
                                                 (with-catch values (cut thread-join! thread))))
                      (write err outp)
                      (close-port outp))))))))
  (let ((values inp outp)
        (open-vector-pipe [permanent-close: #t direction: 'input]
                          [permanent-close: #t direction: 'output]))
    (spawn stream-handler outp)
    inp))

;;; wire rpc protocols
(defstruct !rpc-protocol (open-client open-server connect-e accept-e)
  id: std/actor#rpc-protocol::t)

;;; protocol interface specifications
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
             (id #f) (extend []) (calls []) (events []) (structures [])
             (parsing call:))
      (syntax-case rest (=>)
        ((id: proto-id . rest)
         (identifier? #'proto-id)
         (if (not id)
           (lp #'rest #'proto-id
               extend calls events structures
               parsing)
           (raise-syntax-error #f "Bad syntax; duplicate id")))
        ((extend: . rest)
         (lp #'rest id extend calls events structures
             extend:))
        ((proto-id . rest)
         (and (eq? extend: parsing)
              (identifier? #'proto-id))
         (let (proto-info (syntax-local-value #'proto-id))
           (if (protocol-info? proto-info)
             (lp #'rest id
                 (cons #'proto-id extend)
                 calls events structures
                 parsing)
             (raise-syntax-error #f "Bad syntax; unknown protocol"
                                 stx #'id))))
        ((call: . rest)
         (lp #'rest id extend calls events structures
             call:))
        (((call-id arg ...) . rest)
         (and (eq? call: parsing)
              (identifier? #'call-id)
              (identifier-list? #'(arg ...)))
         (lp #'rest id extend
             (cons #'(call-id arg ...) calls)
             events structures
             parsing))
        ((event: . rest)
         (lp #'rest id extend calls events structures
             event:))
        (((event-id arg ...) . rest)
         (and (eq? event: parsing)
              (identifier? #'event-id)
              (identifier-list? #'(arg ...)))
         (lp #'rest id extend calls
             (cons #'(event-id arg ...) events)
             structures
             parsing))
        ((struct: . rest)
         (lp #'rest id extend calls events structures
             struct:))
        ((struct-id . rest)
         (and (eq? struct: parsing)
              (identifier? #'struct-id))
         (if (syntax-local-type-info? #'struct-id)
           (lp #'rest id extend calls events
               (cons #'struct-id structures)
               parsing)
           (raise-syntax-error #f "Bad syntax; unknown struct type"
                               stx #'struct-id)))
        (((struct-id xdr-read-e xdr-write-e) . rest)
         (and (eq? struct: parsing)
              (identifier? #'struct-id)
              (identifier? #'xdr-read-e)
              (identifier? #'xdr-write-e))
         (if (syntax-local-type-info? stx)
           (lp #'rest id extend calls events
               (cons #'(struct-id xdr-read-e xdr-write-e) structures)
               parsing)
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
          #'(begin
              (def proto::proto
                (make-!protocol 'id [extend::proto ...]
                                (hash-copy *default-proto-type-registry* )))
              (hash-put! (!protocol-types proto::proto)
                         (!protocol-id proto::proto)
                         proto::proto))))
      (let lp ((rest #'(extend::proto ...)) (merges []))
        (syntax-case rest ()
          ((extender . rest)
           (lp #'rest
               (cons #'(hash-merge! (!protocol-types proto::proto)
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
         (kall::xdr      (stx-identifier #'call-id #'kall-id "::xdr"))
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
               ((_ dest arg ...)
                (!!call dest (make-kall arg ...) (gensym 'k)))
               ((_ dest arg ... timeout: timeo)
                (!!call dest (make-kall arg ...) (gensym 'k) timeout: timeo))
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
                 (make-XDR kall? kall-xdr-read kall-xdr-write))
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
         (kall::t        (stx-identifier #'event-id #'kall-id "::t"))
         (kall?          (stx-identifier #'event-id #'kall-id "?"))
         (kall::xdr      (stx-identifier #'event-id #'kall-id "::xdr"))
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
                 (make-XDR kall? kall-xdr-read kall-xdr-write))
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
             (hash-put! (!protocol-types proto::proto)
                        (##type-id struct::t)
                        (make-XDR
                         (lambda (obj)
                           (struct-instance? struct::t obj))
                         (lambda (port)
                           (xdr-vector-like-read (cut make-object struct::t <>)
                                                 1 port))
                         (lambda (obj port)
                           (xdr-vector-like-write obj 1 port)))))))))
  
  (def (generate-proto-structures proto-id structures)
    (map (cut generate-proto-structure proto-id <>)
         structures))

  (def (generate-proto-id proto-id)
    (if (module-context? (current-expander-context))
      (cond
       ((module-context-ns (current-expander-context))
        => (lambda (ns) (stx-identifier proto-id ns "#" proto-id)))
       (else
        (let (mid (expander-context-id (current-expander-context)))
          (stx-identifier proto-id mid "#" proto-id))))
      (genident proto-id)))
  
  (syntax-case stx ()
    ((_ proto-id clause ...)
     (identifier? #'proto-id)
     (with-syntax*
         (((values id extend calls events structures)
           (parse-proto-body #'(clause ...)))
          (id (or id (generate-proto-id #'proto-id)))
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
   (begin (defproto-default-type-decl rule) ...)))

(defrules defproto-default-type-decl ()
  ((_ (type::t type-t type? xdr-type-read xdr-type-write))
   (begin
     (def type-t
       (make-XDR type? xdr-type-read xdr-type-write))
     (hash-put! *default-proto-type-registry*
                (##type-id type::t)
                type-t))))


     
