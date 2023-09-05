;;; -*- Gerbil -*-
;;; © vyzo
;;; actor messages, primitives and macros
(import :gerbil/gambit/threads
        :gerbil/gambit/os
        :std/error
        :std/sugar
        :std/stxparam)
(export #t)

;; actor errors
(defstruct (actor-error <error>) ())

(def (raise-actor-error where what . irritants)
  (raise (make-actor-error what irritants where)))

;; default reply timeout; 5s
(def +default-reply-timeout+ 5)

(def (default-reply-timeout)
  +default-reply-timeout+)

(def (set-default-reply-timeout! timeo)
  (set! +default-reply-timeout+ timeo))

;; base type for all serializable messages; the contents must be serializable.
(defstruct message ()
  transparent: #t)

;; macro for definition of message classes
(defsyntax (defmessage stx)
  (def (typedef id fields rest)
    (with-syntax ((id::t (stx-identifier id id "::t"))
                  (hd [id (quote-syntax message)])
                  (fields fields)
                  (rest rest))
      #'(begin
          (defstruct hd fields transparent: #t final: #t . rest)
          (register-message-type! id::t))))
  (syntax-case stx ()
    ((_ id fields . rest)
     (and (identifier? #'id)
          (identifier-list? #'fields))
     (typedef #'id #'fields #'rest))))

;; message envelopes for structured interaction.
;; - message is the payload; must be a serializable acyclic object.
;; - dest is the destination of the message; it is a thread or a handle.
;; - source is the origin of the message; it is  a thread or a handle.
;; - nonce is a thread-specific monotonically increasing integer.
;; - replyto is the nonce of the message we are replying to; it is #f if this is not a reply.
;; - expiry is the reply expiration time; a time object or #F if it is a one way message.
;; - reply-expected? is set to true if the source is expecting a reply; this is a hint
;;   that allows remote servers to respond if the target actor is not registered
(defstruct envelope (message dest source nonce replyto expiry reply-expected?)
  final: #t unchecked: #t transparent: #t)

;; returns true if the envelope has expired
(def (&envelope-expired? msg)
  (alet (expiry (&envelope-expiry msg))
    (< (time->seconds expiry) (##current-time-point))))

;; actor handle base type.
;; - proxy is the thread that handles messages on behalf of another actor.
;; - ref is a reference to an actor; see ./server
(defstruct handle (proxy ref)
  unchecked: #t final: #t transparent: #t)

;; sends a message to an actor
;; - actor must be a thread or handle
;; - msg must be a serializable object or message
;; Returns #f if the destination is dead.
(def (send-message actor msg)
  (cond
   ((thread? actor)
    (thread-send/check actor msg))
   ((handle? actor)
    (thread-send/check (&handle-proxy actor) msg))
   (else
    (error "Bad argument; expected thread or handle" actor))))

;; sends a message wrapped in an envelope
;; Returns #f if the destination is a dead thread; otherwise returns the message nonce.
(def (-> dest msg
         replyto: (replyto #f)
         expiry: (expiry #f)
         reply-expected: (reply-expected? #f))
  (let (nonce (current-thread-nonce!))
    (and (send-message dest (envelope msg dest (current-thread) nonce replyto expiry reply-expected?))
         nonce)))

;; sends a message and receives the reply with a timeout.
(def (->> dest msg
          replyto: (replyto #f)
          timeout: (timeo +default-reply-timeout+))
  (let* ((expiry (timeout->expiry timeo))
         (nonce (current-thread-nonce!)))
    (unless (send-message dest (envelope msg dest (current-thread) nonce replyto expiry #t))
      (raise-actor-error 'send-message "actor is dead" dest))
    (<< ((envelope reply _ _ _ (eqv? nonce))
         reply)
        timeout: expiry)))

;; sends a reply in a reaction context
(defrule (--> result)
  (-> @source result replyto: @nonce expiry: @expiry))

;; conditionally sends a reply if one is expected
(defrule (-->? result)
  (when @reply-expected?
    (--> result)))

;; syntax parameters bound in envelope receive context
(defsyntax-parameter* @envelope @@envelope "Bad syntax; not in reaction context")
(defsyntax-parameter* @message @@message "Bad syntax; not in reaction context")
(defsyntax-parameter* @dest @@dest "Bad syntax; not in reaction context")
(defsyntax-parameter* @source @@source "Bad syntax; not in reaction context")
(defsyntax-parameter* @nonce @@nonce "Bad syntax; not in reaction context")
(defsyntax-parameter* @replyto @@replyto "Bad syntax; not in reaction context")
(defsyntax-parameter* @expiry @@expiry "Bad syntax; not in reaction context")
(defsyntax-parameter* @reply-expected? @@reply-expected? "Bad syntax; not in reaction context")

;; receive macros
(begin-syntax
  (def (generate-receive stx generate-recv-e)
    (syntax-case stx ()
      ((_ body ...)
       (with-syntax* (((values clauses else-clause timeout)
                       (parse-receive stx #'(body ...)))
                      (loop (genident 'loop))
                      (recv-e (generate-recv-e stx clauses #'loop)))
         (cond
          ((and (not else-clause) (not timeout))
           #'(let loop ()
               (let (next (thread-mailbox-next))
                 (recv-e next))))
          (else-clause
           (with-syntax (((else-body ...) else-clause))
             #'(let loop ()
                 (let (next (mailbox-next))
                   (if (eq? next mailbox-empty)
                     ((lambda () (thread-mailbox-rewind) else-body ...))
                     (recv-e next))))))
          (else
           (with-syntax ((timeo timeout))
             #'(let (expiry (timeout->expiry timeo))
                 (let loop ()
                   (let (next (thread-mailbox-next expiry mailbox-timeout))
                     (if (eq? next mailbox-timeout)
                       (begin
                         (thread-mailbox-rewind)
                         (raise-timeout 'receive "receive timeout" expiry))
                       (recv-e next))))))))))))

  (def (generate-receive-raw stx)
    (generate-receive stx generate-receive-raw-e))

  (def (generate-receive-envelope stx)
    (generate-receive stx generate-receive-envelope-e))

  (def (generate-receive-raw-e stx clauses loop)
    (with-syntax ((((pat body ...) ...) clauses)
                  (loop loop))
      #'(lambda (msg)
          (match msg
            (pat (thread-mailbox-extract-and-rewind) body ...) ...
            (else (loop))))))

  (def (generate-receive-envelope-e stx clauses loop)
    (with-syntax ((((pat body ...) ...) clauses)
                  (loop loop))
      #'(lambda ($envelope)
          (if (&envelope-expired? $envelope)
            (loop)
            (match $envelope
              ((envelope $message $dest $source $nonce $replyto $expiry $reply-expected?)
               (syntax-parameterize ((@@envelope (quote-syntax $envelope))
                                     (@@message  (quote-syntax $message))
                                     (@@dest     (quote-syntax $dest))
                                     (@@source   (quote-syntax $source))
                                     (@@nonce    (quote-syntax $nonce))
                                     (@@replyto  (quote-syntax $replyto))
                                     (@@expiry   (quote-syntax $expiry))
                                     (@@reply-expected? (quote-syntax $reply-expected?)))
                 (match $message
                   (pat (thread-mailbox-extract-and-rewind) body ...) ...
                   (else (loop)))))
              (else (loop)))))))

  (def (parse-receive stx body)
    (let lp ((rest body) (clauses []) (timeout #f))
      (syntax-case rest ()
        ((timeout: timeo . rest)
         (cond
          (timeout
           (raise-syntax-error #f "Bad syntax; duplicate timeout" stx))
          (else
           (lp #'rest clauses #'timeo))))
        (()
         (if (null? clauses)
           (raise-syntax-error #f "Bad syntax; no reaction clauses" stx)
           (values (reverse clauses) #f timeout)))
        ((hd . rest)
         (syntax-case #'hd (else unquote unquote-splicing)
           ((else expr ...)
            (cond
             (timeout
              (raise-syntax-error #f "Bad syntax; cannot specify both timeout and else clause" stx))
             ((not (stx-null? #'rest))
              (raise-syntax-error #f "Bad syntax; else clause must be last" stx))
             (else
              (values (reverse clauses) #'(expr ...) #f))))
           ((unquote macro-expr)
            (syntax-case #'macro-expr ()
              ((macro . args)
               (let* ((expander (syntax-local-e #'macro))
                      (new-clause (core-apply-expander expander #'macro-expr))
                      (new-rest (cons new-clause #'rest)))
                 (lp new-rest clauses timeout)))
              (_ (raise-syntax-error #f "Bad syntax; not a macro expression" stx #'macro-expr))))
           ((unquote-splicing macro-expr)
            (syntax-case #'macro-expr ()
              ((macro . args)
               (let* ((expander (syntax-local-e #'macro))
                      (new-clauses (core-apply-expander expander #'macro-expr))
                      (new-rest (stx-foldr cons #'rest new-clauses)))
                 (lp  new-rest clauses timeout)))
              (_ (raise-syntax-error #f "Bad syntax; not a macro expression" stx #'macro-expr))))
           ((pat body ...)
            (lp #'rest (cons #'(pat body ...) clauses) timeout))))))))

;; searches and receives by matching a raw message in the current thread mailbox
(defsyntax (<< stx)
  (generate-receive-raw stx))

;; searches and receives by matching a message envelope in the current thread mailbox.
(defsyntax (<- stx)
  (generate-receive-envelope stx))

;; gets the current thread nonce and increments by 1 to prepare the next nonce.
(def (current-thread-nonce!)
  (if (actor-thread? (current-thread))
    (let (nonce (actor-thread-nonce (current-thread)))
      (set! (actor-thread-nonce (current-thread))
        (1+ nonce))
      nonce)
    (let (nonce (thread-local-ref 'nonce 0))
      (thread-local-set! 'nonce (1+ nonce))
      nonce)))

;; converts a relative timeout to an expiriy; absolute times are returned as is.
(def (timeout->expiry timeo)
  (cond
   ((real? timeo)
    (seconds->time (+ (##current-time-point) timeo)))
   ((time? timeo)
    timeo)
   (else
    (error "Bad argument; expected real or time" timeo))))

;; message type registry
(def +message-types+ (make-hash-table-eq))
(def +message-types-mx+ (make-mutex 'message-type-registry))

(def (register-message-type! klass)
  (let (klass-id (##type-id klass))
    (unless (interned-symbol? klass-id)
      (error "uninterned message class" klass))
    (mutex-lock! +message-types-mx+)
    (hash-put! +message-types+ klass-id klass)
    (mutex-unlock! +message-types-mx+)))

(def (lookup-message-type type-id)
  (mutex-lock! +message-types-mx+)
  (let (klass (hash-get +message-types+ type-id))
    (mutex-unlock! +message-types-mx+)
    klass))

;; thread-send/check
;; a variant of thread-send that checks the destination thread for liveness
(cond-expand
  (gerbil-smp
   (extern namespace: #f
     macro-lock-thread!
     macro-unlock-thread!)
   (def (thread-send/check thread msg)
     (declare (not interrupts-enabled))
     (macro-lock-thread! thread)
     (let (end-condvar (macro-thread-end-condvar thread))
       (macro-unlock-thread! thread)
       (if (macro-thread-end-condvar thread)
       (##thread-send thread msg)
       #f))))
  (else
   (def (thread-send/check thread msg)
     (declare (not interrupts-enabled))
     (if (macro-thread-end-condvar thread)
       (##thread-send thread msg)
       #f))))

(def mailbox-timeout '#(timeout))
(def mailbox-empty '#(empty))

(cond-expand
 (gerbil-smp
  (extern namespace: #f
    macro-mailbox-mutex
    macro-mutex-lock!
    macro-mutex-unlock!)
  (def (mailbox-next)
    (declare (not interrupts-enabled))
    (let* ((mb
            (##thread-mailbox-get! (macro-current-thread)))
           (mutex
            (macro-mailbox-mutex mb)))
      (macro-mutex-lock! mutex #f (macro-current-thread))
      (let* ((cursor
              (macro-mailbox-cursor mb))
             (next
              (if cursor
                (macro-fifo-next cursor)
                (macro-mailbox-fifo mb)))
             (next2
              (macro-fifo-next next)))
        (if (##pair? next2)
          (let ((result (macro-fifo-elem next2)))
            (macro-mailbox-cursor-set! mb next)
            (macro-mutex-unlock! mutex)
            result)
          (begin
            (macro-mutex-unlock! mutex)
            mailbox-empty))))))
 (else
  (def (mailbox-next)
    (declare (not interrupts-enabled))
    (let* ((mb
            (##thread-mailbox-get! (macro-current-thread)))
           (cursor
            (macro-mailbox-cursor mb))
           (next
            (if cursor
              (macro-fifo-next cursor)
              (macro-mailbox-fifo mb)))
           (next2
            (macro-fifo-next next)))
        (if (##pair? next2)
          (let ((result (macro-fifo-elem next2)))
            (macro-mailbox-cursor-set! mb next)
            result)
            mailbox-empty)))))

;; gambit# references
(extern namespace: #f
  macro-current-thread
  macro-check-initialized-thread
  macro-thread-end-condvar
  macro-mailbox-cursor
  macro-mailbox-cursor-set!
  macro-mailbox-fifo
  macro-fifo-elem
  macro-fifo-next)
