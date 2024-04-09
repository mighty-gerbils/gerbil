prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type
   gxc#current-compile-method
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-method)
    'procedure::t))
  (declare-type gxc#compile-e__0 (@lambda 1 #f))
  (declare-type gxc#compile-e__1 (@lambda 2 #f))
  (declare-type
   gxc#compile-e
   (@case-lambda (1 gxc#compile-e__0) (2 gxc#compile-e__1)))
  (declare-type gxc#stx-car-e (@lambda 1 #f))
  (declare-type
   gxc#void-method
   (@lambda 2
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#false-method
   (@lambda 2
            #f
            signature:
            (return: false::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#true-method
   (@lambda 2
            #f
            signature:
            (return: true::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gxc#identity-method (@lambda 2 #f))
  (declare-class
   gxc#::void-expression::t
   (@class gxc#::void-expression::t
           ()
           (object::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#::void-expression::t
   (optimizer-resolve-class '(typedecl gxc#::void-expression::t) 'class::t))
  (declare-type gxc#::void-expression? (@predicate gxc#::void-expression::t))
  (declare-type
   gxc#make-::void-expression
   (@constructor gxc#::void-expression::t))
  (declare-type
   gxc#::void-expression-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::void-expression-bind-methods!)
    'promise::t))
  (declare-class
   gxc#::void-special-form::t
   (@class gxc#::void-special-form::t
           ()
           (object::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#::void-special-form::t
   (optimizer-resolve-class '(typedecl gxc#::void-special-form::t) 'class::t))
  (declare-type
   gxc#::void-special-form?
   (@predicate gxc#::void-special-form::t))
  (declare-type
   gxc#make-::void-special-form
   (@constructor gxc#::void-special-form::t))
  (declare-type
   gxc#::void-special-form-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::void-special-form-bind-methods!)
    'promise::t))
  (declare-class
   gxc#::void::t
   (@class gxc#::void::t
           (gxc#::void-special-form::t gxc#::void-expression::t)
           (gxc#::void-special-form::t gxc#::void-expression::t object::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#::void::t
   (optimizer-resolve-class '(typedecl gxc#::void::t) 'class::t))
  (declare-type gxc#::void? (@predicate gxc#::void::t))
  (declare-type gxc#make-::void (@constructor gxc#::void::t))
  (declare-type
   gxc#::void-bind-methods!
   (optimizer-resolve-class '(typedecl gxc#::void-bind-methods!) 'promise::t))
  (declare-class
   gxc#::false-expression::t
   (@class gxc#::false-expression::t
           ()
           (object::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#::false-expression::t
   (optimizer-resolve-class '(typedecl gxc#::false-expression::t) 'class::t))
  (declare-type gxc#::false-expression? (@predicate gxc#::false-expression::t))
  (declare-type
   gxc#make-::false-expression
   (@constructor gxc#::false-expression::t))
  (declare-type
   gxc#::false-expression-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::false-expression-bind-methods!)
    'promise::t))
  (declare-class
   gxc#::false-special-form::t
   (@class gxc#::false-special-form::t
           ()
           (object::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#::false-special-form::t
   (optimizer-resolve-class '(typedecl gxc#::false-special-form::t) 'class::t))
  (declare-type
   gxc#::false-special-form?
   (@predicate gxc#::false-special-form::t))
  (declare-type
   gxc#make-::false-special-form
   (@constructor gxc#::false-special-form::t))
  (declare-type
   gxc#::false-special-form-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::false-special-form-bind-methods!)
    'promise::t))
  (declare-class
   gxc#::false::t
   (@class gxc#::false::t
           (gxc#::false-special-form::t gxc#::false-expression::t)
           (gxc#::false-special-form::t
            gxc#::false-expression::t
            object::t
            t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#::false::t
   (optimizer-resolve-class '(typedecl gxc#::false::t) 'class::t))
  (declare-type gxc#::false? (@predicate gxc#::false::t))
  (declare-type gxc#make-::false (@constructor gxc#::false::t))
  (declare-type
   gxc#::false-bind-methods!
   (optimizer-resolve-class '(typedecl gxc#::false-bind-methods!) 'promise::t))
  (declare-class
   gxc#::identity-expression::t
   (@class gxc#::identity-expression::t
           ()
           (object::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#::identity-expression::t
   (optimizer-resolve-class
    '(typedecl gxc#::identity-expression::t)
    'class::t))
  (declare-type
   gxc#::identity-expression?
   (@predicate gxc#::identity-expression::t))
  (declare-type
   gxc#make-::identity-expression
   (@constructor gxc#::identity-expression::t))
  (declare-type
   gxc#::identity-expression-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::identity-expression-bind-methods!)
    'promise::t))
  (declare-class
   gxc#::identity-special-form::t
   (@class gxc#::identity-special-form::t
           ()
           (object::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#::identity-special-form::t
   (optimizer-resolve-class
    '(typedecl gxc#::identity-special-form::t)
    'class::t))
  (declare-type
   gxc#::identity-special-form?
   (@predicate gxc#::identity-special-form::t))
  (declare-type
   gxc#make-::identity-special-form
   (@constructor gxc#::identity-special-form::t))
  (declare-type
   gxc#::identity-special-form-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::identity-special-form-bind-methods!)
    'promise::t))
  (declare-class
   gxc#::identity::t
   (@class gxc#::identity::t
           (gxc#::identity-special-form::t gxc#::identity-expression::t)
           (gxc#::identity-special-form::t
            gxc#::identity-expression::t
            object::t
            t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#::identity::t
   (optimizer-resolve-class '(typedecl gxc#::identity::t) 'class::t))
  (declare-type gxc#::identity? (@predicate gxc#::identity::t))
  (declare-type gxc#make-::identity (@constructor gxc#::identity::t))
  (declare-type
   gxc#::identity-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::identity-bind-methods!)
    'promise::t))
  (declare-class
   gxc#::basic-xform-expression::t
   (@class gxc#::basic-xform-expression::t
           ()
           (object::t t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#::basic-xform-expression::t
   (optimizer-resolve-class
    '(typedecl gxc#::basic-xform-expression::t)
    'class::t))
  (declare-type
   gxc#::basic-xform-expression?
   (@predicate gxc#::basic-xform-expression::t))
  (declare-type
   gxc#make-::basic-xform-expression
   (@constructor gxc#::basic-xform-expression::t))
  (declare-type
   gxc#::basic-xform-expression-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::basic-xform-expression-bind-methods!)
    'promise::t))
  (declare-class
   gxc#::basic-xform::t
   (@class gxc#::basic-xform::t
           (gxc#::basic-xform-expression::t gxc#::identity::t)
           (gxc#::basic-xform-expression::t
            gxc#::identity::t
            gxc#::identity-special-form::t
            gxc#::identity-expression::t
            object::t
            t::t)
           ()
           ()
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#::basic-xform::t
   (optimizer-resolve-class '(typedecl gxc#::basic-xform::t) 'class::t))
  (declare-type gxc#::basic-xform? (@predicate gxc#::basic-xform::t))
  (declare-type gxc#make-::basic-xform (@constructor gxc#::basic-xform::t))
  (declare-type
   gxc#::basic-xform-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::basic-xform-bind-methods!)
    'promise::t))
  (declare-type gxc#apply-begin% (@lambda 2 #f))
  (declare-type gxc#apply-last-begin% (@lambda 2 #f))
  (declare-type
   gxc#apply-begin-syntax%
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gxc#apply-module% (@lambda 2 #f))
  (declare-type gxc#apply-begin-annotation% (@lambda 2 #f))
  (declare-type gxc#apply-define-values% (@lambda 2 #f))
  (declare-type gxc#apply-define-syntax% (@lambda 2 #f))
  (declare-type gxc#apply-body-lambda% (@lambda 2 #f))
  (declare-type gxc#apply-body-case-lambda% (@lambda 2 #f))
  (declare-type gxc#apply-body-let-values% (@lambda 2 #f))
  (declare-type gxc#apply-body-last-let-values% (@lambda 2 #f))
  (declare-type gxc#apply-body-setq% (@lambda 2 #f))
  (declare-type gxc#apply-operands (@lambda 2 #f))
  (declare-type gxc#xform-wrap-source (@lambda 2 #f))
  (declare-type gxc#xform-begin% (@lambda 2 #f))
  (declare-type gxc#xform-begin-syntax% (@lambda 2 #f))
  (declare-type gxc#xform-module% (@lambda 2 #f))
  (declare-type gxc#xform-define-values% (@lambda 2 #f))
  (declare-type gxc#xform-define-syntax% (@lambda 2 #f))
  (declare-type gxc#xform-begin-annotation% (@lambda 2 #f))
  (declare-type gxc#xform-lambda% (@lambda 2 #f))
  (declare-type gxc#xform-case-lambda% (@lambda 2 #f))
  (declare-type gxc#xform-let-values% (@lambda 2 #f))
  (declare-type gxc#xform-letrec-values% (@lambda 2 #f))
  (declare-type gxc#xform-let-locals (@lambda 1 #f))
  (declare-type gxc#xform-operands (@lambda 2 #f))
  (declare-type gxc#xform-call% (@lambda 2 #f))
  (declare-type gxc#xform-setq% (@lambda 2 #f)))
