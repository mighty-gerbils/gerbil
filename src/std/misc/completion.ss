;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; asynchronous completion tokens

(import :std/error
        :std/sugar
        :std/contract)
(export make-completion
        completion?
        completion
        completion-ready?
        completion-wait!
        completion-post!
        completion-error!
        with-completion-error)

(defstruct completion ((mx :- :mutex)
                       (cv :- :condvar)
                       ready? val exn)
  final: #t
  constructor: :init!)

(defmethod {:init! completion}
  (lambda (self (name 'completion)) ;; name is for debugging
    (struct-instance-init! self
                           (make-mutex name)
                           (make-condition-variable name))))

(def (completion-wait! (c : completion))
  (let lp ()
    (mutex-lock! c.mx)
    (if c.ready?
      (begin
        (mutex-unlock! c.mx)
        (cond
         (c.exn => raise)
         (else c.val)))
      (begin
        (mutex-unlock! c.mx c.cv)
        (lp)))))

(defrule (do-completion-post! compl val set-e)
  (using (c compl :- completion)
    (mutex-lock! c.mx)
    (if c.ready?
      (begin
        (mutex-unlock! c.mx)
        (raise-context-error completion-post! "Completion has already been posted" c))
      (begin
        (set-e c val)
        (set! c.ready? #t)
        (mutex-unlock! c.mx)
        (condition-variable-broadcast! c.cv)
        (void)))))

(def (completion-post! (compl : completion) val)
  (do-completion-post! compl val &completion-val-set!))

(def (completion-error! (compl : completion) exn)
  (do-completion-post! compl exn &completion-exn-set!))

(defrules with-completion-error ()
  ((_ compl expr rest ...)
   (try
    expr rest ...
    (catch (e)
      (completion-error! compl e)
      (raise e)))))
