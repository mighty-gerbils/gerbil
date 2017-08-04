;;; -*- Gerbil -*-
;;; (C) vyzo
;;; event driven programming interface: sync
package: std

(import :gerbil/gambit/threads
        :gerbil/gambit/os
        :gerbil/gambit/exceptions
        :std/sugar)
(export
  select                                ; low level synchronization
  ! !! sync poll                        ; high level synchornization
  never-evt always-evt                  ; bottom events
  make-event                            ; event constructors
  make-event-set
  handle-evt                            ;
  wrap-evt choice-evt
  event?                                ; event predicates
  event-handler?
  event-set?
  event-ready?                          ; non-blocking sync check
  event-selector                        ; retrieve event selector
  (rename: event-select-e event-value)  ; dispatch an event
  ;; useful stuff
  thread-dead?
  )

;; ~~lib/_gambit#.scm
(extern namespace: #f
  macro-condvar-name
  macro-thread-end-condvar
  macro-thread-exception?
  macro-mutex-btq-owner
  macro-closed?
  macro-u8vector-port?
  macro-string-port?
  macro-vector-port?
  macro-device-port?
  macro-tcp-server-port?
  macro-event-queue-port?
  macro-directory-port?
  macro-port-mutex
  macro-port-roptions
  macro-port-rtimeout
  macro-device-port-rdevice-condvar
  macro-u8vector-port-rcondvar
  macro-string-port-rcondvar
  macro-vector-port-rcondvar
  macro-tcp-server-port-rdevice-condvar
  macro-event-queue-port-rdevice-condvar
  macro-directory-port-rdevice-condvar
  macro-byte-port-rlo
  macro-byte-port-rhi
  macro-byte-port-rbuf-fill
  macro-vector-port-rlo
  macro-vector-port-rhi
  macro-vector-port-rbuf-fill
  macro-character-port-rlo
  macro-character-port-rhi
  macro-character-port-rbuf-fill
  )

