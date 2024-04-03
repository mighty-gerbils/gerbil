prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type
   gxc#current-compile-optimizer-info
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-optimizer-info)
    'procedure::t))
  (declare-type
   gxc#current-compile-mutators
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-mutators)
    'procedure::t))
  (declare-type
   gxc#current-compile-local-type
   (optimizer-resolve-class
    '(typedecl gxc#current-compile-local-type)
    'procedure::t))
  (declare-class
   gxc#optimizer-info::t
   (@class gxc#optimizer-info::t
           ()
           (object::t t::t)
           (type classes ssxi methods)
           (type classes ssxi methods)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gxc#optimizer-info:::init!))))
  (declare-type
   gxc#optimizer-info::t
   (optimizer-resolve-class '(typedecl gxc#optimizer-info::t) 'class::t))
  (declare-type gxc#optimizer-info? (@predicate gxc#optimizer-info::t))
  (declare-type gxc#make-optimizer-info (@constructor gxc#optimizer-info::t))
  (declare-type
   gxc#optimizer-info-type
   (@accessor gxc#optimizer-info::t type #t))
  (declare-type
   gxc#optimizer-info-classes
   (@accessor gxc#optimizer-info::t classes #t))
  (declare-type
   gxc#optimizer-info-ssxi
   (@accessor gxc#optimizer-info::t ssxi #t))
  (declare-type
   gxc#optimizer-info-methods
   (@accessor gxc#optimizer-info::t methods #t))
  (declare-type
   gxc#optimizer-info-type-set!
   (@mutator gxc#optimizer-info::t type #t))
  (declare-type
   gxc#optimizer-info-classes-set!
   (@mutator gxc#optimizer-info::t classes #t))
  (declare-type
   gxc#optimizer-info-ssxi-set!
   (@mutator gxc#optimizer-info::t ssxi #t))
  (declare-type
   gxc#optimizer-info-methods-set!
   (@mutator gxc#optimizer-info::t methods #t))
  (declare-type
   gxc#&optimizer-info-type
   (@accessor gxc#optimizer-info::t type #f))
  (declare-type
   gxc#&optimizer-info-classes
   (@accessor gxc#optimizer-info::t classes #f))
  (declare-type
   gxc#&optimizer-info-ssxi
   (@accessor gxc#optimizer-info::t ssxi #f))
  (declare-type
   gxc#&optimizer-info-methods
   (@accessor gxc#optimizer-info::t methods #f))
  (declare-type
   gxc#&optimizer-info-type-set!
   (@mutator gxc#optimizer-info::t type #f))
  (declare-type
   gxc#&optimizer-info-classes-set!
   (@mutator gxc#optimizer-info::t classes #f))
  (declare-type
   gxc#&optimizer-info-ssxi-set!
   (@mutator gxc#optimizer-info::t ssxi #f))
  (declare-type
   gxc#&optimizer-info-methods-set!
   (@mutator gxc#optimizer-info::t methods #f))
  (declare-type
   gxc#optimizer-info:::init!
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t) unchecked: #f)))
  (declare-class
   gxc#!type::t
   (@class gxc#!type::t () (object::t t::t) (id) (id) #f #t #f #f #f #f))
  (declare-type
   gxc#!type::t
   (optimizer-resolve-class '(typedecl gxc#!type::t) 'class::t))
  (declare-type gxc#!type? (@predicate gxc#!type::t))
  (declare-type gxc#make-!type (@constructor gxc#!type::t))
  (declare-type gxc#!type-id (@accessor gxc#!type::t id #t))
  (declare-type gxc#!type-id-set! (@mutator gxc#!type::t id #t))
  (declare-type gxc#&!type-id (@accessor gxc#!type::t id #f))
  (declare-type gxc#&!type-id-set! (@mutator gxc#!type::t id #f))
  (declare-class
   gxc#!abort::t
   (@class gxc#!abort::t
           (gxc#!type::t)
           (gxc#!type::t object::t t::t)
           ()
           (id)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gxc#!abort:::init!))))
  (declare-type
   gxc#!abort::t
   (optimizer-resolve-class '(typedecl gxc#!abort::t) 'class::t))
  (declare-type gxc#!abort? (@predicate gxc#!abort::t))
  (declare-type gxc#make-!abort (@constructor gxc#!abort::t))
  (declare-type gxc#!abort-id (@accessor gxc#!abort::t id #t))
  (declare-type gxc#!abort-id-set! (@mutator gxc#!abort::t id #t))
  (declare-type gxc#&!abort-id (@accessor gxc#!abort::t id #f))
  (declare-type gxc#&!abort-id-set! (@mutator gxc#!abort::t id #f))
  (declare-class
   gxc#!alias::t
   (@class gxc#!alias::t
           (gxc#!type::t)
           (gxc#!type::t object::t t::t)
           ()
           (id)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#!alias::t
   (optimizer-resolve-class '(typedecl gxc#!alias::t) 'class::t))
  (declare-type gxc#!alias? (@predicate gxc#!alias::t))
  (declare-type gxc#make-!alias (@constructor gxc#!alias::t))
  (declare-type gxc#!alias-id (@accessor gxc#!alias::t id #t))
  (declare-type gxc#!alias-id-set! (@mutator gxc#!alias::t id #t))
  (declare-type gxc#&!alias-id (@accessor gxc#!alias::t id #f))
  (declare-type gxc#&!alias-id-set! (@mutator gxc#!alias::t id #f))
  (declare-class
   gxc#!procedure::t
   (@class gxc#!procedure::t
           (gxc#!type::t)
           (gxc#!type::t object::t t::t)
           (signature)
           (id signature)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#!procedure::t
   (optimizer-resolve-class '(typedecl gxc#!procedure::t) 'class::t))
  (declare-type gxc#!procedure? (@predicate gxc#!procedure::t))
  (declare-type gxc#make-!procedure (@constructor gxc#!procedure::t))
  (declare-type
   gxc#!procedure-signature
   (@accessor gxc#!procedure::t signature #t))
  (declare-type gxc#!procedure-id (@accessor gxc#!procedure::t id #t))
  (declare-type
   gxc#!procedure-signature-set!
   (@mutator gxc#!procedure::t signature #t))
  (declare-type gxc#!procedure-id-set! (@mutator gxc#!procedure::t id #t))
  (declare-type
   gxc#&!procedure-signature
   (@accessor gxc#!procedure::t signature #f))
  (declare-type gxc#&!procedure-id (@accessor gxc#!procedure::t id #f))
  (declare-type
   gxc#&!procedure-signature-set!
   (@mutator gxc#!procedure::t signature #f))
  (declare-type gxc#&!procedure-id-set! (@mutator gxc#!procedure::t id #f))
  (declare-class
   gxc#!signature::t
   (@class gxc#!signature::t
           ()
           (object::t t::t)
           (return effect arguments unchecked)
           (return effect arguments unchecked)
           #f
           #f
           #t
           #f
           #f
           #f))
  (declare-type
   gxc#!signature::t
   (optimizer-resolve-class '(typedecl gxc#!signature::t) 'class::t))
  (declare-type gxc#!signature? (@predicate gxc#!signature::t))
  (declare-type gxc#make-!signature (@constructor gxc#!signature::t))
  (declare-type gxc#!signature-return (@accessor gxc#!signature::t return #t))
  (declare-type gxc#!signature-effect (@accessor gxc#!signature::t effect #t))
  (declare-type
   gxc#!signature-arguments
   (@accessor gxc#!signature::t arguments #t))
  (declare-type
   gxc#!signature-unchecked
   (@accessor gxc#!signature::t unchecked #t))
  (declare-type
   gxc#!signature-return-set!
   (@mutator gxc#!signature::t return #t))
  (declare-type
   gxc#!signature-effect-set!
   (@mutator gxc#!signature::t effect #t))
  (declare-type
   gxc#!signature-arguments-set!
   (@mutator gxc#!signature::t arguments #t))
  (declare-type
   gxc#!signature-unchecked-set!
   (@mutator gxc#!signature::t unchecked #t))
  (declare-type gxc#&!signature-return (@accessor gxc#!signature::t return #f))
  (declare-type gxc#&!signature-effect (@accessor gxc#!signature::t effect #f))
  (declare-type
   gxc#&!signature-arguments
   (@accessor gxc#!signature::t arguments #f))
  (declare-type
   gxc#&!signature-unchecked
   (@accessor gxc#!signature::t unchecked #f))
  (declare-type
   gxc#&!signature-return-set!
   (@mutator gxc#!signature::t return #f))
  (declare-type
   gxc#&!signature-effect-set!
   (@mutator gxc#!signature::t effect #f))
  (declare-type
   gxc#&!signature-arguments-set!
   (@mutator gxc#!signature::t arguments #f))
  (declare-type
   gxc#&!signature-unchecked-set!
   (@mutator gxc#!signature::t unchecked #f))
  (declare-class
   gxc#!primitive-predicate::t
   (@class gxc#!primitive-predicate::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t object::t t::t)
           ()
           (id signature)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gxc#!primitive-predicate:::init!))))
  (declare-type
   gxc#!primitive-predicate::t
   (optimizer-resolve-class '(typedecl gxc#!primitive-predicate::t) 'class::t))
  (declare-type
   gxc#!primitive-predicate?
   (@predicate gxc#!primitive-predicate::t))
  (declare-type
   gxc#make-!primitive-predicate
   (@constructor gxc#!primitive-predicate::t))
  (declare-type
   gxc#!primitive-predicate-signature
   (@accessor gxc#!primitive-predicate::t signature #t))
  (declare-type
   gxc#!primitive-predicate-id
   (@accessor gxc#!primitive-predicate::t id #t))
  (declare-type
   gxc#!primitive-predicate-signature-set!
   (@mutator gxc#!primitive-predicate::t signature #t))
  (declare-type
   gxc#!primitive-predicate-id-set!
   (@mutator gxc#!primitive-predicate::t id #t))
  (declare-type
   gxc#&!primitive-predicate-signature
   (@accessor gxc#!primitive-predicate::t signature #f))
  (declare-type
   gxc#&!primitive-predicate-id
   (@accessor gxc#!primitive-predicate::t id #f))
  (declare-type
   gxc#&!primitive-predicate-signature-set!
   (@mutator gxc#!primitive-predicate::t signature #f))
  (declare-type
   gxc#&!primitive-predicate-id-set!
   (@mutator gxc#!primitive-predicate::t id #f))
  (declare-class
   gxc#!class-meta::t
   (@class gxc#!class-meta::t
           (gxc#!type::t)
           (gxc#!type::t object::t t::t)
           (class)
           (id class)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gxc#!class-meta:::init!))))
  (declare-type
   gxc#!class-meta::t
   (optimizer-resolve-class '(typedecl gxc#!class-meta::t) 'class::t))
  (declare-type gxc#!class-meta? (@predicate gxc#!class-meta::t))
  (declare-type gxc#make-!class-meta (@constructor gxc#!class-meta::t))
  (declare-type gxc#!class-meta-class (@accessor gxc#!class-meta::t class #t))
  (declare-type gxc#!class-meta-id (@accessor gxc#!class-meta::t id #t))
  (declare-type
   gxc#!class-meta-class-set!
   (@mutator gxc#!class-meta::t class #t))
  (declare-type gxc#!class-meta-id-set! (@mutator gxc#!class-meta::t id #t))
  (declare-type gxc#&!class-meta-class (@accessor gxc#!class-meta::t class #f))
  (declare-type gxc#&!class-meta-id (@accessor gxc#!class-meta::t id #f))
  (declare-type
   gxc#&!class-meta-class-set!
   (@mutator gxc#!class-meta::t class #f))
  (declare-type gxc#&!class-meta-id-set! (@mutator gxc#!class-meta::t id #f))
  (declare-class
   gxc#!class::t
   (@class gxc#!class::t
           (gxc#!type::t)
           (gxc#!type::t object::t t::t)
           (super precedence-list
                  slots
                  fields
                  constructor
                  struct?
                  final?
                  system?
                  metaclass
                  methods)
           (id super
               precedence-list
               slots
               fields
               constructor
               struct?
               final?
               system?
               metaclass
               methods)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gxc#!class:::init!))))
  (declare-type
   gxc#!class::t
   (optimizer-resolve-class '(typedecl gxc#!class::t) 'class::t))
  (declare-type gxc#!class? (@predicate gxc#!class::t))
  (declare-type gxc#make-!class (@constructor gxc#!class::t))
  (declare-type gxc#!class-super (@accessor gxc#!class::t super #t))
  (declare-type
   gxc#!class-precedence-list
   (@accessor gxc#!class::t precedence-list #t))
  (declare-type gxc#!class-slots (@accessor gxc#!class::t slots #t))
  (declare-type gxc#!class-fields (@accessor gxc#!class::t fields #t))
  (declare-type
   gxc#!class-constructor
   (@accessor gxc#!class::t constructor #t))
  (declare-type gxc#!class-struct? (@accessor gxc#!class::t struct? #t))
  (declare-type gxc#!class-final? (@accessor gxc#!class::t final? #t))
  (declare-type gxc#!class-system? (@accessor gxc#!class::t system? #t))
  (declare-type gxc#!class-metaclass (@accessor gxc#!class::t metaclass #t))
  (declare-type gxc#!class-methods (@accessor gxc#!class::t methods #t))
  (declare-type gxc#!class-id (@accessor gxc#!class::t id #t))
  (declare-type gxc#!class-super-set! (@mutator gxc#!class::t super #t))
  (declare-type
   gxc#!class-precedence-list-set!
   (@mutator gxc#!class::t precedence-list #t))
  (declare-type gxc#!class-slots-set! (@mutator gxc#!class::t slots #t))
  (declare-type gxc#!class-fields-set! (@mutator gxc#!class::t fields #t))
  (declare-type
   gxc#!class-constructor-set!
   (@mutator gxc#!class::t constructor #t))
  (declare-type gxc#!class-struct?-set! (@mutator gxc#!class::t struct? #t))
  (declare-type gxc#!class-final?-set! (@mutator gxc#!class::t final? #t))
  (declare-type gxc#!class-system?-set! (@mutator gxc#!class::t system? #t))
  (declare-type
   gxc#!class-metaclass-set!
   (@mutator gxc#!class::t metaclass #t))
  (declare-type gxc#!class-methods-set! (@mutator gxc#!class::t methods #t))
  (declare-type gxc#!class-id-set! (@mutator gxc#!class::t id #t))
  (declare-type gxc#&!class-super (@accessor gxc#!class::t super #f))
  (declare-type
   gxc#&!class-precedence-list
   (@accessor gxc#!class::t precedence-list #f))
  (declare-type gxc#&!class-slots (@accessor gxc#!class::t slots #f))
  (declare-type gxc#&!class-fields (@accessor gxc#!class::t fields #f))
  (declare-type
   gxc#&!class-constructor
   (@accessor gxc#!class::t constructor #f))
  (declare-type gxc#&!class-struct? (@accessor gxc#!class::t struct? #f))
  (declare-type gxc#&!class-final? (@accessor gxc#!class::t final? #f))
  (declare-type gxc#&!class-system? (@accessor gxc#!class::t system? #f))
  (declare-type gxc#&!class-metaclass (@accessor gxc#!class::t metaclass #f))
  (declare-type gxc#&!class-methods (@accessor gxc#!class::t methods #f))
  (declare-type gxc#&!class-id (@accessor gxc#!class::t id #f))
  (declare-type gxc#&!class-super-set! (@mutator gxc#!class::t super #f))
  (declare-type
   gxc#&!class-precedence-list-set!
   (@mutator gxc#!class::t precedence-list #f))
  (declare-type gxc#&!class-slots-set! (@mutator gxc#!class::t slots #f))
  (declare-type gxc#&!class-fields-set! (@mutator gxc#!class::t fields #f))
  (declare-type
   gxc#&!class-constructor-set!
   (@mutator gxc#!class::t constructor #f))
  (declare-type gxc#&!class-struct?-set! (@mutator gxc#!class::t struct? #f))
  (declare-type gxc#&!class-final?-set! (@mutator gxc#!class::t final? #f))
  (declare-type gxc#&!class-system?-set! (@mutator gxc#!class::t system? #f))
  (declare-type
   gxc#&!class-metaclass-set!
   (@mutator gxc#!class::t metaclass #f))
  (declare-type gxc#&!class-methods-set! (@mutator gxc#!class::t methods #f))
  (declare-type gxc#&!class-id-set! (@mutator gxc#!class::t id #f))
  (declare-class
   gxc#!predicate::t
   (@class gxc#!predicate::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t object::t t::t)
           ()
           (id signature)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gxc#!predicate:::init!))))
  (declare-type
   gxc#!predicate::t
   (optimizer-resolve-class '(typedecl gxc#!predicate::t) 'class::t))
  (declare-type gxc#!predicate? (@predicate gxc#!predicate::t))
  (declare-type gxc#make-!predicate (@constructor gxc#!predicate::t))
  (declare-type
   gxc#!predicate-signature
   (@accessor gxc#!predicate::t signature #t))
  (declare-type gxc#!predicate-id (@accessor gxc#!predicate::t id #t))
  (declare-type
   gxc#!predicate-signature-set!
   (@mutator gxc#!predicate::t signature #t))
  (declare-type gxc#!predicate-id-set! (@mutator gxc#!predicate::t id #t))
  (declare-type
   gxc#&!predicate-signature
   (@accessor gxc#!predicate::t signature #f))
  (declare-type gxc#&!predicate-id (@accessor gxc#!predicate::t id #f))
  (declare-type
   gxc#&!predicate-signature-set!
   (@mutator gxc#!predicate::t signature #f))
  (declare-type gxc#&!predicate-id-set! (@mutator gxc#!predicate::t id #f))
  (declare-class
   gxc#!constructor::t
   (@class gxc#!constructor::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t object::t t::t)
           ()
           (id signature)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gxc#!constructor:::init!))))
  (declare-type
   gxc#!constructor::t
   (optimizer-resolve-class '(typedecl gxc#!constructor::t) 'class::t))
  (declare-type gxc#!constructor? (@predicate gxc#!constructor::t))
  (declare-type gxc#make-!constructor (@constructor gxc#!constructor::t))
  (declare-type
   gxc#!constructor-signature
   (@accessor gxc#!constructor::t signature #t))
  (declare-type gxc#!constructor-id (@accessor gxc#!constructor::t id #t))
  (declare-type
   gxc#!constructor-signature-set!
   (@mutator gxc#!constructor::t signature #t))
  (declare-type gxc#!constructor-id-set! (@mutator gxc#!constructor::t id #t))
  (declare-type
   gxc#&!constructor-signature
   (@accessor gxc#!constructor::t signature #f))
  (declare-type gxc#&!constructor-id (@accessor gxc#!constructor::t id #f))
  (declare-type
   gxc#&!constructor-signature-set!
   (@mutator gxc#!constructor::t signature #f))
  (declare-type gxc#&!constructor-id-set! (@mutator gxc#!constructor::t id #f))
  (declare-class
   gxc#!accessor::t
   (@class gxc#!accessor::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t object::t t::t)
           (slot checked?)
           (id signature slot checked?)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gxc#!accessor:::init!))))
  (declare-type
   gxc#!accessor::t
   (optimizer-resolve-class '(typedecl gxc#!accessor::t) 'class::t))
  (declare-type gxc#!accessor? (@predicate gxc#!accessor::t))
  (declare-type gxc#make-!accessor (@constructor gxc#!accessor::t))
  (declare-type gxc#!accessor-slot (@accessor gxc#!accessor::t slot #t))
  (declare-type
   gxc#!accessor-checked?
   (@accessor gxc#!accessor::t checked? #t))
  (declare-type
   gxc#!accessor-signature
   (@accessor gxc#!accessor::t signature #t))
  (declare-type gxc#!accessor-id (@accessor gxc#!accessor::t id #t))
  (declare-type gxc#!accessor-slot-set! (@mutator gxc#!accessor::t slot #t))
  (declare-type
   gxc#!accessor-checked?-set!
   (@mutator gxc#!accessor::t checked? #t))
  (declare-type
   gxc#!accessor-signature-set!
   (@mutator gxc#!accessor::t signature #t))
  (declare-type gxc#!accessor-id-set! (@mutator gxc#!accessor::t id #t))
  (declare-type gxc#&!accessor-slot (@accessor gxc#!accessor::t slot #f))
  (declare-type
   gxc#&!accessor-checked?
   (@accessor gxc#!accessor::t checked? #f))
  (declare-type
   gxc#&!accessor-signature
   (@accessor gxc#!accessor::t signature #f))
  (declare-type gxc#&!accessor-id (@accessor gxc#!accessor::t id #f))
  (declare-type gxc#&!accessor-slot-set! (@mutator gxc#!accessor::t slot #f))
  (declare-type
   gxc#&!accessor-checked?-set!
   (@mutator gxc#!accessor::t checked? #f))
  (declare-type
   gxc#&!accessor-signature-set!
   (@mutator gxc#!accessor::t signature #f))
  (declare-type gxc#&!accessor-id-set! (@mutator gxc#!accessor::t id #f))
  (declare-class
   gxc#!mutator::t
   (@class gxc#!mutator::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t object::t t::t)
           (slot checked?)
           (id signature slot checked?)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gxc#!mutator:::init!))))
  (declare-type
   gxc#!mutator::t
   (optimizer-resolve-class '(typedecl gxc#!mutator::t) 'class::t))
  (declare-type gxc#!mutator? (@predicate gxc#!mutator::t))
  (declare-type gxc#make-!mutator (@constructor gxc#!mutator::t))
  (declare-type gxc#!mutator-slot (@accessor gxc#!mutator::t slot #t))
  (declare-type gxc#!mutator-checked? (@accessor gxc#!mutator::t checked? #t))
  (declare-type
   gxc#!mutator-signature
   (@accessor gxc#!mutator::t signature #t))
  (declare-type gxc#!mutator-id (@accessor gxc#!mutator::t id #t))
  (declare-type gxc#!mutator-slot-set! (@mutator gxc#!mutator::t slot #t))
  (declare-type
   gxc#!mutator-checked?-set!
   (@mutator gxc#!mutator::t checked? #t))
  (declare-type
   gxc#!mutator-signature-set!
   (@mutator gxc#!mutator::t signature #t))
  (declare-type gxc#!mutator-id-set! (@mutator gxc#!mutator::t id #t))
  (declare-type gxc#&!mutator-slot (@accessor gxc#!mutator::t slot #f))
  (declare-type gxc#&!mutator-checked? (@accessor gxc#!mutator::t checked? #f))
  (declare-type
   gxc#&!mutator-signature
   (@accessor gxc#!mutator::t signature #f))
  (declare-type gxc#&!mutator-id (@accessor gxc#!mutator::t id #f))
  (declare-type gxc#&!mutator-slot-set! (@mutator gxc#!mutator::t slot #f))
  (declare-type
   gxc#&!mutator-checked?-set!
   (@mutator gxc#!mutator::t checked? #f))
  (declare-type
   gxc#&!mutator-signature-set!
   (@mutator gxc#!mutator::t signature #f))
  (declare-type gxc#&!mutator-id-set! (@mutator gxc#!mutator::t id #f))
  (declare-class
   gxc#!interface::t
   (@class gxc#!interface::t
           (gxc#!type::t)
           (gxc#!type::t object::t t::t)
           (methods)
           (id methods)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   gxc#!interface::t
   (optimizer-resolve-class '(typedecl gxc#!interface::t) 'class::t))
  (declare-type gxc#!interface? (@predicate gxc#!interface::t))
  (declare-type gxc#make-!interface (@constructor gxc#!interface::t))
  (declare-type
   gxc#!interface-methods
   (@accessor gxc#!interface::t methods #t))
  (declare-type gxc#!interface-id (@accessor gxc#!interface::t id #t))
  (declare-type
   gxc#!interface-methods-set!
   (@mutator gxc#!interface::t methods #t))
  (declare-type gxc#!interface-id-set! (@mutator gxc#!interface::t id #t))
  (declare-type
   gxc#&!interface-methods
   (@accessor gxc#!interface::t methods #f))
  (declare-type gxc#&!interface-id (@accessor gxc#!interface::t id #f))
  (declare-type
   gxc#&!interface-methods-set!
   (@mutator gxc#!interface::t methods #f))
  (declare-type gxc#&!interface-id-set! (@mutator gxc#!interface::t id #f))
  (declare-class
   gxc#!lambda::t
   (@class gxc#!lambda::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t object::t t::t)
           (arity dispatch inline inline-typedecl)
           (id signature arity dispatch inline inline-typedecl)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gxc#!lambda:::init!))))
  (declare-type
   gxc#!lambda::t
   (optimizer-resolve-class '(typedecl gxc#!lambda::t) 'class::t))
  (declare-type gxc#!lambda? (@predicate gxc#!lambda::t))
  (declare-type gxc#make-!lambda (@constructor gxc#!lambda::t))
  (declare-type gxc#!lambda-arity (@accessor gxc#!lambda::t arity #t))
  (declare-type gxc#!lambda-dispatch (@accessor gxc#!lambda::t dispatch #t))
  (declare-type gxc#!lambda-inline (@accessor gxc#!lambda::t inline #t))
  (declare-type
   gxc#!lambda-inline-typedecl
   (@accessor gxc#!lambda::t inline-typedecl #t))
  (declare-type gxc#!lambda-signature (@accessor gxc#!lambda::t signature #t))
  (declare-type gxc#!lambda-id (@accessor gxc#!lambda::t id #t))
  (declare-type gxc#!lambda-arity-set! (@mutator gxc#!lambda::t arity #t))
  (declare-type
   gxc#!lambda-dispatch-set!
   (@mutator gxc#!lambda::t dispatch #t))
  (declare-type gxc#!lambda-inline-set! (@mutator gxc#!lambda::t inline #t))
  (declare-type
   gxc#!lambda-inline-typedecl-set!
   (@mutator gxc#!lambda::t inline-typedecl #t))
  (declare-type
   gxc#!lambda-signature-set!
   (@mutator gxc#!lambda::t signature #t))
  (declare-type gxc#!lambda-id-set! (@mutator gxc#!lambda::t id #t))
  (declare-type gxc#&!lambda-arity (@accessor gxc#!lambda::t arity #f))
  (declare-type gxc#&!lambda-dispatch (@accessor gxc#!lambda::t dispatch #f))
  (declare-type gxc#&!lambda-inline (@accessor gxc#!lambda::t inline #f))
  (declare-type
   gxc#&!lambda-inline-typedecl
   (@accessor gxc#!lambda::t inline-typedecl #f))
  (declare-type gxc#&!lambda-signature (@accessor gxc#!lambda::t signature #f))
  (declare-type gxc#&!lambda-id (@accessor gxc#!lambda::t id #f))
  (declare-type gxc#&!lambda-arity-set! (@mutator gxc#!lambda::t arity #f))
  (declare-type
   gxc#&!lambda-dispatch-set!
   (@mutator gxc#!lambda::t dispatch #f))
  (declare-type gxc#&!lambda-inline-set! (@mutator gxc#!lambda::t inline #f))
  (declare-type
   gxc#&!lambda-inline-typedecl-set!
   (@mutator gxc#!lambda::t inline-typedecl #f))
  (declare-type
   gxc#&!lambda-signature-set!
   (@mutator gxc#!lambda::t signature #f))
  (declare-type gxc#&!lambda-id-set! (@mutator gxc#!lambda::t id #f))
  (declare-class
   gxc#!case-lambda::t
   (@class gxc#!case-lambda::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t object::t t::t)
           (clauses)
           (id signature clauses)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gxc#!case-lambda:::init!))))
  (declare-type
   gxc#!case-lambda::t
   (optimizer-resolve-class '(typedecl gxc#!case-lambda::t) 'class::t))
  (declare-type gxc#!case-lambda? (@predicate gxc#!case-lambda::t))
  (declare-type gxc#make-!case-lambda (@constructor gxc#!case-lambda::t))
  (declare-type
   gxc#!case-lambda-clauses
   (@accessor gxc#!case-lambda::t clauses #t))
  (declare-type
   gxc#!case-lambda-signature
   (@accessor gxc#!case-lambda::t signature #t))
  (declare-type gxc#!case-lambda-id (@accessor gxc#!case-lambda::t id #t))
  (declare-type
   gxc#!case-lambda-clauses-set!
   (@mutator gxc#!case-lambda::t clauses #t))
  (declare-type
   gxc#!case-lambda-signature-set!
   (@mutator gxc#!case-lambda::t signature #t))
  (declare-type gxc#!case-lambda-id-set! (@mutator gxc#!case-lambda::t id #t))
  (declare-type
   gxc#&!case-lambda-clauses
   (@accessor gxc#!case-lambda::t clauses #f))
  (declare-type
   gxc#&!case-lambda-signature
   (@accessor gxc#!case-lambda::t signature #f))
  (declare-type gxc#&!case-lambda-id (@accessor gxc#!case-lambda::t id #f))
  (declare-type
   gxc#&!case-lambda-clauses-set!
   (@mutator gxc#!case-lambda::t clauses #f))
  (declare-type
   gxc#&!case-lambda-signature-set!
   (@mutator gxc#!case-lambda::t signature #f))
  (declare-type gxc#&!case-lambda-id-set! (@mutator gxc#!case-lambda::t id #f))
  (declare-class
   gxc#!kw-lambda::t
   (@class gxc#!kw-lambda::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t object::t t::t)
           (table dispatch)
           (id signature table dispatch)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gxc#!kw-lambda:::init!))))
  (declare-type
   gxc#!kw-lambda::t
   (optimizer-resolve-class '(typedecl gxc#!kw-lambda::t) 'class::t))
  (declare-type gxc#!kw-lambda? (@predicate gxc#!kw-lambda::t))
  (declare-type gxc#make-!kw-lambda (@constructor gxc#!kw-lambda::t))
  (declare-type gxc#!kw-lambda-table (@accessor gxc#!kw-lambda::t table #t))
  (declare-type
   gxc#!kw-lambda-dispatch
   (@accessor gxc#!kw-lambda::t dispatch #t))
  (declare-type
   gxc#!kw-lambda-signature
   (@accessor gxc#!kw-lambda::t signature #t))
  (declare-type gxc#!kw-lambda-id (@accessor gxc#!kw-lambda::t id #t))
  (declare-type
   gxc#!kw-lambda-table-set!
   (@mutator gxc#!kw-lambda::t table #t))
  (declare-type
   gxc#!kw-lambda-dispatch-set!
   (@mutator gxc#!kw-lambda::t dispatch #t))
  (declare-type
   gxc#!kw-lambda-signature-set!
   (@mutator gxc#!kw-lambda::t signature #t))
  (declare-type gxc#!kw-lambda-id-set! (@mutator gxc#!kw-lambda::t id #t))
  (declare-type gxc#&!kw-lambda-table (@accessor gxc#!kw-lambda::t table #f))
  (declare-type
   gxc#&!kw-lambda-dispatch
   (@accessor gxc#!kw-lambda::t dispatch #f))
  (declare-type
   gxc#&!kw-lambda-signature
   (@accessor gxc#!kw-lambda::t signature #f))
  (declare-type gxc#&!kw-lambda-id (@accessor gxc#!kw-lambda::t id #f))
  (declare-type
   gxc#&!kw-lambda-table-set!
   (@mutator gxc#!kw-lambda::t table #f))
  (declare-type
   gxc#&!kw-lambda-dispatch-set!
   (@mutator gxc#!kw-lambda::t dispatch #f))
  (declare-type
   gxc#&!kw-lambda-signature-set!
   (@mutator gxc#!kw-lambda::t signature #f))
  (declare-type gxc#&!kw-lambda-id-set! (@mutator gxc#!kw-lambda::t id #f))
  (declare-class
   gxc#!kw-lambda-primary::t
   (@class gxc#!kw-lambda-primary::t
           (gxc#!procedure::t)
           (gxc#!procedure::t gxc#!type::t object::t t::t)
           (keys main)
           (id signature keys main)
           :init!
           #t
           #f
           #f
           #f
           ((:init! . gxc#!kw-lambda-primary:::init!))))
  (declare-type
   gxc#!kw-lambda-primary::t
   (optimizer-resolve-class '(typedecl gxc#!kw-lambda-primary::t) 'class::t))
  (declare-type gxc#!kw-lambda-primary? (@predicate gxc#!kw-lambda-primary::t))
  (declare-type
   gxc#make-!kw-lambda-primary
   (@constructor gxc#!kw-lambda-primary::t))
  (declare-type
   gxc#!kw-lambda-primary-keys
   (@accessor gxc#!kw-lambda-primary::t keys #t))
  (declare-type
   gxc#!kw-lambda-primary-main
   (@accessor gxc#!kw-lambda-primary::t main #t))
  (declare-type
   gxc#!kw-lambda-primary-signature
   (@accessor gxc#!kw-lambda-primary::t signature #t))
  (declare-type
   gxc#!kw-lambda-primary-id
   (@accessor gxc#!kw-lambda-primary::t id #t))
  (declare-type
   gxc#!kw-lambda-primary-keys-set!
   (@mutator gxc#!kw-lambda-primary::t keys #t))
  (declare-type
   gxc#!kw-lambda-primary-main-set!
   (@mutator gxc#!kw-lambda-primary::t main #t))
  (declare-type
   gxc#!kw-lambda-primary-signature-set!
   (@mutator gxc#!kw-lambda-primary::t signature #t))
  (declare-type
   gxc#!kw-lambda-primary-id-set!
   (@mutator gxc#!kw-lambda-primary::t id #t))
  (declare-type
   gxc#&!kw-lambda-primary-keys
   (@accessor gxc#!kw-lambda-primary::t keys #f))
  (declare-type
   gxc#&!kw-lambda-primary-main
   (@accessor gxc#!kw-lambda-primary::t main #f))
  (declare-type
   gxc#&!kw-lambda-primary-signature
   (@accessor gxc#!kw-lambda-primary::t signature #f))
  (declare-type
   gxc#&!kw-lambda-primary-id
   (@accessor gxc#!kw-lambda-primary::t id #f))
  (declare-type
   gxc#&!kw-lambda-primary-keys-set!
   (@mutator gxc#!kw-lambda-primary::t keys #f))
  (declare-type
   gxc#&!kw-lambda-primary-main-set!
   (@mutator gxc#!kw-lambda-primary::t main #f))
  (declare-type
   gxc#&!kw-lambda-primary-signature-set!
   (@mutator gxc#!kw-lambda-primary::t signature #f))
  (declare-type
   gxc#&!kw-lambda-primary-id-set!
   (@mutator gxc#!kw-lambda-primary::t id #f))
  (declare-class
   gxc#!primitive::t
   (@class gxc#!primitive::t () (object::t t::t) () () #f #f #f #f #f #f))
  (declare-type
   gxc#!primitive::t
   (optimizer-resolve-class '(typedecl gxc#!primitive::t) 'class::t))
  (declare-type gxc#!primitive? (@predicate gxc#!primitive::t))
  (declare-type gxc#make-!primitive (@constructor gxc#!primitive::t))
  (declare-class
   gxc#!primitive-lambda::t
   (@class gxc#!primitive-lambda::t
           (gxc#!primitive::t gxc#!lambda::t)
           (gxc#!primitive::t
            gxc#!lambda::t
            gxc#!procedure::t
            gxc#!type::t
            object::t
            t::t)
           ()
           (id signature arity dispatch inline inline-typedecl)
           :init!
           #f
           #f
           #f
           #f
           ((:init! . gxc#!primitive-lambda:::init!))))
  (declare-type
   gxc#!primitive-lambda::t
   (optimizer-resolve-class '(typedecl gxc#!primitive-lambda::t) 'class::t))
  (declare-type gxc#!primitive-lambda? (@predicate gxc#!primitive-lambda::t))
  (declare-type
   gxc#make-!primitive-lambda
   (@constructor gxc#!primitive-lambda::t))
  (declare-type
   gxc#!primitive-lambda-arity
   (@accessor gxc#!primitive-lambda::t arity #t))
  (declare-type
   gxc#!primitive-lambda-dispatch
   (@accessor gxc#!primitive-lambda::t dispatch #t))
  (declare-type
   gxc#!primitive-lambda-inline
   (@accessor gxc#!primitive-lambda::t inline #t))
  (declare-type
   gxc#!primitive-lambda-inline-typedecl
   (@accessor gxc#!primitive-lambda::t inline-typedecl #t))
  (declare-type
   gxc#!primitive-lambda-signature
   (@accessor gxc#!primitive-lambda::t signature #t))
  (declare-type
   gxc#!primitive-lambda-id
   (@accessor gxc#!primitive-lambda::t id #t))
  (declare-type
   gxc#!primitive-lambda-arity-set!
   (@mutator gxc#!primitive-lambda::t arity #t))
  (declare-type
   gxc#!primitive-lambda-dispatch-set!
   (@mutator gxc#!primitive-lambda::t dispatch #t))
  (declare-type
   gxc#!primitive-lambda-inline-set!
   (@mutator gxc#!primitive-lambda::t inline #t))
  (declare-type
   gxc#!primitive-lambda-inline-typedecl-set!
   (@mutator gxc#!primitive-lambda::t inline-typedecl #t))
  (declare-type
   gxc#!primitive-lambda-signature-set!
   (@mutator gxc#!primitive-lambda::t signature #t))
  (declare-type
   gxc#!primitive-lambda-id-set!
   (@mutator gxc#!primitive-lambda::t id #t))
  (declare-type
   gxc#&!primitive-lambda-arity
   (@accessor gxc#!primitive-lambda::t arity #f))
  (declare-type
   gxc#&!primitive-lambda-dispatch
   (@accessor gxc#!primitive-lambda::t dispatch #f))
  (declare-type
   gxc#&!primitive-lambda-inline
   (@accessor gxc#!primitive-lambda::t inline #f))
  (declare-type
   gxc#&!primitive-lambda-inline-typedecl
   (@accessor gxc#!primitive-lambda::t inline-typedecl #f))
  (declare-type
   gxc#&!primitive-lambda-signature
   (@accessor gxc#!primitive-lambda::t signature #f))
  (declare-type
   gxc#&!primitive-lambda-id
   (@accessor gxc#!primitive-lambda::t id #f))
  (declare-type
   gxc#&!primitive-lambda-arity-set!
   (@mutator gxc#!primitive-lambda::t arity #f))
  (declare-type
   gxc#&!primitive-lambda-dispatch-set!
   (@mutator gxc#!primitive-lambda::t dispatch #f))
  (declare-type
   gxc#&!primitive-lambda-inline-set!
   (@mutator gxc#!primitive-lambda::t inline #f))
  (declare-type
   gxc#&!primitive-lambda-inline-typedecl-set!
   (@mutator gxc#!primitive-lambda::t inline-typedecl #f))
  (declare-type
   gxc#&!primitive-lambda-signature-set!
   (@mutator gxc#!primitive-lambda::t signature #f))
  (declare-type
   gxc#&!primitive-lambda-id-set!
   (@mutator gxc#!primitive-lambda::t id #f))
  (declare-class
   gxc#!primitive-case-lambda::t
   (@class gxc#!primitive-case-lambda::t
           (gxc#!primitive::t gxc#!case-lambda::t)
           (gxc#!primitive::t
            gxc#!case-lambda::t
            gxc#!procedure::t
            gxc#!type::t
            object::t
            t::t)
           ()
           (id signature clauses)
           :init!
           #f
           #f
           #f
           #f
           ((:init! . gxc#!primitive-case-lambda:::init!))))
  (declare-type
   gxc#!primitive-case-lambda::t
   (optimizer-resolve-class
    '(typedecl gxc#!primitive-case-lambda::t)
    'class::t))
  (declare-type
   gxc#!primitive-case-lambda?
   (@predicate gxc#!primitive-case-lambda::t))
  (declare-type
   gxc#make-!primitive-case-lambda
   (@constructor gxc#!primitive-case-lambda::t))
  (declare-type
   gxc#!primitive-case-lambda-clauses
   (@accessor gxc#!primitive-case-lambda::t clauses #t))
  (declare-type
   gxc#!primitive-case-lambda-signature
   (@accessor gxc#!primitive-case-lambda::t signature #t))
  (declare-type
   gxc#!primitive-case-lambda-id
   (@accessor gxc#!primitive-case-lambda::t id #t))
  (declare-type
   gxc#!primitive-case-lambda-clauses-set!
   (@mutator gxc#!primitive-case-lambda::t clauses #t))
  (declare-type
   gxc#!primitive-case-lambda-signature-set!
   (@mutator gxc#!primitive-case-lambda::t signature #t))
  (declare-type
   gxc#!primitive-case-lambda-id-set!
   (@mutator gxc#!primitive-case-lambda::t id #t))
  (declare-type
   gxc#&!primitive-case-lambda-clauses
   (@accessor gxc#!primitive-case-lambda::t clauses #f))
  (declare-type
   gxc#&!primitive-case-lambda-signature
   (@accessor gxc#!primitive-case-lambda::t signature #f))
  (declare-type
   gxc#&!primitive-case-lambda-id
   (@accessor gxc#!primitive-case-lambda::t id #f))
  (declare-type
   gxc#&!primitive-case-lambda-clauses-set!
   (@mutator gxc#!primitive-case-lambda::t clauses #f))
  (declare-type
   gxc#&!primitive-case-lambda-signature-set!
   (@mutator gxc#!primitive-case-lambda::t signature #f))
  (declare-type
   gxc#&!primitive-case-lambda-id-set!
   (@mutator gxc#!primitive-case-lambda::t id #f))
  (declare-type
   gxc#!abort:::init!
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t) unchecked: #f)))
  (declare-type
   gxc#!class-meta:::init!
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t t::t) unchecked: #f)))
  (declare-type
   gxc#!class:::init!__0
   (@lambda 9
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t t::t t::t t::t t::t t::t)
             unchecked:
             #f)))
  (declare-type
   gxc#!class:::init!__1
   (@lambda 12
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t t::t t::t t::t t::t t::t t::t t::t t::t)
             unchecked:
             #f)))
  (declare-type
   gxc#!class:::init!
   (@case-lambda
    (9
     gxc#!class:::init!__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (12
     gxc#!class:::init!__1
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   gxc#compute-class-fields
   (@lambda 4
            #f
            signature:
            (return: list::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gxc#!class-slot->field-offset (@lambda 2 #f))
  (declare-type gxc#!class-slot-find-struct (@lambda 2 #f))
  (declare-type
   gxc#!class-struct-slot?
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#!predicate:::init!
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t t::t) unchecked: #f)))
  (declare-type
   gxc#!constructor:::init!
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t t::t) unchecked: #f)))
  (declare-type
   gxc#!accessor:::init!
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t)
             unchecked:
             #f)))
  (declare-type
   gxc#!mutator:::init!
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t)
             unchecked:
             #f)))
  (declare-type
   gxc#!lambda:::init!__%
   (@lambda 5
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t t::t)
             unchecked:
             #f)))
  (declare-type
   gxc#!lambda:::init!__@
   (@kw-lambda-dispatch (signature:) gxc#!lambda:::init!__%))
  (declare-type
   gxc#!lambda:::init!
   (@kw-lambda (signature:) gxc#!lambda:::init!__@))
  (declare-type
   gxc#!case-lambda:::init!__%
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t t::t)
             unchecked:
             #f)))
  (declare-type
   gxc#!case-lambda:::init!__@
   (@kw-lambda-dispatch (signature:) gxc#!case-lambda:::init!__%))
  (declare-type
   gxc#!case-lambda:::init!
   (@kw-lambda (signature:) gxc#!case-lambda:::init!__@))
  (declare-type
   gxc#!kw-lambda:::init!
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t)
             unchecked:
             #f)))
  (declare-type
   gxc#!kw-lambda-primary:::init!
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t t::t)
             unchecked:
             #f)))
  (declare-type
   gxc#!primitive-lambda:::init!
   (@kw-lambda (signature:) gxc#!lambda:::init!__@))
  (declare-type
   gxc#!primitive-case-lambda:::init!
   (@kw-lambda (signature:) gxc#!case-lambda:::init!__@))
  (declare-type
   gxc#!primitive-predicate:::init!
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: (t::t t::t) unchecked: #f)))
  (declare-type gxc#!class-method-table (@lambda 1 #f))
  (declare-type
   gxc#!class-lookup-method
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gxc#!type-subtype? (@lambda 2 #f))
  (declare-type gxc#!class-subclass? (@lambda 2 #f))
  (declare-type
   gxc#!interface-instance?
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#optimizer-declare-type!__%
   (@lambda 3
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#optimizer-declare-type!__0
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#optimizer-declare-type!
   (@case-lambda
    (2
     gxc#optimizer-declare-type!__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (3
     gxc#optimizer-declare-type!__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   gxc#optimizer-declare-class!
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#optimizer-declare-builtin-class!
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#optimizer-clear-type!
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gxc#optimizer-declare-method!__% (@lambda 4 #f))
  (declare-type gxc#optimizer-declare-method!__0 (@lambda 3 #f))
  (declare-type
   gxc#optimizer-declare-method!
   (@case-lambda
    (3 gxc#optimizer-declare-method!__0)
    (4 gxc#optimizer-declare-method!__%)))
  (declare-type
   gxc#optimizer-lookup-type
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gxc#optimizer-resolve-type (@lambda 1 #f))
  (declare-type
   gxc#optimizer-lookup-class
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#optimizer-resolve-class
   (@lambda 2
            #f
            signature:
            (return: gxc#!class::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#optimizer-lookup-class-name
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#optimizer-lookup-method
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#optimizer-top-level-method!
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#optimizer-top-level-method?
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f))))
