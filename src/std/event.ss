;;; -*- Gerbil -*-
;;; (C) vyzo
;;; event-driven programming with conditions

(import :gerbil/gambit
        :std/error
        :std/sugar
        :std/misc/shuffle)
(export wait select sync
        wait-io! &wait-io!
        wrap-evt handle-evt choice-evt
        never-evt always-evt
        sync-object?
        make-event event? event-e event-e-set!
        ! !*)

;;; Low level event programming primitives:
;;; - (wait selector (timeout #f))
;;;   waits until the selector is signaled
;;;   returns the selector if ready, #f if the timeout is reached
;;; - (select [selector ...] (timeout #f))
;;;   waits until at least one selector is signaled
;;;   returns a ready selector, #f if timeout is reached
;;;
;;; Condition Selectors:
;;; - threads
;;; - locked mutex - condvar pairs
;;; - naked i/o condvars
;;;
;;; High level event programming primitives:
;;; - (sync evt ...)
;;;   waits until at least one synchronizable object evt is ready
;;;   returns a ready evt
;;;
;;; Events are implemented on top of condition selectors
;;; See further below for details and macros

(def (wait sel (timeo #f))
  (if (maybe-timeout? timeo)
    (let (wait-e (selector-wait-e sel))
      (and (wait-e sel timeo) sel))
    (raise-bad-argument 'wait "timeout or #f" timeo)))

(def (select sels (timeo #f))
  (match sels
    ([]
     (raise-bad-argument 'select "selection set: empty"))
    ([sel]
     (wait sel timeo))
    (else
     (if (maybe-timeout? timeo)
       (do-select sels timeo)
       (raise-bad-argument 'select "timeout or #f" timeo)))))

;; specialized variant for waiting on an io condvar
(def (wait-io! iocv (timeo #f))
  (unless (io-condition-variable? iocv)
    (raise-bad-argument 'wait-io! "IO condition variable" iocv))
  (unless (maybe-timeout? timeo)
    (raise-bad-argument 'wait-io! "timeout or #f" timeo))
  (&wait-io! iocv timeo))

;; unchecked variant of wait-io!
(def (&wait-io! iocv (timeo #f))
  (selector-wait-io-condvar iocv timeo))

;;; select implementation details
(defstruct selection (e mx cv)
  final: #t)

(defstruct selector (sel wait abort)
  final: #t)

(def (do-select sels timeo)
  (let* ((xsels (map wrap-selector sels))
         (mx (make-mutex 'select))
         (cv (make-condition-variable 'select))
         (selection (make-selection #f mx cv))
         (threads (map (lambda (xsel) (spawn/name 'select select1 selection xsel))
                       xsels))
         (abs-timeo (if timeo (timeout->abs-timeout timeo) absent-obj))
         (finalize!
          (lambda ()
            (for-each thread-terminate! threads)
            (for-each (lambda (xsel) ((selector-abort xsel) (selector-sel xsel)))
                      xsels))))
    (let lp ()
      (mutex-lock! mx)
      (cond
       ((selection-e selection) =>
        (lambda (xsel)
          (mutex-unlock! mx)
          (finalize!)
          (selector-sel xsel)))
       ((mutex-unlock! mx cv abs-timeo)
        (lp))
       (else
        (finalize!)
        #f)))))

(def (select1 selection xsel)
  (when ((selector-wait xsel) (selector-sel xsel) #f)
    (mutex-lock! (selection-mx selection))
    (unless (selection-e selection)
      (set! (selection-e selection) xsel)
      (condition-variable-signal! (selection-cv selection)))
    (mutex-unlock! (selection-mx selection))))

(defrules dispatch-selector ()
  ((_ sel do-thread do-condvar do-io-condvar)
   (cond
    ((thread? sel)
     do-thread)
    ((io-condition-variable? sel)
     do-io-condvar)
    ((and (pair? sel)
          (mutex? (car sel))
          (condition-variable? (cdr sel)))
     (if (eq? (current-thread) (macro-mutex-btq-owner (car sel)))
       do-condvar
       (BUG 'sync "Illegal selector; mutex must be owned by current thread" sel)))
    (else
     (BUG 'sync "Illegal selector" sel)))))

(def (wrap-selector sel)
  (dispatch-selector sel
    (make-selector sel selector-wait-thread void)
    (make-selector sel selector-wait-condvar selector-abort-condvar)
    (make-selector sel selector-wait-io-condvar void)))

(def (selector-wait-e sel)
  (dispatch-selector sel
    selector-wait-thread
    selector-wait-condvar
    selector-wait-io-condvar))

(def (selector-wait-thread sel timeo)
  (try
   (thread-join! sel (or timeo absent-obj))
   #t
   (catch (uncaught-exception? e) #t)
   (catch (terminated-thread-exception? e) #t)
   (catch (join-timeout-exception? e) #f)))

(def (selector-wait-condvar sel timeo)
  (with ([mx . cv] sel)
    (mutex-unlock! mx cv (or timeo absent-obj))))

(def (selector-abort-condvar sel)
  (with ([mx . cv] sel)
    (when (eq? (current-thread) (macro-mutex-btq-owner mx))
      (mutex-unlock! mx))))

(def (selector-wait-io-condvar sel timeo)
  (##wait-for-io! sel (if timeo (timeout->abs-timeout->seconds timeo) #t)))

(def (maybe-timeout? obj)
  (or (not obj)
      (real? obj)
      (time? obj)))

(def (timeout->abs-timeout timeo)
  (if (time? timeo) timeo
      (seconds->time (+ (##current-time-point) timeo))))

(def (timeout->abs-timeout->seconds timeo)
  (if (time? timeo)
    (time->seconds timeo)
    (+ (##current-time-point) timeo)))

(def (io-condition-variable? obj)
  (and (condition-variable? obj)
       (##foreign? (macro-condvar-name obj))))

;; _gambit#
(extern namespace: #f
  macro-condvar-name
  macro-mutex-btq-owner)

;;; An event object is an object wrapping some arbitrary state with 3 methods:
;;; - (poll evt)
;;;  This method is called at the begining of synchronization with sync
;;;  and should return a synchronizer, which can be:
;;;   - #t if the event is ready
;;;   - #f if the event will not be ready at this synchronization
;;;   - a time object by which the event will be ready
;;;   - a condition selector to wait for the event
;;;
;;; - (ready evt) => value
;;;  Called when the synchronizer returned by poll is ready and the event
;;;  has been selected; the returned value is the result of the synchronization
;;;
;;; - (abort evt)
;;;  Called if the synchronization aborts prior to calling poll in the event.
;;;
(defstruct event (e poll ready abort)
  constructor: :init!
  final: #t)

(defstruct event-handler (e K)
  final: #t)

(defstruct event-set (e)
  final: #t)

(defmethod {:init! event}
  (lambda (self e poll ready (abort void))
    (struct-instance-init! self e poll ready abort)))

(def (sync-object? obj)
  (or (event? obj)
      (event-handler? obj)
      (event-set? obj)))

(def never-evt
  (make-event #f false void))

(def always-evt
  (make-event #f true values))

(def (wrap-evt obj)
  (cond
   ((sync-object? obj) obj)
   ((sync-selector? obj)
    (make-event obj event-e event-e event-abort-sync-selector))
   ((or (time? obj) (real? obj))
    (make-event (timeout->abs-timeout obj) event-e false))
   ((input-port? obj)
    (input-port-evt obj))
   (else
    (wrap-evt {:event obj}))))

(def (handle-evt obj K)
  (let (evt (wrap-evt obj))
    (if (event-set? evt)
      (make-event-set (map (cut make-event-handler <> K) (event-set-e evt)))
      (make-event-handler evt K))))

(def (choice-evt . args)
  (let lp ((rest args) (evts []))
    (match rest
      ([obj . rest]
       (let (evt (wrap-evt obj))
         (if (event-set? evt)
           (if (null? evts) ; consing optimization
             (lp rest (event-set-e evt))
             (lp rest (foldl cons evts (event-set-e evt))))
           (lp rest (cons evt evts)))))
      (else
       (make-event-set evts)))))

;;; sync
(def (sync . args)
  (def mutexes
    (make-hash-table-eq))

  (def (loop rest sels sel-evts timeo timeo-evt)
    (match rest
      ([evt . rest]
       (if (or (event? evt) (event-handler? evt))
         (poll evt rest sels sel-evts timeo timeo-evt)
         (loop (foldl cons rest (shuffle (event-set-e evt)))
               sels sel-evts timeo timeo-evt)))
      (else
       (cond
        ((not (null? sels))
         (let (rz (select sels timeo))
           (if rz
             (dispatch-selector rz sels sel-evts)
             (dispatch-evt timeo-evt))))
        (timeo
         (thread-sleep! timeo)
         (dispatch-evt timeo-evt))
        (else
         (thread-sleep! +inf.0))))))

  (def (poll evt rest sels sel-evts timeo timeo-evt)
    (let (rz (poll-evt evt))
      (cond
       ((not rz)
        (loop rest sels sel-evts timeo timeo-evt))
       ((true? rz)
        (abort-selectors! rest sels)
        (dispatch-evt evt))
       ((time? rz)
        (if timeo
          (if (< (time->seconds rz)
                 (time->seconds timeo))
            (loop rest sels sel-evts rz evt)
            (loop rest sels sel-evts timeo timeo-evt))
          (loop rest sels sel-evts rz evt)))
       ((sync-selector? rz)
        (check-mutex! rz rest sels)
        (loop rest (cons rz sels) (cons evt sel-evts) timeo timeo-evt))
       (else
        (abort! rest sels (cut error "Bad synchronizer" evt rz))))))

  (def (poll-evt evt)
    (let lp ((evt evt))
      (if (event? evt)
        ((event-poll evt) evt)
        (lp (event-handler-e evt)))))

  (def (dispatch-evt evt)
    (let recur ((evt evt))
      (if (event? evt)
        ((event-ready evt) evt)
        (call/values
          (lambda () (recur (event-handler-e evt)))
          (event-handler-K evt)))))

  (def (dispatch-selector rz sels sel-evts)
    (let lp ((rest-sels sels)
             (rest-evts sel-evts))
      (match rest-sels
        ([sel . rest-sels]
         (match rest-evts
           ([evt . rest-evts]
            (if (eq? sel rz)
              (dispatch-evt evt)
              (lp rest-sels rest-evts))))))))

  (def (check-mutex! rz rest sels)
    (when (pair? rz)
      (let (mx (car rz))
        (if (hash-get mutexes mx)
          (abort! rest sels (cut error "Duplicate mutex synchronizer" rz))
          (hash-put! mutexes mx #t)))))

  (def (abort! rest sels E)
    (abort-selectors! rest sels)
    (E))

  (def (abort-selectors! rest sels)
    (for-each abort-selector! sels)
    (for-each abort-evt! rest))

  (def (abort-selector! sel)
    (when (pair? sel)
      (mutex-unlock! (car sel))))

  (def (abort-evt! evt)
    (cond
     ((event? evt)
      ((event-abort evt) evt))
     ((event-handler? evt)
      (abort-evt! (event-handler-e evt)))
     (else
      (for-each abort-evt! (event-set-e evt)))))

  (loop (shuffle (map wrap-evt args))
        [] [] #f #f))

;;; sync macros
(defrules ! ()
  ((_ . clause)
   (sync (!-clause clause))))

(defrules !* ()
  ((_ clause ...)
   (sync (!-clause clause) ...)))

(defrules !-clause (=>)
  ((_ (evt => K))
   (handle-evt evt K))
  ((_ (evt body rest ...))
   (handle-evt evt (lambda (_) body rest ...))))

;;; sync implementation details
(def (sync-selector? obj)
  (or (thread? obj)
      (and (pair? obj)
          (mutex? (car obj))
          (condition-variable? (cdr obj)))
      (io-condition-variable? obj)))

(def (event-abort-sync-selector evt)
  (let (sel (event-e evt))
    (when (pair? sel)
      (mutex-unlock! (car sel)))))

(def (input-port-evt port)
  (cond
   ((macro-u8vector-port? port)
    (make-u8vector-port-evt port))
   ((macro-string-port? port)
    (make-string-port-evt port))
   ((macro-vector-port? port)
    (make-vector-port-evt port))
   ((macro-device-port? port)
    (make-device-port-evt port))
   ((macro-tcp-server-port? port)
    (make-tcp-server-port-evt port))
   ((macro-raw-device-port? port)
    (make-raw-device-port-evt port))
   (else
    (BUG 'sync "can't wrap event around unknown port type" port))))

(def (make-u8vector-port-evt port)
  (def (rbuf-check port)
    (##fx< (macro-byte-port-rlo port)
           (macro-byte-port-rhi port)))

  (def (rbuf-fill port)
    (macro-byte-port-rbuf-fill port))

  (def (condvar-e port)
    (macro-u8vector-port-rcondvar port))

  (def (poll evt)
    (user-port-poll (event-e evt) rbuf-check rbuf-fill condvar-e))

  (make-event port poll event-e))

(def (make-string-port-evt port)
  (def (rbuf-check port)
    (##fx< (macro-character-port-rlo port)
           (macro-character-port-rhi port)))

  (def (rbuf-fill port)
    (macro-character-port-rbuf-fill port))

  (def (condvar-e port)
    (macro-string-port-rcondvar port))

  (def (poll evt)
    (user-port-poll (event-e evt) rbuf-check rbuf-fill condvar-e))

  (make-event port poll event-e))

(def (make-vector-port-evt port)
  (def (rbuf-check port)
    (##fx< (macro-vector-port-rlo port)
           (macro-vector-port-rhi port)))

  (def (rbuf-fill port)
    (macro-vector-port-rbuf-fill port))

  (def (condvar-e port)
    (macro-vector-port-rcondvar port))

  (def (poll evt)
    (user-port-poll (event-e evt) rbuf-check rbuf-fill condvar-e))

  (make-event port poll event-e))

(def (user-port-poll port rbuf-check rbuf-fill condvar-e)
  (def (fill! port)
    (input-port-rbuf-fill! port (rbuf-fill port)))

  (let* ((mx (macro-port-mutex port)))
    (mutex-lock! mx)
    (cond
     ((rbuf-check port)
      (mutex-unlock! mx)
      #t)
     ((fill! port)
      (mutex-unlock! mx)
      #t)
     (else
      (cons mx (condvar-e port))))))

(def (input-port-rbuf-fill! port fill)
  (let lp ()
    (let (r (fill port 1 #f))
      (cond
       ((eq? r ##err-code-EINTR)        ; interrupted
        (lp))
       ((eq? r ##err-code-EAGAIN) #f)   ; would block
       (else #t)))))

(def (make-device-port-evt port)
  (def (fill! port)
    (input-port-rbuf-fill! port (macro-byte-port-rbuf-fill port)))

  (def (poll evt)
    (let* ((port (event-e evt))
           (mx (macro-port-mutex port)))
      (cond
       ((or (##fx< (macro-byte-port-rlo port)
                   (macro-byte-port-rhi port))
            (##fx< (macro-character-port-rlo port)
                   (macro-character-port-rhi port)))
        (mutex-unlock! mx)
        #t)
       ((fill! port)
        (mutex-unlock! mx)
        #t)
       (else
        (mutex-unlock! mx)
        (macro-device-port-rdevice-condvar port)))))

  (make-event port poll event-e))

(def (make-tcp-server-port-evt port)
  (def (poll evt)
    (let (port (event-e evt))
      (macro-tcp-server-port-rdevice-condvar port)))

  (make-event port poll event-e))

(def (make-raw-device-port-evt port)
  (def (poll evt)
    (let (port (event-e evt))
      (macro-raw-device-port-rdevice-condvar port)))

  (make-event port poll event-e))

;; _gambit#
(extern namespace: #f
  macro-u8vector-port?
  macro-u8vector-port-rcondvar
  macro-string-port?
  macro-string-port-rcondvar
  macro-vector-port?
  macro-vector-port-rbuf-fill
  macro-vector-port-rcondvar
  macro-device-port?
  macro-device-port-rdevice-condvar
  macro-tcp-server-port?
  macro-tcp-server-port-rdevice-condvar
  macro-raw-device-port?
  macro-raw-device-port-rdevice-condvar
  macro-port-mutex
  macro-byte-port-rlo
  macro-byte-port-rhi
  macro-byte-port-rbuf-fill
  macro-character-port-rlo
  macro-character-port-rhi
  macro-character-port-rbuf-fill
  macro-vector-port-rlo
  macro-vector-port-rhi)
