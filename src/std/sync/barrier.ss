;;; -*- Gerbil -*-
;;; © vyzo
;;; thread barriers
(import :std/error)
(export make-barrier Barrier? Barrier
        barrier-wait!
        barrier-post!
        barrier-error!
        with-barrier-error)

(defstruct Barrier ((mx    :- :mutex)
                    (cv    :- :condvar)
                    (count :- :fixnum)
                    (limit :- :fixnum)
                    exn)
  constructor: :init! final: #t )

(defmethod {:init! Barrier}
  (lambda (self (limit :~ nonnegative-fixnum? :- :fixnum))
    (set! self.mx (make-mutex 'barrier))
    (set! self.cv (make-condition-variable 'barrier))
    (set! self.count 0)
    (set! self.limit limit)))

(def (barrier-wait! (b : Barrier))
  => :void
  (let loop ()
    => :void
    (mutex-lock! b.mx)
    (cond
     (b.exn
      (mutex-unlock! b.mx)
      (abort! (raise b.exn)))
     ((fx< b.count b.limit)
      (mutex-unlock! b.mx b.cv)
      (loop))
     (else
      (mutex-unlock! b.mx)
      (void)))))

(def (barrier-post! (b : Barrier))
  => :void
  (mutex-lock! b.mx)
  (let* ((count b.count)
         (count+1 (fx+ count 1)))
    (set! b.count count+1)
    (unless (fx< count+1 b.limit)
      (condition-variable-broadcast! b.cv))
    (mutex-unlock! b.mx)
    (void)))

(def (barrier-error! (b : Barrier) exn)
  => :void
  (mutex-lock! b.mx)
  (unless b.exn
    (set! b.exn exn))
  (condition-variable-broadcast! b.cv)
  (mutex-unlock! b.mx)
  (void))

(defrules with-barrier-error ()
  ((_ b expr rest ...)
   (try
    expr rest ...
    (catch (e)
      (barrier-error! b e)
      (raise e)))))
