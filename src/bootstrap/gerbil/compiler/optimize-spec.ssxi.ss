prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-class
   gxc#::generate-method-specializers::t
   (@class gxc#::generate-method-specializers::t
           (gxc#::identity::t)
           (gxc#::identity::t
            gxc#::identity-special-form::t
            gxc#::identity-expression::t
            object::t
            t::t)
           ()
           ()
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::generate-method-specializers::t
   (optimizer-resolve-class
    '(typedecl gxc#::generate-method-specializers::t)
    'class::t))
  (declare-type
   gxc#::generate-method-specializers?
   (@predicate gxc#::generate-method-specializers::t))
  (declare-type
   gxc#make-::generate-method-specializers
   (@constructor gxc#::generate-method-specializers::t))
  (declare-type
   gxc#::generate-method-specializers-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::generate-method-specializers-bind-methods!)
    '#<!class #16074 id: promise super: () precedence-list: (t::t)>))
  (declare-type
   gxc#apply-generate-method-specializers
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-class
   gxc#::collect-object-refs::t
   (@class gxc#::collect-object-refs::t
           (gxc#::void::t)
           (gxc#::void::t
            gxc#::void-special-form::t
            gxc#::void-expression::t
            object::t
            t::t)
           (receiver methods slots)
           (receiver methods slots)
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::collect-object-refs::t
   (optimizer-resolve-class
    '(typedecl gxc#::collect-object-refs::t)
    'class::t))
  (declare-type
   gxc#::collect-object-refs?
   (@predicate gxc#::collect-object-refs::t))
  (declare-type
   gxc#make-::collect-object-refs
   (@constructor gxc#::collect-object-refs::t))
  (declare-type
   gxc#::collect-object-refs-receiver
   (@accessor gxc#::collect-object-refs::t receiver #t))
  (declare-type
   gxc#::collect-object-refs-methods
   (@accessor gxc#::collect-object-refs::t methods #t))
  (declare-type
   gxc#::collect-object-refs-slots
   (@accessor gxc#::collect-object-refs::t slots #t))
  (declare-type
   gxc#::collect-object-refs-receiver-set!
   (@mutator gxc#::collect-object-refs::t receiver #t))
  (declare-type
   gxc#::collect-object-refs-methods-set!
   (@mutator gxc#::collect-object-refs::t methods #t))
  (declare-type
   gxc#::collect-object-refs-slots-set!
   (@mutator gxc#::collect-object-refs::t slots #t))
  (declare-type
   gxc#&::collect-object-refs-receiver
   (@accessor gxc#::collect-object-refs::t receiver #f))
  (declare-type
   gxc#&::collect-object-refs-methods
   (@accessor gxc#::collect-object-refs::t methods #f))
  (declare-type
   gxc#&::collect-object-refs-slots
   (@accessor gxc#::collect-object-refs::t slots #f))
  (declare-type
   gxc#&::collect-object-refs-receiver-set!
   (@mutator gxc#::collect-object-refs::t receiver #f))
  (declare-type
   gxc#&::collect-object-refs-methods-set!
   (@mutator gxc#::collect-object-refs::t methods #f))
  (declare-type
   gxc#&::collect-object-refs-slots-set!
   (@mutator gxc#::collect-object-refs::t slots #f))
  (declare-type
   gxc#::collect-object-refs-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::collect-object-refs-bind-methods!)
    '#<!class #16074 id: promise super: () precedence-list: (t::t)>))
  (declare-type
   gxc#apply-collect-object-refs__%
   (@lambda 5
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#apply-collect-object-refs__@
   (@lambda (1)
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#apply-collect-object-refs
   (@kw-lambda (receiver: slots: methods:) gxc#apply-collect-object-refs__@))
  (declare-class
   gxc#::subst-object-refs::t
   (@class gxc#::subst-object-refs::t
           (gxc#::basic-xform-expression::t)
           (gxc#::basic-xform-expression::t object::t t::t)
           (receiver klass methods slots)
           (receiver klass methods slots)
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#::subst-object-refs::t
   (optimizer-resolve-class '(typedecl gxc#::subst-object-refs::t) 'class::t))
  (declare-type
   gxc#::subst-object-refs?
   (@predicate gxc#::subst-object-refs::t))
  (declare-type
   gxc#make-::subst-object-refs
   (@constructor gxc#::subst-object-refs::t))
  (declare-type
   gxc#::subst-object-refs-receiver
   (@accessor gxc#::subst-object-refs::t receiver #t))
  (declare-type
   gxc#::subst-object-refs-klass
   (@accessor gxc#::subst-object-refs::t klass #t))
  (declare-type
   gxc#::subst-object-refs-methods
   (@accessor gxc#::subst-object-refs::t methods #t))
  (declare-type
   gxc#::subst-object-refs-slots
   (@accessor gxc#::subst-object-refs::t slots #t))
  (declare-type
   gxc#::subst-object-refs-receiver-set!
   (@mutator gxc#::subst-object-refs::t receiver #t))
  (declare-type
   gxc#::subst-object-refs-klass-set!
   (@mutator gxc#::subst-object-refs::t klass #t))
  (declare-type
   gxc#::subst-object-refs-methods-set!
   (@mutator gxc#::subst-object-refs::t methods #t))
  (declare-type
   gxc#::subst-object-refs-slots-set!
   (@mutator gxc#::subst-object-refs::t slots #t))
  (declare-type
   gxc#&::subst-object-refs-receiver
   (@accessor gxc#::subst-object-refs::t receiver #f))
  (declare-type
   gxc#&::subst-object-refs-klass
   (@accessor gxc#::subst-object-refs::t klass #f))
  (declare-type
   gxc#&::subst-object-refs-methods
   (@accessor gxc#::subst-object-refs::t methods #f))
  (declare-type
   gxc#&::subst-object-refs-slots
   (@accessor gxc#::subst-object-refs::t slots #f))
  (declare-type
   gxc#&::subst-object-refs-receiver-set!
   (@mutator gxc#::subst-object-refs::t receiver #f))
  (declare-type
   gxc#&::subst-object-refs-klass-set!
   (@mutator gxc#::subst-object-refs::t klass #f))
  (declare-type
   gxc#&::subst-object-refs-methods-set!
   (@mutator gxc#::subst-object-refs::t methods #f))
  (declare-type
   gxc#&::subst-object-refs-slots-set!
   (@mutator gxc#::subst-object-refs::t slots #f))
  (declare-type
   gxc#::subst-object-refs-bind-methods!
   (optimizer-resolve-class
    '(typedecl gxc#::subst-object-refs-bind-methods!)
    '#<!class #16074 id: promise super: () precedence-list: (t::t)>))
  (declare-type
   gxc#apply-subst-object-refs__%
   (@lambda 6
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#apply-subst-object-refs__@
   (@lambda (1)
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#apply-subst-object-refs
   (@kw-lambda
    (receiver: methods: slots: klass:)
    gxc#apply-subst-object-refs__@))
  (declare-type gxc#generate-method-specializers-define-values% (@lambda 2 #f))
  (declare-type gxc#collect-object-refs-call% (@lambda 2 #f))
  (declare-type gxc#subst-object-refs-call% (@lambda 2 #f)))
