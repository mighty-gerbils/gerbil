;;; -*- Gerbil -*-
;;; © vyzo
;;; read-write locks
(import :gerbil/gambit/threads
        :std/error
        :std/sugar)
(export make-rwlock
        rwlock?
        rwlock-read-lock!
        rwlock-read-unlock!
        rwlock-write-lock!
        rwlock-write-unlock!
        with-read-lock
        with-write-lock)
(declare (not safe))

(defstruct rwlock (mx rcv wcv readers writer writers-waiting)
  final: #t unchecked: #t
  constructor: :init!)

(defmethod {:init! rwlock}
  (lambda (self (name 'rwlock))
    (let ((mx (make-mutex name))
          (rcv (make-condition-variable (make-name name "-read-lock")))
          (wcv (make-condition-variable (make-name name "-write-lock"))))
      (set! (&rwlock-mx self) mx)
      (set! (&rwlock-rcv self) rcv)
      (set! (&rwlock-wcv self) wcv)
      (set! (&rwlock-readers self) 0)
      (set! (&rwlock-writer self) #f)
      (set! (&rwlock-writers-waiting self) 0))))

(def (make-name base suffix)
  (string->symbol
   (string-append
    (symbol->string base) suffix)))

(def (rwlock-read-lock! rw)
  (with ((rwlock mx rcv) rw)
    (let lp ()
      (mutex-lock! mx)
      (if (or (&rwlock-writer rw) (fx> (&rwlock-writers-waiting rw) 0))
        (begin
          (mutex-unlock! mx rcv)
          (lp))
        (begin
          (set! (&rwlock-readers rw) (fx+ (&rwlock-readers rw) 1))
          (mutex-unlock! mx))))))

(def (rwlock-read-unlock! rw)
  (with ((rwlock mx _ wcv) rw)
    (mutex-lock! mx)
    (let* ((readers (&rwlock-readers rw))
           (readers-1 (fx- readers 1)))
      (unless (fx> readers 0)
        (mutex-unlock! mx)
        (raise-context-error 'rwlock-read-unlock! "rwlock is not read locked" rw))
      (set! (&rwlock-readers rw) readers-1)
      (when (and (fx= readers-1 0) (fx> (&rwlock-writers-waiting rw) 0))
        (condition-variable-signal! wcv))
      (mutex-unlock! mx))))

(def (rwlock-write-lock! rw)
  (with ((rwlock mx _ wcv) rw)
    (let lp ((waiting? #f))
      (mutex-lock! mx)
      (cond
       ((or (fx> (&rwlock-readers rw) 0) (&rwlock-writer rw))
        (unless waiting?
          (set! (&rwlock-writers-waiting rw) (fx+ (&rwlock-writers-waiting rw) 1)))
        (mutex-unlock! mx wcv)
        (lp #t))
       (else
        (when waiting?
          (set! (&rwlock-writers-waiting rw) (fx- (&rwlock-writers-waiting rw) 1)))
        (set! (&rwlock-writer rw) (current-thread))
        (mutex-unlock! mx))))))

(def (rwlock-write-unlock! rw)
  (with ((rwlock mx rcv wcv) rw)
    (mutex-lock! mx)
    (unless (&rwlock-writer rw)
      (mutex-unlock! mx)
      (raise-context-error 'rwlock-write-unlock! "rwlock is not write locked" rw))
    (set! (&rwlock-writer rw) #f)
    (if (fx> (&rwlock-writers-waiting rw) 0)
      (condition-variable-signal! wcv)
      (condition-variable-broadcast! rcv))
    (mutex-unlock! mx)))

(defrule (with-rwlock rw proc lock! unlock!)
  (let (handler (current-exception-handler))
    (with-exception-handler
     (lambda (e)
       (with-catch void
         (lambda ()
           (unlock! rw)
           (handler e)))
       ;; if the handler returns here the state is inconsistent -- we need to bail
       (##thread-end-with-uncaught-exception! e))
     (lambda ()
       (lock! rw)
       (let (result (proc))
         (unlock! rw)
         result)))))

(def (with-read-lock rw proc)
  (with-rwlock rw proc rwlock-read-lock! rwlock-read-unlock!))

(def (with-write-lock rw proc)
  (with-rwlock rw proc rwlock-write-lock! rwlock-write-unlock!))
