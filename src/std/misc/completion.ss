;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; asynchronous completion tokens

(import :std/error
        :std/sugar)
(export make-completion
        completion?
        completion
        completion-ready?
        completion-wait!
        completion-post!
        completion-error!
        with-completion-error)

(defstruct completion (mx cv ready? val exn)
  final: #t unchecked: #t
  constructor: :init!)

(defmethod {:init! completion}
  (lambda (self (name 'completion)) ;; name is for debugging
    (struct-instance-init! self
                           (make-mutex name)
                           (make-condition-variable name))))

(def (completion-wait! compl)
  (with ((completion mx cv) compl)
    (let lp ()
      (mutex-lock! mx)
      (if (&completion-ready? compl)
        (begin
          (mutex-unlock! mx)
          (cond
           ((&completion-exn compl)
            => raise)
           (else
            (&completion-val compl))))
        (begin
          (mutex-unlock! mx cv)
          (lp))))))

(defrules do-completion-post! ()
  ((_ compl val set-e)
   (with ((completion mx cv) compl)
     (mutex-lock! mx)
     (if (&completion-ready? compl)
       (begin
         (mutex-unlock! mx)
         (raise-context-error completion-post! "Completion has already been posted" compl))
       (begin
         (set-e compl val)
         (set! (&completion-ready? compl) #t)
         (mutex-unlock! mx)
         (condition-variable-broadcast! cv)
         (void))))))

(def (completion-post! compl val)
  (do-completion-post! compl val &completion-val-set!))

(def (completion-error! compl exn)
  (do-completion-post! compl exn &completion-exn-set!))

(defrules with-completion-error ()
  ((_ compl expr rest ...)
   (try
    expr rest ...
    (catch (e)
      (completion-error! compl e)
      (raise e)))))
