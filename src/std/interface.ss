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
  (lambda (descriptor prototype receiver)
    (if prototype
      (let ()
        (declare (not safe))
        (let (method
              (##unchecked-structure-ref
               prototype
               method-index
               #f 'method-name))
          (method receiver arg ...)))
      (abort!
       (raise-cast-error 'apply-prototype-method "cannot create interface prototype"
                         interface: descriptor object: receiver)))))

(defrule (@apply-prototype-method/object arg ...)
  (lambda (obj)
    (declare (not safe))
    (let* ((receiver (&interface-instance-object obj))
           (method
            (##unchecked-structure-ref
               prototype
               method-index
               #f 'method-name)))
      (method receiver arg ...))))

;; TODO extract interface method signature and check/set argument contracts
(defrule (@call-interface-method Interface method-name obj arg ...)
  (with-prototype (@interface-descriptor Interface)
    obj
    (@apply-prototype-method (@interface-method-index Interface method)
                             arg ...)
    (@apply-prototype-method/object
     (@interface-method-index Interface method)
     arg ...)))

;; TODO extract interface method signature and check/set argument contracts
(defrules defcall-interface-method ()
  ((_ Interface method (proc obj arg ...))
   (def (proc obj arg ...)
     (@cast (@interface-descriptor Interface)
            obj create-prototype
            (@apply-prototype-method (@interface-method-index Interface method)
                                     arg ...)
            (@apply-prototype-method/object (@interface-method-index Interface method)
                                            arg ...))))
  ((_ Interface method (proc obj arg ...)) ~ Type)
  (def (proc obj arg ...) => Type
    (~ (@cast (@interface-descriptor Interface)
              obj create-prototype
              (@apply-prototype-method (@interface-method-index Interface method)
                                       arg ...)
              (@apply-prototype-method/object (@interface-method-index Interface method)
                                              arg ...))
       Type)))
