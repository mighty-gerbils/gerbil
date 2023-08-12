;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor protocols

(import :gerbil/gambit/threads
        :gerbil/gambit/ports
        :gerbil/gambit/misc
        :gerbil/gambit/hash
        :std/event
        :std/error
        :std/sugar
        :std/net/address
        :std/misc/uuid
        :std/misc/completion
        ./message
        ./xdr
        (for-syntax :std/stxutil))
(export
  rpc-io-error? raise-rpc-io-error
  (struct-out actor-error remote-error rpc-error)
  (struct-out handle remote)
  remote=? remote-hash
  (struct-out !rpc !call !value !error !event
              !stream !yield !end !continue !close !abort !sync
              !token)
  !!call !!value !!error !!event
  !!stream !!pipe !!yield !!end !!continue !!close !!abort !!sync
  (struct-out !protocol)
  defproto proto-out
  defproto-default-type
  (phi: +1 make-protocol-info protocol-info?
        protocol-info-runtime-identifier
        protocol-info-id
        protocol-info-extend
        protocol-info-calls
        protocol-info-events
        protocol-info-streams))

(defstruct (rpc-io-error io-error) ())

(defstruct (remote-error actor-error) ())
(defstruct (rpc-error actor-error) ())

(defmethod {:init! remote-error}
  actor-error:::init!)
(defmethod {:init! rpc-error}
  actor-error:::init!)

(def (raise-rpc-io-error where what . irritants)
  (raise (make-rpc-io-error what irritants where)))

;;; handles
(defstruct (handle proxy) (uuid)
  constructor: :init!)

