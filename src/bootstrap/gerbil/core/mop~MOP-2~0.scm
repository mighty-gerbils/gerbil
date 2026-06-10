(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/mop~MOP-2::timestamp 1781119021)
  (begin
    (define gerbil/core/mop~MOP-2#runtime-type-info::t
      (make-class-type
       'gerbil/core#runtime-type-info::t
       'runtime-type-info
       (list)
       '(id name type-descriptor)
       '((print: name))
       '#f))
    (define gerbil/core/mop~MOP-2#runtime-type-info?
      (make-class-predicate gerbil/core/mop~MOP-2#runtime-type-info::t))
    (define gerbil/core/mop~MOP-2#make-runtime-type-info
      (lambda _%$args19518%_
        (apply make-instance
               gerbil/core/mop~MOP-2#runtime-type-info::t
               _%$args19518%_)))
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
       'gerbil/core#meta-object::t
       'meta-object
       (list)
       '(methods)
       '()
       '#f))
    (define gerbil/core/mop~MOP-2#meta-object?
      (make-class-predicate gerbil/core/mop~MOP-2#meta-object::t))
    (define gerbil/core/mop~MOP-2#make-meta-object
      (lambda _%$args19515%_
        (apply make-instance
               gerbil/core/mop~MOP-2#meta-object::t
               _%$args19515%_)))
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
       'gerbil/core#class-type-info::t
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
      (lambda _%$args19512%_
        (apply make-instance
               gerbil/core/mop~MOP-2#class-type-info::t
               _%$args19512%_)))
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
      (lambda (_%self19425%_ _%stx19426%_)
        (let* ((_%$%g1942819447%_
                (lambda (_%$%g1942919444%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g1942919444%_)))
               (_%$%g1942719509%_
                (lambda (_%$%g1942919450%_)
                  (if (gx#stx-pair? _%$%g1942919450%_)
                      (let ((_%$%e1943119452%_
                             (gx#syntax-e _%$%g1942919450%_)))
                        (let ((_%$%hd1943219455%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e1943119452%_)))
                              (_%$%tl1943319457%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e1943119452%_))))
                          (if (gx#stx-pair/null? _%$%tl1943319457%_)
                              (let ((_g24048_
                                     (gx#syntax-split-splice
                                      _%$%tl1943319457%_
                                      '0)))
                                (begin
                                  (let ((_g24049_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g24048_)
                                               (##values-length _g24048_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g24049_ 2)))
                                        (error "Context expects 2 values"
                                               _g24049_)))
                                  (let ((_%$%target1943419460%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g24048_ 0)))
                                        (_%$%tl1943619462%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g24048_ 1))))
                                    (if (gx#stx-null? _%$%tl1943619462%_)
                                        (letrec ((_%$%loop1943719465%_
                                                  (lambda (_%$%hd1943519468%_
                                                           _%$%arg1944119470%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd1943519468%_)
                                                        (let ((_%$%e1943819472%_
                                                               (gx#syntax-e
                                                                _%$%hd1943519468%_)))
                                                          (let ((_%$%lp-hd1943919475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e1943819472%_)))
                        (_%$%lp-tl1944019477%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e1943819472%_))))
                    (_%$%loop1943719465%_
                     _%$%lp-tl1944019477%_
                     (cons _%$%lp-hd1943919475%_ _%$%arg1944119470%_))))
                (let ((_%$%arg1944219480%_ (reverse _%$%arg1944119470%_)))
                  ((lambda (_%$%g1943019482%_)
                     (let ((_%$e19496%_
                            (gerbil/core/mop~MOP-2#!class-type-constructor
                             _%self19425%_)))
                       (if _%$e19496%_
                           ((lambda (_%make19499%_)
                              (cons _%make19499%_
                                    (foldr (lambda (_%$%g1950019503%_
                                                    _%$%g1950119505%_)
                                             (cons _%$%g1950019503%_
                                                   _%$%g1950119505%_))
                                           '()
                                           _%$%g1943019482%_)))
                            _%$e19496%_)
                           (gx#raise-syntax-error
                            '#f
                            '"no constructor defined for class"
                            _%stx19426%_
                            _%self19425%_))))
                   _%$%arg1944219480%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop1943719465%_
                                           _%$%target1943419460%_
                                           '()))
                                        (_%$%g1942819447%_
                                         _%$%g1942919450%_)))))
                              (_%$%g1942819447%_ _%$%g1942919450%_))))
                      (_%$%g1942819447%_ _%$%g1942919450%_)))))
          (_%$%g1942719509%_ _%stx19426%_))))
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'apply-macro-expander
     gerbil/core/mop~MOP-2#class-type-info::apply-macro-expander)
    (define gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?
      (let ((_%$%opt-lambda1940519415%_
             (lambda (_%stx19407%_ _%is?19408%_)
               (if (gx#identifier? _%stx19407%_)
                   (let ((_%$%e1940919411%_
                          (gx#syntax-local-value _%stx19407%_ false)))
                     (if _%$%e1940919411%_
                         (let ((_%e19413%_ _%$%e1940919411%_))
                           (if (gerbil/core/mop~MOP-2#runtime-type-info?
                                _%e19413%_)
                               (_%is?19408%_ _%e19413%_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g24050_
          (let ((_g24051_ (let () (declare (not safe)) (##length _g24050_))))
            (cond ((let () (declare (not safe)) (##fx= _g24051_ 1))
                   (apply (lambda (_%stx19418%_)
                            (let ((_%is?19420%_ true))
                              (_%$%opt-lambda1940519415%_
                               _%stx19418%_
                               _%is?19420%_)))
                          _g24050_))
                  ((let () (declare (not safe)) (##fx= _g24051_ 2))
                   (apply _%$%opt-lambda1940519415%_ _g24050_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?
                    _g24050_)))))))
    (define gerbil/core/mop~MOP-2#syntax-local-class-type-info?
      (let ((_%$%opt-lambda1938619396%_
             (lambda (_%stx19388%_ _%is?19389%_)
               (if (gx#identifier? _%stx19388%_)
                   (let ((_%$%e1939019392%_
                          (gx#syntax-local-value _%stx19388%_ false)))
                     (if _%$%e1939019392%_
                         (let ((_%e19394%_ _%$%e1939019392%_))
                           (if (gerbil/core/mop~MOP-2#class-type-info?
                                _%e19394%_)
                               (_%is?19389%_ _%e19394%_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g24052_
          (let ((_g24053_ (let () (declare (not safe)) (##length _g24052_))))
            (cond ((let () (declare (not safe)) (##fx= _g24053_ 1))
                   (apply (lambda (_%stx19399%_)
                            (let ((_%is?19401%_ true))
                              (_%$%opt-lambda1938619396%_
                               _%stx19399%_
                               _%is?19401%_)))
                          _g24052_))
                  ((let () (declare (not safe)) (##fx= _g24053_ 2))
                   (apply _%$%opt-lambda1938619396%_ _g24052_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                    _g24052_)))))))))
