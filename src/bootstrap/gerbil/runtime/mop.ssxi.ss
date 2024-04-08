prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type
   type-flag-opaque
   (optimizer-resolve-class '(typedecl type-flag-opaque) 'fixnum::t))
  (declare-type
   type-flag-extensible
   (optimizer-resolve-class '(typedecl type-flag-extensible) 'fixnum::t))
  (declare-type
   type-flag-macros
   (optimizer-resolve-class '(typedecl type-flag-macros) 'fixnum::t))
  (declare-type
   type-flag-concrete
   (optimizer-resolve-class '(typedecl type-flag-concrete) 'fixnum::t))
  (declare-type
   type-flag-id
   (optimizer-resolve-class '(typedecl type-flag-id) 'fixnum::t))
  (declare-type
   class-type-flag-struct
   (optimizer-resolve-class '(typedecl class-type-flag-struct) 'fixnum::t))
  (declare-type
   class-type-flag-sealed
   (optimizer-resolve-class '(typedecl class-type-flag-sealed) 'fixnum::t))
  (declare-type
   class-type-flag-metaclass
   (optimizer-resolve-class '(typedecl class-type-flag-metaclass) 'fixnum::t))
  (declare-type
   class-type-flag-system
   (optimizer-resolve-class '(typedecl class-type-flag-system) 'fixnum::t))
  (declare-class t::t (@class t () () () () #f #f #f #f #f #f))
  (declare-type t::t (optimizer-resolve-class '(typedecl t::t) 'class::t))
  (declare-class
   class::t
   (@class class
           (t::t)
           (t::t)
           (id name
               super
               flags
               fields
               precedence-list
               slot-vector
               slot-table
               properties
               constructor
               methods)
           (id name
               super
               flags
               fields
               precedence-list
               slot-vector
               slot-table
               properties
               constructor
               methods)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   class::t
   (optimizer-resolve-class '(typedecl class::t) 'class::t))
  (declare-class
   object::t
   (@class object (t::t) (t::t) () () #f #f #f #f #f #f))
  (declare-type
   object::t
   (optimizer-resolve-class '(typedecl object::t) 'class::t))
  (declare-type class-type? (@predicate class::t))
  (declare-type
   class-type=?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (class::t class::t)
             unchecked:
             __class-type=?
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class-type=?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   type-opaque?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (t::t)
             unchecked:
             __type-opaque?
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __type-opaque?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   type-extensible?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (t::t)
             unchecked:
             __type-extensible?
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __type-extensible?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   class-type-final?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (class::t)
             unchecked:
             __class-type-final?
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class-type-final?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   class-type-struct?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (class::t)
             unchecked:
             __class-type-struct?
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class-type-struct?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   class-type-sealed?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (class::t)
             unchecked:
             __class-type-sealed?
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class-type-sealed?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   class-type-metaclass?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (class::t)
             unchecked:
             __class-type-metaclass?
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class-type-metaclass?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   class-type-system?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (class::t)
             unchecked:
             __class-type-system?
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class-type-system?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-class-type-descriptor
   (@lambda 9
            #f
            signature:
            (return:
             class::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type class-type-id (@accessor class::t id #t))
  (declare-type &class-type-id (@accessor class::t id #f))
  (declare-type class-type-id-set! (@mutator class::t id #t))
  (declare-type &class-type-id-set! (@mutator class::t id #f))
  (declare-type class-type-name (@accessor class::t name #t))
  (declare-type &class-type-name (@accessor class::t name #f))
  (declare-type class-type-name-set! (@mutator class::t name #t))
  (declare-type &class-type-name-set! (@mutator class::t name #f))
  (declare-type class-type-flags (@accessor class::t flags #t))
  (declare-type &class-type-flags (@accessor class::t flags #f))
  (declare-type class-type-flags-set! (@mutator class::t flags #t))
  (declare-type &class-type-flags-set! (@mutator class::t flags #f))
  (declare-type class-type-super (@accessor class::t super #t))
  (declare-type &class-type-super (@accessor class::t super #f))
  (declare-type class-type-super-set! (@mutator class::t super #t))
  (declare-type &class-type-super-set! (@mutator class::t super #f))
  (declare-type class-type-fields (@accessor class::t fields #t))
  (declare-type &class-type-fields (@accessor class::t fields #f))
  (declare-type class-type-fields-set! (@mutator class::t fields #t))
  (declare-type &class-type-fields-set! (@mutator class::t fields #f))
  (declare-type
   class-type-precedence-list
   (@accessor class::t precedence-list #t))
  (declare-type
   &class-type-precedence-list
   (@accessor class::t precedence-list #f))
  (declare-type
   class-type-precedence-list-set!
   (@mutator class::t precedence-list #t))
  (declare-type
   &class-type-precedence-list-set!
   (@mutator class::t precedence-list #f))
  (declare-type class-type-slot-vector (@accessor class::t slot-vector #t))
  (declare-type &class-type-slot-vector (@accessor class::t slot-vector #f))
  (declare-type class-type-slot-vector-set! (@mutator class::t slot-vector #t))
  (declare-type
   &class-type-slot-vector-set!
   (@mutator class::t slot-vector #f))
  (declare-type class-type-slot-table (@accessor class::t slot-table #t))
  (declare-type &class-type-slot-table (@accessor class::t slot-table #f))
  (declare-type class-type-slot-table-set! (@mutator class::t slot-table #t))
  (declare-type &class-type-slot-table-set! (@mutator class::t slot-table #f))
  (declare-type class-type-properties (@accessor class::t properties #t))
  (declare-type &class-type-properties (@accessor class::t properties #f))
  (declare-type class-type-properties-set! (@mutator class::t properties #t))
  (declare-type &class-type-properties-set! (@mutator class::t properties #f))
  (declare-type class-type-constructor (@accessor class::t constructor #t))
  (declare-type &class-type-constructor (@accessor class::t constructor #f))
  (declare-type class-type-constructor-set! (@mutator class::t constructor #t))
  (declare-type
   &class-type-constructor-set!
   (@mutator class::t constructor #f))
  (declare-type class-type-methods (@accessor class::t methods #t))
  (declare-type &class-type-methods (@accessor class::t methods #f))
  (declare-type class-type-methods-set! (@mutator class::t methods #t))
  (declare-type &class-type-methods-set! (@mutator class::t methods #f))
  (declare-type
   class-type-slot-list
   (@lambda 1
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             (class::t)
             unchecked:
             __class-type-slot-list
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class-type-slot-list
   (@lambda 1
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   class-type-field-count
   (@lambda 1
            #f
            signature:
            (return:
             fixnum::t
             effect:
             #f
             arguments:
             (class::t)
             unchecked:
             __class-type-field-count
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class-type-field-count
   (@lambda 1
            #f
            signature:
            (return:
             fixnum::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   class-type-seal!
   (@lambda 1
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             (class::t)
             unchecked:
             __class-type-seal!
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class-type-seal!
   (@lambda 1
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   substruct?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (class::t class::t)
             unchecked:
             __substruct?
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __substruct?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   base-struct/1
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
             gerbil/runtime/mop)))
  (declare-type
   base-struct/2
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
             gerbil/runtime/mop)))
  (declare-type
   base-struct/list
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
             gerbil/runtime/mop)))
  (declare-type
   base-struct
   (@lambda (0)
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
             gerbil/runtime/mop)))
  (declare-type
   find-super-constructor
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
             gerbil/runtime/mop)))
  (declare-type
   compute-class-slots
   (@lambda 2
            #f
            signature:
            (return:
             values::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-class-type
   (@lambda 6
            #f
            signature:
            (return:
             class::t
             effect:
             #f
             arguments:
             (symbol::t symbol::t list::t list::t list::t t::t)
             unchecked:
             __make-class-type
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __make-class-type
   (@lambda 6
            #f
            signature:
            (return:
             class::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   class-precedence-list
   (@lambda 1
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             (class::t)
             unchecked:
             __class-precedence-list
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class-precedence-list
   (@lambda 1
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   compute-precedence-list
   (@lambda 1
            #f
            signature:
            (return:
             values::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-class-predicate
   (@lambda 1
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             (class::t)
             unchecked:
             __make-class-predicate
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __make-class-predicate
   (@lambda 1
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-class-slot-accessor
   (@lambda 2
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             (class::t symbol::t)
             unchecked:
             __make-class-slot-accessor
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __make-class-slot-accessor
   (@lambda 2
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-class-slot-mutator
   (@lambda 2
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             (class::t symbol::t)
             unchecked:
             __make-class-slot-mutator
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __make-class-slot-mutator
   (@lambda 2
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-class-slot-unchecked-accessor
   (@lambda 2
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             (class::t symbol::t)
             unchecked:
             __make-class-slot-unchecked-accessor
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __make-class-slot-unchecked-accessor
   (@lambda 2
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-class-slot-unchecked-mutator
   (@lambda 2
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             (class::t symbol::t)
             unchecked:
             __make-class-slot-unchecked-mutator
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __make-class-slot-unchecked-mutator
   (@lambda 2
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   not-an-instance__%
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   not-an-instance__0
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
             gerbil/runtime/mop)))
  (declare-type
   not-an-instance
   (@case-lambda
    (2
     not-an-instance__0
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
      gerbil/runtime/mop))
    (3
     not-an-instance__%
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
      gerbil/runtime/mop))))
  (declare-type
   make-final-slot-accessor
   (@lambda 3
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-final-slot-mutator
   (@lambda 3
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-struct-slot-accessor
   (@lambda 3
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-struct-slot-mutator
   (@lambda 3
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-struct-slot-unchecked-accessor
   (@lambda 3
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-struct-slot-unchecked-mutator
   (@lambda 3
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-struct-subclass-slot-accessor
   (@lambda 3
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-struct-subclass-slot-mutator
   (@lambda 3
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-class-cached-slot-accessor
   (@lambda 3
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-class-cached-slot-mutator
   (@lambda 3
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-class-cached-slot-unchecked-accessor
   (@lambda 3
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-class-cached-slot-unchecked-mutator
   (@lambda 3
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   class-slot-offset
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (class::t symbolic::t)
             unchecked:
             __class-slot-offset
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class-slot-offset
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
             gerbil/runtime/mop)))
  (declare-type
   class-slot-ref
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (class::t t::t symbolic::t)
             unchecked:
             __class-slot-ref
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class-slot-ref
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   class-slot-set!
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (class::t t::t symbolic::t t::t)
             unchecked:
             __class-slot-set!
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class-slot-set!
   (@lambda 4
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
             gerbil/runtime/mop)))
  (declare-type
   unchecked-field-ref
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
             gerbil/runtime/mop)))
  (declare-type
   unchecked-field-set!
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   unchecked-slot-ref
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
             gerbil/runtime/mop)))
  (declare-type
   unchecked-slot-set!
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   slot-ref__%
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t symbol::t procedure::t)
             unchecked:
             __slot-ref
             origin:
             gerbil/runtime/mop)))
  (declare-type
   slot-ref__0
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
             gerbil/runtime/mop)))
  (declare-type
   slot-ref
   (@case-lambda
    (2
     slot-ref__0
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
      gerbil/runtime/mop))
    (3
     slot-ref__%
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
      gerbil/runtime/mop))))
  (declare-type
   __slot-ref__%
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   __slot-ref__0
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
             gerbil/runtime/mop)))
  (declare-type
   __slot-ref
   (@case-lambda
    (2
     __slot-ref__0
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
      gerbil/runtime/mop))
    (3
     __slot-ref__%
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
      gerbil/runtime/mop))))
  (declare-type
   slot-set!__%
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t symbol::t t::t procedure::t)
             unchecked:
             __slot-set!
             origin:
             gerbil/runtime/mop)))
  (declare-type
   slot-set!__0
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   slot-set!
   (@case-lambda
    (3
     slot-set!__0
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
      gerbil/runtime/mop))
    (4
     slot-set!__%
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
      gerbil/runtime/mop))))
  (declare-type
   __slot-set!__%
   (@lambda 4
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
             gerbil/runtime/mop)))
  (declare-type
   __slot-set!__0
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   __slot-set!
   (@case-lambda
    (3
     __slot-set!__0
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
      gerbil/runtime/mop))
    (4
     __slot-set!__%
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
      gerbil/runtime/mop))))
  (declare-type
   __slot-error
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
             gerbil/runtime/mop)))
  (declare-type
   subclass?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (class::t class::t)
             unchecked:
             __subclass?
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __subclass?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   object?
   (@lambda 1
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   object-type
   (@lambda 1
            #f
            signature:
            (return:
             class::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   direct-instance?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (class::t t::t)
             unchecked:
             __direct-instance?
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __direct-instance?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-inline-rule!
   direct-instance?
   (ast-rules
    (%#call)
    ((%#call _ klass obj)
     (%#call (%#ref ##structure-direct-instance-of?)
             obj
             (%#call (%#ref ##type-id) klass)))))
  (declare-type
   immediate-instance-of?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-inline-rule!
   immediate-instance-of?
   (lambda (ast)
     (ast-case
      ast
      (%#call %#ref)
      ((%#call _ klass (%#ref obj))
       #'(%#if (%#call (%#ref ##structure?) (%#ref obj))
               (%#if (%#call (%#ref eq?)
                             klass
                             (%#call (%#ref ##structure-type) (%#ref obj)))
                     (%#quote #t)
                     (%#quote #f))
               (%#quote #f)))
      ((%#call recur klass obj)
       (with-syntax
        (($obj (make-symbol (gensym '__obj))))
        #'(%#let-values ((($obj) obj)) (%#call recur klass (%#ref $obj))))))))
  (declare-type
   struct-instance?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (class::t t::t)
             unchecked:
             __struct-instance?
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __struct-instance?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   class-instance?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             (class::t t::t)
             unchecked:
             __class-instance?
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class-instance?
   (@lambda 2
            #f
            signature:
            (return:
             boolean::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-object
   (@lambda 2
            #f
            signature:
            (return:
             object::t
             effect:
             #f
             arguments:
             (class::t fixnum::t)
             unchecked:
             __make-object
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __make-object
   (@lambda 2
            #f
            signature:
            (return:
             object::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-inline-rule!
   make-object
   (lambda (ast)
     (ast-case
      ast
      (%#call %#quote)
      ((%#call make-object klass (%#quote len))
       (with-syntax
        (((init ...) (make-list (fx1- (stx-e #'len)) '(%#quote #f))))
        #'(%#call (%#ref ##structure) klass init ...)))
      ((%#call make-object klass len)
       (with-syntax
        (($obj (make-symbol (gensym '__obj))))
        #'(%#let-values
           ((($obj) (%#call (%#ref ##make-structure) klass len)))
           (%#begin (%#call (%#ref object-fill!) (%#ref $obj) (%#quote #f))
                    (%#ref $obj))))))))
  (declare-type
   object-fill!
   (@lambda 2
            #f
            signature:
            (return:
             object::t
             effect:
             #f
             arguments:
             (object::t t::t)
             unchecked:
             __object-fill!
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __object-fill!
   (@lambda 2
            #f
            signature:
            (return:
             object::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   new-instance
   (@lambda 1
            #f
            signature:
            (return:
             object::t
             effect:
             #f
             arguments:
             (class::t)
             unchecked:
             __new-instance
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __new-instance
   (@lambda 1
            #f
            signature:
            (return:
             object::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-instance
   (@lambda (1)
            #f
            signature:
            (return:
             object::t
             effect:
             #f
             arguments:
             (class::t . t::t)
             unchecked:
             __make-instance
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __make-instance
   (@lambda (1)
            #f
            signature:
            (return:
             object::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   make-class-instance
   (@lambda (1)
            #f
            signature:
            (return:
             object::t
             effect:
             #f
             arguments:
             (class::t . t::t)
             unchecked:
             __make-instance
             origin:
             gerbil/runtime/mop)))
  (declare-type
   struct-instance-init!
   (@lambda (1)
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             (object::t . t::t)
             unchecked:
             __struct-instance-init!
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __struct-instance-init!
   (@lambda (1)
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-inline-rule!
   struct-instance-init!
   (lambda (ast)
     (ast-case
      ast
      (%#call %#ref)
      ((%#call _ self) #'(%#quote #!void))
      ((%#call _ (%#ref self) arg ...)
       (with-syntax*
        (((values arg-count) (length #'(arg ...)))
         ((off ...) (iota arg-count 1))
         (count arg-count))
        #'(%#if (%#call (%#ref ##fx<)
                        (%#quote count)
                        (%#call (%#ref ##structure-length) (%#ref self)))
                (%#begin (%#call (%#ref ##unchecked-structure-set!)
                                 (%#ref self)
                                 arg
                                 (%#quote off)
                                 (%#quote #f)
                                 (%#quote #f))
                         ...
                         (%#quote #!void))
                (%#call (%#ref error)
                        (%#quote "struct-instance-init!: too many arguments for struct")
                        (%#ref self)
                        (%#quote count)
                        (%#call (%#ref ##vector-length) (%#ref self))))))
      ((%#call recur self arg ...)
       (with-syntax
        (($self (make-symbol (gensym '__self))))
        #'(%#let-values
           ((($self) self))
           (%#call recur (%#ref $self) arg ...)))))))
  (declare-type
   ___struct-instance-init!
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
             gerbil/runtime/mop)))
  (declare-type
   class-instance-init!
   (@lambda (1)
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             (object::t . t::t)
             unchecked:
             __class-instance-init!
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class-instance-init!
   (@lambda (1)
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   ___class-instance-init!
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   __metaclass-instance-init!
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   constructor-init!
   (@lambda (3)
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             (class::t symbol::t object::t . t::t)
             unchecked:
             __constructor-init!
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __constructor-init!
   (@lambda (3)
            #f
            signature:
            (return:
             void::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   ___constructor-init!
   (@lambda 4
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
             gerbil/runtime/mop)))
  (declare-type
   struct-copy
   (@lambda 1
            #f
            signature:
            (return:
             object::t
             effect:
             #f
             arguments:
             (object::t)
             unchecked:
             __struct-copy
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __struct-copy
   (@lambda 1
            #f
            signature:
            (return:
             object::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   struct->list
   (@lambda 1
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             (object::t)
             unchecked:
             __struct->list
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __struct->list
   (@lambda 1
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   class->list
   (@lambda 1
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             (object::t)
             unchecked:
             __class->list
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __class->list
   (@lambda 1
            #f
            signature:
            (return:
             list::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   call-method
   (@lambda (2)
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t symbol::t . t::t)
             unchecked:
             __call-method
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __call-method
   (@lambda (2)
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
             gerbil/runtime/mop)))
  (declare-inline-rule!
   call-method
   (lambda (ast)
     (ast-case
      ast
      (%#call %#ref)
      ((%#call _ (%#ref self) method arg ...)
       (with-syntax
        (($method (make-symbol (gensym '__method))))
        #'(%#let-values
           ((($method) (%#call (%#ref method-ref) (%#ref self) method)))
           (%#if (%#ref $method)
                 (%#call (%#ref $method) (%#ref self) arg ...)
                 (%#call (%#ref error)
                         (%#quote "Missing method")
                         (%#ref self)
                         method)))))
      ((%#call recur self method arg ...)
       (with-syntax
        (($self (make-symbol (gensym '__self))))
        #'(%#let-values
           ((($self) self))
           (%#call recur (%#ref $self) method arg ...)))))))
  (declare-type
   method-ref
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t symbol::t)
             unchecked:
             __method-ref
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __method-ref
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
             gerbil/runtime/mop)))
  (declare-type
   checked-method-ref
   (@lambda 2
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   bound-method-ref
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t symbol::t)
             unchecked:
             __bound-method-ref
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __bound-method-ref
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
             gerbil/runtime/mop)))
  (declare-type
   checked-bound-method-ref
   (@lambda 2
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             (t::t symbol::t)
             unchecked:
             __checked-bound-method-ref
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __checked-bound-method-ref
   (@lambda 2
            #f
            signature:
            (return:
             procedure::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   find-method
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (class::t t::t symbol::t)
             unchecked:
             __find-method
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __find-method
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   mixin-find-method
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t symbol::t)
             unchecked:
             __mixin-find-method
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __mixin-find-method
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   direct-method-ref
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (class::t t::t symbol::t)
             unchecked:
             __direct-method-ref
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __direct-method-ref
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   mixin-method-ref
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (class::t t::t symbol::t)
             unchecked:
             __mixin-method-ref
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __mixin-method-ref
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   bind-method!__%
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t symbol::t procedure::t t::t)
             unchecked:
             __bind-method!
             origin:
             gerbil/runtime/mop)))
  (declare-type
   bind-method!__0
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   bind-method!
   (@case-lambda
    (3
     bind-method!__0
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
      gerbil/runtime/mop))
    (4
     bind-method!__%
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
      gerbil/runtime/mop))))
  (declare-type
   __bind-method!__%
   (@lambda 4
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
             gerbil/runtime/mop)))
  (declare-type
   __bind-method!__0
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   __bind-method!
   (@case-lambda
    (3
     __bind-method!__0
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
      gerbil/runtime/mop))
    (4
     __bind-method!__%
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
      gerbil/runtime/mop))))
  (declare-type
   make-method-specializer-table__%
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
             gerbil/runtime/mop)))
  (declare-type
   make-method-specializer-table__0
   (@lambda 0
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
             gerbil/runtime/mop)))
  (declare-type
   make-method-specializer-table__1
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
             gerbil/runtime/mop)))
  (declare-type
   make-method-specializer-table
   (@case-lambda
    (0
     make-method-specializer-table__0
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
      gerbil/runtime/mop))
    (1
     make-method-specializer-table__1
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
      gerbil/runtime/mop))
    (2
     make-method-specializer-table__%
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
      gerbil/runtime/mop))))
  (declare-type
   method-specializer-table-ref
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   method-specializer-table-set!
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   __method-specializer-table-set!
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   method-specializer-table-update!
   (@lambda 4
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
             gerbil/runtime/mop)))
  (declare-type
   __method-specializer-table-update!
   (@lambda 4
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
             gerbil/runtime/mop)))
  (declare-type
   method-specializer-table-delete!
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
             gerbil/runtime/mop)))
  (declare-type
   __method-specializers
   (optimizer-resolve-class '(typedecl __method-specializers) 't::t))
  (declare-type
   __method-specializers-mx
   (optimizer-resolve-class '(typedecl __method-specializers-mx) 'vector::t))
  (declare-type
   bind-specializer!
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
             gerbil/runtime/mop)))
  (declare-type
   __lookup-method-specializer
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
             gerbil/runtime/mop)))
  (declare-type
   __class-specializer-hash-key
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
             gerbil/runtime/mop)))
  (declare-type
   make-class-specializer-table__%
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
             gerbil/runtime/mop)))
  (declare-type
   make-class-specializer-table__0
   (@lambda 0
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
             gerbil/runtime/mop)))
  (declare-type
   make-class-specializer-table__1
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
             gerbil/runtime/mop)))
  (declare-type
   make-class-specializer-table
   (@case-lambda
    (0
     make-class-specializer-table__0
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
      gerbil/runtime/mop))
    (1
     make-class-specializer-table__1
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
      gerbil/runtime/mop))
    (2
     make-class-specializer-table__%
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
      gerbil/runtime/mop))))
  (declare-type
   class-specializer-table-ref
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   class-specializer-table-set!
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   __class-specializer-table-set!
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   class-specializer-table-update!
   (@lambda 4
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
             gerbil/runtime/mop)))
  (declare-type
   __class-specializer-table-update!
   (@lambda 4
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
             gerbil/runtime/mop)))
  (declare-type
   class-specializer-table-delete!
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
             gerbil/runtime/mop)))
  (declare-type
   __class-specializers-mx
   (optimizer-resolve-class '(typedecl __class-specializers-mx) 'vector::t))
  (declare-type
   __class-specializers
   (optimizer-resolve-class '(typedecl __class-specializers) 't::t))
  (declare-type
   __class-specializers-key
   (optimizer-resolve-class '(typedecl __class-specializers-key) 'pair::t))
  (declare-type
   specialize-class
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (class::t)
             unchecked:
             __specialize-class
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __specialize-class
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
             gerbil/runtime/mop)))
  (declare-type
   __lookup-class-specializer
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
             gerbil/runtime/mop)))
  (declare-type
   __bind-class-specializer!
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
             gerbil/runtime/mop)))
  (declare-type
   __specialize-method
   (@lambda 4
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
             gerbil/runtime/mop)))
  (declare-type
   ___specialize-class
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
             gerbil/runtime/mop)))
  (declare-type
   seal-class!
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (class::t)
             unchecked:
             __seal-class!
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __seal-class!
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
             gerbil/runtime/mop)))
  (declare-type
   next-method
   (@lambda 3
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (class::t t::t symbol::t)
             unchecked:
             __next-method
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __next-method
   (@lambda 3
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
             gerbil/runtime/mop)))
  (declare-type
   call-next-method
   (@lambda (3)
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (class::t t::t symbol::t . t::t)
             unchecked:
             __call-next-method
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __call-next-method
   (@lambda (3)
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
             gerbil/runtime/mop)))
  (declare-type write-style (@lambda 1 macro-writeenv-style))
  (declare-type
   write-object
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
             gerbil/runtime/mop)))
  (declare-type
   __shadow-classes
   (optimizer-resolve-class '(typedecl __shadow-classes) 't::t))
  (declare-type
   __shadow-classes-mx
   (optimizer-resolve-class '(typedecl __shadow-classes-mx) 'vector::t))
  (declare-type
   __shadow-class
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
             gerbil/runtime/mop)))
  (declare-type
   class-of
   (@lambda 1
            #f
            signature:
            (return:
             class::t
             effect:
             #f
             arguments:
             #f
             unchecked:
             #f
             origin:
             gerbil/runtime/mop)))
  (declare-type
   __subtype-id
   (optimizer-resolve-class '(typedecl __subtype-id) 'vector::t))
  (declare-type
   __system-classes
   (optimizer-resolve-class '(typedecl __system-classes) 't::t))
  (declare-type
   __system-class
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
             gerbil/runtime/mop)))
  (declare-type
   __make-system-class
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
             gerbil/runtime/mop))))
