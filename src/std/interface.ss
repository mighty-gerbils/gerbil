;;; -*- Gerbil -*-
;;; © vyzo
;;; interface utilities
(export #t)

(defsyntax-case @implement ()
  ((_ Interface klass)
   (and (syntax-local-interface-info? #'Interface)
        (syntax-local-class-info? #'klass))
   (let (info (syntax-local-value #'Interface))
     (with-syntax ((descriptor     (interface-info-interface-descriptor info))
                   (instance-class (!runtime-type-descriptor info)))
       #'(create-prototype descriptor instance-class klass)))))

(defrule (implement Interface klass (method proc) ...)
  (begin
    (defmethod {method klass}
      proc
      interface: Interface)
    ...
    (@implement Interface klass)))

(defsyntax-case @interface-descriptor ()
  ((_ Interface)
   (syntax-local-interface-info? #'Interface)
   (let (info (syntax-local-value #'Interface))
     (interface-info-interface-descriptor info))))

(defsyntax-ccase @interface-method-offset ()
  ((_ Interface method)
   (and (syntax-local-interface-info? #'Interface)
        (identifier #'method))
   (let ((method (stx-e #'method))
         (info (syntax-local-value #'Interface)))
     (cond
      ((interface-info-method-offset info method))
      (else
       (raise-syntax-error #f "unknown interface method" stx #'Interface method))))))

(defrule (@apply-prototype-method method-name method-offset arg ...)
  (lambda (descriptor prototype receiver)
    (if prototype
      (let ()
        (declare (not safe))
        (let (method
              (##unchecked-structure-ref
               prototype
               method-offset
               #f 'method-name))
          (method receiver arg ...)))
      (abort!
       (raise-cast-error 'apply-prototype-method "cannot create interface prototype"
                         interface: descriptor
                         object: receiver
                         method: 'method-name)))))

(defrule (@apply-prototype-method/fallback method-name method-offset fallback arg ...)
  (lambda (descriptor prototype receiver)
    (if prototype
      (let ()
        (declare (not safe))
        (let (method
              (##unchecked-structure-ref
               prototype
               method-offset
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
               method-offset
               #f 'method-name)))
      (method receiver arg ...))))

;; TODO extract interface method signature and check/set argument contracts
(defrule (@call-interface-method Interface method-name obj arg ...)
  (with-prototype (@interface-descriptor Interface)
    obj
    (@apply-prototype-method
     method
     (@interface-method-offset Interface method)
     arg ...)
    (@apply-prototype-method/object
     method
     (@interface-method-offset Interface method)
     arg ...)))

;; TODO extract interface method signature and check/set argument contracts
(defrules defcall-interface-method ()
  ((_ Interface method (proc obj arg ...))
   (def (proc obj arg ...)
     (@cast (@interface-descriptor Interface)
            obj create-prototype
            (@apply-prototype-method
             method
             (@interface-method-offset Interface method)
             arg ...)
            (@apply-prototype-method/object
             method
             (@interface-method-offset Interface method)
             arg ...))))
  ((_ Interface method (proc obj arg ...)) ~ Type)
  (def (proc obj arg ...) => Type
    (~ (@cast (@interface-descriptor Interface)
              obj create-prototype
              (@apply-prototype-method
               method
               (@interface-method-offset Interface method)
               arg ...)
              (@apply-prototype-method/object
               method
               (@interface-method-offset Interface method)
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
             (@interface-method-offset Interface method)
             fallback arg ...)
            (@apply-prototype-method/object
             method
             (@interface-method-offset Interface method)
             arg ...))))
  ((_ Interface Interface method-name (proc obj arg ...) fallback ~ Type)
   (def (proc obj arg ...) => Type
     (~ (@cast (@interface-descriptor Interface)
               obj try-create-prototype
               (@apply-prototype-method/fallback
                method
                (@interface-method-offset Interface method)
                fallback arg ...)
               (@apply-prototype-method/object
                method
                (@interface-method-offset Interface method)
                arg ...))
        Type))))
