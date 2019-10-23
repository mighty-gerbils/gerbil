;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS stub macros for missing features
(export #t)

(defrules defstub ()
  ((_ id)
   (identifier? #'id)
   (defsyntax (id stx)
     (raise-syntax-error #f "R7RS procedure NOT IMPLEMENTED" stx 'id))))

(defrules defsyntax-stub ()
  ((_ id)
   (defsyntax (id stx)
     (raise-syntax-error #f "R7RS macro NOT IMPLEMENTED" stx 'id))))
