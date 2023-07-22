;;; -*- Gerbil -*-
;;; © vyzo
;;; read-write locks
(import :gerbil/gambit/threads
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

(defstruct rwlock (mx cv readers writer writers-waiting)
  final: #t unchecked: #t
  constructor: :init!)

(defmethod {:init! rwlock}
  (lambda (self (name 'rwlock))
    (let ((mx (make-mutex name))
          (cv (make-condition-variable name)))
      (set! (&rwlock-mx self) mx)
      (set! (&rwlock-cv self) cv)
      (set! (&rwlock-readers self) 0)
      (set! (&rwlock-writer self) #f)
      (set! (&rwlock-writers-waiting self) 0))))

(def (rwlock-read-lock! rw)
  (with ((rwlock mx cv) rw)
    (mutex-lock! mx)
    (let lp ()
      (if (or (&rwlock-writer rw) (fx> (&rwlock-writers-waiting rw) 0))
        (begin
          (mutex-unlock! mx cv)
          (lp))
        (begin
          (set! (&rwlock-readers rw) (fx+ (&rwlock-readers rw) 1))
          (mutex-unlock! mx))))))

(def (rwlock-read-unlock! rw)
  (with ((rwlock mx cv) rw)
    (mutex-lock! mx)
    (let* ((readers (&rwlock-readers rw))
           (readers-1 (fx- readers 1)))
      (unless (fx> readers 0)
        (mutex-unlock! mx)
        (error "rwlock is not read locked" rw))
      (set! (&rwlock-readers rw) readers-1)
      (when (and (fx= readers-1 0) (fx> (&rwlock-writers-waiting rw) 0))
        (condition-variable-broadcast! cv))
      (mutex-unlock! mx))))

(def (rwlock-write-lock! rw)
  (with ((rwlock mx cv) rw)
    (mutex-lock! mx)
    (let lp ((waiting? #f))
      (cond
       ((or (fx> (&rwlock-readers rw) 0) (&rwlock-writer rw))
        (unless waiting?
          (set! (&rwlock-writers-waiting rw) (fx+ (&rwlock-writers-waiting rw) 1)))
        (mutex-unlock! mx cv)
        (lp #t))
       (else
        (when waiting?
          (set! (&rwlock-writers-waiting rw) (fx- (&rwlock-writers-waiting rw) 1)))
        (set! (&rwlock-writer rw) (current-thread))
        (mutex-unlock! mx))))))

(def (rwlock-write-unlock! rw)
  (with ((rwlock mx cv) rw)
    (mutex-lock! mx)
    (unless (&rwlock-writer rw)
      (mutex-unlock! mx)
      (error "rwlock is not write locked" rw))
    (set! (&rwlock-writer rw) #f)
    (condition-variable-broadcast! cv)
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