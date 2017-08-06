;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor message primitives and macros
package: std/actor

(import :gerbil/gambit/threads
        :gerbil/gambit/os
        :std/event
        :std/error)
(export
  (struct-out message proxy)
  (struct-out actor-error)
  actor-error:::init!
  -> send send-message send-message/timeout
  << <- receive-message
  !)

;; ~~lib/_gambit#.scm
(extern namespace: #f
  macro-absent-obj
  macro-mailbox-mutex
  macro-mailbox-condvar
  macro-mailbox-cursor
  macro-mailbox-cursor-set!
  macro-mailbox-fifo
  macro-fifo-next
  macro-fifo-next-set!
  macro-fifo-elem
  macro-fifo-tail-set!)

(defstruct (actor-error <error>) ()
  constructor: :init!)

(defmethod {:init! actor-error}
  (lambda (self where what . irritants)
    (struct-instance-init! self what irritants where)))

;;; structured messages
(defstruct message (e source dest options)
  final: #t)

(defstruct proxy (handler))

;;; send primitives
(def (send dest msg (check-dead? #f))
  (let lp ((dest dest))
    (cond
     ((thread? dest)
      (cond
       ((not check-dead?)
        (thread-send dest msg))
       ((thread-send/check dest msg))
       (else
        (raise (make-actor-error 'send "Cannot send message; dead thread" dest msg)))))
     ((proxy? dest)
      (lp (proxy-handler dest)))
     (else
      (lp (call-method ':actor dest))))))

(def (send-message dest value (options #f) (check-dead? (proxy? dest)))
  (send dest (make-message value (current-thread) dest options)
        check-dead?))

(def (send-message/timeout dest value timeo (check-dead? (proxy? dest)))
  (send dest (make-message value (current-thread) dest [timeout: timeo])
        check-dead?))

(extern thread-send/check)
(begin-foreign
  (namespace ("std/actor/message#" send thread-send/check))
  (define (thread-send/check thread msg)
    (declare (not interrupts-enabled))
    (macro-check-initialized-thread thread (send thread msg)
      (if (macro-thread-end-condvar thread)
        (##thread-send thread msg)
        #f))))

(defsyntax (-> stx)
  (syntax-case stx ()
    ((macro msg)
     (with-syntax ((dest (stx-identifier #'macro '@source)))
       #'(send-message dest msg)))
    ((macro msg timeout: timeo)
     (with-syntax ((dest (stx-identifier #'macro '@source)))
       #'(send-message/timeout dest msg)))))

;;; receive primitives
;; receive macros
;; <- matches a structured message, << raw matches the raw message
(begin-syntax
  (def (generate-receive stx generate-test-e generate-recv-e)
    (syntax-case stx ()
      ((_ clause ...)
       (with-syntax* (((values clauses events else-e)
                       (parse-receive stx #'(clause ...)))
                      ((event ...) events)
                      (test-e (generate-test-e stx clauses))
                      (recv-e (generate-recv-e stx clauses))
                      (else-e else-e))
         #'(receive-message test-e recv-e else-e [event ...])))))

  (def (parse-receive stx clauses)
    (let lp ((rest clauses) (clauses []) (events []) (else-e #f))
      (syntax-case rest (=> ! else)
        (((! evt => K) . rest)
         (lp #'rest clauses
             (cons #'(cons evt K) events)
             else-e))
        (((! evt body ...) . rest)
         (lp #'rest clauses
             (cons #'(cons evt (lambda (_) body ...)) events)
             else-e))
        (((else body ...) . rest)
         (if else-e
           (raise-syntax-error #f "Bad syntax; duplicate else"
                               stx (stx-car #'rest))
           (lp #'rest clauses events
               #'(lambda () body ...))))
        ((clause . rest)
         (lp #'rest
             (cons #'clause clauses)
             events else-e))
        (()
         (values (reverse clauses) (reverse events) else-e))
        (_ (raise-syntax-error #f "Bad syntax; bad clause" stx rest)))))

  (def (generate-receive-raw-test-e stx clauses)
    (with-syntax ((((hd . body) ...) clauses))
      #'(lambda (msg)
          (match msg
            (hd #t) ...
            (else #f)))))

  (def (generate-receive-raw-recv-e stx clauses)
    (with-syntax (((clause ...) clauses))
      #'(lambda (msg)
          (match msg clause ...))))

  (def (generate-receive-msg-test-e stx clauses)
    (with-syntax* ((((hd . body) ...) clauses)
                   ((macro . body) stx)
                   (@message (stx-identifier #'macro '@message))
                   (@value   (stx-identifier #'macro '@value))
                   (@source  (stx-identifier #'macro '@source))
                   (@dest    (stx-identifier #'macro '@dest))
                   (@options (stx-identifier #'macro '@options)))
      #'(lambda (@message)
          (match @message
            ((message @value @source @dest @options)
             (match @value
               (hd #t) ...
               (else #f)))
            (else #f)))))

  (def (generate-receive-msg-recv-e stx clauses)
    (with-syntax* (((clause ...) clauses)
                   ((macro . body) stx)
                   (@message (stx-identifier #'macro '@message))
                   (@value   (stx-identifier #'macro '@value))
                   (@source  (stx-identifier #'macro '@source))
                   (@dest    (stx-identifier #'macro '@dest))
                   (@options (stx-identifier #'macro '@options)))
      #'(lambda (@message)
          (match @message
            ((message @value @source @dest @options)
             (match @value
               clause ...))))))

    )

(defsyntax (<< stx)
  (generate-receive stx generate-receive-raw-test-e generate-receive-raw-recv-e))

(defsyntax (<- stx)
  (generate-receive stx generate-receive-msg-test-e generate-receive-msg-recv-e))

;; receive-message
(def (receive-message test-e receive-e else-e events)
  (def (loop next)
    (cond
     ((eq? next mailbox-empty)
      (if else-e
        (begin
          (thread-mailbox-rewind)
          (else-e))
        (mailbox-wait! events loop)))
     ((test-e next)
      (thread-mailbox-extract-and-rewind)
      (receive-e next))
     (else
      (loop (mailbox-next)))))
  (thread-mailbox-rewind)
  (loop (mailbox-next)))

(def (mailbox-wait! events loop)
  (def (simple-events? events)
    (match events
      ([sel . rest]
       (and (simple-selector? sel)
            (simple-events? rest)))
      (else #t)))

  (def (simple-selector? sel)
    (match sel
      ([evt . K]
       (simple-event? evt))))

  (def (simple-event? evt)
    (or (not evt)
        (time? evt)
        (real? evt)
        (and (event-object? evt)
             (simple-event? (event-selector evt)))))

  (def (event-object? evt)
    (or (event? evt)
        (event-handler? evt)))

  (def (selector-e sel)
    (match sel
      ([evt . K]
       (if (event-object? evt)
         (event-selector evt)
         evt))))

  (def (selector-dispatch sel)
    (match sel
      ([evt . K]
       (if (event-object? evt)
         (event-value (handle-evt evt K))
         (K evt)))))

  (def (timeout-e events)
    (def now #f)
    (let lp ((rest events) (timeo (macro-absent-obj)) (deadline #f))
      (match rest
        ([evt . rest]
         (let (sel (selector-e evt))
           (cond
            ((time? sel)
             (let (evt-deadline (time->seconds sel))
               (if (or (not deadline) (< evt-deadline deadline))
                 (lp rest sel evt-deadline)
                 (lp rest timeo deadline))))
            ((real? sel)
             (unless now
               (set! now (##current-time-point)))
             (let (evt-deadline (+ now sel))
               (if (or (not deadline) (< evt-deadline deadline))
                 (lp rest sel evt-deadline)
                 (lp rest timeo deadline))))
            (else
             (lp rest timeo deadline)))))
        (else timeo))))

  (def (dispatch-e events timeo)
    (match events
      ([evt . rest]
       (if (eq? timeo (selector-e evt))
         (selector-dispatch evt)
         (dispatch-e rest timeo)))))

  (def (sync-events events)
    (let lp ((rest events) (r []))
      (match rest
        ([[evt . K] . rest]
         (cond
          ((not evt)
           (lp rest r))
          ((or (time? evt) (real? evt))
           (lp rest (cons (handle-evt (handle-evt evt (lambda (_) evt)) K) r)))
          (else
           (lp rest (cons (handle-evt evt K) r)))))
        (else
         (reverse r)))))

  (cond
   ((null? events)
    (loop (thread-mailbox-next)))
   ((simple-events? events)
    (let* ((timeo (timeout-e events))
           (next (thread-mailbox-next timeo mailbox-timeout)))
      (if (eq? next mailbox-timeout)
        (dispatch-e events timeo)
        (loop next))))
   (else
    (let* ((events (sync-events events))
           (mb (##thread-mailbox-get! (current-thread)))
           (mutex (macro-mailbox-mutex mb))
           (condvar (macro-mailbox-condvar mb)))
      (mutex-lock! mutex)
      (let (next (mailbox-next))
        (if (eq? next mailbox-empty)
          (apply sync
            (handle-evt
             (cons mutex condvar)
             (lambda (mutex condvar)
               (loop (mailbox-next))))
            events)
          (begin
            (mutex-unlock! mutex)
            (loop next))))))))

(def mailbox-timeout '#(timeout))

(extern mailbox-empty mailbox-next)

(begin-foreign
  (namespace ("std/actor/message#" mailbox-empty mailbox-next))

  (define mailbox-empty '#(empty))

  (define (mailbox-next)
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
        mailbox-empty))))
