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

(defrule (@apply-prototype-method method-index arg ...)
  (lambda (prototype receiver)
    (declare (not safe))
    (let (method
          (##unchecked-structure-ref
           prototype
           method-index
           #f 'method-name))
      (method receiver arg ...))))

(defrule (@call-interface-method Interface method-name obj arg ...)
  (let (call-it (@apply-prototype-method (@interface-method-index Interface method)
                                         arg ...))
    (with-prototype (@interface-descriptor Interface)
      obj
      call-it
      (lambda (obj) (call-it obj (&interface-instance-object obj))))))

(defrule (defcall-interface-method Interface method (proc obj arg ...))
  (def (proc obj arg ...)
    (@cast (@interface-descriptor Interface)
           obj create-prototype
           (@apply-prototype-method (@interface-method-index Interface method)
                                    arg ...)
           (lambda (instance)
             ((@apply-prototype-method (@interface-method-index Interface method)
                                       arg ...)
              instance (&interface-instance-object instance))))))