(defstruct (remote handle) (address proto)
  final: #t)

(defmethod {:init! handle}
  (lambda (self handler id)
    (struct-instance-init! self handler (UUID id))))

(defmethod {:init! remote}
  (lambda (self handler id address proto)
    (struct-instance-init! self handler (UUID id) address proto)))

(def (remote=? a b)
  (with (((remote proxy-a uuid-a address-a proto-a) a)
         ((remote proxy-b uuid-b address-b proto-b) b))
    (and (eq? proxy-a proxy-b)
         (uuid=? uuid-a uuid-b)
         (equal? address-a address-b)
         (eq? proto-a proto-b))))

(def (remote-hash r)
  (with ((remote _ uuid address) r)
    (##fxxor (uuid-hash uuid)
             (equal?-hash address))))

;;; rpc messages
(defstruct !rpc ())
(defstruct (!call !rpc) (e k)
  final: #t)
(defstruct (!value !rpc) (e k)
  final: #t)
(defstruct (!error !rpc) (e k)
  final: #t)
(defstruct (!event !rpc) (e)
  final: #t)
(defstruct (!stream !rpc) (e k)
  final: #t)
(defstruct (!yield !rpc) (e k)
  final: #t)
(defstruct (!end !rpc) (k)
  final: #t)
(defstruct (!continue !rpc) (k)
  final: #t)
(defstruct (!close !rpc) (k)
  final: #t)
(defstruct (!abort !rpc) (k)
  final: #t)
(defstruct (!sync !rpc) (k)
  final: #t)

(defstruct !token ()
  final: #t)

(defrules !!call ()
  ((recur dest e)
   (recur dest e (make-!token) send-message #f #t))
  ((recur dest e timeout: timeo)
   (recur dest e (make-!token) send-message/timeout timeo #t))
  ((recur dest e k)
   (recur dest e k send-message #f #t))
  ((recur dest e k timeout: timeo)
   (recur dest e k send-message/timeout timeo #t))
  ((_ actor e k send-e args ...)
   (let ((token k)
         (dest actor))
     (send-e dest (make-!call e token) args ...)
     (!!call-recv token dest))))

(def (!!call-recv k dest)
  (<- ((!value val (eq? k))
       val)
      ((!error obj (eq? k))
       (if (string? obj)
         (raise (make-actor-error '!!call obj))
         (raise obj)))))

(defrules !!value ()
  ((_ dest e k)
   (send-message dest (make-!value e k) #f #f))
  ((recur e k)
   (recur @source e k)))

(defrules !!error ()
  ((_ dest e k)
   (send-message dest (make-!error e k) #f #f))
  ((recur e k)
   (recur @source e k)))

(defrules !!event ()
  ((_ dest e)
   (send-message dest (make-!event e))))

(defrules !!stream ()
  ((recur dest e)
   (recur dest e (make-!token) send-message #f #t))
  ((recur dest e timeout: timeo)
   (recur dest e (make-!token) send-message/timeout timeo #t))
  ((recur dest e k)
   (recur dest e k send-message #f #t))
  ((recur dest e k timeout: timeo)
   (recur dest e k send-message/timeout timeo #t))
  ((_ actor e k send-e args ...)
   (let ((token k) (dest actor))
     (send-e dest (make-!stream e token) args ...)
     token)))

(defrules !!pipe ()
  ((_ stream-start)
   (!!stream-pipe (lambda () stream-start))))

(def (!!stream-pipe start)
  (def (stream-start compl outp)
    (let (k (with-completion-error compl (start)))
      (completion-post! compl (void))
      (stream-handler k outp)))

  (def (stream-handler k outp)
    (let lp ((close? #f))
      (<- ((!yield val (eq? k))
           (write val outp)
           (lp close?))
          ((!sync (eq? k))
           (if close?
             (!!close k)
             (!!continue k))
           (lp close?))
          ((!end (eq? k))
           (close-port outp))
          ((!error obj k)
           (let (err
                 (if (string? obj)
                   (make-actor-error '!!stream obj)
                   obj))
             (write err outp)
             (close-port outp)))
          ((!close _)
           (lp #t)))))

  (let* ((compl (make-completion))
         ((values inp outp)
          (open-vector-pipe [permanent-close: #t direction: 'input]
                            [permanent-close: #t direction: 'output]))
         (handler (spawn/name 'stream-pipe stream-start compl outp))
         (close (lambda () (!!close handler (void)))))
    (completion-wait! compl)
    (make-will inp (lambda (_) (close)))
    (values inp close)))

(defrules !!yield ()
  ((_ dest e k)
   (send-message dest (make-!yield e k)))
  ((recur e k)
   (recur @source e k)))

(defrules !!continue ()
  ((_ dest k)
   (send-message dest (make-!continue k)))
  ((recur k)
   (recur @source k)))

(defrules !!end ()
  ((_ dest k)
   (send-message dest (make-!end k) #f #f))
  ((recur k)
   (recur @source k)))

(defrules !!close ()
  ((_ dest k)
   (send-message dest (make-!close k)))
  ((recur k)
   (recur @source k)))

(defrules !!abort ()
  ((_ dest k)
   (send-message dest (make-!abort k)))
  ((recur k)
   (recur @source k)))

(defrules !!sync ()
  ((_ dest k)
   (send-message dest (make-!sync k) #f #t))
  ((recur k)
   (recur @source k)))

;;; protocol interface specifications
(defstruct !protocol (id super types)
  final: #t)

;; defproto name
;;   [extend: proto-id]
;;   [id: proto-id]
;;   [call:] (message arg ...) ...
;;   [event: (message arg ...)  ...]
;;   [stream: (message arg ...) ...]
;;   [struct: struct-id ...]
;;  args:
;;   _ or id
;; messages:
;;  creates message struct and !message and !!message macros
;;  !message is a match macro that wraps a !call or !event around the value
;;  !!message is a macro that wraps and sends to dest
;;
(begin-syntax
  (defstruct protocol-info (id runtime-identifier extend calls events streams)
    id: std/actor#protocol-info::t))

(defsyntax (defproto stx)
  (def (parse-proto-body clauses)
    (let lp ((rest clauses)
             (id #f) (extend []) (calls []) (events []) (streams []) (structures [])
             (parsing call:))
      (syntax-case rest (=>)
        ((id: proto-id . rest)
         (identifier? #'proto-id)
         (if (not id)
           (lp #'rest #'proto-id
               extend calls events streams structures
               parsing)
           (raise-syntax-error #f "Bad syntax; duplicate id" stx #'proto-id id)))
        ((extend: . rest)
         (lp #'rest id extend calls events streams structures
             extend:))
        ((proto-id . rest)
         (and (eq? extend: parsing)
              (identifier? #'proto-id))
         (let (proto-info (syntax-local-value #'proto-id))
           (if (protocol-info? proto-info)
             (lp #'rest id
                 (cons #'proto-id extend)
                 calls events streams structures
                 parsing)
             (raise-syntax-error #f "Bad syntax; unknown protocol"
                                 stx #'id))))
        ((call: . rest)
         (lp #'rest id extend calls events streams structures
             call:))
        (((call-id arg ...) . rest)
         (and (eq? call: parsing)
              (identifier? #'call-id)
              (identifier-list? #'(arg ...)))
         (lp #'rest id extend
             (cons #'(call-id arg ...) calls)
             events streams structures
             parsing))
        ((event: . rest)
         (lp #'rest id extend calls events streams structures
             event:))
        (((event-id arg ...) . rest)
         (and (eq? event: parsing)
              (identifier? #'event-id)
              (identifier-list? #'(arg ...)))
         (lp #'rest id extend calls
             (cons #'(event-id arg ...) events)
             streams structures
             parsing))
        ((stream: . rest)
         (lp #'rest id extend calls events streams structures
             stream:))
        (((stream-id arg ...) . rest)
         (and (eq? stream: parsing)
              (identifier? #'stream-id)
              (identifier-list? #'(arg ...)))
         (lp #'rest id extend
             calls events
             (cons #'(stream-id arg ...) streams)
             structures
             parsing))
        ((struct: . rest)
         (lp #'rest id extend calls events streams structures
             struct:))
        ((struct-id . rest)
         (and (eq? struct: parsing)
              (identifier? #'struct-id))
         (if (syntax-local-type-info? #'struct-id)
           (lp #'rest id extend calls events streams
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
           (lp #'rest id extend calls events streams
               (cons #'(struct-id xdr-read-e xdr-write-e) structures)
               parsing)
           (raise-syntax-error #f "Bad syntax; unknown struct type"
                               stx #'struct-id)))
        (()
         (values id
                 (reverse extend)
                 (reverse calls)
                 (reverse events)
                 (reverse streams)
                 (reverse structures)))
        (_ (raise-syntax-error #f "Bad syntax; bad clause" stx rest)))))

  (def (generate-make-proto-info proto-id id extend calls events streams)
    (def (type-id id)
      (format-id proto-id "~a.~a" proto-id id))

    (with-syntax* ((proto-id proto-id)
                   (id id)
                   (proto::proto (format-id #'proto-id "~a::proto" #'proto-id))
                   ((extend-id ...) extend)
                   ((call-id ...) (map type-id (map stx-car calls)))
                   ((event-id ...) (map type-id (map stx-car events)))
                   ((stream-id ...) (map type-id (map stx-car streams))))
      #'(defsyntax proto-id
          (make-protocol-info 'id
                              (quote-syntax proto::proto)
                              [(quote-syntax extend-id) ...]
                              [(quote-syntax call-id) ...]
                              [(quote-syntax event-id) ...]
                              [(quote-syntax stream-id) ...]))))

  (def (generate-make-proto-registry proto-id id extend)
    (with-syntax*
        ((id id)
         (proto::proto          (format-id proto-id "~a::proto" proto-id))
         ((values extend-infos) (map syntax-local-value extend))
         ((extend::proto ...)   (map protocol-info-runtime-identifier extend-infos))
         (make-proto
          #'(def proto::proto
                (make-!protocol 'id [extend::proto ...]
                                (hash-copy +xdr-default-type-registry+ )))))
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
         (kall-id        (format-id #'call-id "~a.~a" proto-id #'call-id))
         (kall-rt-id     (format-id #'call-id "~a.~a::t" #'id #'call-id))
         (make-kall      (format-id #'call-id "make-~a" #'kall-id))
         (kall::t        (format-id #'call-id "~a::t" #'kall-id))
         (kall?          (format-id #'call-id "~a?" #'kall-id))
         (kall::xdr      (format-id #'call-id "~a::xdr" #'kall-id))
         (kall-xdr-read  (format-id #'call-id "xdr-~a-read" #'kall-id))
         (kall-xdr-write (format-id #'call-id "xdr-~a-write" #'kall-id))
         (!kall          (format-id #'call-id "!~a" #'kall-id))
         (!!kall         (format-id #'call-id "!!~a" #'kall-id))
         (proto::proto   (format-id proto-id "~a::proto" proto-id))
         (defn-kall
           #'(defstruct kall-id (arg ...) id: kall-rt-id final: #t))
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
                (!!call dest (make-kall arg ...)))
               ((_ dest arg ... timeout: timeo)
                (!!call dest (make-kall arg ...) timeout: timeo))))
         (defn-xdr
           #'(begin
               (def (kall-xdr-read buffer)
                 (xdr-read-struct kall::t buffer))
               (def (kall-xdr-write obj buffer)
                 (xdr-write-struct obj buffer))
               (def kall::xdr
                 (make-XDR kall-xdr-read kall-xdr-write))
               (hash-put! (!protocol-types proto::proto) 'kall-rt-id kall::xdr))))
      #'(begin defn-kall defn-!kall defn-!!kall defn-xdr)))

  (def (generate-proto-calls proto-id id calls)
    (map (cut generate-proto-call proto-id id <>)
         calls))

  (def (generate-proto-event proto-id id event-spec)
    (with-syntax*
        ((id id)
         ((event-id arg ...) event-spec)
         (kall-id        (format-id #'event-id "~a.~a" proto-id #'event-id))
         (kall-rt-id     (format-id #'event-id "~a.~a::t" #'id #'event-id))
         (make-kall      (format-id #'event-id "make-~a" #'kall-id))
         (kall::t        (format-id #'event-id "~a::t" #'kall-id))
         (kall?          (format-id #'event-id "~a?" #'kall-id))
         (kall::xdr      (format-id #'event-id "~a::xdr" #'kall-id))
         (kall-xdr-read  (format-id #'event-id "xdr-~a-read" #'kall-id))
         (kall-xdr-write (format-id #'event-id "xdr-~a-write" #'kall-id))
         (!kall          (format-id #'event-id "!~a" #'kall-id))
         (!!kall         (format-id #'event-id "!!~a" #'kall-id))
         (proto::proto   (format-id proto-id "~a::proto" proto-id))
         (defn-kall
           #'(defstruct kall-id (arg ...) id: kall-rt-id final: #t))
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
               (def (kall-xdr-read buffer)
                 (xdr-read-struct kall::t buffer))
               (def (kall-xdr-write obj buffer)
                 (xdr-write-struct obj buffer))
               (def kall::xdr
                 (make-XDR kall-xdr-read kall-xdr-write))
               (hash-put! (!protocol-types proto::proto) 'kall-rt-id kall::xdr))))
      #'(begin defn-kall defn-!kall defn-!!kall defn-xdr)))

  (def (generate-proto-events proto-id id events)
    (map (cut generate-proto-event proto-id id <>)
         events))

  (def (generate-proto-stream proto-id id stream-spec)
    (with-syntax*
        ((id id)
         ((call-id arg ...) stream-spec)
         (kall-id        (format-id #'call-id "~a.~a" proto-id #'call-id))
         (kall-rt-id     (format-id #'call-id "~a.~a::t" #'id #'call-id))
         (make-kall      (format-id #'call-id "make-~a" #'kall-id))
         (kall::t        (format-id #'call-id "~a::t" #'kall-id))
         (kall?          (format-id #'call-id "~a?" #'kall-id))
         (kall::xdr      (format-id #'call-id "~a::xdr" #'kall-id))
         (kall-xdr-read  (format-id #'call-id "xdr-~a-read" #'kall-id))
         (kall-xdr-write (format-id #'call-id "xdr-~a-write" #'kall-id))
         (!kall          (format-id #'call-id "!~a" #'kall-id))
         (!!kall         (format-id #'call-id "!!~a" #'kall-id))
         (proto::proto   (format-id proto-id "~a::proto" proto-id))
         (defn-kall
           #'(defstruct kall-id (arg ...) id: kall-rt-id final: #t))
         (defn-!kall
           #'(defsyntax-for-match !kall
               (syntax-rules ()
                 ((_ pat (... ...) k)
                  (!stream (kall-id pat (... ...)) k)))
               (syntax-rules ()
                 ((_ arg ... k)
                  (make-!stream (make-kall arg ...) k)))))
         (defn-!!kall
           #'(defrules !!kall ()
               ((_ dest arg ...)
                (!!stream dest (make-kall arg ...)))
               ((_ dest arg ... timeout: timeo)
                (!!stream dest (make-kall arg ...) timeout: timeo))))
         (defn-xdr
           #'(begin
               (def (kall-xdr-read buffer)
                 (xdr-read-struct kall::t buffer))
               (def (kall-xdr-write obj buffer)
                 (xdr-write-struct obj buffer))
               (def kall::xdr
                 (make-XDR kall-xdr-read kall-xdr-write))
               (hash-put! (!protocol-types proto::proto) 'kall-rt-id kall::xdr))))
      #'(begin defn-kall defn-!kall defn-!!kall defn-xdr)))

  (def (generate-proto-streams proto-id id streams)
    (map (cut generate-proto-stream proto-id id <>)
         streams))

  (def (generate-proto-structure proto-id struct-spec)
    (syntax-case struct-spec ()
      ((struct-id struct-xdr-read structu-xdr-write)
       (with-syntax* (((values info) (syntax-local-value #'struct-id))
                      (struct::t     (runtime-type-identifier info))
                      (proto::proto  (format-id proto-id "~a::proto" proto-id)))
         #'(hash-put! (!protocol-types proto::proto)
                      (##type-id struct::t)
                      (make-XDR struct-xdr-read struct-xdr-write))))
      (struct-id
       (with-syntax*
           (((values info) (syntax-local-value #'struct-id))
            (struct::t     (runtime-type-identifier info))
            (proto::proto  (format-id proto-id "~a::proto" proto-id)))
         #'(begin
             (hash-put! (!protocol-types proto::proto)
                        (##type-id struct::t)
                        (make-XDR
                         (lambda (buffer)
                           (xdr-read-struct struct::t buffer))
                         xdr-write-struct)))))))

  (def (generate-proto-structures proto-id structures)
    (map (cut generate-proto-structure proto-id <>)
         structures))

  (def (generate-proto-id proto-id)
    (if (module-context? (current-expander-context))
      (cond
       ((module-context-ns (current-expander-context))
        => (lambda (ns) (format-id proto-id "~a#~a" ns proto-id)))
       (else
        (let (mid (expander-context-id (current-expander-context)))
          (format-id proto-id "~a#~a" mid proto-id))))
      (genident proto-id)))

  (syntax-case stx ()
    ((_ proto-id clause ...)
     (identifier? #'proto-id)
     (with-syntax*
         (((values id extend calls events streams structures)
           (parse-proto-body #'(clause ...)))
          (id (or id (generate-proto-id #'proto-id)))
          (defn-proto-info
            (generate-make-proto-info #'proto-id #'id extend calls events streams))
          (defn-proto-registry
            (generate-make-proto-registry #'proto-id #'id extend))
          ((defn-call ...)
           (generate-proto-calls #'proto-id #'id calls))
          ((defn-event ...)
           (generate-proto-events #'proto-id #'id events))
          ((defn-stream ...)
           (generate-proto-streams #'proto-id #'id streams))
          ((defn-struct ...)
           (generate-proto-structures #'proto-id structures)))
       #'(begin defn-proto-info
                defn-proto-registry
                (begin defn-call ...)
                (begin defn-event ...)
                (begin defn-stream ...)
                (begin defn-struct ...))))))

(defsyntax-for-export (proto-out stx)
  (def (message-ids ids)
    (let lp ((rest ids) (mids []))
      (match rest
        ([id . rest]
         (lp rest
             (cons* ['struct-out id]
                    (format-id id "!~a" id)
                    (format-id id "!!~a" id)
                    mids)))
        (else mids))))

  (syntax-case stx ()
    ((_ id ...)
     (let lp ((rest #'(id ...)) (ids []))
       (match rest
         ([id . rest]
          (match (syntax-local-value id false)
            ((protocol-info _ rtid _ calls evts streams)
             (lp rest
                 [id rtid
                     (message-ids calls) ...
                     (message-ids evts) ...
                     (message-ids streams) ...
                     ids ...]))
            (else
             (raise-syntax-error #f "Not defined as a protocol" stx id))))
         (else
          (cons 'begin: ids)))))))

;; default protocol types
(defrules defproto-default-type ()
  ((_ rule ...)
   (begin (defproto-default-type-decl rule) ...)))

(defrules defproto-default-type-decl ()
  ((_ (type::t xdr-read-e xdr-write-e))
   (hash-put! +xdr-default-type-registry+
              (##type-id type::t)
              (make-XDR xdr-read-e xdr-write-e)))
  ((_ (type::t))
   (hash-put! +xdr-default-type-registry+
              (##type-id type::t)
              (make-XDR (lambda (buffer) (xdr-read-struct type::t buffer))
                        xdr-write-struct))))
