;;; -*- Gerbil -*-
;;; © fare, vyzo
;;; Utility functions and accessors for multiple values
(import ./sugar)

(export (rename: first-value% first-value)
        (rename: second-value% second-value)
        (rename: nth-value% nth-value)
        (rename: values->vector% values->vector)
        vector->values
        list->values ;; NB: values->list is builtin
        (rename: values->cons% values->cons)
        cons->values)

(def (first-value x . _) x)
(defrules first-value% ()
  ((_ form) (with ((values x . _) form) x))
  ((_ . _) (syntax-error "Bad syntax; first-value expects single argument"))
  (_ first-value))

(def (second-value _ x . _) x)
(defrules second-value% ()
  ((_ form) (with ((values _ x . _) form) x))
  ((_ . _) (syntax-error "Bad syntax; second-value expects single argument"))
  (_ second-value))

(defrules nth-value% ()
  ((_ n form) (with ((values . x) form) (list-ref x n)))
  ((_ . _) (syntax-error "Bad syntax; nth-value expects two arguments"))
  (_ nth-value_))
(def (nth-value n vals) (nth-value% n vals))

(defrules values->vector% ()
  ((_ form) (list->vector (values->list form)))
  ((_ . _) (syntax-error "Bad syntax; values->vector expects one argument"))
  (_ values->vector))
(def (values->vector vals) (values->vector% vals))

(def (vector->values v) (list->values (vector->list v)))

(def (list->values l) (apply values l))

(defrules values->cons% ()
  ((_ form) (with ((values a b) form) (cons a b)))
  ((_ . _) (syntax-error "Bad syntax; values->cons expects one argument"))
  (_ values->cons))
(def (values->cons vals) (values->cons% vals))

(def (cons->values x) (values (car x) (cdr x)))
