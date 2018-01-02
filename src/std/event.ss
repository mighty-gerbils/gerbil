;;; -*- Gerbil -*-
;;; (C) vyzo
;;; event-driven programming with conditions
package: std

(import :gerbil/gambit/threads
        :gerbil/gambit/os
        :gerbil/gambit/exceptions
        :std/sugar
        :std/misc/shuffle)
(export wait select sync
        wrap-evt handle-evt choice-evt
        never-evt always-evt
        sync-object? event? event-handler? event-set?
        make-event event-e event-e-set!
        ! !!)

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
    (error "Bad argument; expected timeout or #f" timeo)))

(def (select sels (timeo #f))
  (match sels
    ([]
     (error "empty selection set"))
    ([sel]
     (wait sel timeo))
    (else
     (if (maybe-timeout? timeo)
       (do-select sels timeo)
       (error "Bad argument; expected timeout or #f" timeo)))))

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
         (threads (map (lambda (xsel) (spawn/name 'select select1 selection xsel timeo))
                       xsels))
         (abs-timeo (if timeo (timeout->abs-timeout timeo) (macro-absent-obj)))
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

(def (select1 selection xsel timeo)
  (when ((selector-wait xsel) (selector-sel xsel) timeo)
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
    ((and (pair? sel)
          (mutex? (car sel))
          (condition-variable? (cdr sel)))
     (if (eq? (current-thread) (macro-mutex-btq-owner (car sel)))
       do-condvar
       (error "Illegal selector; mutex must be owned by current thread" sel)))
    ((io-condition-variable? sel)
     do-io-condvar)
    (else
     (error "Illegal selector" sel)))))

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
   (thread-join! sel (or timeo (macro-absent-obj)))
   #t
   (catch (uncaught-exception? e) #t)
   (catch (terminated-thread-exception? e) #t)
   (catch (join-timeout-exception? e) #f)))

(def (selector-wait-condvar sel timeo)
  (with ([mx . cv] sel)
    (mutex-unlock! mx cv (or timeo (macro-absent-obj)))))

(def (selector-abort-condvar sel)
  (with ([mx . cv] sel)
    (when (eq? (current-thread) (macro-mutex-btq-owner mx))
      (mutex-unlock! mx))))

(def (selector-wait-io-condvar sel timeo)
  (##wait-for-io! sel (if timeo (time->seconds (timeout->abs-timeout timeo)) #t)))

(def (maybe-timeout? obj)
  (or (not obj)
      (real? obj)
      (time? obj)))

(def (timeout->abs-timeout timeo)
  (if (time? timeo) timeo
      (seconds->time (+ (##current-time-point) timeo))))

(def (io-condition-variable? obj)
  (and (condition-variable? obj)
       (##foreign? (macro-condvar-name obj))))

;; _gambit#
(extern namespace: #f
  macro-absent-obj
  macro-condvar-name
  macro-mutex-btq-owner)

;;; An event object is an object wrapping some arbitrary state with 2 methods:
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
(defstruct event (e poll ready)
  final: #t)

(defstruct event-handler (e K)
  final: #t)

(defstruct event-set (e)
  final: #t)

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
    (make-event obj event-e event-e))
   ((or (time? obj) (real? obj))
    (make-event (timeout->abs-timeout obj) event-e false))

   ;; TODO input ports

   (else
    (wrap-evt (call-method obj ':event)))))

(def (handle-evt obj K)
  (let (evt (wrap-evt obj))
    (if (event-set? evt)
      (make-event-set (map (cut make-event-handler <> K) (event-set-e evt)))
      (make-event-handler (wrap-evt obj) K))))

(def (choice-evt . args)
  (let lp ((rest args) (evts []))
    (match rest
      ([obj . rest]
       (let (evt (wrap-evt obj))
         (if (event-set? evt)
           (lp rest (foldl cons evts (event-set-e evt)))
           (lp rest (cons evt evts)))))
      (else
       (make-event-set evts)))))

;;; sync
(def (sync . args)
  (def (loop rest sels sel-evts timeo timeo-evt)
    (match rest
      ([evt . rest]
       (cond
        ((or (event? evt) (event-handler? evt))
         (poll evt rest sels sel-evts timeo timeo-evt))
        ((event-set? evt)
         (loop (foldl cons rest (shuffle (event-set-e evt)))
               sels sel-evts timeo timeo-evt))
        (else
         (abort! sels (cut error "Unexpected sync object" evt)))))
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
        (for-each abort-selector! sels)
        (dispatch-evt evt))
       ((time? rz)
        (if timeo
          (if (< (time->seconds rz)
                 (time->seconds timeo))
            (loop rest sels sel-evts rz evt)
            (loop rest sels sel-evts timeo timeo-evt))
          (loop rest sels sel-evts rz evt)))
       ((sync-selector? rz)
        (check-mutex! rz sels)
        (loop rest (cons rz sels) (cons evt sel-evts) timeo timeo-evt))
       (else
        (abort! sels (cut error "Bad synchronizer" evt rz))))))

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

  (def (check-mutex! rz sels)
    (when (and (pair? rz)
               (find (lambda (sel) (and (pair? sel) (eq? (car rz) (car sel))))
                     sels))
      (abort! sels (cut error "Duplicate mutex synchronizer" rz))))

  (def (abort! sels E)
    (for-each abort-selector! sels)
    (E))

  (def (abort-selector! sel)
    (when (pair? sel)
      (mutex-unlock! (car sel))))

  (loop (shuffle (map wrap-evt args))
        [] [] #f #f))

;;; sync macros
(defrules ! ())
(defrules !! ())

;;; sync implementation details
(def (sync-selector? obj)
  (or (thread? obj)
      (and (pair? obj)
          (mutex? (car obj))
          (condition-variable? (cdr obj)))
      (io-condition-variable? obj)))
