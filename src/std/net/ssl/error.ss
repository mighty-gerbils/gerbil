;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL errors
(export #t)
(import :std/error
        :std/sugar
        ./libssl)

(defrule (with-ssl-result (proc arg ...))
  (let (result (proc arg ...))
    (cond
     ((fixnum? result)
      (if (fx> result 0)
        (void)
        (raise-ssl-error 'proc result)))
     ((char? result) result)
     (else
      (raise-ssl-error 'proc result)))))

(defrule (check-ptr expr)
  (cond
   (expr)
   (else
    (error "SSL object allocation failed" 'expr))))

(defstruct (ssl-error <error>) ())

(def (raise-ssl-error where result)
  (raise (make-ssl-error "SSL error" [result] where)))
