(import :std/contract :std/interface :gerbil/core
        (for-syntax :std/interface :std/srfi/1 :gerbil/core))                                                                                                          
(export #t)      

(extern namespace: #f ___specialize-class
                     __bind-class-specializer!)

(defsyntax (def-instance-method stx)
  (syntax-case stx ()
    ((_ (interface-object Interface) (self klass) ((method . args) body ...) rebind: rebind)
     #'(defmethod {method klass}
	 (lambda (self . args)
  	   (using (interface-object self : Interface) body ...))
	 rebind: rebind))
    ((_ no-interface (self klass) ((method . args) body ...) rebind: rebind)
     (stx-boolean? #'no-interface)
     #'(defmethod {method klass} (lambda (self . args) body ...)
	 rebind: rebind))
    ((_ interface klass method ... rebind: rebind)
     (and (identifier? #'class)
	  (or (stx-pair? #'interface) (stx-boolean? #'interface)))
     #'(def-instance-method interface (self klass) method ... rebind: rebind))
    ((_ Interface klass method ... rebind: rebind)
     (and (identifier? #'Interface))
     #'(def-instance-method #f klass method ... rebind: rebind))
    ((_ rest ...)
       #'(def-instance-method rest... rebind: #f))))

(defsyntax (instance stx)
  (syntax-case stx ()
    ((_ interface klass method ... rebind: rebind)
     (with-syntax*
      ((Type (if (identifier? #'klass) #'klass (stx-car (stx-cdr #'klass))))
       (Type::t (!class-type-descriptor (syntax-local-value #'Type false))))
      #'(begin
	  (def-instance-method interface klass method rebind: rebind) ...
	  (when rebind
	    (__bind-class-specializer! Type::t (___specialize-class Type::t))))))
    ((macro rest ...)
     #'(macro rest ... rebind: #f))))
