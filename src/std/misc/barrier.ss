;;; -*- Gerbil -*-
;;; © vyzo
;;; thread barriers

(import :std/error
        :std/sugar)
(export make-barrier barrier? barrier
        barrier-wait!
        barrier-post!
        barrier-error!
        with-barrier-error)

(defstruct barrier ((mx    :- :mutex)
                    (cv    :- :condvar)
                    (count :- :fixnum)
                    (limit :- :fixnum)
                    exn)
  constructor: :init! final: #t )

(defmethod {:init! barrier}
  (lambda (self (limit :~ nonnegative-fixnum? :- :fixnum))
    (struct-instance-init! self
                           (make-mutex 'barrier)
                           (make-condition-variable 'barrier)
                           0 limit)))

(def (barrier-wait! (b : barrier))
  => :void
  (let lp ()
    => :void
    (mutex-lock! b.mx)
    (cond
     (b.exn
      (mutex-unlock! b.mx)
      (abort! (raise b.exn)))
     ((fx< b.count b.limit)
      (mutex-unlock! b.mx b.cv)
      (lp))
     (else
      (mutex-unlock! b.mx)
      (void)))))

(def (barrier-post! (b : barrier))
  => :void
  (mutex-lock! b.mx)
  (let* ((count b.count)
         (count+1 (fx+ count 1)))
    (set! b.count count+1)
    (unless (fx< count+1 b.limit)
      (condition-variable-broadcast! b.cv))
    (mutex-unlock! b.mx)
    (void)))

(def (barrier-error! (b : barrier) exn)
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
