;;; -*- Gerbil -*-
;;; © vyzo
;;; interface utilities
(import :gerbil/runtime/interface)
(export #t)

(defsyntax (@interface-descriptor stx)
  (syntax-case stx ()
    ((_ Interface)
     XXX)))

(defsyntax (@interface-method-index stx)
  (syntax-case stx ()
    ((_ Interface method)
     XXX
     )))

(defrule (@call-interface-method Interface method-name obj arg ...)
  (let ()
    (declare (not safe))
    (let (result (get-prototype (@interface-descriptor Interface) obj))
      (using (result :- :pair)
        (let* ((prototype (car result))
               (receiver  (cdr result))
               (method  (##unchecked-structure-ref
                         prototype
                         (@interface-method-index Interface method)
                         #f 'method-name)))
          (method receiver arg ...))))))
