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
             t::t
             effect:
             #f
             arguments:
             (t::t t::t . t::t)
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
   (@class gerbil/runtime/interface#interface-instance::t
           ()
           (object::t t::t)
           (object)
           (object)
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
  (declare-type make-interface-instance (@constructor interface-instance::t))
  (declare-type
   interface-instance-object
   (@accessor interface-instance::t object #t))
  (declare-type
   interface-instance-object-set!
   (@mutator interface-instance::t object #t))
  (declare-type
   &interface-instance-object
   (@accessor interface-instance::t object #f))
  (declare-type
   &interface-instance-object-set!
   (@mutator interface-instance::t object #f))
  (declare-class
   interface-descriptor::t
   (@class gerbil/runtime/interface#interface-descriptor::t
           ()
           (object::t t::t)
           (type methods index)
           (type methods index)
           :init!
           #t
           #t
           #f
           #f
           ((:init! . interface-descriptor:::init!))))
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
   interface-descriptor-index
   (@accessor interface-descriptor::t index #t))
  (declare-type
   interface-descriptor-type-set!
   (@mutator interface-descriptor::t type #t))
  (declare-type
   interface-descriptor-methods-set!
   (@mutator interface-descriptor::t methods #t))
  (declare-type
   interface-descriptor-index-set!
   (@mutator interface-descriptor::t index #t))
  (declare-type
   &interface-descriptor-type
   (@accessor interface-descriptor::t type #f))
  (declare-type
   &interface-descriptor-methods
   (@accessor interface-descriptor::t methods #f))
  (declare-type
   &interface-descriptor-index
   (@accessor interface-descriptor::t index #f))
  (declare-type
   &interface-descriptor-type-set!
   (@mutator interface-descriptor::t type #f))
  (declare-type
   &interface-descriptor-methods-set!
   (@mutator interface-descriptor::t methods #f))
  (declare-type
   &interface-descriptor-index-set!
   (@mutator interface-descriptor::t index #f))
  (declare-type
   __next-interface-index
   (optimizer-resolve-class '(typedecl __next-interface-index) 'fixnum::t))
  (declare-type
   __next-interface-index-lock
   (optimizer-resolve-class
    '(typedecl __next-interface-index-lock)
    'vector::t))
  (declare-type
   __get-next-interface-index
   (@lambda 0
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
   interface-descriptor:::init!
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
             #f
             origin:
             gerbil/runtime/interface)))
  (declare-class
   prototype-table::t
   (@class gerbil/runtime/interface#prototype-table::t
           ()
           (object::t t::t)
           (lock table)
           (lock table)
           :init!
           #t
           #t
           #f
           #f
           ((:init! . prototype-table:::init!))))
  (declare-type
   prototype-table::t
   (optimizer-resolve-class '(typedecl prototype-table::t) 'class::t))
  (declare-type prototype-table? (@predicate prototype-table::t))
  (declare-type make-prototype-table (@constructor prototype-table::t))
  (declare-type prototype-table-lock (@accessor prototype-table::t lock #t))
  (declare-type prototype-table-table (@accessor prototype-table::t table #t))
  (declare-type
   prototype-table-lock-set!
   (@mutator prototype-table::t lock #t))
  (declare-type
   prototype-table-table-set!
   (@mutator prototype-table::t table #t))
  (declare-type &prototype-table-lock (@accessor prototype-table::t lock #f))
  (declare-type &prototype-table-table (@accessor prototype-table::t table #f))
  (declare-type
   &prototype-table-lock-set!
   (@mutator prototype-table::t lock #f))
  (declare-type
   &prototype-table-table-set!
   (@mutator prototype-table::t table #f))
  (declare-type
   prototype-table:::init!
   (@lambda 1
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t)
             unchecked:
             #f
             origin:
             gerbil/runtime/interface)))
  (declare-type
   ____prototype-table-get
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
   __prototype-table-get
   (@lambda 2
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (t::t t::t)
             unchecked:
             ____prototype-table-get
             origin:
             gerbil/runtime/interface)))
  (declare-type
   ____prototype-table-set!
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
             (t::t t::t t::t)
             unchecked:
             ____prototype-table-set!
             origin:
             gerbil/runtime/interface)))
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
   class-type-interface-table
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
             gerbil/runtime/interface)))
  (declare-type
   __with-prototype
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
   with-prototype
   (@lambda 4
            #f
            signature:
            (return:
             t::t
             effect:
             #f
             arguments:
             (interface-descriptor::t t::t procedure::t procedure::t)
             unchecked:
             __with-prototype
             origin:
             gerbil/runtime/interface))))
