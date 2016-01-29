;;; -*- Gerbil -*-
;;; (C) vyzo
;;; event driven programming interface: sync
package: std

(import :gerbil/gambit/threads
        :gerbil/gambit/os)
(export
  select
  ! !! sync
  )

;; ~~lib/_gambit#.scm
(extern namespace: #f
  macro-thread-end-condvar
  macro-thread-exception?)

;;; low level event selection
;;  mutex:             becomes ready when the thread successfully acquires
;;  io-condvar:        becomes ready when wait-for-io returns
;;  [mutex . condvar]: unlocks mutex, becomes ready when condvar signals
;;  thread:            becomes ready thread completes
(defstruct selection (e thread mutex condvar)
  id: std/event#selection::t)

(def (select timeout selectors)
  (let (sel (make-selection #f (current-thread)
              (make-mutex 'select)
              (make-condition-variable 'select)))
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
     (kill-selector-threads! threads)
     (raise e))
   (lambda ()
     (for-each
       (lambda (thread)
         (thread-start! thread)
         (thread-send thread threads))
       threads)

     (let lp ()
       (mutex-lock! (selection-mutex sel))
       (or (selection-e sel)
           (begin
             (mutex-unlock! (selection-mutex sel) (selection-condvar sel))
             (lp)))))))

(def (make-selector-thread sel selector)
  (cond
   ((mutex? selector)
    (make-thread
     (lambda () (select1 sel selector mutex-select-e mutex-select-abort-e))
     'select-mutex))
   ((condition-variable? selector)
    (make-thread
     (lambda () (select1 sel selector io-wait-select-e void))
     'select-io-wait))
   ((and (pair? selector)
         (mutex? (car selector))
         (condition-variable? (cdr selector)))
    (make-thread
     (lambda () (select1 sel selector condvar-select-e void))
     'select-condvar))
   ((thread? selector)
    (make-thread
     (lambda () (select1 sel selector thread-select-e void))
     'select-thread))
   ((or (real? selector) (time? selector))
    (make-thread
     (lambda () (select1 sel selector timeout-select-e void))
     'select-timeout))
   (else
    (error "Bad selector" selector))))

(def (select1 sel selector select-e abort-e)
  (let (threads (thread-receive)) ; receive the set of selector threads
    (with-catch
     (lambda (e)
       (abort-e sel selector)
       (raise e))
     (lambda ()
       (select-e sel selector)
       (mutex-lock! (selection-mutex sel))
       (if (selection-e sel)
         (begin                         ; race lost
           (mutex-unlock! (selection-mutex sel))
           (abort-e sel selector))
         (begin                         ; race winner
           (set! (selection-e sel) selector)
           (kill-selector-threads! threads)
           (condition-variable-signal! (selection-condvar sel))
           (mutex-unlock! (selection-mutex sel))))))))

(def (kill-selector-threads! threads)
  (let (self (current-thread))
    (for-each
      (lambda (thread)
        (unless (or (eq? thread self) (thread-dead? thread))
          (thread-interrupt! thread (lambda () (raise 'interrupt)))))
      threads)))

(def (mutex-select-e sel mutex)
  (mutex-lock! mutex #f (selection-thread sel)))

(def (mutex-select-abort-e sel mutex)
  (when (eq? mutex (selection-e sel))
    (mutex-unlock! mutex)))

(def (io-wait-select-e sel condvar)
  (##wait-for-io! condvar #f))

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

;;; Events and sync
(def (sync . args)
  (error "Implement me!!!"))

(defrules ! ())
(defrules !! ())
