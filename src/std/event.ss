;;; -*- Gerbil -*-
;;; (C) vyzo
;;; event driven programming interface: sync
package: std

(import :gerbil/gambit/threads
        :gerbil/gambit/os)
(export
  select
  )

;; ~~lib/_gambit#.scm
(extern namespace: #f macro-mutex-btq-owner macro-thread-end-condvar)

;;; low level event selection
;;  mutex:             becomes ready when the thread successfully acquires
;;  io-condvar:        becomes ready when wait-for-io returns
;;  [mutex . condvar]: unlocks mutex, becomes ready when condvar signals
;;  thread:            becomes ready thread completes
(defstruct selection (e mutex condvar)
  id: std/event#selection::t)

(def (select timeout selectors)
  (let (sel (make-selection #f
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
     (mutex-lock! (selection-mutex sel))
     (for-each
       (lambda (thread)
         (thread-start! thread)
         (thread-send thread threads))
       threads)

     (let lp ()
       (mutex-unlock! (selection-mutex sel) (selection-condvar sel))
       (mutex-lock! (selection-mutex sel))
       (or (selection-e sel)
           (lp))))))

(def (make-selector-thread sel selector)
  (cond
   ((mutex? selector)
    (make-thread
     (lambda () (select1 sel selector mutex-selector-e mutex-selector-abort-e))
     'select-mutex))
   ((condition-variable? selector)
    (make-thread
     (lambda () (select1 sel selector io-wait-selector-e void))
     'select-io-wait))
   ((and (pair? selector)
         (mutex? (car selector))
         (condition-variable? (cdr selector)))
    (make-thread
     (lambda () (select1 sel selector condvar-selector-e void))
     'select-condvar))
   ((or (real? selector) (time? selector))
    (make-thread
     (lambda () (select1 sel selector timeout-selector-e void))
     'select-timeout))
   (else
    (error "Bad selector" selector))))

(def (select1 sel selector select-e abort-e)
  (let (threads (thread-receive)) ; receive the set of selector threads
    (with-catch
     (lambda (e)
       (abort-e selector)
       (raise e))
     (lambda ()
       (select-e selector)
       (mutex-lock! (selection-mutex sel))
       (if (selection-e sel)
         (abort-e selector)             ; race lost
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

(def (mutex-selector-e mutex)
  (mutex-lock! mutex))

(def (mutex-selector-abort-e mutex)
  (let (owner (macro-mutex-btq-owner mutex))
    (when (eq? owner (current-thread))
      (mutex-unlock! mutex))))

(def (io-wait-selector-e condvar)
  (##wait-for-io! condvar #f))

(def (condvar-selector-e selector)
  (with ([mutex . condvar] selector)
    (mutex-unlock! mutex condvar)))

(def (timeout-selector-e absrel-time)
  (thread-sleep! absrel-time))

(def (thread-dead? thread)
  (not (macro-thread-end-condvar thread)))
