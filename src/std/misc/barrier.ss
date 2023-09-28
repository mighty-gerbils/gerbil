;;; -*- Gerbil -*-
;;; © vyzo
;;; thread barriers

(import :std/error
        :std/interface
        :std/contract
        :std/sugar)
(export make-barrier barrier? barrier
        barrier-wait!
        barrier-post!
        barrier-error!
        with-barrier-error)

(defstruct barrier (mx cv count limit exn)
  constructor: :init! final: #t unchecked: #t)

(defmethod {:init! barrier}
  (lambda (self limit)
    (unless (and (fixnum? limit) (##fx>= limit 0))
      (raise-bad-argument make-barrier "positive fixnum" limit))
    (struct-instance-init! self
                           (make-mutex 'barrier)
                           (make-condition-variable 'barrier)
                           0 limit)))

(def (barrier-wait! b)
  (using (b : barrier)
    (let lp ()
      (mutex-lock! b.mx)
      (cond
       (b.exn
        => (lambda (exn)
             (mutex-unlock! b.mx)
             (raise exn)))
       ((##fx< b.count b.limit)
        (mutex-unlock! b.mx b.cv)
        (lp))
       (else
        (mutex-unlock! b.mx)
        (void))))))

(def (barrier-post! b)
  (using (b : barrier)
    (mutex-lock! b.mx)
    (let* ((count b.count)
           (count+1 (##fx+ count 1)))
      (set! b.count count+1)
      (unless (##fx< count+1 b.limit)
        (condition-variable-broadcast! b.cv))
      (mutex-unlock! b.mx))))

(def (barrier-error! b exn)
  (using (b : barrier)
    (mutex-lock! b.mx)
    (unless b.exn
      (set! b.exn exn))
    (condition-variable-broadcast! b.cv)
    (mutex-unlock! b.mx)))

(defrules with-barrier-error ()
  ((_ b expr rest ...)
   (try
    expr rest ...
    (catch (e)
      (barrier-error! b e)
      (raise e)))))
