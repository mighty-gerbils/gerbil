(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707657572)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp217444 (list))
            (__tmp217442
             (let ((__tmp217443
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217443 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp217444
         '(type ssxi methods)
         __tmp217442
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args212917_
        (apply make-class-instance gxc#optimizer-info::t _$args212917_)))
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
      (lambda (_self212915_)
        (if (let ((__tmp217451
                   (let ()
                     (declare (not safe))
                     (##structure-length _self212915_))))
              (declare (not safe))
              (##fx< '3 __tmp217451))
            (begin
              (let ((__tmp217446
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217445
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212915_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212915_
                 __tmp217446
                 '1
                 __tmp217445
                 '#f))
              (let ((__tmp217448
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217447
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212915_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212915_
                 __tmp217448
                 '2
                 __tmp217447
                 '#f))
              (let ((__tmp217450
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217449
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212915_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212915_
                 __tmp217450
                 '3
                 __tmp217449
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self212915_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self212915_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp217454 (list))
            (__tmp217452
             (let ((__tmp217453
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217453 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp217454
         '(id)
         __tmp217452
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args212790_
        (apply make-class-instance gxc#!type::t _$args212790_)))
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
      (let ((__tmp217457 (list gxc#!type::t))
            (__tmp217455
             (let ((__tmp217456
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217456 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp217457
         '()
         __tmp217455
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args212787_
        (apply make-class-instance gxc#!alias::t _$args212787_)))
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
      (let ((__tmp217460 (list gxc#!type::t))
            (__tmp217458
             (let ((__tmp217459
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217459 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp217460
         '()
         __tmp217458
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args212784_
        (apply make-class-instance gxc#!procedure::t _$args212784_)))
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
      (let ((__tmp217463 (list gxc#!type::t))
            (__tmp217461
             (let ((__tmp217462
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217462 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp217463
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 methods)
         __tmp217461
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args212781_
        (apply make-class-instance gxc#!class::t _$args212781_)))
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
      (let ((__tmp217466 (list gxc#!procedure::t))
            (__tmp217464
             (let ((__tmp217465
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217465 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp217466
         '()
         __tmp217464
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args212778_
        (apply make-class-instance gxc#!predicate::t _$args212778_)))
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
      (let ((__tmp217469 (list gxc#!procedure::t))
            (__tmp217467
             (let ((__tmp217468
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217468 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp217469
         '()
         __tmp217467
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args212775_
        (apply make-class-instance gxc#!constructor::t _$args212775_)))
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
      (let ((__tmp217472 (list gxc#!procedure::t))
            (__tmp217470
             (let ((__tmp217471
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217471 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp217472
         '(slot checked?)
         __tmp217470
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args212772_
        (apply make-class-instance gxc#!accessor::t _$args212772_)))
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
      (let ((__tmp217475 (list gxc#!procedure::t))
            (__tmp217473
             (let ((__tmp217474
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217474 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp217475
         '(slot checked?)
         __tmp217473
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args212769_
        (apply make-class-instance gxc#!mutator::t _$args212769_)))
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
      (let ((__tmp217478 (list gxc#!procedure::t))
            (__tmp217476
             (let ((__tmp217477
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217477 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp217478
         '(arity dispatch inline inline-typedecl)
         __tmp217476
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args212766_
        (apply make-class-instance gxc#!lambda::t _$args212766_)))
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
      (let ((__tmp217481 (list gxc#!procedure::t))
            (__tmp217479
             (let ((__tmp217480
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217480 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp217481
         '(clauses)
         __tmp217479
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args212763_
        (apply make-class-instance gxc#!case-lambda::t _$args212763_)))
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
      (let ((__tmp217484 (list gxc#!procedure::t))
            (__tmp217482
             (let ((__tmp217483
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217483 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp217484
         '(table dispatch)
         __tmp217482
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args212760_
        (apply make-class-instance gxc#!kw-lambda::t _$args212760_)))
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
      (let ((__tmp217487 (list gxc#!procedure::t))
            (__tmp217485
             (let ((__tmp217486
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217486 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp217487
         '(keys main)
         __tmp217485
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args212757_
        (apply make-class-instance gxc#!kw-lambda-primary::t _$args212757_)))
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
      (let ((__tmp217488 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp217488
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args212754_
        (apply make-class-instance gxc#!primitive::t _$args212754_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp217489 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp217489
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args212751_
        (apply make-class-instance gxc#!primitive-lambda::t _$args212751_)))
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
      (let ((__tmp217490 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp217490
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args212748_
        (apply make-class-instance
               gxc#!primitive-case-lambda::t
               _$args212748_)))
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
      (lambda (_self212628_
               _id212629_
               _super212630_
               _slots212631_
               _ctor-method212632_
               _struct?212633_
               _final?212634_)
        (let _lp212636_ ((_rest212638_ _super212630_))
          (let* ((_rest212639212647_ _rest212638_)
                 (_else212641212655_ (lambda () '#!void))
                 (_K212643212661_
                  (lambda (_rest212658_ _super-id212659_)
                    (if (##structure-ref
                         (let ((__tmp217493
                                (let ((__tmp217494
                                       (let ()
                                         (declare (not safe))
                                         (cons _id212629_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp217494))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp217493
                            _super-id212659_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp217491
                               (let ((__tmp217492
                                      (let ()
                                        (declare (not safe))
                                        (cons _id212629_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp217492))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp217491
                           _super-id212659_))
                        '#!void)
                    (let () (declare (not safe)) (_lp212636_ _rest212658_)))))
            (if (let () (declare (not safe)) (##pair? _rest212639212647_))
                (let ((_hd212644212664_
                       (let ()
                         (declare (not safe))
                         (##car _rest212639212647_)))
                      (_tl212645212666_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest212639212647_))))
                  (let* ((_super-id212669_ _hd212644212664_)
                         (_rest212671_ _tl212645212666_))
                    (declare (not safe))
                    (_K212643212661_ _rest212671_ _super-id212669_)))
                '#!void)))
        (let* ((_ctor-method212721_
                (let ((_$e212673_ _ctor-method212632_))
                  (if _$e212673_
                      _$e212673_
                      (let _lp212676_ ((_rest212678_ _super212630_)
                                       (_method212679_ '#f))
                        (let* ((_rest212680212688_ _rest212678_)
                               (_else212682212696_ (lambda () _method212679_))
                               (_K212684212709_
                                (lambda (_rest212699_ _super-id212700_)
                                  (let* ((_klass212702_
                                          (let ((__tmp217495
                                                 (let ((__tmp217496
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id212629_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp217496))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp217495
                                             _super-id212700_)))
                                         (_$e212704_
                                          (##structure-ref
                                           _klass212702_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e212704_
                                        ((lambda (_ctor-method212707_)
                                           (if _method212679_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method212707_
                                                          _method212679_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp212676_
                                                      _rest212699_
                                                      _ctor-method212707_))
                                                   (let ((__tmp217497
                                                          (let ((__tmp217498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id212629_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp217498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp217497
                                                      _method212679_
                                                      _ctor-method212707_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp212676_
                                                  _rest212699_
                                                  _ctor-method212707_))))
                                         _$e212704_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp212676_
                                           _rest212699_
                                           _method212679_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest212680212688_))
                              (let ((_hd212685212712_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest212680212688_)))
                                    (_tl212686212714_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest212680212688_))))
                                (let* ((_super-id212717_ _hd212685212712_)
                                       (_rest212719_ _tl212686212714_))
                                  (declare (not safe))
                                  (_K212684212709_
                                   _rest212719_
                                   _super-id212717_)))
                              (let ()
                                (declare (not safe))
                                (_else212682212696_))))))))
               (_g217499_
                (let ((__tmp217504
                       (lambda (_klass-id212723_)
                         (let ((__tmp217505
                                (##structure-ref
                                 (let ((__tmp217506
                                        (let ((__tmp217507
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id212629_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp217507))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp217506
                                    _klass-id212723_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id212723_ __tmp217505))))
                      (__tmp217501
                       (lambda (_klass-id212725_)
                         (##structure-ref
                          (let ((__tmp217502
                                 (let ((__tmp217503
                                        (let ()
                                          (declare (not safe))
                                          (cons _id212629_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp217503))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp217502
                             _klass-id212725_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp217504
                   __tmp217501
                   eq?
                   identity
                   '()
                   _super212630_))))
          (begin
            (let ((_g217500_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g217499_)
                         (##vector-length _g217499_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g217500_ 2)))
                  (error "Context expects 2 values" _g217500_)))
            (let ((_precedence-list212727_
                   (let () (declare (not safe)) (##vector-ref _g217499_ 0)))
                  (_super-struct212728_
                   (let () (declare (not safe)) (##vector-ref _g217499_ 1))))
              (let ((_fields212734_
                     (let* ((_base-struct212732_
                             (let ((__tmp217508
                                    (lambda (_klass-id212730_)
                                      (##structure-ref
                                       (let ((__tmp217509
                                              (let ((__tmp217510
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _id212629_ '()))))
                                                (declare (not safe))
                                                (cons '!class __tmp217510))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-class
                                          __tmp217509
                                          _klass-id212730_))
                                       '7
                                       gxc#!class::t
                                       '#f))))
                               (declare (not safe))
                               (find __tmp217508 _precedence-list212727_)))
                            (__tmp217511
                             (let ((__tmp217512
                                    (let ()
                                      (declare (not safe))
                                      (cons _id212629_ '()))))
                               (declare (not safe))
                               (cons '!class __tmp217512))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp217511
                        _base-struct212732_
                        _precedence-list212727_
                        _slots212631_))))
                (##structure-set! _self212628_ _id212629_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self212628_
                 _super212630_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212628_
                 _precedence-list212727_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212628_
                 _slots212631_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212628_
                 _fields212734_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212628_
                 _ctor-method212721_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212628_
                 _struct?212633_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212628_
                 _final?212634_
                 '8
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self212737_
               _id212738_
               _super212739_
               _precedence-list212740_
               _slots212741_
               _fields212742_
               _constructor212743_
               _struct?212744_
               _final?212745_
               _methods212746_)
        (##structure-set! _self212737_ _id212738_ '1 gxc#!type::t '#f)
        (##structure-set! _self212737_ _super212739_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self212737_
         _precedence-list212740_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self212737_ _slots212741_ '4 gxc#!class::t '#f)
        (##structure-set! _self212737_ _fields212742_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self212737_
         _constructor212743_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self212737_ _struct?212744_ '7 gxc#!class::t '#f)
        (##structure-set! _self212737_ _final?212745_ '8 gxc#!class::t '#f)
        (if _methods212746_
            (##structure-set!
             _self212737_
             (let ()
               (declare (not safe))
               (list->table _methods212746_ 'test: eq?))
             '9
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g217514_
        (let ((_g217513_ (let () (declare (not safe)) (##length _g217514_))))
          (cond ((let () (declare (not safe)) (##fx= _g217513_ 7))
                 (apply (lambda (_self212628_
                                 _id212629_
                                 _super212630_
                                 _slots212631_
                                 _ctor-method212632_
                                 _struct?212633_
                                 _final?212634_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self212628_
                             _id212629_
                             _super212630_
                             _slots212631_
                             _ctor-method212632_
                             _struct?212633_
                             _final?212634_)))
                        _g217514_))
                ((let () (declare (not safe)) (##fx= _g217513_ 10))
                 (apply (lambda (_self212737_
                                 _id212738_
                                 _super212739_
                                 _precedence-list212740_
                                 _slots212741_
                                 _fields212742_
                                 _constructor212743_
                                 _struct?212744_
                                 _final?212745_
                                 _methods212746_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self212737_
                             _id212738_
                             _super212739_
                             _precedence-list212740_
                             _slots212741_
                             _fields212742_
                             _constructor212743_
                             _struct?212744_
                             _final?212745_
                             _methods212746_)))
                        _g217514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g217514_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t217387)
        (let ((__id217388
               (let ((__tmp217397
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217387 'id))))
                 (if __tmp217397 __tmp217397 (error '"Unknown slot" 'id))))
              (__methods217389
               (let ((__tmp217398
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217387 'methods))))
                 (if __tmp217398
                     __tmp217398
                     (error '"Unknown slot" 'methods))))
              (__precedence-list217390
               (let ((__tmp217399
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217387 'precedence-list))))
                 (if __tmp217399
                     __tmp217399
                     (error '"Unknown slot" 'precedence-list))))
              (__final?217391
               (let ((__tmp217400
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217387 'final?))))
                 (if __tmp217400 __tmp217400 (error '"Unknown slot" 'final?))))
              (__super217392
               (let ((__tmp217401
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217387 'super))))
                 (if __tmp217401 __tmp217401 (error '"Unknown slot" 'super))))
              (__slots217393
               (let ((__tmp217402
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217387 'slots))))
                 (if __tmp217402 __tmp217402 (error '"Unknown slot" 'slots))))
              (__constructor217394
               (let ((__tmp217403
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217387 'constructor))))
                 (if __tmp217403
                     __tmp217403
                     (error '"Unknown slot" 'constructor))))
              (__fields217395
               (let ((__tmp217404
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217387 'fields))))
                 (if __tmp217404 __tmp217404 (error '"Unknown slot" 'fields))))
              (__struct?217396
               (let ((__tmp217405
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217387 'struct?))))
                 (if __tmp217405
                     __tmp217405
                     (error '"Unknown slot" 'struct?)))))
          (lambda _g217516_
            (let ((_g217515_
                   (let () (declare (not safe)) (##length _g217516_))))
              (cond ((let () (declare (not safe)) (##fx= _g217515_ 7))
                     (apply (lambda (_self212628_
                                     _id212629_
                                     _super212630_
                                     _slots212631_
                                     _ctor-method212632_
                                     _struct?212633_
                                     _final?212634_)
                              (let _lp212636_ ((_rest212638_ _super212630_))
                                (let* ((_rest212639212647_ _rest212638_)
                                       (_else212641212655_ (lambda () '#!void))
                                       (_K212643212661_
                                        (lambda (_rest212658_ _super-id212659_)
                                          (if (##structure-ref
                                               (let ((__tmp217519
                                                      (let ((__tmp217520
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id212629_ '()))))
                (declare (not safe))
                (cons '!class __tmp217520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp217519
                                                  _super-id212659_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp217517
                                                     (let ((__tmp217518
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id212629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp217518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp217517
                                                 _super-id212659_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp212636_ _rest212658_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest212639212647_))
                                      (let ((_hd212644212664_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest212639212647_)))
                                            (_tl212645212666_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest212639212647_))))
                                        (let* ((_super-id212669_
                                                _hd212644212664_)
                                               (_rest212671_ _tl212645212666_))
                                          (declare (not safe))
                                          (_K212643212661_
                                           _rest212671_
                                           _super-id212669_)))
                                      '#!void)))
                              (let* ((_ctor-method212721_
                                      (let ((_$e212673_ _ctor-method212632_))
                                        (if _$e212673_
                                            _$e212673_
                                            (let _lp212676_ ((_rest212678_
                                                              _super212630_)
                                                             (_method212679_
                                                              '#f))
                                              (let* ((_rest212680212688_
                                                      _rest212678_)
                                                     (_else212682212696_
                                                      (lambda ()
                                                        _method212679_))
                                                     (_K212684212709_
                                                      (lambda (_rest212699_
                                                               _super-id212700_)
                                                        (let* ((_klass212702_
                                                                (let ((__tmp217521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp217522
                                      (let ()
                                        (declare (not safe))
                                        (cons _id212629_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp217522))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp217521
                           _super-id212700_)))
                       (_$e212704_
                        (##structure-ref _klass212702_ '6 gxc#!class::t '#f)))
                  (if _$e212704_
                      ((lambda (_ctor-method212707_)
                         (if _method212679_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method212707_ _method212679_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp212676_
                                    _rest212699_
                                    _ctor-method212707_))
                                 (let ((__tmp217523
                                        (let ((__tmp217524
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id212629_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp217524))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp217523
                                    _method212679_
                                    _ctor-method212707_)))
                             (let ()
                               (declare (not safe))
                               (_lp212676_ _rest212699_ _ctor-method212707_))))
                       _$e212704_)
                      (let ()
                        (declare (not safe))
                        (_lp212676_ _rest212699_ _method212679_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest212680212688_))
                                                    (let ((_hd212685212712_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest212680212688_)))
                                                          (_tl212686212714_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest212680212688_))))
                                                      (let* ((_super-id212717_
                                                              _hd212685212712_)
                                                             (_rest212719_
                                                              _tl212686212714_))
                                                        (declare (not safe))
                                                        (_K212684212709_
                                                         _rest212719_
                                                         _super-id212717_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else212682212696_))))))))
                                     (_g217525_
                                      (let ((__tmp217530
                                             (lambda (_klass-id212723_)
                                               (let ((__tmp217531
                                                      (##structure-ref
                                                       (let ((__tmp217532
                                                              (let ((__tmp217533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id212629_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp217533))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp217532 _klass-id212723_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id212723_
                                                       __tmp217531))))
                                            (__tmp217527
                                             (lambda (_klass-id212725_)
                                               (##structure-ref
                                                (let ((__tmp217528
                                                       (let ((__tmp217529
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id212629_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp217529))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp217528
                                                   _klass-id212725_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp217530
                                         __tmp217527
                                         eq?
                                         identity
                                         '()
                                         _super212630_))))
                                (begin
                                  (let ((_g217526_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217525_)
                                               (##vector-length _g217525_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217526_ 2)))
                                        (error "Context expects 2 values"
                                               _g217526_)))
                                  (let ((_precedence-list212727_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g217525_ 0)))
                                        (_super-struct212728_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g217525_ 1))))
                                    (let ((_fields212734_
                                           (let* ((_base-struct212732_
                                                   (let ((__tmp217534
                                                          (lambda (_klass-id212730_)
                                                            (##structure-ref
                                                             (let ((__tmp217535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp217536
                                   (let ()
                                     (declare (not safe))
                                     (cons _id212629_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp217536))))
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        __tmp217535
                        _klass-id212730_))
                     '7
                     gxc#!class::t
                     '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (find __tmp217534
                                                           _precedence-list212727_)))
                                                  (__tmp217537
                                                   (let ((__tmp217538
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _id212629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '!class
                                                           __tmp217538))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp217537
                                              _base-struct212732_
                                              _precedence-list212727_
                                              _slots212631_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212628_
                                         _id212629_
                                         __id217388
                                         __t217387
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212628_
                                         _super212630_
                                         __super217392
                                         __t217387
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212628_
                                         _precedence-list212727_
                                         __precedence-list217390
                                         __t217387
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212628_
                                         _slots212631_
                                         __slots217393
                                         __t217387
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212628_
                                         _fields212734_
                                         __fields217395
                                         __t217387
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212628_
                                         _ctor-method212721_
                                         __constructor217394
                                         __t217387
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212628_
                                         _struct?212633_
                                         __struct?217396
                                         __t217387
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212628_
                                         _final?212634_
                                         __final?217391
                                         __t217387
                                         '#f)))))))
                            _g217516_))
                    ((let () (declare (not safe)) (##fx= _g217515_ 10))
                     (apply (lambda (_self212737_
                                     _id212738_
                                     _super212739_
                                     _precedence-list212740_
                                     _slots212741_
                                     _fields212742_
                                     _constructor212743_
                                     _struct?212744_
                                     _final?212745_
                                     _methods212746_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212737_
                                 _id212738_
                                 __id217388
                                 __t217387
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212737_
                                 _super212739_
                                 __super217392
                                 __t217387
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212737_
                                 _precedence-list212740_
                                 __precedence-list217390
                                 __t217387
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212737_
                                 _slots212741_
                                 __slots217393
                                 __t217387
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212737_
                                 _fields212742_
                                 __fields217395
                                 __t217387
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212737_
                                 _constructor212743_
                                 __constructor217394
                                 __t217387
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212737_
                                 _struct?212744_
                                 __struct?217396
                                 __t217387
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212737_
                                 _final?212745_
                                 __final?217391
                                 __t217387
                                 '#f))
                              (if _methods212746_
                                  (let ((__tmp217539
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods212746_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self212737_
                                     __tmp217539
                                     __methods217389
                                     __t217387
                                     '#f))
                                  '#!void))
                            _g217516_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g217516_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where212480_
               _base-struct212481_
               _precedence-list212482_
               _direct-slots212483_)
        (let* ((_base-fields212485_
                (if _base-struct212481_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where212480_
                        _base-struct212481_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields212487_ (reverse _base-fields212485_))
               (_seen-slots212495_
                (let ((_tab212489_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g212490212492_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab212489_ _g212490212492_ '#t)))
                   _base-fields212485_)
                  _tab212489_))
               (_process-slot212499_
                (lambda (_slot212497_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots212495_ _slot212497_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots212495_ _slot212497_ '#t))
                        (set! _r-fields212487_
                              (let ()
                                (declare (not safe))
                                (cons _slot212497_ _r-fields212487_))))))))
          (for-each
           (lambda (_mixin212502_)
             (let ((_klass212504_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where212480_
                       _mixin212502_))))
               (if (##structure-ref _klass212504_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot212499_
                    (##structure-ref _klass212504_ '5 gxc#!class::t '#f)))))
           _precedence-list212482_)
          (for-each _process-slot212499_ _direct-slots212483_)
          (reverse _r-fields212487_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass212439_ _slot212440_)
        (let _lp212442_ ((_rest212444_
                          (##structure-ref _klass212439_ '5 gxc#!class::t '#f))
                         (_offset212445_ '1))
          (let* ((_rest212446212454_ _rest212444_)
                 (_else212448212462_
                  (lambda ()
                    (let ((__tmp217541
                           (##structure-ref _klass212439_ '1 gxc#!type::t '#f))
                          (__tmp217540
                           (##structure-ref
                            _klass212439_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp217541
                       __tmp217540
                       _slot212440_))))
                 (_K212450212468_
                  (lambda (_rest212465_ _s212466_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s212466_ _slot212440_))
                        _offset212445_
                        (let ((__tmp217542
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset212445_ '1))))
                          (declare (not safe))
                          (_lp212442_ _rest212465_ __tmp217542))))))
            (if (let () (declare (not safe)) (##pair? _rest212446212454_))
                (let ((_hd212451212471_
                       (let ()
                         (declare (not safe))
                         (##car _rest212446212454_)))
                      (_tl212452212473_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest212446212454_))))
                  (let* ((_s212476_ _hd212451212471_)
                         (_rest212478_ _tl212452212473_))
                    (declare (not safe))
                    (_K212450212468_ _rest212478_ _s212476_)))
                (let () (declare (not safe)) (_else212448212462_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass212397_ _slot212398_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass212397_ _slot212398_))
            _klass212397_
            (let _lp212400_ ((_rest212402_
                              (##structure-ref
                               _klass212397_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest212403212411_ _rest212402_)
                     (_else212405212419_ (lambda () '#f))
                     (_K212407212427_
                      (lambda (_rest212422_ _super212423_)
                        (let ((_super-class212425_
                               (let ((__tmp217543
                                      (let ((__tmp217544
                                             (let ((__tmp217546
                                                    (##structure-ref
                                                     _klass212397_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp217545
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot212398_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp217546
                                                     __tmp217545))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp217544))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp217543
                                  _super212423_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class212425_
                                 _slot212398_))
                              _super-class212425_
                              (let ()
                                (declare (not safe))
                                (_lp212400_ _rest212422_)))))))
                (if (let () (declare (not safe)) (##pair? _rest212403212411_))
                    (let ((_hd212408212430_
                           (let ()
                             (declare (not safe))
                             (##car _rest212403212411_)))
                          (_tl212409212432_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest212403212411_))))
                      (let* ((_super212435_ _hd212408212430_)
                             (_rest212437_ _tl212409212432_))
                        (declare (not safe))
                        (_K212407212427_ _rest212437_ _super212435_)))
                    (let () (declare (not safe)) (_else212405212419_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass212394_ _slot212395_)
        (if (##structure-ref _klass212394_ '7 gxc#!class::t '#f)
            (memq _slot212395_
                  (##structure-ref _klass212394_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self212391_ _id212392_)
        (##structure-set! _self212391_ _id212392_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t217406)
        (let ((__id217407
               (let ((__tmp217408
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217406 'id))))
                 (if __tmp217408 __tmp217408 (error '"Unknown slot" 'id)))))
          (lambda (_self212391_ _id212392_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212391_
               _id212392_
               __id217407
               __t217406
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
      (lambda (_self212266_ _id212267_)
        (##structure-set! _self212266_ _id212267_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t217409)
        (let ((__id217410
               (let ((__tmp217411
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217409 'id))))
                 (if __tmp217411 __tmp217411 (error '"Unknown slot" 'id)))))
          (lambda (_self212266_ _id212267_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212266_
               _id212267_
               __id217410
               __t217409
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
      (lambda (_self212139_ _id212140_ _slot212141_ _checked?212142_)
        (##structure-set! _self212139_ _id212140_ '1 gxc#!type::t '#f)
        (##structure-set! _self212139_ _slot212141_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self212139_
         _checked?212142_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t217412)
        (let ((__id217413
               (let ((__tmp217416
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217412 'id))))
                 (if __tmp217416 __tmp217416 (error '"Unknown slot" 'id))))
              (__checked?217414
               (let ((__tmp217417
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217412 'checked?))))
                 (if __tmp217417
                     __tmp217417
                     (error '"Unknown slot" 'checked?))))
              (__slot217415
               (let ((__tmp217418
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217412 'slot))))
                 (if __tmp217418 __tmp217418 (error '"Unknown slot" 'slot)))))
          (lambda (_self212139_ _id212140_ _slot212141_ _checked?212142_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212139_
               _id212140_
               __id217413
               __t217412
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212139_
               _slot212141_
               __slot217415
               __t217412
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212139_
               _checked?212142_
               __checked?217414
               __t217412
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
      (lambda (_self212012_ _id212013_ _slot212014_ _checked?212015_)
        (##structure-set! _self212012_ _id212013_ '1 gxc#!type::t '#f)
        (##structure-set! _self212012_ _slot212014_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self212012_
         _checked?212015_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t217419)
        (let ((__id217420
               (let ((__tmp217423
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217419 'id))))
                 (if __tmp217423 __tmp217423 (error '"Unknown slot" 'id))))
              (__checked?217421
               (let ((__tmp217424
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217419 'checked?))))
                 (if __tmp217424
                     __tmp217424
                     (error '"Unknown slot" 'checked?))))
              (__slot217422
               (let ((__tmp217425
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217419 'slot))))
                 (if __tmp217425 __tmp217425 (error '"Unknown slot" 'slot)))))
          (lambda (_self212012_ _id212013_ _slot212014_ _checked?212015_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212012_
               _id212013_
               __id217420
               __t217419
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212012_
               _slot212014_
               __slot217422
               __t217419
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212012_
               _checked?212015_
               __checked?217421
               __t217419
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
      (lambda (_self211856_
               _id211857_
               _arity211858_
               _dispatch211859_
               _inline211860_
               _typedecl211861_)
        (if (let ((__tmp217552
                   (let ()
                     (declare (not safe))
                     (##structure-length _self211856_))))
              (declare (not safe))
              (##fx< '5 __tmp217552))
            (begin
              (let ((__tmp217547
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211856_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211856_
                 _id211857_
                 '1
                 __tmp217547
                 '#f))
              (let ((__tmp217548
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211856_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211856_
                 _arity211858_
                 '2
                 __tmp217548
                 '#f))
              (let ((__tmp217549
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211856_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211856_
                 _dispatch211859_
                 '3
                 __tmp217549
                 '#f))
              (let ((__tmp217550
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211856_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211856_
                 _inline211860_
                 '4
                 __tmp217550
                 '#f))
              (let ((__tmp217551
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211856_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211856_
                 _typedecl211861_
                 '5
                 __tmp217551
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self211856_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self211856_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self211866_ _id211867_ _arity211868_ _dispatch211869_)
        (let* ((_inline211871_ '#f) (_typedecl211873_ '#f))
          (if (let ((__tmp217558
                     (let ()
                       (declare (not safe))
                       (##structure-length _self211866_))))
                (declare (not safe))
                (##fx< '5 __tmp217558))
              (begin
                (let ((__tmp217553
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211866_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211866_
                   _id211867_
                   '1
                   __tmp217553
                   '#f))
                (let ((__tmp217554
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211866_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211866_
                   _arity211868_
                   '2
                   __tmp217554
                   '#f))
                (let ((__tmp217555
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211866_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211866_
                   _dispatch211869_
                   '3
                   __tmp217555
                   '#f))
                (let ((__tmp217556
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211866_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211866_
                   _inline211871_
                   '4
                   __tmp217556
                   '#f))
                (let ((__tmp217557
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211866_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211866_
                   _typedecl211873_
                   '5
                   __tmp217557
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self211866_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self211866_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self211875_
               _id211876_
               _arity211877_
               _dispatch211878_
               _inline211879_)
        (let ((_typedecl211881_ '#f))
          (if (let ((__tmp217564
                     (let ()
                       (declare (not safe))
                       (##structure-length _self211875_))))
                (declare (not safe))
                (##fx< '5 __tmp217564))
              (begin
                (let ((__tmp217559
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211875_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211875_
                   _id211876_
                   '1
                   __tmp217559
                   '#f))
                (let ((__tmp217560
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211875_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211875_
                   _arity211877_
                   '2
                   __tmp217560
                   '#f))
                (let ((__tmp217561
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211875_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211875_
                   _dispatch211878_
                   '3
                   __tmp217561
                   '#f))
                (let ((__tmp217562
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211875_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211875_
                   _inline211879_
                   '4
                   __tmp217562
                   '#f))
                (let ((__tmp217563
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211875_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211875_
                   _typedecl211881_
                   '5
                   __tmp217563
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self211875_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self211875_)))))))
    (define gxc#!lambda:::init!
      (lambda _g217566_
        (let ((_g217565_ (let () (declare (not safe)) (##length _g217566_))))
          (cond ((let () (declare (not safe)) (##fx= _g217565_ 4))
                 (apply (lambda (_self211866_
                                 _id211867_
                                 _arity211868_
                                 _dispatch211869_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self211866_
                             _id211867_
                             _arity211868_
                             _dispatch211869_)))
                        _g217566_))
                ((let () (declare (not safe)) (##fx= _g217565_ 5))
                 (apply (lambda (_self211875_
                                 _id211876_
                                 _arity211877_
                                 _dispatch211878_
                                 _inline211879_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self211875_
                             _id211876_
                             _arity211877_
                             _dispatch211878_
                             _inline211879_)))
                        _g217566_))
                ((let () (declare (not safe)) (##fx= _g217565_ 6))
                 (apply (lambda (_self211883_
                                 _id211884_
                                 _arity211885_
                                 _dispatch211886_
                                 _inline211887_
                                 _typedecl211888_)
                          (if (let ((__tmp217572
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self211883_))))
                                (declare (not safe))
                                (##fx< '5 __tmp217572))
                              (begin
                                (let ((__tmp217567
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self211883_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self211883_
                                   _id211884_
                                   '1
                                   __tmp217567
                                   '#f))
                                (let ((__tmp217568
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self211883_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self211883_
                                   _arity211885_
                                   '2
                                   __tmp217568
                                   '#f))
                                (let ((__tmp217569
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self211883_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self211883_
                                   _dispatch211886_
                                   '3
                                   __tmp217569
                                   '#f))
                                (let ((__tmp217570
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self211883_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self211883_
                                   _inline211887_
                                   '4
                                   __tmp217570
                                   '#f))
                                (let ((__tmp217571
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self211883_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self211883_
                                   _typedecl211888_
                                   '5
                                   __tmp217571
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self211883_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self211883_)))))
                        _g217566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g217566_))))))
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
      (lambda (_self211608_ . _args211609_)
        (apply struct-instance-init! _self211608_ _args211609_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type211483_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211483_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type211483_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass211476_)
        (let ((_$e211478_
               (##structure-ref _klass211476_ '9 gxc#!class::t '#f)))
          (if _$e211478_
              _$e211478_
              (let ((_tab211481_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass211476_
                 _tab211481_
                 '9
                 gxc#!class::t
                 '#f)
                _tab211481_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass211467_ _method211468_)
        (let ((_tab211469211471_
               (##structure-ref _klass211467_ '9 gxc#!class::t '#f)))
          (if _tab211469211471_
              (let ((_tab211474_ _tab211469211471_))
                (declare (not safe))
                (table-ref _tab211474_ _method211468_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type211464_ _method211465_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211464_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type211464_ _method211465_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym211448_ _type211449_ _local?211450_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211449_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym211448_
                   _type211449_))
        (let ((__tmp217573
               (let () (declare (not safe)) (struct->list _type211449_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym211448_ '" " __tmp217573))
        (let ((__tmp217574
               (if _local?211450_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp217574 _sym211448_ _type211449_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym211455_ _type211456_)
        (let ((_local?211458_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym211455_
           _type211456_
           _local?211458_))))
    (define gxc#optimizer-declare-type!
      (lambda _g217576_
        (let ((_g217575_ (let () (declare (not safe)) (##length _g217576_))))
          (cond ((let () (declare (not safe)) (##fx= _g217575_ 2))
                 (apply (lambda (_sym211455_ _type211456_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym211455_
                             _type211456_)))
                        _g217576_))
                ((let () (declare (not safe)) (##fx= _g217575_ 3))
                 (apply (lambda (_sym211460_ _type211461_ _local?211462_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym211460_
                             _type211461_
                             _local?211462_)))
                        _g217576_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g217576_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym211434_ _local?211435_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym211434_))
        (let ((__tmp217577
               (if _local?211435_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp217577 _sym211434_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym211440_)
        (let ((_local?211442_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym211440_ _local?211442_))))
    (define gxc#optimizer-clear-type!
      (lambda _g217579_
        (let ((_g217578_ (let () (declare (not safe)) (##length _g217579_))))
          (cond ((let () (declare (not safe)) (##fx= _g217578_ 1))
                 (apply (lambda (_sym211440_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym211440_)))
                        _g217579_))
                ((let () (declare (not safe)) (##fx= _g217578_ 2))
                 (apply (lambda (_sym211444_ _local?211445_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym211444_
                             _local?211445_)))
                        _g217579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g217579_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t211407_ _method211408_ _sym211409_ _rebind?211410_)
        (let* ((_type211412_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t211407_)))
               (_$e211414_
                (let () (declare (not safe)) (gxc#!type-vtab _type211412_))))
          (if _$e211414_
              ((lambda (_vtab211417_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab211417_ _method211408_))
                     (if _rebind?211410_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t211407_
                              '" "
                              _method211408_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab211417_
                              _method211408_
                              _sym211409_)))
                         (let ((__tmp217584
                                (let ((__tmp217585
                                       (let ((__tmp217586
                                              (let ((__tmp217587
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym211409_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method211408_
                                                      __tmp217587))))
                                         (declare (not safe))
                                         (cons _type-t211407_ __tmp217586))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp217585))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp217584
                            _method211408_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t211407_
                          '" "
                          _method211408_
                          '" => "
                          _sym211409_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab211417_
                          _method211408_
                          _sym211409_)))))
               _$e211414_)
              (if (let () (declare (not safe)) (not _type211412_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t211407_))
                  (let ((__tmp217580
                         (let ((__tmp217581
                                (let ((__tmp217582
                                       (let ((__tmp217583
                                              (let ()
                                                (declare (not safe))
                                                (cons _method211408_ '()))))
                                         (declare (not safe))
                                         (cons _sym211409_ __tmp217583))))
                                  (declare (not safe))
                                  (cons _type-t211407_ __tmp217582))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp217581))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp217580
                     _type211412_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t211422_ _method211423_ _sym211424_)
        (let ((_rebind?211426_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t211422_
           _method211423_
           _sym211424_
           _rebind?211426_))))
    (define gxc#optimizer-declare-method!
      (lambda _g217589_
        (let ((_g217588_ (let () (declare (not safe)) (##length _g217589_))))
          (cond ((let () (declare (not safe)) (##fx= _g217588_ 3))
                 (apply (lambda (_type-t211422_ _method211423_ _sym211424_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t211422_
                             _method211423_
                             _sym211424_)))
                        _g217589_))
                ((let () (declare (not safe)) (##fx= _g217588_ 4))
                 (apply (lambda (_type-t211428_
                                 _method211429_
                                 _sym211430_
                                 _rebind?211431_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t211428_
                             _method211429_
                             _sym211430_
                             _rebind?211431_)))
                        _g217589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g217589_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym211395_)
        (let ((_$e211403_
               (let ((_ht211396211398_ (gxc#current-compile-local-type)))
                 (if _ht211396211398_
                     (let ((_ht211401_ _ht211396211398_))
                       (declare (not safe))
                       (table-ref _ht211401_ _sym211395_ '#f))
                     '#f))))
          (if _$e211403_
              _$e211403_
              (let ((__tmp217590
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp217590 _sym211395_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym211387_)
        (let ((_type211388211390_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym211387_))))
          (if _type211388211390_
              (let ((_type211393_ _type211388211390_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type211393_ 'gxc#!alias::t))
                    (let ((__tmp217591
                           (##structure-ref _type211393_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp217591))
                    _type211393_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where211379_ _klass-id211380_)
        (let ((_$e211382_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id211380_))))
          (if _$e211382_
              ((lambda (_klass211385_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass211385_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where211379_
                        _klass-id211380_
                        _klass211385_)))
                 _klass211385_)
               _$e211382_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where211379_
                 _klass-id211380_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t211376_ _method211377_)
        (let ((__tmp217592
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t211376_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp217592 _method211377_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym211374_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym211374_))
        (let ((__tmp217593
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp217593 _sym211374_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym211372_)
        (let ((__tmp217594
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp217594 _sym211372_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx211370_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx211370_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx211370_))
            (let () (declare (not safe)) (gx#stx-e _stx211370_)))))))
