;;; -*- Gerbil -*-
;;; © vyzo
;;; read-write locks
(import :std/error
        :std/interface)
(export RWLock RWLock?
        (rename: make-RWLock make-rwlock)
        rwlock-read-lock!
        rwlock-read-unlock!
        rwlock-write-lock!
        rwlock-write-unlock!
        with-read-lock
        with-write-lock
        do-with-read-lock
        do-with-write-lock
        do-with-rwlock)

(defstruct RWLock ((mx              :- :mutex)
                   (rcv             :- :condvar)
                   (wcv             :- :condvar)
                   (readers         :- :fixnum)
                   (writer          :- :thread)
                   (writers-waiting :- :fixnum))
  final: #t
  constructor: :init!)

(defmethod {:init! RWLock}
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

(def (rwlock-read-lock! (rw : RWLock))
  (let loop ()
    (mutex-lock! rw.mx)
    (if (or rw.writer (fx> rw.writers-waiting 0))
      (begin
        (mutex-unlock! rw.mx rw.rcv)
        (loop))
      (begin
        (set! rw.readers (fx+ rw.readers 1))
        (mutex-unlock! rw.mx)))))

(def (rwlock-read-unlock! (rw : RWLock))
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

(def (rwlock-write-lock! (rw : RWLock))
  (let loop ((waiting? #f))
    (mutex-lock! rw.mx)
    (cond
     ((or (fx> rw.readers 0) rw.writer)
      (unless waiting?
        (set! rw.writers-waiting (fx+ rw.writers-waiting 1)))
      (mutex-unlock! rw.mx rw.wcv)
      (loop #t))
     (else
      (when waiting?
        (set! rw.writers-waiting (fx- rw.writers-waiting 1)))
      (set! rw.writer (current-thread))
      (mutex-unlock! rw.mx)))))

(def (rwlock-write-unlock! (rw : RWLock))
  (mutex-lock! rw.mx)
  (unless rw.writer
    (mutex-unlock! rw.mx)
    (raise-context-error rwlock-write-unlock! "rwlock is not write locked" rw))
  (set! rw.writer #f)
  (if (fx> rw.writers-waiting 0)
    (condition-variable-signal! rw.wcv)
    (condition-variable-broadcast! rw.rcv))
  (mutex-unlock! rw.mx))

(defrule (do-with-rwlock rw expr enter! exit!)
  (let (handler (current-exception-handler))
    (with-exception-handler
     (lambda (e)
       (with-catch void
         (lambda ()
           (exit! rw)
           (handler e)))
       ;; if the handler returns here the state is inconsistent -- we need to bail
       (##thread-end-with-uncaught-exception! e))
     (lambda ()
       (enter! rw)
       (let (result expr)
         (exit! rw)
         result)))))

(defrules do-with-read-lock ()
  ((_ rw expr)
   (do-with-rwlock rw expr rwlock-read-lock! rwlock-read-unlock!))
  ((_ rw expr ~ type)
   (and (identifier? #'~)
        (member #'~ '(: :-) free-identifier=?))
   (~ (do-with-rwlock rw expr rwlock-read-lock! rwlock-read-unlock!)
      type)))

(defrules do-with-write-lock ()
  ((_ rw expr)
   (do-with-rwlock rw expr rwlock-write-lock! rwlock-write-unlock!))
  ((_ rw expr ~ type)
   (and (identifier? #'~)
        (member #'~ '(: :-) free-identifier=?))
   (~ (do-with-rwlock rw expr rwlock-write-lock! rwlock-write-unlock!)
      type)))

(def (with-read-lock (rw : RWLock) (proc : :procedure))
  (do-with-read-lock rw (proc)))

(def (with-write-lock (rw : RWLock) (proc : :procedure))
  (do-with-write-lock rw (proc)))

;; methods for the Locker interface
(implement Locker RWLock
  (read-lock!    __rwlock-read-lock!)
  (read-unlock!  __rwlock-read-unlock!)
  (write-lock!   __rwlock-write-lock!)
  (write-unlock! __rwlock-write-unlock!))
