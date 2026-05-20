(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/mop~MOP-2::timestamp 1779274752)
  (begin
    (define gerbil/core/mop~MOP-2#runtime-type-info::t
      (make-class-type
       'gerbil.core#runtime-type-info::t
       'runtime-type-info
       (list)
       '(id name type-descriptor)
       '((print: name))
       '#f))
    (define gerbil/core/mop~MOP-2#runtime-type-info?
      (make-class-predicate gerbil/core/mop~MOP-2#runtime-type-info::t))
    (define gerbil/core/mop~MOP-2#make-runtime-type-info
      (lambda _%$args22628%_
        (apply make-instance
               gerbil/core/mop~MOP-2#runtime-type-info::t
               _%$args22628%_)))
    (define gerbil/core/mop~MOP-2#!runtime-type-id
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'id))
    (define gerbil/core/mop~MOP-2#!runtime-type-name
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'name))
    (define gerbil/core/mop~MOP-2#!runtime-type-descriptor
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#!runtime-type-id-set!
      (make-class-slot-mutator gerbil/core/mop~MOP-2#runtime-type-info::t 'id))
    (define gerbil/core/mop~MOP-2#!runtime-type-name-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'name))
    (define gerbil/core/mop~MOP-2#!runtime-type-descriptor-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#&!runtime-type-id
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'id))
    (define gerbil/core/mop~MOP-2#&!runtime-type-name
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'name))
    (define gerbil/core/mop~MOP-2#&!runtime-type-descriptor
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#&!runtime-type-id-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'id))
    (define gerbil/core/mop~MOP-2#&!runtime-type-name-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'name))
    (define gerbil/core/mop~MOP-2#&!runtime-type-descriptor-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#runtime-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#meta-object::t
      (make-class-type
       'gerbil.core#meta-object::t
       'meta-object
       (list)
       '(methods)
       '()
       '#f))
    (define gerbil/core/mop~MOP-2#meta-object?
      (make-class-predicate gerbil/core/mop~MOP-2#meta-object::t))
    (define gerbil/core/mop~MOP-2#make-meta-object
      (lambda _%$args22625%_
        (apply make-instance
               gerbil/core/mop~MOP-2#meta-object::t
               _%$args22625%_)))
    (define gerbil/core/mop~MOP-2#meta-object-methods
      (make-class-slot-accessor gerbil/core/mop~MOP-2#meta-object::t 'methods))
    (define gerbil/core/mop~MOP-2#meta-object-methods-set!
      (make-class-slot-mutator gerbil/core/mop~MOP-2#meta-object::t 'methods))
    (define gerbil/core/mop~MOP-2#&meta-object-methods
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#meta-object::t
       'methods))
    (define gerbil/core/mop~MOP-2#&meta-object-methods-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#meta-object::t
       'methods))
    (define gerbil/core/mop~MOP-2#class-type-info::t
      (make-class-type
       'gerbil.core#class-type-info::t
       'class-type-info
       (list gerbil/core/mop~MOP-2#runtime-type-info::t
             gerbil/core/mop~MOP-2#meta-object::t)
       '(super slots
               precedence-list
               ordered-slots
               struct?
               final?
               system?
               metaclass
               constructor-method
               constructor
               predicate
               accessors
               mutators
               unchecked-accessors
               unchecked-mutators
               slot-types
               slot-defaults
               slot-contracts
               slot-offsets)
       '((print: name))
       '#f))
    (define gerbil/core/mop~MOP-2#class-type-info?
      (make-class-predicate gerbil/core/mop~MOP-2#class-type-info::t))
    (define gerbil/core/mop~MOP-2#make-class-type-info
      (lambda _%$args22622%_
        (apply make-instance
               gerbil/core/mop~MOP-2#class-type-info::t
               _%$args22622%_)))
    (define gerbil/core/mop~MOP-2#!class-type-super
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'super))
    (define gerbil/core/mop~MOP-2#!class-type-slots
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slots))
    (define gerbil/core/mop~MOP-2#!class-type-precedence-list
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'precedence-list))
    (define gerbil/core/mop~MOP-2#!class-type-ordered-slots
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'ordered-slots))
    (define gerbil/core/mop~MOP-2#!class-type-struct?
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'struct?))
    (define gerbil/core/mop~MOP-2#!class-type-final?
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'final?))
    (define gerbil/core/mop~MOP-2#!class-type-system?
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'system?))
    (define gerbil/core/mop~MOP-2#!class-type-metaclass
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'metaclass))
    (define gerbil/core/mop~MOP-2#!class-type-constructor-method
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor-method))
    (define gerbil/core/mop~MOP-2#!class-type-constructor
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor))
    (define gerbil/core/mop~MOP-2#!class-type-predicate
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'predicate))
    (define gerbil/core/mop~MOP-2#!class-type-accessors
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'accessors))
    (define gerbil/core/mop~MOP-2#!class-type-mutators
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'mutators))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-accessors
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-mutators
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core/mop~MOP-2#!class-type-slot-types
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-types))
    (define gerbil/core/mop~MOP-2#!class-type-slot-defaults
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-defaults))
    (define gerbil/core/mop~MOP-2#!class-type-slot-contracts
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-contracts))
    (define gerbil/core/mop~MOP-2#!class-type-slot-offsets
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-offsets))
    (define gerbil/core/mop~MOP-2#!class-type-id
      (make-class-slot-accessor gerbil/core/mop~MOP-2#class-type-info::t 'id))
    (define gerbil/core/mop~MOP-2#!class-type-name
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'name))
    (define gerbil/core/mop~MOP-2#!class-type-descriptor
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#!class-type-methods
      (make-class-slot-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'methods))
    (define gerbil/core/mop~MOP-2#!class-type-super-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'super))
    (define gerbil/core/mop~MOP-2#!class-type-slots-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slots))
    (define gerbil/core/mop~MOP-2#!class-type-precedence-list-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'precedence-list))
    (define gerbil/core/mop~MOP-2#!class-type-ordered-slots-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'ordered-slots))
    (define gerbil/core/mop~MOP-2#!class-type-struct?-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'struct?))
    (define gerbil/core/mop~MOP-2#!class-type-final?-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'final?))
    (define gerbil/core/mop~MOP-2#!class-type-system?-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'system?))
    (define gerbil/core/mop~MOP-2#!class-type-metaclass-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'metaclass))
    (define gerbil/core/mop~MOP-2#!class-type-constructor-method-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor-method))
    (define gerbil/core/mop~MOP-2#!class-type-constructor-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor))
    (define gerbil/core/mop~MOP-2#!class-type-predicate-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'predicate))
    (define gerbil/core/mop~MOP-2#!class-type-accessors-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'accessors))
    (define gerbil/core/mop~MOP-2#!class-type-mutators-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'mutators))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-accessors-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core/mop~MOP-2#!class-type-unchecked-mutators-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core/mop~MOP-2#!class-type-slot-types-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-types))
    (define gerbil/core/mop~MOP-2#!class-type-slot-defaults-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-defaults))
    (define gerbil/core/mop~MOP-2#!class-type-slot-contracts-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-contracts))
    (define gerbil/core/mop~MOP-2#!class-type-slot-offsets-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-offsets))
    (define gerbil/core/mop~MOP-2#!class-type-id-set!
      (make-class-slot-mutator gerbil/core/mop~MOP-2#class-type-info::t 'id))
    (define gerbil/core/mop~MOP-2#!class-type-name-set!
      (make-class-slot-mutator gerbil/core/mop~MOP-2#class-type-info::t 'name))
    (define gerbil/core/mop~MOP-2#!class-type-descriptor-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#!class-type-methods-set!
      (make-class-slot-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'methods))
    (define gerbil/core/mop~MOP-2#&!class-type-super
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'super))
    (define gerbil/core/mop~MOP-2#&!class-type-slots
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slots))
    (define gerbil/core/mop~MOP-2#&!class-type-precedence-list
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'precedence-list))
    (define gerbil/core/mop~MOP-2#&!class-type-ordered-slots
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'ordered-slots))
    (define gerbil/core/mop~MOP-2#&!class-type-struct?
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'struct?))
    (define gerbil/core/mop~MOP-2#&!class-type-final?
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'final?))
    (define gerbil/core/mop~MOP-2#&!class-type-system?
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'system?))
    (define gerbil/core/mop~MOP-2#&!class-type-metaclass
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'metaclass))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor-method
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor-method))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor))
    (define gerbil/core/mop~MOP-2#&!class-type-predicate
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'predicate))
    (define gerbil/core/mop~MOP-2#&!class-type-accessors
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'accessors))
    (define gerbil/core/mop~MOP-2#&!class-type-mutators
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'mutators))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-accessors
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-mutators
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core/mop~MOP-2#&!class-type-slot-types
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-types))
    (define gerbil/core/mop~MOP-2#&!class-type-slot-defaults
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-defaults))
    (define gerbil/core/mop~MOP-2#&!class-type-slot-contracts
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-contracts))
    (define gerbil/core/mop~MOP-2#&!class-type-slot-offsets
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-offsets))
    (define gerbil/core/mop~MOP-2#&!class-type-id
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'id))
    (define gerbil/core/mop~MOP-2#&!class-type-name
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'name))
    (define gerbil/core/mop~MOP-2#&!class-type-descriptor
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#&!class-type-methods
      (make-class-slot-unchecked-accessor
       gerbil/core/mop~MOP-2#class-type-info::t
       'methods))
    (define gerbil/core/mop~MOP-2#&!class-type-super-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'super))
    (define gerbil/core/mop~MOP-2#&!class-type-slots-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slots))
    (define gerbil/core/mop~MOP-2#&!class-type-precedence-list-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'precedence-list))
    (define gerbil/core/mop~MOP-2#&!class-type-ordered-slots-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'ordered-slots))
    (define gerbil/core/mop~MOP-2#&!class-type-struct?-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'struct?))
    (define gerbil/core/mop~MOP-2#&!class-type-final?-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'final?))
    (define gerbil/core/mop~MOP-2#&!class-type-system?-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'system?))
    (define gerbil/core/mop~MOP-2#&!class-type-metaclass-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'metaclass))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor-method-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor-method))
    (define gerbil/core/mop~MOP-2#&!class-type-constructor-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'constructor))
    (define gerbil/core/mop~MOP-2#&!class-type-predicate-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'predicate))
    (define gerbil/core/mop~MOP-2#&!class-type-accessors-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'accessors))
    (define gerbil/core/mop~MOP-2#&!class-type-mutators-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'mutators))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-accessors-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-accessors))
    (define gerbil/core/mop~MOP-2#&!class-type-unchecked-mutators-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'unchecked-mutators))
    (define gerbil/core/mop~MOP-2#&!class-type-slot-types-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-types))
    (define gerbil/core/mop~MOP-2#&!class-type-slot-defaults-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-defaults))
    (define gerbil/core/mop~MOP-2#&!class-type-slot-contracts-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-contracts))
    (define gerbil/core/mop~MOP-2#&!class-type-slot-offsets-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'slot-offsets))
    (define gerbil/core/mop~MOP-2#&!class-type-id-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'id))
    (define gerbil/core/mop~MOP-2#&!class-type-name-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'name))
    (define gerbil/core/mop~MOP-2#&!class-type-descriptor-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'type-descriptor))
    (define gerbil/core/mop~MOP-2#&!class-type-methods-set!
      (make-class-slot-unchecked-mutator
       gerbil/core/mop~MOP-2#class-type-info::t
       'methods))
    (define gerbil/core/mop~MOP-2#class-type-info::apply-macro-expander
      (lambda (_%self22535%_ _%stx22536%_)
        (let* ((_%g2253822557%_
                (lambda (_%g2253922554%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2253922554%_)))
               (_%g2253722619%_
                (lambda (_%g2253922560%_)
                  (if (gx#stx-pair? _%g2253922560%_)
                      (let ((_%e2254122562%_ (gx#syntax-e _%g2253922560%_)))
                        (let ((_%hd2254222565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2254122562%_)))
                              (_%tl2254322567%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2254122562%_))))
                          (if (gx#stx-pair/null? _%tl2254322567%_)
                              (let ((_g27521_
                                     (gx#syntax-split-splice
                                      _%tl2254322567%_
                                      '0)))
                                (begin
                                  (let ((_g27522_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g27521_)
                                               (##values-length _g27521_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g27522_ 2)))
                                        (error "Context expects 2 values"
                                               _g27522_)))
                                  (let ((_%target2254422570%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27521_ 0)))
                                        (_%tl2254622572%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g27521_ 1))))
                                    (if (gx#stx-null? _%tl2254622572%_)
                                        (letrec ((_%loop2254722575%_
                                                  (lambda (_%hd2254522578%_
                                                           _%arg2255122580%_)
                                                    (if (gx#stx-pair?
                                                         _%hd2254522578%_)
                                                        (let ((_%e2254822582%_
                                                               (gx#syntax-e
                                                                _%hd2254522578%_)))
                                                          (let ((_%lp-hd2254922585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2254822582%_)))
                        (_%lp-tl2255022587%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2254822582%_))))
                    (_%loop2254722575%_
                     _%lp-tl2255022587%_
                     (cons _%lp-hd2254922585%_ _%arg2255122580%_))))
                (let ((_%arg2255222590%_ (reverse _%arg2255122580%_)))
                  ((lambda (_%g2254022592%_)
                     (let ((_%$e22606%_
                            (let ((__obj27423 _%self22535%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj27423
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj27423
                                     '14
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop~MOP-2#class-type-info::t
                                   __obj27423
                                   'constructor)))))
                       (if _%$e22606%_
                           ((lambda (_%make22609%_)
                              (cons _%make22609%_
                                    (foldr (lambda (_%g2261022613%_
                                                    _%g2261122615%_)
                                             (cons _%g2261022613%_
                                                   _%g2261122615%_))
                                           '()
                                           _%g2254022592%_)))
                            _%$e22606%_)
                           (gx#raise-syntax-error
                            '#f
                            '"no constructor defined for class"
                            _%stx22536%_
                            _%self22535%_))))
                   _%arg2255222590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop2254722575%_
                                           _%target2254422570%_
                                           '()))
                                        (_%g2253822557%_ _%g2253922560%_)))))
                              (_%g2253822557%_ _%g2253922560%_))))
                      (_%g2253822557%_ _%g2253922560%_)))))
          (_%g2253722619%_ _%stx22536%_))))
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'apply-macro-expander
     gerbil/core/mop~MOP-2#class-type-info::apply-macro-expander)
    (define gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__%
      (lambda (_%stx22517%_ _%is?22518%_)
        (if (gx#identifier? _%stx22517%_)
            (let ((_%e2251922521%_ (gx#syntax-local-value _%stx22517%_ false)))
              (if _%e2251922521%_
                  (let ((_%e22523%_ _%e2251922521%_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#runtime-type-info::t
                           _%e22523%_))
                        (_%is?22518%_ _%e22523%_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
      (lambda (_%stx22528%_)
        (let ((_%is?22530%_ true))
          (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__%
           _%stx22528%_
           _%is?22530%_))))
    (define gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?
      (lambda _g27523_
        (let ((_g27524_ (let () (declare (not safe)) (##length _g27523_))))
          (cond ((let () (declare (not safe)) (##fx= _g27524_ 1))
                 (apply gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                        _g27523_))
                ((let () (declare (not safe)) (##fx= _g27524_ 2))
                 (apply gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__%
                        _g27523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?
                  _g27523_))))))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
      (lambda (_%stx22498%_ _%is?22499%_)
        (if (gx#identifier? _%stx22498%_)
            (let ((_%e2250022502%_ (gx#syntax-local-value _%stx22498%_ false)))
              (if _%e2250022502%_
                  (let ((_%e22504%_ _%e2250022502%_))
                    (if (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%e22504%_))
                        (_%is?22499%_ _%e22504%_)
                        '#f))
                  '#f))
            '#f)))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
      (lambda (_%stx22509%_)
        (let ((_%is?22511%_ true))
          (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
           _%stx22509%_
           _%is?22511%_))))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?
      (lambda _g27525_
        (let ((_g27526_ (let () (declare (not safe)) (##length _g27525_))))
          (cond ((let () (declare (not safe)) (##fx= _g27526_ 1))
                 (apply gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                        _g27525_))
                ((let () (declare (not safe)) (##fx= _g27526_ 2))
                 (apply gerbil/core/mop~MOP-2#syntax-local-class-type-info?__%
                        _g27525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                  _g27525_))))))))
