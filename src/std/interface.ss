;;; -*- Gerbil -*-
;;; © vyzo
;;; interface utilities
(import :gerbil/runtime/interface)
(export #t)

(defsyntax-case @interface-descriptor ()
  ((_ Interface)
   (syntax-local-interface-info? #'Interface)
   (let (info (syntax-local-value #'Interface))
     (interface-info-interface-descriptor info))))

(defsyntax-ccase @interface-method-index ()
  ((_ Interface method)
   (and (identifier #'Interface)
        (identifier #'method))
   (let* ((method (stx-e #'method))
          (info (interface-info-interface-descriptor info))
          (methods (interface-info-interface-methods info)))
     (let loop ((rest methods) (index 2))
       (match rest
         ([method-sig . rest]
          (if (eq? method (car method-sig))
            index
            (loop rest (fx+ index 1))))
         (else
          (raise-syntax-error #f "unknown interface method" stx #'Interface #'method)))))))

(defrule (@apply-prototype-method method-name method-index arg ...)
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
                         interface: descriptor
                         object: receiver
                         method: 'method-name)))))

(defrule (@apply-prototype-method/fallback method-name method-index fallback arg ...)
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
      (fallback receiver arg ...))))

(defrule (@apply-prototype-method/object method-name arg ...)
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
    (@apply-prototype-method
     method
     (@interface-method-index Interface method)
     arg ...)
    (@apply-prototype-method/object
     method
     (@interface-method-index Interface method)
     arg ...)))

;; TODO extract interface method signature and check/set argument contracts
(defrules defcall-interface-method ()
  ((_ Interface method (proc obj arg ...))
   (def (proc obj arg ...)
     (@cast (@interface-descriptor Interface)
            obj create-prototype
            (@apply-prototype-method
             method
             (@interface-method-index Interface method)
             arg ...)
            (@apply-prototype-method/object
             method
             (@interface-method-index Interface method)
             arg ...))))
  ((_ Interface method (proc obj arg ...)) ~ Type)
  (def (proc obj arg ...) => Type
    (~ (@cast (@interface-descriptor Interface)
              obj create-prototype
              (@apply-prototype-method
               method
               (@interface-method-index Interface method)
               arg ...)
              (@apply-prototype-method/object
               method
               (@interface-method-index Interface method)
               arg ...))
       Type)))

;; TODO extract interface method signature and check/set argument contracts
(defrules defcall-interface-method/fallback ()
  ((_ Interface Interface method (proc obj arg ...) fallback)
   (def (proc obj arg ...)
     (@cast (@interface-descriptor Interface)
            obj try-create-prototype
            (@apply-prototype-method/fallback
             method
             (@interface-method-index Interface method)
             fallback arg ...)
            (@apply-prototype-method/object
             method
             (@interface-method-index Interface method)
             arg ...))))
  ((_ Interface Interface method-name (proc obj arg ...) fallback ~ Type)
   (def (proc obj arg ...) => Type
     (~ (@cast (@interface-descriptor Interface)
               obj try-create-prototype
               (@apply-prototype-method/fallback
                method
                (@interface-method-index Interface method)
                fallback arg ...)
               (@apply-prototype-method/object
                method
                (@interface-method-index Interface method)
                arg ...))
        Type))))
