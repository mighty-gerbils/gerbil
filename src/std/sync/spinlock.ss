;;; -*- Gerbil -*-
;;; © vyzo
;;; spin locks
(export SpinLock SpinLock?
        spin-lock!
        spin-unlock!
        do-with-spin-lock)


(defstruct SpinLock ((lk :- :vector) (max :- :fixnum))
  constructor: :init!
  final: #t)

(defmethod {:init! SpinLock}
  (lambda (self (max-spin 10 : :fixnum))
    (set! self.lk (vector 0 #f))
    (set! self.max max-spin)))

(definline (spin-lock! (lock : SpinLock))
  (let ((lk lock.lk) (max-spin lock.max))
    (declare (not interrupts-enabled))
    (let again ((spin 0))
      (cond
       ((##fx= (##vector-cas! lk 0 1 0) 0)
        (##vector-set! lk 1 (current-thread)))
       ((##fx< spin max-spin)
        (##thread-yield!)
        (again (##fx+ spin 1)))
       (else
        (__check-spin-deadlock! lk)
        (##thread-yield!)
        (again 0))))))

(def (__check-spin-deadlock! lk)
  (declare (not interrupts-enabled))
  (let (owner (##vector-ref lk 1))
    (when (thread? owner)
      (cond
       ((eq? owner (current-thread))
        (##thread-deadlock-action!))
       ((thread-dead? owner)
        (##thread-abandoned-mutex-action!))))))

(definline (spin-unlock! (lock : SpinLock))
  (let (lk lock.lk)
    (declare (not interrupts-enabled))
    (##vector-set! lk 1 #f)
    (##vector-cas! lk 0 0 1)))

(defrules do-with-spin-lock ()
  ((_ lock-expr ~ klass body rest ...)
   (signature-contract? #'(~ klass))
   (~ (do-with-spin-lock lock-expr body rest ...)
      klass))
  ((_ lock-expr body rest ...)
   (let (lock lock-expr)
    (spin-lock! lock)
    (let (result (begin body rest ...))
      (spin-unlock! lock)
      result))))
