;;; -*- Gerbil -*-
;;; (C) vyzo
;;; event-driven programming with conditions
package: std

(import :gerbil/gambit/threads
        :gerbil/gambit/exceptions
        :gerbil/gambit/os
        :std/sugar)
(export wait select
        !
        )

;;; Condition Selectors:
;;; - threads
;;; - locked mutex - condvar pairs
;;; - naked i/o condvars
;;;
;;; Synchronization API:
;;; - (wait selector (timeout #f))
;;;   waits until the selector is signaled
;;;   returns the selector if ready, #f if the timeout is reached
;;; - (select [selector ...] (timeout #f))
;;;   waits until one or more selectors are signaled
;;;   returns a ready selector, #f if timeout is reached
;;;
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
  macro-mutex-btq-owner
  )

;;;;;;;;;;;;;;
(defrules ! ())
