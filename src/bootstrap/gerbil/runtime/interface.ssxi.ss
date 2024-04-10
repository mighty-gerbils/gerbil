prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-class
   CastError::t
   (@class gerbil/runtime/interface#CastError::t
           (Error::t)
           (Error::t StackTrace::t Exception::t object::t t::t)
           ()
           (continuation message irritants where)
           :init!
           #f
           #f
           #f
           #f
           ((:init! . CastError:::init!))))
  (declare-type
   CastError::t
   (optimizer-resolve-class '(typedecl CastError::t) 'class::t))
  (declare-type CastError? (@predicate CastError::t))
  (declare-type make-CastError (@constructor CastError::t))
  (declare-type CastError-message (@accessor CastError::t message #t))
  (declare-type CastError-irritants (@accessor CastError::t irritants #t))
  (declare-type CastError-where (@accessor CastError::t where #t))
  (declare-type
   CastError-continuation
   (@accessor CastError::t continuation #t))
  (declare-type CastError-message-set! (@mutator CastError::t message #t))
  (declare-type CastError-irritants-set! (@mutator CastError::t irritants #t))
  (declare-type CastError-where-set! (@mutator CastError::t where #t))
  (declare-type
   CastError-continuation-set!
   (@mutator CastError::t continuation #t))
  (declare-type &CastError-message (@accessor CastError::t message #f))
  (declare-type &CastError-irritants (@accessor CastError::t irritants #f))
  (declare-type &CastError-where (@accessor CastError::t where #f))
  (declare-type
   &CastError-continuation
   (@accessor CastError::t continuation #f))
  (declare-type &CastError-message-set! (@mutator CastError::t message #f))
  (declare-type &CastError-irritants-set! (@mutator CastError::t irritants #f))
  (declare-type &CastError-where-set! (@mutator CastError::t where #f))
  (declare-type
   &CastError-continuation-set!
   (@mutator CastError::t continuation #f))
  (declare-type
   CastError:::init!
   (@lambda (2)
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
             gerbil/runtime/error)))
  (declare-type
   raise-cast-error
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
             gerbil/runtime/interface)))
  (declare-type interface-cast-error? (@predicate CastError::t))
  (declare-class
   interface-instance::t
   (@class gerbil#interface-instance::t
           ()
           (object::t t::t)
           (__object)
           (__object)
           #f
           #t
           #f
           #f
           #f
           #f))
  (declare-type
   interface-instance::t
   (optimizer-resolve-class '(typedecl interface-instance::t) 'class::t))
  (declare-type interface-instance? (@predicate interface-instance::t))
  (declare-type
   interface-instance-object
   (@accessor interface-instance::t __object #t))
  (declare-type
   interface-instance-object-set!
   (@mutator interface-instance::t __object #t))
  (declare-type
   &interface-instance-object
   (@accessor interface-instance::t __object #f))
  (declare-type
   &interface-instance-object-set!
   (@mutator interface-instance::t __object #f))
  (declare-class
   interface-descriptor::t
   (@class gerbil/runtime/interface#interface-descriptor::t
           ()
           (object::t t::t)
           (type methods)
           (type methods)
           #f
           #t
           #t
           #f
           #f
           #f))
  (declare-type
   interface-descriptor::t
   (optimizer-resolve-class '(typedecl interface-descriptor::t) 'class::t))
  (declare-type interface-descriptor? (@predicate interface-descriptor::t))
  (declare-type
   make-interface-descriptor
   (@constructor interface-descriptor::t))
  (declare-type
   interface-descriptor-type
   (@accessor interface-descriptor::t type #t))
  (declare-type
   interface-descriptor-methods
   (@accessor interface-descriptor::t methods #t))
  (declare-type
   interface-descriptor-type-set!
   (@mutator interface-descriptor::t type #t))
  (declare-type
   interface-descriptor-methods-set!
   (@mutator interface-descriptor::t methods #t))
  (declare-type
   &interface-descriptor-type
   (@accessor interface-descriptor::t type #f))
  (declare-type
   &interface-descriptor-methods
   (@accessor interface-descriptor::t methods #f))
  (declare-type
   &interface-descriptor-type-set!
   (@mutator interface-descriptor::t type #f))
  (declare-type
   &interface-descriptor-methods-set!
   (@mutator interface-descriptor::t methods #f))
  (declare-type
   __interface-hash-key
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
             gerbil/runtime/interface)))
  (declare-type
   __interface-test-key
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
             gerbil/runtime/interface)))
  (declare-type
   make-prototype-table__%
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
             gerbil/runtime/interface)))
  (declare-type
   make-prototype-table__0
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
             gerbil/runtime/interface)))
  (declare-type
   make-prototype-table__1
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
             gerbil/runtime/interface)))
  (declare-type
   make-prototype-table
   (@case-lambda
    (0
     make-prototype-table__0
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
      gerbil/runtime/interface))
    (1
     make-prototype-table__1
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
      gerbil/runtime/interface))
    (2
     make-prototype-table__%
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
      gerbil/runtime/interface))))
  (declare-type
   prototype-table-ref
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
             gerbil/runtime/interface)))
  (declare-type
   prototype-table-set!
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
             gerbil/runtime/interface)))
  (declare-type
   __prototype-table-set!
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
             gerbil/runtime/interface)))
  (declare-type
   prototype-table-update!
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
             gerbil/runtime/interface)))
  (declare-type
   __prototype-table-update!
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
             gerbil/runtime/interface)))
  (declare-type
   prototype-table-delete!
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
             gerbil/runtime/interface)))
  (declare-type
   __interface-prototypes-mx
   (optimizer-resolve-class '(typedecl __interface-prototypes-mx) 'vector::t))
  (declare-type
   __interface-prototypes
   (optimizer-resolve-class '(typedecl __interface-prototypes) 't::t))
  (declare-type
   __interface-prototypes-key
   (optimizer-resolve-class '(typedecl __interface-prototypes-key) 'pair::t))
  (declare-type
   interface-subclass?
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
             gerbil/runtime/interface)))
  (declare-type
   create-prototype
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
             gerbil/runtime/interface)))
  (declare-type
   try-create-prototype
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
             gerbil/runtime/interface)))
  (declare-type
   cast
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
             gerbil/runtime/interface)))
  (declare-type
   try-cast
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
             gerbil/runtime/interface)))
  (declare-type
   satisfies?
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
             gerbil/runtime/interface))))