;;; select: low level event selection
;;  mutex:             becomes ready when the thread successfully acquires
;;  io-condvar:        becomes ready when wait-for-io returns
;;  [mutex . condvar]: unlocks mutex, becomes ready when condvar signals
;;  thread:            becomes ready thread completes
;;  input-port:        becomes ready when the buffer is filled or the condvar
;;                      signals (for server sockets)
;;  absrel-time:       selectable timeout
(defstruct selection (e thread mutex condvar count)
  final: #t)

(def (select timeout selectors)
  (let (sel (make-selection #f (current-thread)
              (make-mutex 'select)
              (make-condition-variable 'select)
              0))
    (let lp ((rest selectors) (threads []))
      (match rest
        ([selector . rest]
         (lp rest (cons (make-selector-thread sel selector) threads)))
        (else
         (wait sel
           (reverse
            (if timeout
              (cons (make-selector-thread sel timeout) threads)
              threads))))))))

(def (wait sel threads)
  (with-catch
   (lambda (e)                               ; interrupt
     (kill-selector-threads! threads (current-thread))
     (raise e))
   (lambda ()
     (set! (selection-count sel) (length threads))
     (for-each thread-start! threads)
     (selection-count-wait! sel)
     (for-each (cut thread-send <> threads) threads)
     (let lp ()
       (mutex-lock! (selection-mutex sel))
       (or (alet (e (selection-e sel))
             (mutex-unlock! (selection-mutex sel))
             e)
           (begin
             (mutex-unlock! (selection-mutex sel) (selection-condvar sel))
             (lp)))))))

(defrules with-interrupt-handler ()
  ((_ body ...)
   (try
    body ...
    (catch (e)
      (when (eq? e 'interrupt)
        (thread-terminate! (current-thread)))
      (display "selector error: " (current-error-port))
      (display-exception e (current-error-port))))))

(def (make-selector-thread sel selector)
  (let (thread
        (cond
         ((mutex? selector)
          (make-thread
           (lambda ()
             (with-interrupt-handler
              (select1 sel selector mutex-select-e mutex-select-abort-e)))
           'select-mutex))
         ((io-condition-variable? selector)
          (make-thread
           (lambda ()
             (with-interrupt-handler
              (select1 sel selector io-wait-select-e void)))
           'select-io-wait))
         ((and (pair? selector)
               (mutex? (car selector))
               (condition-variable? (cdr selector)))
          (make-thread
           (lambda ()
             (with-interrupt-handler
              (select1 sel selector condvar-select-e void)))
           'select-condvar))
         ((thread? selector)
          (make-thread
           (lambda ()
             (with-interrupt-handler
              (select1 sel selector thread-select-e void)))
           'select-thread))
         ((input-port? selector)
          (let ((select-e (make-port-selector-wait selector))
                (abort-e  (make-port-selector-abort selector)))
            (make-thread
             (lambda ()
               (with-interrupt-handler
                (select1 sel selector select-e abort-e)))
             'select-input-port)))
         ((or (real? selector) (time? selector))
          (make-thread
           (lambda ()
             (with-interrupt-handler
              (select1 sel selector timeout-select-e void)))
           'select-timeout))
         (else
          (error "Bad selector" selector))))
    (thread-specific-set! thread selector)
    thread))

;;; the Gambit port hierarchy and means of receiving data:
;; define-type port
;;  define-type-of-port character-port
;;   define-type-of-character-port byte-port
;;    define-type-of-byte-port device-port
;;      ##wait-for-io!
;;    define-type-of-byte-port u8vector-port
;;      ##mutex-unlock!
;;   define-type-of-character-port string-port
;;     ##mutex-unlock!
;;  define-type-of-port vector-port
;;    ##mutex-unlock!
;;  define-type-of-port tcp-server-port
;;    ##wait-for-io!
;;  define-type-of-port directory-port
;;    ##wait-for-io!
;;  define-type-of-port event-queue-port
;;    ##wait-for-io!
;; vector-like ports (u8vector-port, string-port, vector-port) receive
;;  input with scheme user events
;; the other type of ports receive input with ##wait-for-io! and may
;;  return from select before they are ready because of an interrupt.
(def (make-port-selector-wait port)
  (def (make-user-port-selector condvar ready? poll)
    (lambda (sel port)
      (let (mutex (macro-port-mutex port))
        (let lp ()
          (if (input-port-closed? port) #t
              (begin
                (mutex-lock! mutex)
                (if (or (ready? port) (poll port))
                  (begin (mutex-unlock! mutex) #t)
                  (begin
                    (mutex-unlock! mutex condvar)
                    (lp)))))))))

  (def (make-device-port-selector)
    ;; XXX assumes that there are no other readers/selectors
    ;;     besideds multiple readers on a device are racey no matter
    ;;     what you do
    (lambda (sel port)
      (or (input-port-closed? port)
          (let ((byte-rlo (macro-byte-port-rlo port))
                (byte-rhi (macro-byte-port-rhi port)))
            (or (< byte-rlo byte-rhi)
                (##wait-for-io! (macro-device-port-rdevice-condvar port)
                                (macro-port-rtimeout port)))))))

  (def (make-io-port-selector condvar)
    (lambda (sel port)
      (or (input-port-closed? port)
          (##wait-for-io! condvar #t))))

  (def (u8vector-port-ready? port)
    (fx< (macro-byte-port-rlo port)
         (macro-byte-port-rhi port)))

  (def (u8vector-port-poll port)
    (user-port-poll port (macro-byte-port-rbuf-fill port)))

  (def (string-port-ready? port)
    (fx< (macro-character-port-rlo port)
         (macro-character-port-rhi port)))

  (def (string-port-poll port)
    (user-port-poll port (macro-character-port-rbuf-fill port)))

  (def (vector-port-ready? port)
    (fx< (macro-vector-port-rlo port)
         (macro-vector-port-rhi port)))

  (def (vector-port-poll port)
    (user-port-poll port (macro-vector-port-rbuf-fill port)))

  (def (user-port-poll port rbuf-fill)
    (let (r (rbuf-fill port 1 #f))
      (cond
       ((eq? r ##err-code-EINTR)        ; interrupted
        (user-port-poll port rbuf-fill))
       ((eq? r ##err-code-EAGAIN) #f)   ; would block
       (else #t))))                     ; read some or EOF

  (let (mutex (macro-port-mutex port))
    (cond
     ((macro-u8vector-port? port)
      (make-user-port-selector
       (macro-u8vector-port-rcondvar port)
       u8vector-port-ready?
       u8vector-port-poll))
     ((macro-string-port? port)
      (make-user-port-selector
       (macro-string-port-rcondvar port)
       string-port-ready?
       string-port-poll))
     ((macro-vector-port? port)
      (make-user-port-selector
       (macro-vector-port-rcondvar port)
       vector-port-ready?
       vector-port-poll))
     ((macro-device-port? port)
      (make-device-port-selector))
     ((macro-tcp-server-port? port)
      (make-io-port-selector (macro-tcp-server-port-rdevice-condvar port)))
     ((macro-event-queue-port? port)
      (make-io-port-selector (macro-event-queue-port-rdevice-condvar port)))
     ((macro-directory-port? port)
      (make-io-port-selector (macro-directory-port-rdevice-condvar port)))
     (else
      (error "Bad selector" port)))))

(def (make-port-selector-abort port)
  (lambda (sel port)
    (let ((self (current-thread))
          (mx   (macro-port-mutex port)))
      (when (eq? self (macro-mutex-btq-owner mx))
        (mutex-unlock! mx)))))

(def (select1 sel selector select-e abort-e)
  (try
   (selection-count-dec! sel)
   (let (threads (thread-receive))      ; receive selector set
     (select-e sel selector)
     (let (mutex (selection-mutex sel))
       (mutex-lock! mutex)
       ;; there is no race because contenders are interrupted in mutex-lock!
       ;; by the winner
       (set! (selection-e sel) selector)
       (kill-selector-threads! threads (selection-thread sel))
       (condition-variable-signal! (selection-condvar sel))
       (mutex-unlock! mutex)))
   (catch (e)
     (abort-e sel selector)
     (raise e))))

(def (selection-count-wait! sel)
  (with ((selection _ _ mutex condvar) sel)
    (let lp ()
      (mutex-lock! mutex)
      (if (fxzero? (selection-count sel))
        (begin
          (mutex-unlock! mutex condvar)
          (lp))
        (mutex-unlock! mutex)))))

(def (selection-count-dec! sel)
  (with ((selection _ _ mutex condvar count) sel)
    (mutex-lock! mutex)
    (let (newcount (fx1- count))
      (set! (selection-count sel)
        newcount)
      (when (fxzero? newcount)
        (condition-variable-signal! condvar)))
    (mutex-unlock! mutex)))

(def (kill-selector-threads! threads main)
  (let (self (current-thread))
    (for-each
      (lambda (thread)
        (unless (eq? thread self)
          (unless (thread-dead? thread)
            (with-catch void (cut thread-interrupt! thread (cut raise 'interrupt))))
          (alet (sel (thread-specific thread))
            (thread-specific-set! thread #f)
            (selector-abort! sel main))))
      threads)))

(def (selector-abort! sel (main (current-thread)))
  (when (and (pair? sel)
             (eq? (macro-mutex-btq-owner (car sel))
                  main))
    (mutex-unlock! (car sel))))

(def (mutex-select-e sel mutex)
  (mutex-lock! mutex #f (selection-thread sel)))

(def (mutex-select-abort-e sel mutex)
  (unless (eq? mutex (selection-e sel))
    (mutex-unlock! mutex)))

(def (io-wait-select-e sel condvar)
  (##wait-for-io! condvar #t))

(def (condvar-select-e sel selector)
  (with ([mutex . condvar] selector)
    (mutex-unlock! mutex condvar)))

(def (timeout-select-e sel absrel-time)
  (thread-sleep! absrel-time))

(def (thread-select-e sel thread)
  (with-catch
   (lambda (e)
     (unless (macro-thread-exception? thread)
       (raise e)))
   (lambda () (thread-join! thread))))

(def (thread-dead? thread)
  (not (macro-thread-end-condvar thread)))

(def (input-port-closed? port)
  (macro-closed? (macro-port-roptions port)))

;;; sync: high level event programming interface
;;  An event object combines a low-level selector with a high level
;;   value that is returned when the event is ready; if the event's value
;;   is void, then the result of the synchronization is the event itself
;;  An event handler wraps the event and transforms an event's value
;;   with a continuation procedure that transforms its value
;;  sync accepts events, event-handlers, timeouts, and generalized selectors
;;   which are automatically wrapped in an event with wrap-evt.
(defstruct event (e sel try)
  final: #t)

(defstruct event-handler (e K)
  final: #t)

(defstruct event-set (e)
  final: #t)

(def (sync . args)
  (def ht (make-hash-table-eq))

  (def (loop evts)
    (let lp ((rest evts) (selectors []) (timeo #f))
      (match rest
        ([evt . rest]
         (cond
          ((event-set? evt)
           (lp (foldr cons rest (event-set-e evt)) selectors timeo))
          ((and (event-handler? evt)
                (event-set? (event-handler-evt evt)))
           (let (evts (choice-evt-handlers evt))
             (lp (foldr cons rest evts) selectors timeo)))
          ((or (event? evt) (event-handler? evt))
           (if (event-ready? evt)       ; poll
             (begin
               (for-each selector-abort! selectors)
               (for-each event-abort! rest)
               (event-select-e evt))
             (let (sel (event-selector evt))
               (if (eq? #f sel)         ; never-evt, skip
                 (lp rest selectors timeo)
                 (begin
                   (hash-put! ht sel evt)
                   (lp rest (cons sel selectors) timeo))))))
          ((timeout? evt)
           (cond
            ((and (not (and (real? evt) (zero? evt))) ; allow poll
                  (timeout-expired? evt))
             (for-each selector-abort! selectors)
             (for-each event-abort! rest)
             #f)
            ((or (not timeo) (and timeo (timeout-before? evt timeo)))
             (let (evt (make-timeout-evt evt))
               (hash-put! ht (event-sel evt) evt)
               (lp rest selectors (event-sel evt))))
            (else                 ; drop event, timeo will occur first
             (lp rest selectors timeo))))
          (else
           (lp (cons (wrap-evt evt) rest) selectors timeo))))
        (else
         (if (null? selectors)
           (if timeo
             (wait timeo [])
             (thread-sleep! +inf.0))    ; sleep and wait for interrupt
           (wait timeo selectors))))))

  (def (wait timeo selectors)
    (let* ((sel (select timeo selectors))
           (evt (hash-ref ht sel)))
      (event-select-e evt)))

  (loop args))

(def (poll . evts)
  (apply sync 0 evts))

(def (timeout? e)
  (or (real? e) (time? e)))

(def (timeout-expired? timeo)
  (and (time? timeo)
       (< (time->seconds timeo) (##current-time-point))))

(def (timeout-before? absrel-time timeo)
  (cond
   ((and (real? absrel-time) (time? timeo))
    (< (+ (##current-time-point) absrel-time)
       (time->seconds timeo)))
   ((and (time? absrel-time) (time? timeo))
    (< (time->seconds absrel-time) (time->seconds timeo)))
   (else (error "Bad selector" absrel-time timeo))))

(def (event-ready? evt)
  (cond
   ((event? evt)
    ((event-try evt) evt))
   ((event-handler? evt)
    (event-ready? (event-handler-e evt)))
   (else
    (error "Bad event" evt))))

(def (event-handler-evt evt)
  (if (event-handler? evt)
    (event-handler-evt (event-handler-e evt))
    evt))

(def (event-select-e evt)
  (cond
   ((event? evt)
    (let (e (event-e evt))
      (if (void? e) evt e)))
   ((event-handler? evt)
    (call-with-values (lambda () (event-select-e (event-handler-e evt)))
      (event-handler-K evt)))
   (else
    (error "Bad event" evt))))

(def (event-selector evt)
  (cond
   ((event? evt)
    (event-sel evt))
   ((event-handler? evt)
    (event-selector (event-handler-e evt)))
   (else
    (error "Bad event; cannot retrieve selector" evt))))

(def (event-abort! evt)
  (cond
   ((event? evt)
    (selector-abort! (event-sel evt)))
   ((event-handler? evt)
    (event-abort! (event-handler-e evt)))
   ((event-set? evt)
    (for-each event-abort! (event-set-e evt)))
   ((method-ref evt ':event)
    => (lambda (method) (event-abort! (method evt))))
   (else                                ; raw selector
    (selector-abort! evt))))

(def never-evt  (make-event #!void #f false))
(def always-evt (make-event #!void #t true))

;; generic event constructor: makes an event from a generallized selector
(def (wrap-evt obj)
  (let lp ((evt obj))
    (cond
     ((or (event? evt) (event-handler? evt) (event-set? evt))
      evt)
     ((timeout? evt)
      (make-timeout-evt evt))
     ((mutex? evt)
      (make-mutex-evt evt))
     ((io-condition-variable? evt)
      (make-io-wait-evt evt))
     ((and (pair? evt) (mutex? (car evt)) (condition-variable? (cdr evt)))
      (make-condvar-evt (car evt) (cdr evt)))
     ((thread? evt)
      (make-thread-evt evt))
     ((input-port? evt)
      (make-input-port-evt evt))
     (else
      (lp (call-method ':event evt))))))

(def* choice-evt
  (() never-evt)
  ((arg)
   (if (list? arg)
     (make-event-set arg)
     (wrap-evt arg)))
  (args
   (let lp ((rest args) (r []))
     (match rest
       ([hd . rest]
        (lp rest
            (if (list? hd)
              (foldl cons r hd)
              (cons hd r))))
       (else
        (make-event-set (reverse r)))))))

(def (choice-evt-handlers evt)
  (def (wrap-handlers evt handlers)
    (match handlers
      ([K . rest]
       (wrap-handlers (handle-evt evt K) rest))
      (else evt)))

  (let lp ((evt evt) (handlers []))
    (cond
     ((event-handler? evt)
      (lp (event-handler-e evt)
          (cons (event-handler-K evt) handlers)))
     ((event-set? evt)
      (let (evts (event-set-e evt))
        (map (lambda (evt) (wrap-handlers evt handlers))
             evts)))
     (else
      (error "Bad event set" evt)))))

(def (make-mutex-evt mutex)
  (if (mutex? mutex)
    (make-event mutex mutex mutex-ready?)
    (error "Bad selector" mutex)))

(def (mutex-ready? evt)
  (mutex-lock! (event-sel evt) 0))

(def (make-io-wait-evt condvar)
  (if (io-condition-variable? condvar)
    (make-event condvar condvar false)
    (error "Bad selector" condvar)))

(def (io-condition-variable? obj)
  (and (condition-variable? obj)
       (##foreign? (macro-condvar-name obj))))

(def (make-condvar-evt mutex condvar)
  (if (and (mutex? mutex) (condition-variable? condvar))
    (make-event (values mutex condvar) (cons mutex condvar) false)
    (error "Bad selector" mutex condvar)))

(def (make-thread-evt thread)
  (if (thread? thread)
    (make-event thread thread thread-ready?)
    (error "Bad selector" thread)))

(def (thread-ready? evt)
  (thread-dead? (event-sel evt)))

(def (make-input-port-evt port)
  (if (input-port? port)
    (make-event port port input-port-ready?)
    (error "Bad selector")))

(def (input-port-ready? evt)
  (input-port-closed? (event-sel evt)))

(def (make-timeout-evt absrel-time)
  (cond
   ((time? absrel-time)
    (make-event #f absrel-time timeout-ready?))
   ((real? absrel-time)
    (make-event #f
      (seconds->time (+ (##current-time-point) absrel-time))
      timeout-ready?))
   (else
    (error "Bad selector" absrel-time))))

(def (timeout-ready? evt)
  (< (time->seconds (event-sel evt)) (##current-time-point)))

(def (handle-evt evt K)
  (unless (procedure? K)
    (error "Bad event handler" K))
  (make-event-handler (wrap-evt evt) K))

;;; sync macros
;;; ! syncs a single object, !! syncs multiple objects
(defrules ! (=>)
  ((_ evt => K)
   (sync (handle-evt evt K)))
  ((_ (var evt) body ...)
   (identifier? #'var)
   (let (var (sync evt))
     body ...))
  ((_ ((var ...) evt) body ...)
   (identifier-list? #'(var ...))
   (let-values (((var ...) (sync evt)))
     body ...))
  ((_ evt body ...)
   (let (e (sync evt))
     body ...)))

(defrules !! ()
  ((_ clause ...)
   (!!-sync (clause ...) ())))

(defrules !!-sync (=> else)
  ((_ () (handler ...))
   (sync handler ...))
  ((recur ((else body ...)) (handler ...))
   (recur () (handler ... (handle-evt 0 (lambda (_) body ...)))))
  ((recur ((else . _) . _) _)
   (syntax-error "Bad syntax; misplaced else"))
  ((recur ((evt => K) . rest) (handler ...))
   (recur rest (handler ... (handle-evt evt K))))
  ((recur (((var evt) body ...) . rest) (handler ...))
   (identifier? #'var)
   (recur rest (handler ... (handle-evt evt (lambda (var) body ...)))))
  ((recur ((((var ...) evt) body ...) . rest) (handler ...))
   (identifier-list? #'(var ...))
   (recur rest (handler ... (handle-evt evt (lambda (var ...) body ...)))))
  ((recur ((evt body ...) . rest) (handler ...))
   (recur rest (handler ... (handle-evt evt (lambda (_) body ...))))))
