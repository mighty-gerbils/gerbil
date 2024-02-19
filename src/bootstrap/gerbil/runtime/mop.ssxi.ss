prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type
   class::t
   (@class gerbil#class::t
           ()
           ()
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
           #f))
  (declare-type class-type? (@predicate class::t))
  (declare-type class-type=? (@lambda 2 #f))
  (declare-type type-opaque? (@lambda 1 #f))
  (declare-type type-extensible? (@lambda 1 #f))
  (declare-type class-type-final? (@lambda 1 #f))
  (declare-type class-type-struct? (@lambda 1 #f))
  (declare-type class-type-sealed? (@lambda 1 #f))
  (declare-type class-type-metaclass? (@lambda 1 #f))
  (declare-type properties-form (@lambda 1 #f))
  (declare-type make-class-type-descriptor (@lambda 9 #f))
  (declare-type class-type-id (@accessor class::t id #t))
  (declare-type &class-type-id (@accessor class::t id #f))
  (declare-type class-type-id-set! (@mutator class::t id #t))
  (declare-type &class-type-id-set! (@mutator class::t id #f))
  (declare-type class-type-name (@accessor class::t name #t))
  (declare-type &class-type-name (@accessor class::t name #f))
  (declare-type class-type-name-set! (@mutator class::t name #t))
  (declare-type &class-type-name-set! (@mutator class::t name #f))
  (declare-type class-type-super (@accessor class::t super #t))
  (declare-type &class-type-super (@accessor class::t super #f))
  (declare-type class-type-super-set! (@mutator class::t super #t))
  (declare-type &class-type-super-set! (@mutator class::t super #f))
  (declare-type class-type-flags (@accessor class::t flags #t))
  (declare-type &class-type-flags (@accessor class::t flags #f))
  (declare-type class-type-flags-set! (@mutator class::t flags #t))
  (declare-type &class-type-flags-set! (@mutator class::t flags #f))
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
  (declare-type class-type-slot-list (@lambda 1 #f))
  (declare-type class-type-field-count (@lambda 1 #f))
  (declare-type class-type-seal! (@lambda 1 #f))
  (declare-type &class-type-seal! (@lambda 1 #f))
  (declare-type substruct? (@lambda 2 #f))
  (declare-type base-struct/1 (@lambda 1 #f))
  (declare-type base-struct/2 (@lambda 2 #f))
  (declare-type base-struct/list (@lambda 1 #f))
  (declare-type base-struct (@lambda (0) #f))
  (declare-type find-super-constructor (@lambda 1 #f))
  (declare-type compute-class-slots (@lambda 2 #f))
  (declare-type make-class-type (@lambda 6 #f))
  (declare-type class-precedence-list (@lambda 1 #f))
  (declare-type compute-precedence-list (@lambda 1 #f))
  (declare-type make-class-predicate (@lambda 1 #f))
  (declare-type if-class-slot-field (@lambda 6 #f))
  (declare-type make-class-slot-accessor (@lambda 2 #f))
  (declare-type make-class-slot-mutator (@lambda 2 #f))
  (declare-type make-class-slot-unchecked-accessor (@lambda 2 #f))
  (declare-type make-class-slot-unchecked-mutator (@lambda 2 #f))
  (declare-type not-an-instance__% (@lambda 3 #f))
  (declare-type not-an-instance__0 (@lambda 2 #f))
  (declare-type
   not-an-instance
   (@case-lambda (2 not-an-instance__0) (3 not-an-instance__%)))
  (declare-type make-final-slot-accessor (@lambda 3 #f))
  (declare-type make-final-slot-mutator (@lambda 3 #f))
  (declare-type make-struct-slot-accessor (@lambda 3 #f))
  (declare-type make-struct-slot-mutator (@lambda 3 #f))
  (declare-type make-struct-slot-unchecked-accessor (@lambda 3 #f))
  (declare-type make-struct-slot-unchecked-mutator (@lambda 3 #f))
  (declare-type make-struct-subclass-slot-accessor (@lambda 3 #f))
  (declare-type make-struct-subclass-slot-mutator (@lambda 3 #f))
  (declare-type make-class-cached-slot-accessor (@lambda 3 #f))
  (declare-type make-class-cached-slot-mutator (@lambda 3 #f))
  (declare-type make-class-cached-slot-unchecked-accessor (@lambda 3 #f))
  (declare-type make-class-cached-slot-unchecked-mutator (@lambda 3 #f))
  (declare-type class-slot-offset (@lambda 2 #f))
  (declare-type class-slot-ref (@lambda 3 #f))
  (declare-type class-slot-set! (@lambda 4 #f))
  (declare-type unchecked-field-ref (@lambda 2 #f))
  (declare-type unchecked-field-set! (@lambda 3 #f))
  (declare-type unchecked-slot-ref (@lambda 2 #f))
  (declare-type unchecked-slot-set! (@lambda 3 #f))
  (declare-type slot-ref__% (@lambda 3 #f))
  (declare-type slot-ref__0 (@lambda 2 #f))
  (declare-type slot-ref (@case-lambda (2 slot-ref__0) (3 slot-ref__%)))
  (declare-type slot-set!__% (@lambda 4 #f))
  (declare-type slot-set!__0 (@lambda 3 #f))
  (declare-type slot-set! (@case-lambda (3 slot-set!__0) (4 slot-set!__%)))
  (declare-type __slot-error (@lambda 2 #f))
  (declare-type subclass? (@lambda 2 #f))
  (declare-type
   direct-instance?
   (ast-rules
    (%#call)
    ((%#call _ klass obj)
     (%#call (%#ref ##structure-direct-instance-of?)
             obj
             (%#call (%#ref ##type-id) klass)))))
  (declare-type struct-instance? (@lambda 2 #f))
  (declare-type class-instance? (@lambda 2 #f))
  (declare-type
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
  (declare-type object-fill! (@lambda 2 #f))
  (declare-type new-instance (@lambda 1 #f))
  (declare-type make-instance (@lambda (1) #f))
  (declare-type make-class-instance (@lambda (1) #f))
  (declare-type
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
                                 (%#call (%#ref ##structure-type) (%#ref self))
                                 (%#quote #f))
                         ...)
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
  (declare-type __struct-instance-init! (@lambda 2 #f))
  (declare-type class-instance-init! (@lambda (1) #f))
  (declare-type __class-instance-init! (@lambda 3 #f))
  (declare-type __metaclass-instance-init! (@lambda 3 #f))
  (declare-type constructor-init! (@lambda (3) #f))
  (declare-type __constructor-init! (@lambda 4 #f))
  (declare-type struct-copy (@lambda 1 #f))
  (declare-type struct->list (@lambda 1 #f))
  (declare-type class->list (@lambda 1 #f))
  (declare-type
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
  (declare-type method-ref (@lambda 2 #f))
  (declare-type checked-method-ref (@lambda 2 #f))
  (declare-type bound-method-ref (@lambda 2 #f))
  (declare-type checked-bound-method-ref (@lambda 2 #f))
  (declare-type find-method (@lambda 3 #f))
  (declare-type __find-method (@lambda 3 #f))
  (declare-type class-find-method (@lambda 3 #f))
  (declare-type mixin-find-method (@lambda 3 #f))
  (declare-type builtin-find-method (@lambda 3 #f))
  (declare-type direct-method-ref (@lambda 3 #f))
  (declare-type mixin-method-ref (@lambda 3 #f))
  (declare-type builtin-method-ref (@lambda 3 #f))
  (declare-type bind-method!__% (@lambda 4 #f))
  (declare-type bind-method!__0 (@lambda 3 #f))
  (declare-type
   bind-method!
   (@case-lambda (3 bind-method!__0) (4 bind-method!__%)))
  (declare-type bind-specializer! (@lambda 2 #f))
  (declare-type seal-class! (@lambda 1 #f))
  (declare-type next-method (@lambda 3 #f))
  (declare-type call-next-method (@lambda (3) #f))
  (declare-type write-style (@lambda 1 macro-writeenv-style))
  (declare-type write-object (@lambda 2 #f)))
