prelude: :gerbil/compiler/ssxi
package: gerbil/core

(begin
  (declare-type
   |gerbil/core/mop~MOP-1[1]#module-type-id|
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/core/mop~MOP-1)))
  (declare-type
   |gerbil/core/mop~MOP-1[1]#make-class-type-id|
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/core/mop~MOP-1)))
  (declare-type
   |gerbil/core/mop~MOP-1[1]#generate-typedef|
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/core/mop~MOP-1)))
  (declare-class
   gerbil/core/mop~MOP-2#class-type-info::t
   (@class gerbil.core#class-type-info::t
           ()
           (object::t t::t)
           (id name
               super
               slots
               precedence-list
               ordered-slots
               struct?
               final?
               system?
               metaclass
               constructor-method
               type-descriptor
               constructor
               predicate
               accessors
               mutators
               unchecked-accessors
               unchecked-mutators
               slot-types
               slot-defaults
               slot-contracts)
           (id name
               super
               slots
               precedence-list
               ordered-slots
               struct?
               final?
               system?
               metaclass
               constructor-method
               type-descriptor
               constructor
               predicate
               accessors
               mutators
               unchecked-accessors
               unchecked-mutators
               slot-types
               slot-defaults
               slot-contracts)
           #f
           #f
           #f
           #f
           #f
           #f))
  (declare-type
   gerbil/core/mop~MOP-2#class-type-info::t
   (optimizer-resolve-class
    '(typedecl gerbil/core/mop~MOP-2#class-type-info::t)
    'class::t))
  (declare-type
   gerbil/core/mop~MOP-2#class-type-info?
   (@predicate gerbil/core/mop~MOP-2#class-type-info::t))
  (declare-type
   gerbil/core/mop~MOP-2#make-class-type-info
   (@constructor gerbil/core/mop~MOP-2#class-type-info::t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-id
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t id #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-name
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t name #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-super
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t super #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-slots
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t slots #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-precedence-list
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t precedence-list #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-ordered-slots
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t ordered-slots #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-struct?
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t struct? #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-final?
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t final? #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-system?
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t system? #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-metaclass
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t metaclass #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-constructor-method
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t constructor-method #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-descriptor
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t type-descriptor #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-constructor
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t constructor #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-predicate
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t predicate #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-accessors
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t accessors #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-mutators
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t mutators #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-unchecked-accessors
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t unchecked-accessors #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-unchecked-mutators
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t unchecked-mutators #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-slot-types
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t slot-types #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-slot-defaults
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t slot-defaults #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-slot-contracts
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t slot-contracts #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-id-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t id #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-name-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t name #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-super-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t super #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-slots-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t slots #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-precedence-list-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t precedence-list #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-ordered-slots-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t ordered-slots #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-struct?-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t struct? #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-final?-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t final? #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-system?-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t system? #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-metaclass-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t metaclass #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-constructor-method-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t constructor-method #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-descriptor-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t type-descriptor #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-constructor-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t constructor #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-predicate-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t predicate #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-accessors-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t accessors #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-mutators-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t mutators #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-unchecked-accessors-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t unchecked-accessors #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-unchecked-mutators-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t unchecked-mutators #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-slot-types-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t slot-types #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-slot-defaults-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t slot-defaults #t))
  (declare-type
   gerbil/core/mop~MOP-2#!class-type-slot-contracts-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t slot-contracts #t))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-id
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t id #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-name
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t name #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-super
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t super #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-slots
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t slots #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-precedence-list
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t precedence-list #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-ordered-slots
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t ordered-slots #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-struct?
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t struct? #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-final?
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t final? #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-system?
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t system? #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-metaclass
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t metaclass #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-constructor-method
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t constructor-method #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-descriptor
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t type-descriptor #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-constructor
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t constructor #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-predicate
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t predicate #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-accessors
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t accessors #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-mutators
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t mutators #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-unchecked-accessors
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t unchecked-accessors #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-unchecked-mutators
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t unchecked-mutators #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-slot-types
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t slot-types #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-slot-defaults
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t slot-defaults #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-slot-contracts
   (@accessor gerbil/core/mop~MOP-2#class-type-info::t slot-contracts #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-id-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t id #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-name-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t name #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-super-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t super #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-slots-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t slots #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-precedence-list-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t precedence-list #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-ordered-slots-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t ordered-slots #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-struct?-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t struct? #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-final?-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t final? #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-system?-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t system? #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-metaclass-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t metaclass #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-constructor-method-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t constructor-method #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-descriptor-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t type-descriptor #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-constructor-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t constructor #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-predicate-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t predicate #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-accessors-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t accessors #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-mutators-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t mutators #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-unchecked-accessors-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t unchecked-accessors #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-unchecked-mutators-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t unchecked-mutators #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-slot-types-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t slot-types #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-slot-defaults-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t slot-defaults #f))
  (declare-type
   gerbil/core/mop~MOP-2#&!class-type-slot-contracts-set!
   (@mutator gerbil/core/mop~MOP-2#class-type-info::t slot-contracts #f))
  (declare-type
   gerbil/core/mop~MOP-2#class-type-info::apply-macro-expander
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/core/mop~MOP-2)))
  (declare-type
   gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/core/mop~MOP-2)))
  (declare-type
   gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/core/mop~MOP-2)))
  (declare-type
   gerbil/core/mop~MOP-2#syntax-local-class-type-info?
   (@case-lambda
    (1
     gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/core/mop~MOP-2))
    (2
     gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
     signature:
     (return:
      t::t
      effect:
      #f
      arguments:
      #f
      unchecked:
      #f
      origin:
      gerbil/core/mop~MOP-2))))
  (declare-type
   |gerbil/core/mop~MOP-4[1]#typedef-body?|
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/core/mop~MOP-4)))
  (declare-type
   |gerbil/core/mop~MOP-4[1]#generate-defclass|
   (@lambda 5
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/core/mop~MOP-4))))
