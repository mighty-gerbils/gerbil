;;;; Utility functions and accessors for multiple values

(import ./sugar)

(export first-value second-value nth-value
        values->vector vector->values
        list->values ;; NB: values->list is builtin
        values->cons cons->values)

(defrules first-value ()
  ((_ form) (with ((values x . _) form) x))
  ((_ form forms ...) (error "syntax error"))
  (_ (lambda (x . _) x)))

(defrules second-value ()
  ((_ form) (with ((values _ x . _) form) x))
  ((_ form forms ...) (error "syntax error"))
  (_ (lambda (_ x . _) x)))

(defrule (nth-value n form) (with ((values . x) form) (list-ref x n)))

(defrule (values->vector form) (list->vector (values->list form)))
(def (vector->values v) (list->values (vector->list v)))

(def (list->values l) (apply values l))

(defrule (values->cons form) (let-values (((a b) form)) (cons a b)))
(def (cons->values x) (values (car x) (cdr x)))
