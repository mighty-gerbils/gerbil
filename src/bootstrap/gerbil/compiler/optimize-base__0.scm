(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707646854)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp217604 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp217604
         '(type ssxi methods)
         '()
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args213025_
        (apply make-class-instance gxc#optimizer-info::t _$args213025_)))
    (define gxc#optimizer-info-type
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#optimizer-info::t 'type)))
    (define gxc#optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#optimizer-info::t 'ssxi)))
    (define gxc#optimizer-info-methods
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#optimizer-info::t 'methods)))
    (define gxc#optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#optimizer-info::t 'type)))
    (define gxc#optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#optimizer-info::t 'ssxi)))
    (define gxc#optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#optimizer-info::t 'methods)))
    (define gxc#&optimizer-info-type
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#optimizer-info::t 'type)))
    (define gxc#&optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#optimizer-info::t 'ssxi)))
    (define gxc#&optimizer-info-methods
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#optimizer-info::t 'methods)))
    (define gxc#&optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#optimizer-info::t 'type)))
    (define gxc#&optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#optimizer-info::t 'ssxi)))
    (define gxc#&optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#optimizer-info::t 'methods)))
    (define gxc#optimizer-info:::init!
      (lambda (_self213023_)
        (if (let ((__tmp217611
                   (let ()
                     (declare (not safe))
                     (##structure-length _self213023_))))
              (declare (not safe))
              (##fx< '3 __tmp217611))
            (begin
              (let ((__tmp217606
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217605
                     (let ()
                       (declare (not safe))
                       (##structure-type _self213023_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self213023_
                 __tmp217606
                 '1
                 __tmp217605
                 '#f))
              (let ((__tmp217608
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217607
                     (let ()
                       (declare (not safe))
                       (##structure-type _self213023_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self213023_
                 __tmp217608
                 '2
                 __tmp217607
                 '#f))
              (let ((__tmp217610
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217609
                     (let ()
                       (declare (not safe))
                       (##structure-type _self213023_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self213023_
                 __tmp217610
                 '3
                 __tmp217609
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self213023_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self213023_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp217612 (list)))
        (declare (not safe))
        (make-class-type 'gxc#!type::t '!type __tmp217612 '(id) '() '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args212898_
        (apply make-class-instance gxc#!type::t _$args212898_)))
    (define gxc#!type-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!type::t 'id)))
    (define gxc#!type-id-set!
      (let () (declare (not safe)) (make-class-slot-mutator gxc#!type::t 'id)))
    (define gxc#&!type-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!type::t 'id)))
    (define gxc#&!type-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!type::t 'id)))
    (define gxc#!alias::t
      (let ((__tmp217613 (list gxc#!type::t)))
        (declare (not safe))
        (make-class-type 'gxc#!alias::t '!alias __tmp217613 '() '() '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args212895_
        (apply make-class-instance gxc#!alias::t _$args212895_)))
    (define gxc#!alias-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!alias::t 'id)))
    (define gxc#!alias-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!alias::t 'id)))
    (define gxc#&!alias-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!alias::t 'id)))
    (define gxc#&!alias-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!alias::t 'id)))
    (define gxc#!procedure::t
      (let ((__tmp217614 (list gxc#!type::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp217614
         '()
         '()
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args212892_
        (apply make-class-instance gxc#!procedure::t _$args212892_)))
    (define gxc#!procedure-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!procedure::t 'id)))
    (define gxc#!procedure-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!procedure::t 'id)))
    (define gxc#&!procedure-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!procedure::t 'id)))
    (define gxc#&!procedure-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!procedure::t 'id)))
    (define gxc#!class::t
      (let ((__tmp217615 (list gxc#!type::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp217615
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 methods)
         '()
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args212889_
        (apply make-class-instance gxc#!class::t _$args212889_)))
    (define gxc#!class-super
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'super)))
    (define gxc#!class-precedence-list
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'precedence-list)))
    (define gxc#!class-slots
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'slots)))
    (define gxc#!class-fields
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'fields)))
    (define gxc#!class-constructor
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'constructor)))
    (define gxc#!class-struct?
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'struct?)))
    (define gxc#!class-final?
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'final?)))
    (define gxc#!class-methods
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'methods)))
    (define gxc#!class-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'id)))
    (define gxc#!class-super-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'super)))
    (define gxc#!class-precedence-list-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'precedence-list)))
    (define gxc#!class-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'slots)))
    (define gxc#!class-fields-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'fields)))
    (define gxc#!class-constructor-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'constructor)))
    (define gxc#!class-struct?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'struct?)))
    (define gxc#!class-final?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'final?)))
    (define gxc#!class-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'methods)))
    (define gxc#!class-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'id)))
    (define gxc#&!class-super
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'super)))
    (define gxc#&!class-precedence-list
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'precedence-list)))
    (define gxc#&!class-slots
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'slots)))
    (define gxc#&!class-fields
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'fields)))
    (define gxc#&!class-constructor
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'constructor)))
    (define gxc#&!class-struct?
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'struct?)))
    (define gxc#&!class-final?
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'final?)))
    (define gxc#&!class-methods
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'methods)))
    (define gxc#&!class-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'id)))
    (define gxc#&!class-super-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'super)))
    (define gxc#&!class-precedence-list-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'precedence-list)))
    (define gxc#&!class-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'slots)))
    (define gxc#&!class-fields-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'fields)))
    (define gxc#&!class-constructor-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'constructor)))
    (define gxc#&!class-struct?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'struct?)))
    (define gxc#&!class-final?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'final?)))
    (define gxc#&!class-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'methods)))
    (define gxc#&!class-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'id)))
    (define gxc#!predicate::t
      (let ((__tmp217616 (list gxc#!procedure::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp217616
         '()
         '()
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args212886_
        (apply make-class-instance gxc#!predicate::t _$args212886_)))
    (define gxc#!predicate-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!predicate::t 'id)))
    (define gxc#!predicate-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!predicate::t 'id)))
    (define gxc#&!predicate-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!predicate::t 'id)))
    (define gxc#&!predicate-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!predicate::t 'id)))
    (define gxc#!constructor::t
      (let ((__tmp217617 (list gxc#!procedure::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp217617
         '()
         '()
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args212883_
        (apply make-class-instance gxc#!constructor::t _$args212883_)))
    (define gxc#!constructor-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!constructor::t 'id)))
    (define gxc#!constructor-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!constructor::t 'id)))
    (define gxc#&!constructor-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!constructor::t 'id)))
    (define gxc#&!constructor-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!constructor::t 'id)))
    (define gxc#!accessor::t
      (let ((__tmp217618 (list gxc#!procedure::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp217618
         '(slot checked?)
         '()
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args212880_
        (apply make-class-instance gxc#!accessor::t _$args212880_)))
    (define gxc#!accessor-slot
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!accessor::t 'slot)))
    (define gxc#!accessor-checked?
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!accessor::t 'checked?)))
    (define gxc#!accessor-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!accessor::t 'id)))
    (define gxc#!accessor-slot-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!accessor::t 'slot)))
    (define gxc#!accessor-checked?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!accessor::t 'checked?)))
    (define gxc#!accessor-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!accessor::t 'id)))
    (define gxc#&!accessor-slot
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!accessor::t 'slot)))
    (define gxc#&!accessor-checked?
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!accessor::t 'checked?)))
    (define gxc#&!accessor-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!accessor::t 'id)))
    (define gxc#&!accessor-slot-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!accessor::t 'slot)))
    (define gxc#&!accessor-checked?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!accessor::t 'checked?)))
    (define gxc#&!accessor-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!accessor::t 'id)))
    (define gxc#!mutator::t
      (let ((__tmp217619 (list gxc#!procedure::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp217619
         '(slot checked?)
         '()
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args212877_
        (apply make-class-instance gxc#!mutator::t _$args212877_)))
    (define gxc#!mutator-slot
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!mutator::t 'slot)))
    (define gxc#!mutator-checked?
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!mutator::t 'checked?)))
    (define gxc#!mutator-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!mutator::t 'id)))
    (define gxc#!mutator-slot-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!mutator::t 'slot)))
    (define gxc#!mutator-checked?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!mutator::t 'checked?)))
    (define gxc#!mutator-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!mutator::t 'id)))
    (define gxc#&!mutator-slot
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!mutator::t 'slot)))
    (define gxc#&!mutator-checked?
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!mutator::t 'checked?)))
    (define gxc#&!mutator-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!mutator::t 'id)))
    (define gxc#&!mutator-slot-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!mutator::t 'slot)))
    (define gxc#&!mutator-checked?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!mutator::t 'checked?)))
    (define gxc#&!mutator-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!mutator::t 'id)))
    (define gxc#!lambda::t
      (let ((__tmp217620 (list gxc#!procedure::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp217620
         '(arity dispatch inline inline-typedecl)
         '()
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args212874_
        (apply make-class-instance gxc#!lambda::t _$args212874_)))
    (define gxc#!lambda-arity
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!lambda::t 'arity)))
    (define gxc#!lambda-dispatch
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!lambda::t 'dispatch)))
    (define gxc#!lambda-inline
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!lambda::t 'inline)))
    (define gxc#!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!lambda::t 'inline-typedecl)))
    (define gxc#!lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!lambda::t 'id)))
    (define gxc#!lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!lambda::t 'arity)))
    (define gxc#!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!lambda::t 'dispatch)))
    (define gxc#!lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!lambda::t 'inline)))
    (define gxc#!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!lambda::t 'inline-typedecl)))
    (define gxc#!lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!lambda::t 'id)))
    (define gxc#&!lambda-arity
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!lambda::t 'arity)))
    (define gxc#&!lambda-dispatch
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!lambda::t 'dispatch)))
    (define gxc#&!lambda-inline
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!lambda::t 'inline)))
    (define gxc#&!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!lambda::t 'inline-typedecl)))
    (define gxc#&!lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!lambda::t 'id)))
    (define gxc#&!lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!lambda::t 'arity)))
    (define gxc#&!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!lambda::t 'dispatch)))
    (define gxc#&!lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!lambda::t 'inline)))
    (define gxc#&!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!lambda::t 'inline-typedecl)))
    (define gxc#&!lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!lambda::t 'id)))
    (define gxc#!case-lambda::t
      (let ((__tmp217621 (list gxc#!procedure::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp217621
         '(clauses)
         '()
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args212871_
        (apply make-class-instance gxc#!case-lambda::t _$args212871_)))
    (define gxc#!case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!case-lambda::t 'clauses)))
    (define gxc#!case-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!case-lambda::t 'id)))
    (define gxc#!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!case-lambda::t 'clauses)))
    (define gxc#!case-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!case-lambda::t 'id)))
    (define gxc#&!case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!case-lambda::t 'clauses)))
    (define gxc#&!case-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!case-lambda::t 'id)))
    (define gxc#&!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!case-lambda::t 'clauses)))
    (define gxc#&!case-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!case-lambda::t 'id)))
    (define gxc#!kw-lambda::t
      (let ((__tmp217622 (list gxc#!procedure::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp217622
         '(table dispatch)
         '()
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args212868_
        (apply make-class-instance gxc#!kw-lambda::t _$args212868_)))
    (define gxc#!kw-lambda-table
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!kw-lambda::t 'table)))
    (define gxc#!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!kw-lambda::t 'dispatch)))
    (define gxc#!kw-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!kw-lambda::t 'id)))
    (define gxc#!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!kw-lambda::t 'table)))
    (define gxc#!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!kw-lambda::t 'dispatch)))
    (define gxc#!kw-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!kw-lambda::t 'id)))
    (define gxc#&!kw-lambda-table
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'table)))
    (define gxc#&!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'dispatch)))
    (define gxc#&!kw-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'id)))
    (define gxc#&!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'table)))
    (define gxc#&!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'dispatch)))
    (define gxc#&!kw-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'id)))
    (define gxc#!kw-lambda-primary::t
      (let ((__tmp217623 (list gxc#!procedure::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp217623
         '(keys main)
         '()
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args212865_
        (apply make-class-instance gxc#!kw-lambda-primary::t _$args212865_)))
    (define gxc#!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!kw-lambda-primary::t 'main)))
    (define gxc#!kw-lambda-primary-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!kw-lambda-primary::t 'id)))
    (define gxc#!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!kw-lambda-primary::t 'main)))
    (define gxc#!kw-lambda-primary-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!kw-lambda-primary::t 'id)))
    (define gxc#&!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#&!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'main)))
    (define gxc#&!kw-lambda-primary-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'id)))
    (define gxc#&!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#&!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'main)))
    (define gxc#&!kw-lambda-primary-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'id)))
    (define gxc#!primitive::t
      (let ((__tmp217624 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp217624
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args212862_
        (apply make-class-instance gxc#!primitive::t _$args212862_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp217625 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp217625
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args212859_
        (apply make-class-instance gxc#!primitive-lambda::t _$args212859_)))
    (define gxc#!primitive-lambda-arity
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!primitive-lambda::t 'arity)))
    (define gxc#!primitive-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!primitive-lambda::t 'dispatch)))
    (define gxc#!primitive-lambda-inline
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!primitive-lambda::t 'inline)))
    (define gxc#!primitive-lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!primitive-lambda::t 'inline-typedecl)))
    (define gxc#!primitive-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!primitive-lambda::t 'id)))
    (define gxc#!primitive-lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!primitive-lambda::t 'arity)))
    (define gxc#!primitive-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!primitive-lambda::t 'dispatch)))
    (define gxc#!primitive-lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!primitive-lambda::t 'inline)))
    (define gxc#!primitive-lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!primitive-lambda::t 'inline-typedecl)))
    (define gxc#!primitive-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!primitive-lambda::t 'id)))
    (define gxc#&!primitive-lambda-arity
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!primitive-lambda::t 'arity)))
    (define gxc#&!primitive-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#!primitive-lambda::t
         'dispatch)))
    (define gxc#&!primitive-lambda-inline
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!primitive-lambda::t 'inline)))
    (define gxc#&!primitive-lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#!primitive-lambda::t
         'inline-typedecl)))
    (define gxc#&!primitive-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!primitive-lambda::t 'id)))
    (define gxc#&!primitive-lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!primitive-lambda::t 'arity)))
    (define gxc#&!primitive-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#!primitive-lambda::t
         'dispatch)))
    (define gxc#&!primitive-lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!primitive-lambda::t 'inline)))
    (define gxc#&!primitive-lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#!primitive-lambda::t
         'inline-typedecl)))
    (define gxc#&!primitive-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!primitive-lambda::t 'id)))
    (define gxc#!primitive-case-lambda::t
      (let ((__tmp217626 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp217626
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args212856_
        (apply make-class-instance
               gxc#!primitive-case-lambda::t
               _$args212856_)))
    (define gxc#!primitive-case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!primitive-case-lambda::t 'clauses)))
    (define gxc#!primitive-case-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!primitive-case-lambda::t 'id)))
    (define gxc#!primitive-case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!primitive-case-lambda::t 'clauses)))
    (define gxc#!primitive-case-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!primitive-case-lambda::t 'id)))
    (define gxc#&!primitive-case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#!primitive-case-lambda::t
         'clauses)))
    (define gxc#&!primitive-case-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#!primitive-case-lambda::t
         'id)))
    (define gxc#&!primitive-case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#!primitive-case-lambda::t
         'clauses)))
    (define gxc#&!primitive-case-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!primitive-case-lambda::t 'id)))
    (define gxc#!class:::init!__0
      (lambda (_self212736_
               _id212737_
               _super212738_
               _slots212739_
               _ctor-method212740_
               _struct?212741_
               _final?212742_)
        (let _lp212744_ ((_rest212746_ _super212738_))
          (let* ((_rest212747212755_ _rest212746_)
                 (_else212749212763_ (lambda () '#!void))
                 (_K212751212769_
                  (lambda (_rest212766_ _super-id212767_)
                    (if (let ((__obj217550
                               (let ((__tmp217629
                                      (let ((__tmp217630
                                             (let ()
                                               (declare (not safe))
                                               (cons _id212737_ '()))))
                                        (declare (not safe))
                                        (cons '!class __tmp217630))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp217629
                                  _super-id212767_))))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj217550
                                 'gxc#!class::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj217550
                                 '8
                                 gxc#!class::t
                                 '#f))
                              (class-slot-ref
                               gxc#!class::t
                               __obj217550
                               'final?)))
                        (let ((__tmp217627
                               (let ((__tmp217628
                                      (let ()
                                        (declare (not safe))
                                        (cons _id212737_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp217628))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp217627
                           _super-id212767_))
                        '#!void)
                    (let () (declare (not safe)) (_lp212744_ _rest212766_)))))
            (if (let () (declare (not safe)) (##pair? _rest212747212755_))
                (let ((_hd212752212772_
                       (let ()
                         (declare (not safe))
                         (##car _rest212747212755_)))
                      (_tl212753212774_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest212747212755_))))
                  (let* ((_super-id212777_ _hd212752212772_)
                         (_rest212779_ _tl212753212774_))
                    (declare (not safe))
                    (_K212751212769_ _rest212779_ _super-id212777_)))
                '#!void)))
        (let* ((_ctor-method212829_
                (let ((_$e212781_ _ctor-method212740_))
                  (if _$e212781_
                      _$e212781_
                      (let _lp212784_ ((_rest212786_ _super212738_)
                                       (_method212787_ '#f))
                        (let* ((_rest212788212796_ _rest212786_)
                               (_else212790212804_ (lambda () _method212787_))
                               (_K212792212817_
                                (lambda (_rest212807_ _super-id212808_)
                                  (let* ((_klass212810_
                                          (let ((__tmp217631
                                                 (let ((__tmp217632
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id212737_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp217632))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp217631
                                             _super-id212808_)))
                                         (_$e212812_
                                          (let ((__obj217551 _klass212810_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj217551
                                                   'gxc#!class::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj217551
                                                   '6
                                                   gxc#!class::t
                                                   '#f))
                                                (class-slot-ref
                                                 gxc#!class::t
                                                 __obj217551
                                                 'constructor)))))
                                    (if _$e212812_
                                        ((lambda (_ctor-method212815_)
                                           (if _method212787_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method212815_
                                                          _method212787_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp212784_
                                                      _rest212807_
                                                      _ctor-method212815_))
                                                   (let ((__tmp217633
                                                          (let ((__tmp217634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id212737_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp217634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp217633
                                                      _method212787_
                                                      _ctor-method212815_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp212784_
                                                  _rest212807_
                                                  _ctor-method212815_))))
                                         _$e212812_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp212784_
                                           _rest212807_
                                           _method212787_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest212788212796_))
                              (let ((_hd212793212820_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest212788212796_)))
                                    (_tl212794212822_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest212788212796_))))
                                (let* ((_super-id212825_ _hd212793212820_)
                                       (_rest212827_ _tl212794212822_))
                                  (declare (not safe))
                                  (_K212792212817_
                                   _rest212827_
                                   _super-id212825_)))
                              (let ()
                                (declare (not safe))
                                (_else212790212804_))))))))
               (_g217635_
                (let ((__tmp217640
                       (lambda (_klass-id212831_)
                         (let ((__tmp217641
                                (let ((__obj217552
                                       (let ((__tmp217642
                                              (let ((__tmp217643
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _id212737_ '()))))
                                                (declare (not safe))
                                                (cons '!class __tmp217643))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-class
                                          __tmp217642
                                          _klass-id212831_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj217552
                                         'gxc#!class::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj217552
                                         '3
                                         gxc#!class::t
                                         '#f))
                                      (class-slot-ref
                                       gxc#!class::t
                                       __obj217552
                                       'precedence-list)))))
                           (declare (not safe))
                           (cons _klass-id212831_ __tmp217641))))
                      (__tmp217637
                       (lambda (_klass-id212833_)
                         (let ((__obj217553
                                (let ((__tmp217638
                                       (let ((__tmp217639
                                              (let ()
                                                (declare (not safe))
                                                (cons _id212737_ '()))))
                                         (declare (not safe))
                                         (cons '!class __tmp217639))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-class
                                   __tmp217638
                                   _klass-id212833_))))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj217553
                                  'gxc#!class::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj217553
                                  '7
                                  gxc#!class::t
                                  '#f))
                               (class-slot-ref
                                gxc#!class::t
                                __obj217553
                                'struct?))))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp217640
                   __tmp217637
                   eq?
                   identity
                   '()
                   _super212738_))))
          (begin
            (let ((_g217636_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g217635_)
                         (##vector-length _g217635_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g217636_ 2)))
                  (error "Context expects 2 values" _g217636_)))
            (let ((_precedence-list212835_
                   (let () (declare (not safe)) (##vector-ref _g217635_ 0)))
                  (_super-struct212836_
                   (let () (declare (not safe)) (##vector-ref _g217635_ 1))))
              (let ((_fields212842_
                     (let* ((_base-struct212840_
                             (let ((__tmp217644
                                    (lambda (_klass-id212838_)
                                      (let ((__obj217554
                                             (let ((__tmp217645
                                                    (let ((__tmp217646
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _id212737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '!class __tmp217646))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#optimizer-resolve-class
                                                __tmp217645
                                                _klass-id212838_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj217554
                                               'gxc#!class::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj217554
                                               '7
                                               gxc#!class::t
                                               '#f))
                                            (class-slot-ref
                                             gxc#!class::t
                                             __obj217554
                                             'struct?))))))
                               (declare (not safe))
                               (find __tmp217644 _precedence-list212835_)))
                            (__tmp217647
                             (let ((__tmp217648
                                    (let ()
                                      (declare (not safe))
                                      (cons _id212737_ '()))))
                               (declare (not safe))
                               (cons '!class __tmp217648))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp217647
                        _base-struct212840_
                        _precedence-list212835_
                        _slots212739_))))
                (let ((__obj217555 _self212736_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj217555
                         'gxc#!type::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         __obj217555
                         _id212737_
                         '1
                         gxc#!type::t
                         '#f))
                      (class-slot-set!
                       gxc#!type::t
                       __obj217555
                       'id
                       _id212737_)))
                (let ((__obj217556 _self212736_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj217556
                         'gxc#!class::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         __obj217556
                         _super212738_
                         '2
                         gxc#!class::t
                         '#f))
                      (class-slot-set!
                       gxc#!class::t
                       __obj217556
                       'super
                       _super212738_)))
                (let ((__obj217557 _self212736_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj217557
                         'gxc#!class::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         __obj217557
                         _precedence-list212835_
                         '3
                         gxc#!class::t
                         '#f))
                      (class-slot-set!
                       gxc#!class::t
                       __obj217557
                       'precedence-list
                       _precedence-list212835_)))
                (let ((__obj217558 _self212736_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj217558
                         'gxc#!class::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         __obj217558
                         _slots212739_
                         '4
                         gxc#!class::t
                         '#f))
                      (class-slot-set!
                       gxc#!class::t
                       __obj217558
                       'slots
                       _slots212739_)))
                (let ((__obj217559 _self212736_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj217559
                         'gxc#!class::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         __obj217559
                         _fields212842_
                         '5
                         gxc#!class::t
                         '#f))
                      (class-slot-set!
                       gxc#!class::t
                       __obj217559
                       'fields
                       _fields212842_)))
                (let ((__obj217560 _self212736_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj217560
                         'gxc#!class::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         __obj217560
                         _ctor-method212829_
                         '6
                         gxc#!class::t
                         '#f))
                      (class-slot-set!
                       gxc#!class::t
                       __obj217560
                       'constructor
                       _ctor-method212829_)))
                (let ((__obj217561 _self212736_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj217561
                         'gxc#!class::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         __obj217561
                         _struct?212741_
                         '7
                         gxc#!class::t
                         '#f))
                      (class-slot-set!
                       gxc#!class::t
                       __obj217561
                       'struct?
                       _struct?212741_)))
                (let ((__obj217562 _self212736_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj217562
                         'gxc#!class::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         __obj217562
                         _final?212742_
                         '8
                         gxc#!class::t
                         '#f))
                      (class-slot-set!
                       gxc#!class::t
                       __obj217562
                       'final?
                       _final?212742_)))))))))
    (define gxc#!class:::init!__1
      (lambda (_self212845_
               _id212846_
               _super212847_
               _precedence-list212848_
               _slots212849_
               _fields212850_
               _constructor212851_
               _struct?212852_
               _final?212853_
               _methods212854_)
        (let ((__obj217563 _self212845_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of? __obj217563 'gxc#!type::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217563
                 _id212846_
                 '1
                 gxc#!type::t
                 '#f))
              (class-slot-set! gxc#!type::t __obj217563 'id _id212846_)))
        (let ((__obj217564 _self212845_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of? __obj217564 'gxc#!class::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217564
                 _super212847_
                 '2
                 gxc#!class::t
                 '#f))
              (class-slot-set!
               gxc#!class::t
               __obj217564
               'super
               _super212847_)))
        (let ((__obj217565 _self212845_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of? __obj217565 'gxc#!class::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217565
                 _precedence-list212848_
                 '3
                 gxc#!class::t
                 '#f))
              (class-slot-set!
               gxc#!class::t
               __obj217565
               'precedence-list
               _precedence-list212848_)))
        (let ((__obj217566 _self212845_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of? __obj217566 'gxc#!class::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217566
                 _slots212849_
                 '4
                 gxc#!class::t
                 '#f))
              (class-slot-set!
               gxc#!class::t
               __obj217566
               'slots
               _slots212849_)))
        (let ((__obj217567 _self212845_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of? __obj217567 'gxc#!class::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217567
                 _fields212850_
                 '5
                 gxc#!class::t
                 '#f))
              (class-slot-set!
               gxc#!class::t
               __obj217567
               'fields
               _fields212850_)))
        (let ((__obj217568 _self212845_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of? __obj217568 'gxc#!class::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217568
                 _constructor212851_
                 '6
                 gxc#!class::t
                 '#f))
              (class-slot-set!
               gxc#!class::t
               __obj217568
               'constructor
               _constructor212851_)))
        (let ((__obj217569 _self212845_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of? __obj217569 'gxc#!class::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217569
                 _struct?212852_
                 '7
                 gxc#!class::t
                 '#f))
              (class-slot-set!
               gxc#!class::t
               __obj217569
               'struct?
               _struct?212852_)))
        (let ((__obj217570 _self212845_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of? __obj217570 'gxc#!class::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217570
                 _final?212853_
                 '8
                 gxc#!class::t
                 '#f))
              (class-slot-set!
               gxc#!class::t
               __obj217570
               'final?
               _final?212853_)))
        (if _methods212854_
            (let ((__obj217571 _self212845_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj217571
                     'gxc#!class::t))
                  (let ((__tmp217649
                         (let ()
                           (declare (not safe))
                           (list->table _methods212854_ 'test: eq?))))
                    (declare (not safe))
                    (##unchecked-structure-set!
                     __obj217571
                     __tmp217649
                     '9
                     gxc#!class::t
                     '#f))
                  (class-slot-set!
                   gxc#!class::t
                   __obj217571
                   'methods
                   (let ()
                     (declare (not safe))
                     (list->table _methods212854_ 'test: eq?)))))
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g217651_
        (let ((_g217650_ (let () (declare (not safe)) (##length _g217651_))))
          (cond ((let () (declare (not safe)) (##fx= _g217650_ 7))
                 (apply (lambda (_self212736_
                                 _id212737_
                                 _super212738_
                                 _slots212739_
                                 _ctor-method212740_
                                 _struct?212741_
                                 _final?212742_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self212736_
                             _id212737_
                             _super212738_
                             _slots212739_
                             _ctor-method212740_
                             _struct?212741_
                             _final?212742_)))
                        _g217651_))
                ((let () (declare (not safe)) (##fx= _g217650_ 10))
                 (apply (lambda (_self212845_
                                 _id212846_
                                 _super212847_
                                 _precedence-list212848_
                                 _slots212849_
                                 _fields212850_
                                 _constructor212851_
                                 _struct?212852_
                                 _final?212853_
                                 _methods212854_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self212845_
                             _id212846_
                             _super212847_
                             _precedence-list212848_
                             _slots212849_
                             _fields212850_
                             _constructor212851_
                             _struct?212852_
                             _final?212853_
                             _methods212854_)))
                        _g217651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g217651_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t217495)
        (let ((__fields217496
               (let ((__tmp217505
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217495 'fields))))
                 (if __tmp217505 __tmp217505 (error '"Unknown slot" 'fields))))
              (__slots217497
               (let ((__tmp217506
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217495 'slots))))
                 (if __tmp217506 __tmp217506 (error '"Unknown slot" 'slots))))
              (__id217498
               (let ((__tmp217507
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217495 'id))))
                 (if __tmp217507 __tmp217507 (error '"Unknown slot" 'id))))
              (__constructor217499
               (let ((__tmp217508
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217495 'constructor))))
                 (if __tmp217508
                     __tmp217508
                     (error '"Unknown slot" 'constructor))))
              (__struct?217500
               (let ((__tmp217509
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217495 'struct?))))
                 (if __tmp217509
                     __tmp217509
                     (error '"Unknown slot" 'struct?))))
              (__precedence-list217501
               (let ((__tmp217510
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217495 'precedence-list))))
                 (if __tmp217510
                     __tmp217510
                     (error '"Unknown slot" 'precedence-list))))
              (__super217502
               (let ((__tmp217511
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217495 'super))))
                 (if __tmp217511 __tmp217511 (error '"Unknown slot" 'super))))
              (__final?217503
               (let ((__tmp217512
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217495 'final?))))
                 (if __tmp217512 __tmp217512 (error '"Unknown slot" 'final?))))
              (__methods217504
               (let ((__tmp217513
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217495 'methods))))
                 (if __tmp217513
                     __tmp217513
                     (error '"Unknown slot" 'methods)))))
          (lambda _g217653_
            (let ((_g217652_
                   (let () (declare (not safe)) (##length _g217653_))))
              (cond ((let () (declare (not safe)) (##fx= _g217652_ 7))
                     (apply (lambda (_self212736_
                                     _id212737_
                                     _super212738_
                                     _slots212739_
                                     _ctor-method212740_
                                     _struct?212741_
                                     _final?212742_)
                              (let _lp212744_ ((_rest212746_ _super212738_))
                                (let* ((_rest212747212755_ _rest212746_)
                                       (_else212749212763_ (lambda () '#!void))
                                       (_K212751212769_
                                        (lambda (_rest212766_ _super-id212767_)
                                          (if (let ((__obj217572
                                                     (let ((__tmp217656
                                                            (let ((__tmp217657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _id212737_ '()))))
                      (declare (not safe))
                      (cons '!class __tmp217657))))
               (declare (not safe))
               (gxc#optimizer-resolve-class __tmp217656 _super-id212767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj217572
                                                       'gxc#!class::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __obj217572
                                                       '8
                                                       gxc#!class::t
                                                       '#f))
                                                    (class-slot-ref
                                                     gxc#!class::t
                                                     __obj217572
                                                     'final?)))
                                              (let ((__tmp217654
                                                     (let ((__tmp217655
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id212737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp217655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp217654
                                                 _super-id212767_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp212744_ _rest212766_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest212747212755_))
                                      (let ((_hd212752212772_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest212747212755_)))
                                            (_tl212753212774_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest212747212755_))))
                                        (let* ((_super-id212777_
                                                _hd212752212772_)
                                               (_rest212779_ _tl212753212774_))
                                          (declare (not safe))
                                          (_K212751212769_
                                           _rest212779_
                                           _super-id212777_)))
                                      '#!void)))
                              (let* ((_ctor-method212829_
                                      (let ((_$e212781_ _ctor-method212740_))
                                        (if _$e212781_
                                            _$e212781_
                                            (let _lp212784_ ((_rest212786_
                                                              _super212738_)
                                                             (_method212787_
                                                              '#f))
                                              (let* ((_rest212788212796_
                                                      _rest212786_)
                                                     (_else212790212804_
                                                      (lambda ()
                                                        _method212787_))
                                                     (_K212792212817_
                                                      (lambda (_rest212807_
                                                               _super-id212808_)
                                                        (let* ((_klass212810_
                                                                (let ((__tmp217658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp217659
                                      (let ()
                                        (declare (not safe))
                                        (cons _id212737_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp217659))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp217658
                           _super-id212808_)))
                       (_$e212812_
                        (let ((__obj217573 _klass212810_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj217573
                                 'gxc#!class::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj217573
                                 '6
                                 gxc#!class::t
                                 '#f))
                              (class-slot-ref
                               gxc#!class::t
                               __obj217573
                               'constructor)))))
                  (if _$e212812_
                      ((lambda (_ctor-method212815_)
                         (if _method212787_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method212815_ _method212787_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp212784_
                                    _rest212807_
                                    _ctor-method212815_))
                                 (let ((__tmp217660
                                        (let ((__tmp217661
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id212737_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp217661))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp217660
                                    _method212787_
                                    _ctor-method212815_)))
                             (let ()
                               (declare (not safe))
                               (_lp212784_ _rest212807_ _ctor-method212815_))))
                       _$e212812_)
                      (let ()
                        (declare (not safe))
                        (_lp212784_ _rest212807_ _method212787_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest212788212796_))
                                                    (let ((_hd212793212820_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest212788212796_)))
                                                          (_tl212794212822_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest212788212796_))))
                                                      (let* ((_super-id212825_
                                                              _hd212793212820_)
                                                             (_rest212827_
                                                              _tl212794212822_))
                                                        (declare (not safe))
                                                        (_K212792212817_
                                                         _rest212827_
                                                         _super-id212825_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else212790212804_))))))))
                                     (_g217662_
                                      (let ((__tmp217667
                                             (lambda (_klass-id212831_)
                                               (let ((__tmp217668
                                                      (let ((__obj217574
                                                             (let ((__tmp217669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp217670
                                   (let ()
                                     (declare (not safe))
                                     (cons _id212737_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp217670))))
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        __tmp217669
                        _klass-id212831_))))
                (if (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       __obj217574
                       'gxc#!class::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       __obj217574
                       '3
                       gxc#!class::t
                       '#f))
                    (class-slot-ref
                     gxc#!class::t
                     __obj217574
                     'precedence-list)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id212831_
                                                       __tmp217668))))
                                            (__tmp217664
                                             (lambda (_klass-id212833_)
                                               (let ((__obj217575
                                                      (let ((__tmp217665
                                                             (let ((__tmp217666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id212737_ '()))))
                       (declare (not safe))
                       (cons '!class __tmp217666))))
                (declare (not safe))
                (gxc#optimizer-resolve-class __tmp217665 _klass-id212833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        __obj217575
                                                        'gxc#!class::t))
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        __obj217575
                                                        '7
                                                        gxc#!class::t
                                                        '#f))
                                                     (class-slot-ref
                                                      gxc#!class::t
                                                      __obj217575
                                                      'struct?))))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp217667
                                         __tmp217664
                                         eq?
                                         identity
                                         '()
                                         _super212738_))))
                                (begin
                                  (let ((_g217663_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217662_)
                                               (##vector-length _g217662_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217663_ 2)))
                                        (error "Context expects 2 values"
                                               _g217663_)))
                                  (let ((_precedence-list212835_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g217662_ 0)))
                                        (_super-struct212836_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g217662_ 1))))
                                    (let ((_fields212842_
                                           (let* ((_base-struct212840_
                                                   (let ((__tmp217671
                                                          (lambda (_klass-id212838_)
                                                            (let ((__obj217576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp217672
                                  (let ((__tmp217673
                                         (let ()
                                           (declare (not safe))
                                           (cons _id212737_ '()))))
                                    (declare (not safe))
                                    (cons '!class __tmp217673))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              __tmp217672
                              _klass-id212838_))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj217576
                             'gxc#!class::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj217576
                             '7
                             gxc#!class::t
                             '#f))
                          (class-slot-ref
                           gxc#!class::t
                           __obj217576
                           'struct?))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (find __tmp217671
                                                           _precedence-list212835_)))
                                                  (__tmp217674
                                                   (let ((__tmp217675
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _id212737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '!class
                                                           __tmp217675))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp217674
                                              _base-struct212840_
                                              _precedence-list212835_
                                              _slots212739_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212736_
                                         _id212737_
                                         __id217498
                                         __t217495
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212736_
                                         _super212738_
                                         __super217502
                                         __t217495
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212736_
                                         _precedence-list212835_
                                         __precedence-list217501
                                         __t217495
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212736_
                                         _slots212739_
                                         __slots217497
                                         __t217495
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212736_
                                         _fields212842_
                                         __fields217496
                                         __t217495
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212736_
                                         _ctor-method212829_
                                         __constructor217499
                                         __t217495
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212736_
                                         _struct?212741_
                                         __struct?217500
                                         __t217495
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212736_
                                         _final?212742_
                                         __final?217503
                                         __t217495
                                         '#f)))))))
                            _g217653_))
                    ((let () (declare (not safe)) (##fx= _g217652_ 10))
                     (apply (lambda (_self212845_
                                     _id212846_
                                     _super212847_
                                     _precedence-list212848_
                                     _slots212849_
                                     _fields212850_
                                     _constructor212851_
                                     _struct?212852_
                                     _final?212853_
                                     _methods212854_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212845_
                                 _id212846_
                                 __id217498
                                 __t217495
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212845_
                                 _super212847_
                                 __super217502
                                 __t217495
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212845_
                                 _precedence-list212848_
                                 __precedence-list217501
                                 __t217495
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212845_
                                 _slots212849_
                                 __slots217497
                                 __t217495
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212845_
                                 _fields212850_
                                 __fields217496
                                 __t217495
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212845_
                                 _constructor212851_
                                 __constructor217499
                                 __t217495
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212845_
                                 _struct?212852_
                                 __struct?217500
                                 __t217495
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212845_
                                 _final?212853_
                                 __final?217503
                                 __t217495
                                 '#f))
                              (if _methods212854_
                                  (let ((__tmp217676
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods212854_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self212845_
                                     __tmp217676
                                     __methods217504
                                     __t217495
                                     '#f))
                                  '#!void))
                            _g217653_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g217653_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where212588_
               _base-struct212589_
               _precedence-list212590_
               _direct-slots212591_)
        (let* ((_base-fields212593_
                (if _base-struct212589_
                    (let ((__obj217577
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _where212588_
                              _base-struct212589_))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj217577
                             'gxc#!class::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj217577
                             '5
                             gxc#!class::t
                             '#f))
                          (class-slot-ref gxc#!class::t __obj217577 'fields)))
                    '()))
               (_r-fields212595_ (reverse _base-fields212593_))
               (_seen-slots212603_
                (let ((_tab212597_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g212598212600_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab212597_ _g212598212600_ '#t)))
                   _base-fields212593_)
                  _tab212597_))
               (_process-slot212607_
                (lambda (_slot212605_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots212603_ _slot212605_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots212603_ _slot212605_ '#t))
                        (set! _r-fields212595_
                              (let ()
                                (declare (not safe))
                                (cons _slot212605_ _r-fields212595_))))))))
          (for-each
           (lambda (_mixin212610_)
             (let ((_klass212612_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where212588_
                       _mixin212610_))))
               (if (let ((__obj217578 _klass212612_))
                     (if (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            __obj217578
                            'gxc#!class::t))
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            __obj217578
                            '7
                            gxc#!class::t
                            '#f))
                         (class-slot-ref gxc#!class::t __obj217578 'struct?)))
                   '#!void
                   (for-each
                    _process-slot212607_
                    (let ((__obj217579 _klass212612_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj217579
                             'gxc#!class::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj217579
                             '5
                             gxc#!class::t
                             '#f))
                          (class-slot-ref
                           gxc#!class::t
                           __obj217579
                           'fields)))))))
           _precedence-list212590_)
          (for-each _process-slot212607_ _direct-slots212591_)
          (reverse _r-fields212595_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass212547_ _slot212548_)
        (let _lp212550_ ((_rest212552_
                          (let ((__obj217582 _klass212547_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj217582
                                   'gxc#!class::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj217582
                                   '5
                                   gxc#!class::t
                                   '#f))
                                (class-slot-ref
                                 gxc#!class::t
                                 __obj217582
                                 'fields))))
                         (_offset212553_ '1))
          (let* ((_rest212554212562_ _rest212552_)
                 (_else212556212570_
                  (lambda ()
                    (let ((__tmp217678
                           (let ((__obj217580 _klass212547_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj217580
                                    'gxc#!type::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj217580
                                    '1
                                    gxc#!type::t
                                    '#f))
                                 (class-slot-ref
                                  gxc#!type::t
                                  __obj217580
                                  'id))))
                          (__tmp217677
                           (let ((__obj217581 _klass212547_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj217581
                                    'gxc#!class::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj217581
                                    '5
                                    gxc#!class::t
                                    '#f))
                                 (class-slot-ref
                                  gxc#!class::t
                                  __obj217581
                                  'fields)))))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp217678
                       __tmp217677
                       _slot212548_))))
                 (_K212558212576_
                  (lambda (_rest212573_ _s212574_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s212574_ _slot212548_))
                        _offset212553_
                        (let ((__tmp217679
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset212553_ '1))))
                          (declare (not safe))
                          (_lp212550_ _rest212573_ __tmp217679))))))
            (if (let () (declare (not safe)) (##pair? _rest212554212562_))
                (let ((_hd212559212579_
                       (let ()
                         (declare (not safe))
                         (##car _rest212554212562_)))
                      (_tl212560212581_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest212554212562_))))
                  (let* ((_s212584_ _hd212559212579_)
                         (_rest212586_ _tl212560212581_))
                    (declare (not safe))
                    (_K212558212576_ _rest212586_ _s212584_)))
                (let () (declare (not safe)) (_else212556212570_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass212505_ _slot212506_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass212505_ _slot212506_))
            _klass212505_
            (let _lp212508_ ((_rest212510_
                              (let ((__obj217584 _klass212505_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj217584
                                       'gxc#!class::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj217584
                                       '3
                                       gxc#!class::t
                                       '#f))
                                    (class-slot-ref
                                     gxc#!class::t
                                     __obj217584
                                     'precedence-list)))))
              (let* ((_rest212511212519_ _rest212510_)
                     (_else212513212527_ (lambda () '#f))
                     (_K212515212535_
                      (lambda (_rest212530_ _super212531_)
                        (let ((_super-class212533_
                               (let ((__tmp217680
                                      (let ((__tmp217681
                                             (let ((__tmp217683
                                                    (let ((__obj217583
                                                           _klass212505_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj217583
                                                             'gxc#!type::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj217583
                                                             '1
                                                             gxc#!type::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gxc#!type::t
                                                           __obj217583
                                                           'id))))
                                                   (__tmp217682
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot212506_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp217683
                                                     __tmp217682))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp217681))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp217680
                                  _super212531_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class212533_
                                 _slot212506_))
                              _super-class212533_
                              (let ()
                                (declare (not safe))
                                (_lp212508_ _rest212530_)))))))
                (if (let () (declare (not safe)) (##pair? _rest212511212519_))
                    (let ((_hd212516212538_
                           (let ()
                             (declare (not safe))
                             (##car _rest212511212519_)))
                          (_tl212517212540_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest212511212519_))))
                      (let* ((_super212543_ _hd212516212538_)
                             (_rest212545_ _tl212517212540_))
                        (declare (not safe))
                        (_K212515212535_ _rest212545_ _super212543_)))
                    (let () (declare (not safe)) (_else212513212527_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass212502_ _slot212503_)
        (if (let ((__obj217585 _klass212502_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj217585
                     'gxc#!class::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref
                     __obj217585
                     '7
                     gxc#!class::t
                     '#f))
                  (class-slot-ref gxc#!class::t __obj217585 'struct?)))
            (memq _slot212503_
                  (let ((__obj217586 _klass212502_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj217586
                           'gxc#!class::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           __obj217586
                           '5
                           gxc#!class::t
                           '#f))
                        (class-slot-ref gxc#!class::t __obj217586 'fields))))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self212499_ _id212500_)
        (let ((__obj217587 _self212499_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of? __obj217587 'gxc#!type::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217587
                 _id212500_
                 '1
                 gxc#!type::t
                 '#f))
              (class-slot-set! gxc#!type::t __obj217587 'id _id212500_)))))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t217514)
        (let ((__id217515
               (let ((__tmp217516
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217514 'id))))
                 (if __tmp217516 __tmp217516 (error '"Unknown slot" 'id)))))
          (lambda (_self212499_ _id212500_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212499_
               _id212500_
               __id217515
               __t217514
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!predicate:::init!
       gxc#!predicate:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_self212374_ _id212375_)
        (let ((__obj217588 _self212374_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of? __obj217588 'gxc#!type::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217588
                 _id212375_
                 '1
                 gxc#!type::t
                 '#f))
              (class-slot-set! gxc#!type::t __obj217588 'id _id212375_)))))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t217517)
        (let ((__id217518
               (let ((__tmp217519
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217517 'id))))
                 (if __tmp217519 __tmp217519 (error '"Unknown slot" 'id)))))
          (lambda (_self212374_ _id212375_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212374_
               _id212375_
               __id217518
               __t217517
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!constructor:::init!
       gxc#!constructor:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!constructor::t ':init! gxc#!constructor:::init! '#f))
    (define gxc#!accessor:::init!
      (lambda (_self212247_ _id212248_ _slot212249_ _checked?212250_)
        (let ((__obj217589 _self212247_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of? __obj217589 'gxc#!type::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217589
                 _id212248_
                 '1
                 gxc#!type::t
                 '#f))
              (class-slot-set! gxc#!type::t __obj217589 'id _id212248_)))
        (let ((__obj217590 _self212247_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of?
                 __obj217590
                 'gxc#!accessor::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217590
                 _slot212249_
                 '2
                 gxc#!accessor::t
                 '#f))
              (class-slot-set!
               gxc#!accessor::t
               __obj217590
               'slot
               _slot212249_)))
        (let ((__obj217591 _self212247_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of?
                 __obj217591
                 'gxc#!accessor::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217591
                 _checked?212250_
                 '3
                 gxc#!accessor::t
                 '#f))
              (class-slot-set!
               gxc#!accessor::t
               __obj217591
               'checked?
               _checked?212250_)))))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t217520)
        (let ((__checked?217521
               (let ((__tmp217524
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217520 'checked?))))
                 (if __tmp217524
                     __tmp217524
                     (error '"Unknown slot" 'checked?))))
              (__id217522
               (let ((__tmp217525
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217520 'id))))
                 (if __tmp217525 __tmp217525 (error '"Unknown slot" 'id))))
              (__slot217523
               (let ((__tmp217526
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217520 'slot))))
                 (if __tmp217526 __tmp217526 (error '"Unknown slot" 'slot)))))
          (lambda (_self212247_ _id212248_ _slot212249_ _checked?212250_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212247_
               _id212248_
               __id217522
               __t217520
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212247_
               _slot212249_
               __slot217523
               __t217520
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212247_
               _checked?212250_
               __checked?217521
               __t217520
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor:::init!
       gxc#!accessor:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_self212120_ _id212121_ _slot212122_ _checked?212123_)
        (let ((__obj217592 _self212120_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of? __obj217592 'gxc#!type::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217592
                 _id212121_
                 '1
                 gxc#!type::t
                 '#f))
              (class-slot-set! gxc#!type::t __obj217592 'id _id212121_)))
        (let ((__obj217593 _self212120_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of? __obj217593 'gxc#!mutator::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217593
                 _slot212122_
                 '2
                 gxc#!mutator::t
                 '#f))
              (class-slot-set!
               gxc#!mutator::t
               __obj217593
               'slot
               _slot212122_)))
        (let ((__obj217594 _self212120_))
          (if (let ()
                (declare (not safe))
                (##structure-direct-instance-of? __obj217594 'gxc#!mutator::t))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 __obj217594
                 _checked?212123_
                 '3
                 gxc#!mutator::t
                 '#f))
              (class-slot-set!
               gxc#!mutator::t
               __obj217594
               'checked?
               _checked?212123_)))))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t217527)
        (let ((__checked?217528
               (let ((__tmp217531
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217527 'checked?))))
                 (if __tmp217531
                     __tmp217531
                     (error '"Unknown slot" 'checked?))))
              (__id217529
               (let ((__tmp217532
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217527 'id))))
                 (if __tmp217532 __tmp217532 (error '"Unknown slot" 'id))))
              (__slot217530
               (let ((__tmp217533
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217527 'slot))))
                 (if __tmp217533 __tmp217533 (error '"Unknown slot" 'slot)))))
          (lambda (_self212120_ _id212121_ _slot212122_ _checked?212123_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212120_
               _id212121_
               __id217529
               __t217527
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212120_
               _slot212122_
               __slot217530
               __t217527
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212120_
               _checked?212123_
               __checked?217528
               __t217527
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator:::init!
       gxc#!mutator:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_self211964_
               _id211965_
               _arity211966_
               _dispatch211967_
               _inline211968_
               _typedecl211969_)
        (if (let ((__tmp217689
                   (let ()
                     (declare (not safe))
                     (##structure-length _self211964_))))
              (declare (not safe))
              (##fx< '5 __tmp217689))
            (begin
              (let ((__tmp217684
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211964_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211964_
                 _id211965_
                 '1
                 __tmp217684
                 '#f))
              (let ((__tmp217685
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211964_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211964_
                 _arity211966_
                 '2
                 __tmp217685
                 '#f))
              (let ((__tmp217686
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211964_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211964_
                 _dispatch211967_
                 '3
                 __tmp217686
                 '#f))
              (let ((__tmp217687
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211964_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211964_
                 _inline211968_
                 '4
                 __tmp217687
                 '#f))
              (let ((__tmp217688
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211964_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211964_
                 _typedecl211969_
                 '5
                 __tmp217688
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self211964_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self211964_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self211974_ _id211975_ _arity211976_ _dispatch211977_)
        (let* ((_inline211979_ '#f) (_typedecl211981_ '#f))
          (if (let ((__tmp217695
                     (let ()
                       (declare (not safe))
                       (##structure-length _self211974_))))
                (declare (not safe))
                (##fx< '5 __tmp217695))
              (begin
                (let ((__tmp217690
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211974_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211974_
                   _id211975_
                   '1
                   __tmp217690
                   '#f))
                (let ((__tmp217691
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211974_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211974_
                   _arity211976_
                   '2
                   __tmp217691
                   '#f))
                (let ((__tmp217692
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211974_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211974_
                   _dispatch211977_
                   '3
                   __tmp217692
                   '#f))
                (let ((__tmp217693
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211974_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211974_
                   _inline211979_
                   '4
                   __tmp217693
                   '#f))
                (let ((__tmp217694
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211974_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211974_
                   _typedecl211981_
                   '5
                   __tmp217694
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self211974_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self211974_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self211983_
               _id211984_
               _arity211985_
               _dispatch211986_
               _inline211987_)
        (let ((_typedecl211989_ '#f))
          (if (let ((__tmp217701
                     (let ()
                       (declare (not safe))
                       (##structure-length _self211983_))))
                (declare (not safe))
                (##fx< '5 __tmp217701))
              (begin
                (let ((__tmp217696
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211983_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211983_
                   _id211984_
                   '1
                   __tmp217696
                   '#f))
                (let ((__tmp217697
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211983_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211983_
                   _arity211985_
                   '2
                   __tmp217697
                   '#f))
                (let ((__tmp217698
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211983_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211983_
                   _dispatch211986_
                   '3
                   __tmp217698
                   '#f))
                (let ((__tmp217699
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211983_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211983_
                   _inline211987_
                   '4
                   __tmp217699
                   '#f))
                (let ((__tmp217700
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211983_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211983_
                   _typedecl211989_
                   '5
                   __tmp217700
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self211983_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self211983_)))))))
    (define gxc#!lambda:::init!
      (lambda _g217703_
        (let ((_g217702_ (let () (declare (not safe)) (##length _g217703_))))
          (cond ((let () (declare (not safe)) (##fx= _g217702_ 4))
                 (apply (lambda (_self211974_
                                 _id211975_
                                 _arity211976_
                                 _dispatch211977_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self211974_
                             _id211975_
                             _arity211976_
                             _dispatch211977_)))
                        _g217703_))
                ((let () (declare (not safe)) (##fx= _g217702_ 5))
                 (apply (lambda (_self211983_
                                 _id211984_
                                 _arity211985_
                                 _dispatch211986_
                                 _inline211987_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self211983_
                             _id211984_
                             _arity211985_
                             _dispatch211986_
                             _inline211987_)))
                        _g217703_))
                ((let () (declare (not safe)) (##fx= _g217702_ 6))
                 (apply (lambda (_self211991_
                                 _id211992_
                                 _arity211993_
                                 _dispatch211994_
                                 _inline211995_
                                 _typedecl211996_)
                          (if (let ((__tmp217709
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self211991_))))
                                (declare (not safe))
                                (##fx< '5 __tmp217709))
                              (begin
                                (let ((__tmp217704
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self211991_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self211991_
                                   _id211992_
                                   '1
                                   __tmp217704
                                   '#f))
                                (let ((__tmp217705
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self211991_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self211991_
                                   _arity211993_
                                   '2
                                   __tmp217705
                                   '#f))
                                (let ((__tmp217706
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self211991_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self211991_
                                   _dispatch211994_
                                   '3
                                   __tmp217706
                                   '#f))
                                (let ((__tmp217707
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self211991_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self211991_
                                   _inline211995_
                                   '4
                                   __tmp217707
                                   '#f))
                                (let ((__tmp217708
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self211991_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self211991_
                                   _typedecl211996_
                                   '5
                                   __tmp217708
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self211991_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self211991_)))))
                        _g217703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g217703_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!primitive-lambda:::init! gxc#!lambda:::init!)
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-lambda::t
       ':init!
       gxc#!primitive-lambda:::init!
       '#f))
    (define gxc#!primitive-case-lambda:::init!
      (lambda (_self211716_ . _args211717_)
        (apply struct-instance-init! _self211716_ _args211717_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type211591_)
        (if (let ()
              (declare (not safe))
              (class-instance? gxc#!class::t _type211591_))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type211591_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass211584_)
        (let ((_$e211586_
               (let ((__obj217595 _klass211584_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj217595
                        'gxc#!class::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        __obj217595
                        '9
                        gxc#!class::t
                        '#f))
                     (class-slot-ref gxc#!class::t __obj217595 'methods)))))
          (if _$e211586_
              _$e211586_
              (let ((_tab211589_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (let ((__obj217596 _klass211584_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj217596
                         'gxc#!class::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         __obj217596
                         _tab211589_
                         '9
                         gxc#!class::t
                         '#f))
                      (class-slot-set!
                       gxc#!class::t
                       __obj217596
                       'methods
                       _tab211589_)))
                _tab211589_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass211575_ _method211576_)
        (let ((_tab211577211579_
               (let ((__obj217597 _klass211575_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj217597
                        'gxc#!class::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        __obj217597
                        '9
                        gxc#!class::t
                        '#f))
                     (class-slot-ref gxc#!class::t __obj217597 'methods)))))
          (if _tab211577211579_
              (let ((_tab211582_ _tab211577211579_))
                (declare (not safe))
                (table-ref _tab211582_ _method211576_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type211572_ _method211573_)
        (if (let ()
              (declare (not safe))
              (class-instance? gxc#!class::t _type211572_))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type211572_ _method211573_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym211556_ _type211557_ _local?211558_)
        (if (let ()
              (declare (not safe))
              (class-instance? gxc#!type::t _type211557_))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym211556_
                   _type211557_))
        (let ((__tmp217710
               (let () (declare (not safe)) (struct->list _type211557_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym211556_ '" " __tmp217710))
        (let ((__tmp217711
               (if _local?211558_
                   (gxc#current-compile-local-type)
                   (let ((__obj217598 (gxc#current-compile-optimizer-info)))
                     (if (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            __obj217598
                            'gxc#optimizer-info::t))
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            __obj217598
                            '1
                            gxc#optimizer-info::t
                            '#f))
                         (class-slot-ref
                          gxc#optimizer-info::t
                          __obj217598
                          'type))))))
          (declare (not safe))
          (table-set! __tmp217711 _sym211556_ _type211557_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym211563_ _type211564_)
        (let ((_local?211566_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym211563_
           _type211564_
           _local?211566_))))
    (define gxc#optimizer-declare-type!
      (lambda _g217713_
        (let ((_g217712_ (let () (declare (not safe)) (##length _g217713_))))
          (cond ((let () (declare (not safe)) (##fx= _g217712_ 2))
                 (apply (lambda (_sym211563_ _type211564_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym211563_
                             _type211564_)))
                        _g217713_))
                ((let () (declare (not safe)) (##fx= _g217712_ 3))
                 (apply (lambda (_sym211568_ _type211569_ _local?211570_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym211568_
                             _type211569_
                             _local?211570_)))
                        _g217713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g217713_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym211542_ _local?211543_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym211542_))
        (let ((__tmp217714
               (if _local?211543_
                   (gxc#current-compile-local-type)
                   (let ((__obj217599 (gxc#current-compile-optimizer-info)))
                     (if (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            __obj217599
                            'gxc#optimizer-info::t))
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            __obj217599
                            '1
                            gxc#optimizer-info::t
                            '#f))
                         (class-slot-ref
                          gxc#optimizer-info::t
                          __obj217599
                          'type))))))
          (declare (not safe))
          (table-set! __tmp217714 _sym211542_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym211548_)
        (let ((_local?211550_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym211548_ _local?211550_))))
    (define gxc#optimizer-clear-type!
      (lambda _g217716_
        (let ((_g217715_ (let () (declare (not safe)) (##length _g217716_))))
          (cond ((let () (declare (not safe)) (##fx= _g217715_ 1))
                 (apply (lambda (_sym211548_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym211548_)))
                        _g217716_))
                ((let () (declare (not safe)) (##fx= _g217715_ 2))
                 (apply (lambda (_sym211552_ _local?211553_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym211552_
                             _local?211553_)))
                        _g217716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g217716_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t211515_ _method211516_ _sym211517_ _rebind?211518_)
        (let* ((_type211520_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t211515_)))
               (_$e211522_
                (let () (declare (not safe)) (gxc#!type-vtab _type211520_))))
          (if _$e211522_
              ((lambda (_vtab211525_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab211525_ _method211516_))
                     (if _rebind?211518_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t211515_
                              '" "
                              _method211516_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab211525_
                              _method211516_
                              _sym211517_)))
                         (let ((__tmp217721
                                (let ((__tmp217722
                                       (let ((__tmp217723
                                              (let ((__tmp217724
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym211517_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method211516_
                                                      __tmp217724))))
                                         (declare (not safe))
                                         (cons _type-t211515_ __tmp217723))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp217722))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp217721
                            _method211516_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t211515_
                          '" "
                          _method211516_
                          '" => "
                          _sym211517_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab211525_
                          _method211516_
                          _sym211517_)))))
               _$e211522_)
              (if (let () (declare (not safe)) (not _type211520_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t211515_))
                  (let ((__tmp217717
                         (let ((__tmp217718
                                (let ((__tmp217719
                                       (let ((__tmp217720
                                              (let ()
                                                (declare (not safe))
                                                (cons _method211516_ '()))))
                                         (declare (not safe))
                                         (cons _sym211517_ __tmp217720))))
                                  (declare (not safe))
                                  (cons _type-t211515_ __tmp217719))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp217718))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp217717
                     _type211520_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t211530_ _method211531_ _sym211532_)
        (let ((_rebind?211534_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t211530_
           _method211531_
           _sym211532_
           _rebind?211534_))))
    (define gxc#optimizer-declare-method!
      (lambda _g217726_
        (let ((_g217725_ (let () (declare (not safe)) (##length _g217726_))))
          (cond ((let () (declare (not safe)) (##fx= _g217725_ 3))
                 (apply (lambda (_type-t211530_ _method211531_ _sym211532_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t211530_
                             _method211531_
                             _sym211532_)))
                        _g217726_))
                ((let () (declare (not safe)) (##fx= _g217725_ 4))
                 (apply (lambda (_type-t211536_
                                 _method211537_
                                 _sym211538_
                                 _rebind?211539_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t211536_
                             _method211537_
                             _sym211538_
                             _rebind?211539_)))
                        _g217726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g217726_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym211503_)
        (let ((_$e211511_
               (let ((_ht211504211506_ (gxc#current-compile-local-type)))
                 (if _ht211504211506_
                     (let ((_ht211509_ _ht211504211506_))
                       (declare (not safe))
                       (table-ref _ht211509_ _sym211503_ '#f))
                     '#f))))
          (if _$e211511_
              _$e211511_
              (let ((__tmp217727
                     (let ((__obj217600 (gxc#current-compile-optimizer-info)))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              __obj217600
                              'gxc#optimizer-info::t))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __obj217600
                              '1
                              gxc#optimizer-info::t
                              '#f))
                           (class-slot-ref
                            gxc#optimizer-info::t
                            __obj217600
                            'type)))))
                (declare (not safe))
                (table-ref __tmp217727 _sym211503_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym211495_)
        (let ((_type211496211498_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym211495_))))
          (if _type211496211498_
              (let ((_type211501_ _type211496211498_))
                (if (let ()
                      (declare (not safe))
                      (class-instance? gxc#!alias::t _type211501_))
                    (let ((__tmp217728
                           (let ((__obj217601 _type211501_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj217601
                                    'gxc#!type::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj217601
                                    '1
                                    gxc#!type::t
                                    '#f))
                                 (class-slot-ref
                                  gxc#!type::t
                                  __obj217601
                                  'id)))))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp217728))
                    _type211501_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where211487_ _klass-id211488_)
        (let ((_$e211490_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id211488_))))
          (if _$e211490_
              ((lambda (_klass211493_)
                 (if (let ()
                       (declare (not safe))
                       (class-instance? gxc#!class::t _klass211493_))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where211487_
                        _klass-id211488_
                        _klass211493_)))
                 _klass211493_)
               _$e211490_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where211487_
                 _klass-id211488_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t211484_ _method211485_)
        (let ((__tmp217729
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t211484_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp217729 _method211485_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym211482_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym211482_))
        (let ((__tmp217730
               (let ((__obj217602 (gxc#current-compile-optimizer-info)))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj217602
                        'gxc#optimizer-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        __obj217602
                        '3
                        gxc#optimizer-info::t
                        '#f))
                     (class-slot-ref
                      gxc#optimizer-info::t
                      __obj217602
                      'methods)))))
          (declare (not safe))
          (table-set! __tmp217730 _sym211482_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym211480_)
        (let ((__tmp217731
               (let ((__obj217603 (gxc#current-compile-optimizer-info)))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj217603
                        'gxc#optimizer-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        __obj217603
                        '3
                        gxc#optimizer-info::t
                        '#f))
                     (class-slot-ref
                      gxc#optimizer-info::t
                      __obj217603
                      'methods)))))
          (declare (not safe))
          (table-ref __tmp217731 _sym211480_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx211478_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx211478_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx211478_))
            (let () (declare (not safe)) (gx#stx-e _stx211478_)))))))
