;;; -*- Gerbil -*-
;;; © vyzo
;;; thread barriers

(import :gerbil/gambit/threads
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
      (error "Invalid argument; expected positive fixnum" limit))
    (struct-instance-init! self
                           (make-mutex 'barrier)
                           (make-condition-variable 'barrier)
                           0 limit)))

(def (barrier-wait! b)
  (with ((barrier mx cv _ limit) b)
    (let lp ()
      (mutex-lock! mx)
      (let (count (&barrier-count b))
        (cond
         ((&barrier-exn b)
          => (lambda (exn)
               (mutex-unlock! mx)
               (raise exn)))
         ((##fx< count limit)
          (mutex-unlock! mx cv)
          (lp))
         (else
          (mutex-unlock! mx)
          (void)))))))

(def (barrier-post! b)
  (with ((barrier mx cv _ limit) b)
    (mutex-lock! mx)
    (let* ((count (&barrier-count b))
           (count+1 (##fx+ count 1)))
      (set! (&barrier-count b) count+1)
      (unless (##fx< count+1 limit)
        (condition-variable-broadcast! cv))
      (mutex-unlock! mx))))

(def (barrier-error! b exn)
  (with ((barrier mx cv) b)
    (mutex-lock! mx)
    (unless (&barrier-exn b)
      (set! (&barrier-exn b) exn))
    (condition-variable-broadcast! cv)
    (mutex-unlock! mx)))

(defrules with-barrier-error ()
  ((_ b expr rest ...)
   (try
    expr rest ...
    (catch (e)
      (barrier-error! b e)
      (raise e)))))
