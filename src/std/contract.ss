;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil contract constructs

(import :std/error)
(export #t)

(defstruct (contract-violation <error>) ())

(def (raise-contract-violation where what . irritants)
  (raise (make-contract-violation what irritants where)))

;; contract assertions, that can be turned off with -O2/-no-runtime-checks.
(defrules @contract ()
  ((_ where assertion ...)
   (begin-annotation @runtime-check
     (begin
       (unless assertion
         (raise-contract-violation 'where "Contract violation" 'assertion))
       ...))))

;; like @contract, but can't be turned off; useful for checking user input.
(defrules @contract-strict ()
  ((_ where assertion ...)
   (begin
     (unless assertion
       (raise-contract-violation 'where "Contract violation" 'assertion))
     ...)))
