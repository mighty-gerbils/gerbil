;;; -*- Gerbil -*-
;;; © vyzo
;;; read-write locks
(import :std/error
        :std/sugar
        :gerbil/runtime)
(export make-rwlock
        rwlock?
        rwlock-read-lock!
        rwlock-read-unlock!
        rwlock-write-lock!
        rwlock-write-unlock!
        with-read-lock
        with-write-lock)

(defstruct rwlock ((mx              :- :mutex)
                   (rcv             :- :condvar)
                   (wcv             :- :condvar)
                   (readers         :- :fixnum)
                   (writer          :- :thread)
                   (writers-waiting :- :fixnum))
  final: #t
  constructor: :init!)

(defmethod {:init! rwlock}
  (lambda (self (name 'rwlock))
    (let ((mx (make-mutex name))
          (rcv (make-condition-variable (make-symbol name "-read-lock")))
          (wcv (make-condition-variable (make-symbol name "-write-lock"))))
      (set! self.mx mx)
      (set! self.rcv rcv)
      (set! self.wcv wcv)
      (set! self.readers 0)
      (set! self.writer #f)
      (set! self.writers-waiting 0))))

(def (rwlock-read-lock! (rw : rwlock))
  (let lp ()
    (mutex-lock! rw.mx)
    (if (or rw.writer (fx> rw.writers-waiting 0))
      (begin
        (mutex-unlock! rw.mx rw.rcv)
        (lp))
      (begin
        (set! rw.readers (fx+ rw.readers 1))
        (mutex-unlock! rw.mx)))))

(def (rwlock-read-unlock! (rw : rwlock))
  (mutex-lock! rw.mx)
  (let* ((readers rw.readers)
         (readers-1 (fx- readers 1)))
    (unless (fx> readers 0)
      (mutex-unlock! rw.mx)
      (raise-context-error rwlock-read-unlock! "rwlock is not read locked" rw))
    (set! rw.readers readers-1)
    (when (and (fx= readers-1 0) (fx> rw.writers-waiting 0))
      (condition-variable-signal! rw.wcv))
    (mutex-unlock! rw.mx)))

(def (rwlock-write-lock! (rw : rwlock))
  (let lp ((waiting? #f))
    (mutex-lock! rw.mx)
    (cond
     ((or (fx> rw.readers 0) rw.writer)
      (unless waiting?
        (set! rw.writers-waiting (fx+ rw.writers-waiting 1)))
      (mutex-unlock! rw.mx rw.wcv)
      (lp #t))
     (else
      (when waiting?
        (set! rw.writers-waiting (fx- rw.writers-waiting 1)))
      (set! rw.writer (current-thread))
      (mutex-unlock! rw.mx)))))

(def (rwlock-write-unlock! (rw : rwlock))
  (mutex-lock! rw.mx)
  (unless rw.writer
    (mutex-unlock! rw.mx)
    (raise-context-error rwlock-write-unlock! "rwlock is not write locked" rw))
  (set! rw.writer #f)
  (if (fx> rw.writers-waiting 0)
    (condition-variable-signal! rw.wcv)
    (condition-variable-broadcast! rw.rcv))
  (mutex-unlock! rw.mx))

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

(def (with-read-lock (rw : rwlock) (proc : :procedure))
  (with-rwlock rw proc rwlock-read-lock! rwlock-read-unlock!))

(def (with-write-lock (rw : rwlock) (proc : :procedure))
  (with-rwlock rw proc rwlock-write-lock! rwlock-write-unlock!))

;; methods for the Locker interface
(defmethod {read-lock! rwlock}
  (lambda (self)
    (rwlock-read-lock! self))
  interface: Locker)

(defmethod {read-unlock! rwlock}
  (lambda (self)
    (rwlock-read-unlock! self))
  interface: Locker)

(defmethod {write-lock! rwlock}
  (lambda (self)
    (rwlock-write-lock! self))
  interface: Locker)

(defmethod {write-unlock! rwlock}
  (lambda (self)
    (rwlock-write-unlock! self))
  interface: Locker)
