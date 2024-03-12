(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710237312)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp115489 (list))
            (__tmp115487
             (let ((__tmp115488
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115488 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp115489
         '(type ssxi methods)
         __tmp115487
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args115423_
        (apply make-instance gxc#optimizer-info::t _$args115423_)))
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
      (lambda (_self115421_)
        (if (let ((__tmp115497
                   (let ()
                     (declare (not safe))
                     (##structure-length _self115421_))))
              (declare (not safe))
              (##fx< '3 __tmp115497))
            (begin
              (let ((__tmp115492
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp115491
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115421_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115421_
                 __tmp115492
                 '1
                 __tmp115491
                 '#f))
              (let ((__tmp115494
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp115493
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115421_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115421_
                 __tmp115494
                 '2
                 __tmp115493
                 '#f))
              (let ((__tmp115496
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp115495
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115421_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115421_
                 __tmp115496
                 '3
                 __tmp115495
                 '#f)))
            (let ((__tmp115490
                   (let ()
                     (declare (not safe))
                     (##vector-length _self115421_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self115421_
                     '3
                     __tmp115490)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp115500 (list))
            (__tmp115498
             (let ((__tmp115499
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115499 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp115500
         '(id)
         __tmp115498
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args115296_ (apply make-instance gxc#!type::t _$args115296_)))
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
      (let ((__tmp115503 (list gxc#!type::t))
            (__tmp115501
             (let ((__tmp115502
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115502 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp115503
         '()
         __tmp115501
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args115293_ (apply make-instance gxc#!alias::t _$args115293_)))
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
      (let ((__tmp115506 (list gxc#!type::t))
            (__tmp115504
             (let ((__tmp115505
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115505 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp115506
         '()
         __tmp115504
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args115290_
        (apply make-instance gxc#!procedure::t _$args115290_)))
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
      (let ((__tmp115509 (list gxc#!type::t))
            (__tmp115507
             (let ((__tmp115508
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115508 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp115509
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp115507
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args115287_ (apply make-instance gxc#!class::t _$args115287_)))
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
    (define gxc#!class-metaclass
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'metaclass)))
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
    (define gxc#!class-metaclass-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'metaclass)))
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
    (define gxc#&!class-metaclass
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'metaclass)))
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
    (define gxc#&!class-metaclass-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'metaclass)))
    (define gxc#&!class-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'methods)))
    (define gxc#&!class-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'id)))
    (define gxc#!predicate::t
      (let ((__tmp115512 (list gxc#!procedure::t))
            (__tmp115510
             (let ((__tmp115511
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115511 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp115512
         '()
         __tmp115510
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args115284_
        (apply make-instance gxc#!predicate::t _$args115284_)))
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
      (let ((__tmp115515 (list gxc#!procedure::t))
            (__tmp115513
             (let ((__tmp115514
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115514 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp115515
         '()
         __tmp115513
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args115281_
        (apply make-instance gxc#!constructor::t _$args115281_)))
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
      (let ((__tmp115518 (list gxc#!procedure::t))
            (__tmp115516
             (let ((__tmp115517
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115517 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp115518
         '(slot checked?)
         __tmp115516
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args115278_
        (apply make-instance gxc#!accessor::t _$args115278_)))
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
      (let ((__tmp115521 (list gxc#!procedure::t))
            (__tmp115519
             (let ((__tmp115520
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115520 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp115521
         '(slot checked?)
         __tmp115519
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args115275_
        (apply make-instance gxc#!mutator::t _$args115275_)))
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
      (let ((__tmp115524 (list gxc#!procedure::t))
            (__tmp115522
             (let ((__tmp115523
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115523 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp115524
         '(arity dispatch inline inline-typedecl)
         __tmp115522
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args115272_
        (apply make-instance gxc#!lambda::t _$args115272_)))
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
      (let ((__tmp115527 (list gxc#!procedure::t))
            (__tmp115525
             (let ((__tmp115526
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115526 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp115527
         '(clauses)
         __tmp115525
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args115269_
        (apply make-instance gxc#!case-lambda::t _$args115269_)))
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
      (let ((__tmp115530 (list gxc#!procedure::t))
            (__tmp115528
             (let ((__tmp115529
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115529 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp115530
         '(table dispatch)
         __tmp115528
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args115266_
        (apply make-instance gxc#!kw-lambda::t _$args115266_)))
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
      (let ((__tmp115533 (list gxc#!procedure::t))
            (__tmp115531
             (let ((__tmp115532
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115532 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp115533
         '(keys main)
         __tmp115531
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args115263_
        (apply make-instance gxc#!kw-lambda-primary::t _$args115263_)))
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
      (let ((__tmp115534 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp115534
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args115260_
        (apply make-instance gxc#!primitive::t _$args115260_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp115535 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp115535
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args115257_
        (apply make-instance gxc#!primitive-lambda::t _$args115257_)))
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
      (let ((__tmp115536 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp115536
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args115254_
        (apply make-instance gxc#!primitive-case-lambda::t _$args115254_)))
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
      (lambda (_self115136_
               _id115137_
               _super115138_
               _slots115139_
               _ctor-method115140_
               _struct?115141_
               _final?115142_
               _metaclass115143_)
        (let _lp115145_ ((_rest115147_ _super115138_))
          (let* ((_rest115148115156_ _rest115147_)
                 (_else115150115164_ (lambda () '#!void))
                 (_K115152115170_
                  (lambda (_rest115167_ _super-id115168_)
                    (if (##structure-ref
                         (let ((__tmp115539
                                (let ((__tmp115540
                                       (let ()
                                         (declare (not safe))
                                         (cons _id115137_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp115540))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp115539
                            _super-id115168_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp115537
                               (let ((__tmp115538
                                      (let ()
                                        (declare (not safe))
                                        (cons _id115137_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp115538))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp115537
                           _super-id115168_))
                        '#!void)
                    (let () (declare (not safe)) (_lp115145_ _rest115167_)))))
            (if (let () (declare (not safe)) (##pair? _rest115148115156_))
                (let ((_hd115153115173_
                       (let ()
                         (declare (not safe))
                         (##car _rest115148115156_)))
                      (_tl115154115175_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest115148115156_))))
                  (let* ((_super-id115178_ _hd115153115173_)
                         (_rest115180_ _tl115154115175_))
                    (declare (not safe))
                    (_K115152115170_ _rest115180_ _super-id115178_)))
                '#!void)))
        (let* ((_ctor-method115230_
                (let ((_$e115182_ _ctor-method115140_))
                  (if _$e115182_
                      _$e115182_
                      (let _lp115185_ ((_rest115187_ _super115138_)
                                       (_method115188_ '#f))
                        (let* ((_rest115189115197_ _rest115187_)
                               (_else115191115205_ (lambda () _method115188_))
                               (_K115193115218_
                                (lambda (_rest115208_ _super-id115209_)
                                  (let* ((_klass115211_
                                          (let ((__tmp115541
                                                 (let ((__tmp115542
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id115137_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp115542))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp115541
                                             _super-id115209_)))
                                         (_$e115213_
                                          (##structure-ref
                                           _klass115211_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e115213_
                                        ((lambda (_ctor-method115216_)
                                           (if _method115188_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method115216_
                                                          _method115188_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp115185_
                                                      _rest115208_
                                                      _ctor-method115216_))
                                                   (let ((__tmp115543
                                                          (let ((__tmp115544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id115137_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp115544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp115543
                                                      _method115188_
                                                      _ctor-method115216_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp115185_
                                                  _rest115208_
                                                  _ctor-method115216_))))
                                         _$e115213_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp115185_
                                           _rest115208_
                                           _method115188_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest115189115197_))
                              (let ((_hd115194115221_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest115189115197_)))
                                    (_tl115195115223_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest115189115197_))))
                                (let* ((_super-id115226_ _hd115194115221_)
                                       (_rest115228_ _tl115195115223_))
                                  (declare (not safe))
                                  (_K115193115218_
                                   _rest115228_
                                   _super-id115226_)))
                              (let ()
                                (declare (not safe))
                                (_else115191115205_))))))))
               (_g115545_
                (let ((__tmp115550
                       (lambda (_klass-id115232_)
                         (let ((__tmp115551
                                (##structure-ref
                                 (let ((__tmp115552
                                        (let ((__tmp115553
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id115137_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp115553))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp115552
                                    _klass-id115232_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id115232_ __tmp115551))))
                      (__tmp115547
                       (lambda (_klass-id115234_)
                         (##structure-ref
                          (let ((__tmp115548
                                 (let ((__tmp115549
                                        (let ()
                                          (declare (not safe))
                                          (cons _id115137_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp115549))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp115548
                             _klass-id115234_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super115138_
                   'get-precedence-list:
                   __tmp115550
                   'struct:
                   __tmp115547
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g115546_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g115545_)
                         (##vector-length _g115545_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g115546_ 2)))
                  (error "Context expects 2 values" _g115546_)))
            (let ((_precedence-list115236_
                   (let () (declare (not safe)) (##vector-ref _g115545_ 0)))
                  (_base-struct115237_
                   (let () (declare (not safe)) (##vector-ref _g115545_ 1))))
              (let ((_fields115239_
                     (let ((__tmp115554
                            (let ((__tmp115555
                                   (let ()
                                     (declare (not safe))
                                     (cons _id115137_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp115555))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp115554
                        _base-struct115237_
                        _precedence-list115236_
                        _slots115139_))))
                (##structure-set! _self115136_ _id115137_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self115136_
                 _super115138_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self115136_
                 _precedence-list115236_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self115136_
                 _slots115139_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self115136_
                 _fields115239_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self115136_
                 _ctor-method115230_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self115136_
                 _struct?115141_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self115136_
                 _final?115142_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self115136_
                 _metaclass115143_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self115242_
               _id115243_
               _super115244_
               _precedence-list115245_
               _slots115246_
               _fields115247_
               _constructor115248_
               _struct?115249_
               _final?115250_
               _metaclass115251_
               _methods115252_)
        (##structure-set! _self115242_ _id115243_ '1 gxc#!type::t '#f)
        (##structure-set! _self115242_ _super115244_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self115242_
         _precedence-list115245_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self115242_ _slots115246_ '4 gxc#!class::t '#f)
        (##structure-set! _self115242_ _fields115247_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self115242_
         _constructor115248_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self115242_ _struct?115249_ '7 gxc#!class::t '#f)
        (##structure-set! _self115242_ _final?115250_ '8 gxc#!class::t '#f)
        (##structure-set! _self115242_ _metaclass115251_ '9 gxc#!class::t '#f)
        (if _methods115252_
            (##structure-set!
             _self115242_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods115252_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g115557_
        (let ((_g115556_ (let () (declare (not safe)) (##length _g115557_))))
          (cond ((let () (declare (not safe)) (##fx= _g115556_ 8))
                 (apply (lambda (_self115136_
                                 _id115137_
                                 _super115138_
                                 _slots115139_
                                 _ctor-method115140_
                                 _struct?115141_
                                 _final?115142_
                                 _metaclass115143_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self115136_
                             _id115137_
                             _super115138_
                             _slots115139_
                             _ctor-method115140_
                             _struct?115141_
                             _final?115142_
                             _metaclass115143_)))
                        _g115557_))
                ((let () (declare (not safe)) (##fx= _g115556_ 11))
                 (apply (lambda (_self115242_
                                 _id115243_
                                 _super115244_
                                 _precedence-list115245_
                                 _slots115246_
                                 _fields115247_
                                 _constructor115248_
                                 _struct?115249_
                                 _final?115250_
                                 _metaclass115251_
                                 _methods115252_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self115242_
                             _id115243_
                             _super115244_
                             _precedence-list115245_
                             _slots115246_
                             _fields115247_
                             _constructor115248_
                             _struct?115249_
                             _final?115250_
                             _metaclass115251_
                             _methods115252_)))
                        _g115557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g115557_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass115425 __method-table115426)
        (let ((__id115427
               (let ((__slot115437
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115425 'id))))
                 (if __slot115437
                     __slot115437
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super115428
               (let ((__slot115438
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115425 'super))))
                 (if __slot115438
                     __slot115438
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__struct?115429
               (let ((__slot115439
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115425 'struct?))))
                 (if __slot115439
                     __slot115439
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__metaclass115430
               (let ((__slot115440
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115425 'metaclass))))
                 (if __slot115440
                     __slot115440
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__final?115431
               (let ((__slot115441
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115425 'final?))))
                 (if __slot115441
                     __slot115441
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__precedence-list115432
               (let ((__slot115442
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115425 'precedence-list))))
                 (if __slot115442
                     __slot115442
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__slots115433
               (let ((__slot115443
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115425 'slots))))
                 (if __slot115443
                     __slot115443
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__constructor115434
               (let ((__slot115444
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115425 'constructor))))
                 (if __slot115444
                     __slot115444
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__fields115435
               (let ((__slot115445
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115425 'fields))))
                 (if __slot115445
                     __slot115445
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__methods115436
               (let ((__slot115446
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115425 'methods))))
                 (if __slot115446
                     __slot115446
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods))))))
          (lambda _g115559_
            (let ((_g115558_
                   (let () (declare (not safe)) (##length _g115559_))))
              (cond ((let () (declare (not safe)) (##fx= _g115558_ 8))
                     (apply (lambda (_self115136_
                                     _id115137_
                                     _super115138_
                                     _slots115139_
                                     _ctor-method115140_
                                     _struct?115141_
                                     _final?115142_
                                     _metaclass115143_)
                              (let _lp115145_ ((_rest115147_ _super115138_))
                                (let* ((_rest115148115156_ _rest115147_)
                                       (_else115150115164_ (lambda () '#!void))
                                       (_K115152115170_
                                        (lambda (_rest115167_ _super-id115168_)
                                          (if (##structure-ref
                                               (let ((__tmp115562
                                                      (let ((__tmp115563
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id115137_ '()))))
                (declare (not safe))
                (cons '!class __tmp115563))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp115562
                                                  _super-id115168_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp115560
                                                     (let ((__tmp115561
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id115137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp115561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp115560
                                                 _super-id115168_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp115145_ _rest115167_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest115148115156_))
                                      (let ((_hd115153115173_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest115148115156_)))
                                            (_tl115154115175_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest115148115156_))))
                                        (let* ((_super-id115178_
                                                _hd115153115173_)
                                               (_rest115180_ _tl115154115175_))
                                          (declare (not safe))
                                          (_K115152115170_
                                           _rest115180_
                                           _super-id115178_)))
                                      '#!void)))
                              (let* ((_ctor-method115230_
                                      (let ((_$e115182_ _ctor-method115140_))
                                        (if _$e115182_
                                            _$e115182_
                                            (let _lp115185_ ((_rest115187_
                                                              _super115138_)
                                                             (_method115188_
                                                              '#f))
                                              (let* ((_rest115189115197_
                                                      _rest115187_)
                                                     (_else115191115205_
                                                      (lambda ()
                                                        _method115188_))
                                                     (_K115193115218_
                                                      (lambda (_rest115208_
                                                               _super-id115209_)
                                                        (let* ((_klass115211_
                                                                (let ((__tmp115564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp115565
                                      (let ()
                                        (declare (not safe))
                                        (cons _id115137_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp115565))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp115564
                           _super-id115209_)))
                       (_$e115213_
                        (##structure-ref _klass115211_ '6 gxc#!class::t '#f)))
                  (if _$e115213_
                      ((lambda (_ctor-method115216_)
                         (if _method115188_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method115216_ _method115188_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp115185_
                                    _rest115208_
                                    _ctor-method115216_))
                                 (let ((__tmp115566
                                        (let ((__tmp115567
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id115137_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp115567))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp115566
                                    _method115188_
                                    _ctor-method115216_)))
                             (let ()
                               (declare (not safe))
                               (_lp115185_ _rest115208_ _ctor-method115216_))))
                       _$e115213_)
                      (let ()
                        (declare (not safe))
                        (_lp115185_ _rest115208_ _method115188_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest115189115197_))
                                                    (let ((_hd115194115221_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest115189115197_)))
                                                          (_tl115195115223_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest115189115197_))))
                                                      (let* ((_super-id115226_
                                                              _hd115194115221_)
                                                             (_rest115228_
                                                              _tl115195115223_))
                                                        (declare (not safe))
                                                        (_K115193115218_
                                                         _rest115228_
                                                         _super-id115226_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else115191115205_))))))))
                                     (_g115568_
                                      (let ((__tmp115573
                                             (lambda (_klass-id115232_)
                                               (let ((__tmp115574
                                                      (##structure-ref
                                                       (let ((__tmp115575
                                                              (let ((__tmp115576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id115137_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp115576))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp115575 _klass-id115232_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id115232_
                                                       __tmp115574))))
                                            (__tmp115570
                                             (lambda (_klass-id115234_)
                                               (##structure-ref
                                                (let ((__tmp115571
                                                       (let ((__tmp115572
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id115137_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp115572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp115571
                                                   _klass-id115234_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super115138_
                                         'get-precedence-list:
                                         __tmp115573
                                         'struct:
                                         __tmp115570
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g115569_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g115568_)
                                               (##vector-length _g115568_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g115569_ 2)))
                                        (error "Context expects 2 values"
                                               _g115569_)))
                                  (let ((_precedence-list115236_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g115568_ 0)))
                                        (_base-struct115237_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g115568_ 1))))
                                    (let ((_fields115239_
                                           (let ((__tmp115577
                                                  (let ((__tmp115578
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id115137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp115578))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp115577
                                              _base-struct115237_
                                              _precedence-list115236_
                                              _slots115139_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115136_
                                         _id115137_
                                         __id115427
                                         __klass115425
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115136_
                                         _super115138_
                                         __super115428
                                         __klass115425
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115136_
                                         _precedence-list115236_
                                         __precedence-list115432
                                         __klass115425
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115136_
                                         _slots115139_
                                         __slots115433
                                         __klass115425
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115136_
                                         _fields115239_
                                         __fields115435
                                         __klass115425
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115136_
                                         _ctor-method115230_
                                         __constructor115434
                                         __klass115425
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115136_
                                         _struct?115141_
                                         __struct?115429
                                         __klass115425
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115136_
                                         _final?115142_
                                         __final?115431
                                         __klass115425
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115136_
                                         _metaclass115143_
                                         __metaclass115430
                                         __klass115425
                                         '#f)))))))
                            _g115559_))
                    ((let () (declare (not safe)) (##fx= _g115558_ 11))
                     (apply (lambda (_self115242_
                                     _id115243_
                                     _super115244_
                                     _precedence-list115245_
                                     _slots115246_
                                     _fields115247_
                                     _constructor115248_
                                     _struct?115249_
                                     _final?115250_
                                     _metaclass115251_
                                     _methods115252_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115242_
                                 _id115243_
                                 __id115427
                                 __klass115425
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115242_
                                 _super115244_
                                 __super115428
                                 __klass115425
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115242_
                                 _precedence-list115245_
                                 __precedence-list115432
                                 __klass115425
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115242_
                                 _slots115246_
                                 __slots115433
                                 __klass115425
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115242_
                                 _fields115247_
                                 __fields115435
                                 __klass115425
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115242_
                                 _constructor115248_
                                 __constructor115434
                                 __klass115425
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115242_
                                 _struct?115249_
                                 __struct?115429
                                 __klass115425
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115242_
                                 _final?115250_
                                 __final?115431
                                 __klass115425
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115242_
                                 _metaclass115251_
                                 __metaclass115430
                                 __klass115425
                                 '#f))
                              (if _methods115252_
                                  (let ((__tmp115579
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods115252_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self115242_
                                     __tmp115579
                                     __methods115436
                                     __klass115425
                                     '#f))
                                  '#!void))
                            _g115559_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g115559_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where114988_
               _base-struct114989_
               _precedence-list114990_
               _direct-slots114991_)
        (let* ((_base-fields114993_
                (if _base-struct114989_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where114988_
                        _base-struct114989_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields114995_ (reverse _base-fields114993_))
               (_seen-slots115003_
                (let ((_tab114997_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g114998115000_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab114997_ _g114998115000_ '#t)))
                   _base-fields114993_)
                  _tab114997_))
               (_process-slot115007_
                (lambda (_slot115005_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots115003_ _slot115005_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots115003_ _slot115005_ '#t))
                        (set! _r-fields114995_
                              (let ()
                                (declare (not safe))
                                (cons _slot115005_ _r-fields114995_))))))))
          (for-each
           (lambda (_mixin115010_)
             (let ((_klass115012_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where114988_
                       _mixin115010_))))
               (if (##structure-ref _klass115012_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot115007_
                    (##structure-ref _klass115012_ '5 gxc#!class::t '#f)))))
           _precedence-list114990_)
          (for-each _process-slot115007_ _direct-slots114991_)
          (reverse _r-fields114995_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass114947_ _slot114948_)
        (let _lp114950_ ((_rest114952_
                          (##structure-ref _klass114947_ '5 gxc#!class::t '#f))
                         (_offset114953_ '1))
          (let* ((_rest114954114962_ _rest114952_)
                 (_else114956114970_
                  (lambda ()
                    (let ((__tmp115581
                           (##structure-ref _klass114947_ '1 gxc#!type::t '#f))
                          (__tmp115580
                           (##structure-ref
                            _klass114947_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp115581
                       __tmp115580
                       _slot114948_))))
                 (_K114958114976_
                  (lambda (_rest114973_ _s114974_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s114974_ _slot114948_))
                        _offset114953_
                        (let ((__tmp115582
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset114953_ '1))))
                          (declare (not safe))
                          (_lp114950_ _rest114973_ __tmp115582))))))
            (if (let () (declare (not safe)) (##pair? _rest114954114962_))
                (let ((_hd114959114979_
                       (let ()
                         (declare (not safe))
                         (##car _rest114954114962_)))
                      (_tl114960114981_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest114954114962_))))
                  (let* ((_s114984_ _hd114959114979_)
                         (_rest114986_ _tl114960114981_))
                    (declare (not safe))
                    (_K114958114976_ _rest114986_ _s114984_)))
                (let () (declare (not safe)) (_else114956114970_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass114905_ _slot114906_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass114905_ _slot114906_))
            _klass114905_
            (let _lp114908_ ((_rest114910_
                              (##structure-ref
                               _klass114905_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest114911114919_ _rest114910_)
                     (_else114913114927_ (lambda () '#f))
                     (_K114915114935_
                      (lambda (_rest114930_ _super114931_)
                        (let ((_super-class114933_
                               (let ((__tmp115583
                                      (let ((__tmp115584
                                             (let ((__tmp115586
                                                    (##structure-ref
                                                     _klass114905_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp115585
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot114906_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp115586
                                                     __tmp115585))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp115584))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp115583
                                  _super114931_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class114933_
                                 _slot114906_))
                              _super-class114933_
                              (let ()
                                (declare (not safe))
                                (_lp114908_ _rest114930_)))))))
                (if (let () (declare (not safe)) (##pair? _rest114911114919_))
                    (let ((_hd114916114938_
                           (let ()
                             (declare (not safe))
                             (##car _rest114911114919_)))
                          (_tl114917114940_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest114911114919_))))
                      (let* ((_super114943_ _hd114916114938_)
                             (_rest114945_ _tl114917114940_))
                        (declare (not safe))
                        (_K114915114935_ _rest114945_ _super114943_)))
                    (let () (declare (not safe)) (_else114913114927_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass114902_ _slot114903_)
        (if (##structure-ref _klass114902_ '7 gxc#!class::t '#f)
            (memq _slot114903_
                  (##structure-ref _klass114902_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self114899_ _id114900_)
        (##structure-set! _self114899_ _id114900_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass115447 __method-table115448)
        (let ((__id115449
               (let ((__slot115450
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115447 'id))))
                 (if __slot115450
                     __slot115450
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self114899_ _id114900_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114899_
               _id114900_
               __id115449
               __klass115447
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!predicate:::init!
       gxc#!predicate:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_self114774_ _id114775_)
        (##structure-set! _self114774_ _id114775_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass115451 __method-table115452)
        (let ((__id115453
               (let ((__slot115454
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115451 'id))))
                 (if __slot115454
                     __slot115454
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self114774_ _id114775_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114774_
               _id114775_
               __id115453
               __klass115451
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!constructor:::init!
       gxc#!constructor:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_self114647_ _id114648_ _slot114649_ _checked?114650_)
        (##structure-set! _self114647_ _id114648_ '1 gxc#!type::t '#f)
        (##structure-set! _self114647_ _slot114649_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self114647_
         _checked?114650_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass115455 __method-table115456)
        (let ((__id115457
               (let ((__slot115460
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115455 'id))))
                 (if __slot115460
                     __slot115460
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?115458
               (let ((__slot115461
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115455 'checked?))))
                 (if __slot115461
                     __slot115461
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot115459
               (let ((__slot115462
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115455 'slot))))
                 (if __slot115462
                     __slot115462
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self114647_ _id114648_ _slot114649_ _checked?114650_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114647_
               _id114648_
               __id115457
               __klass115455
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114647_
               _slot114649_
               __slot115459
               __klass115455
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114647_
               _checked?114650_
               __checked?115458
               __klass115455
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor:::init!
       gxc#!accessor:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_self114520_ _id114521_ _slot114522_ _checked?114523_)
        (##structure-set! _self114520_ _id114521_ '1 gxc#!type::t '#f)
        (##structure-set! _self114520_ _slot114522_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self114520_
         _checked?114523_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass115463 __method-table115464)
        (let ((__id115465
               (let ((__slot115468
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115463 'id))))
                 (if __slot115468
                     __slot115468
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?115466
               (let ((__slot115469
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115463 'checked?))))
                 (if __slot115469
                     __slot115469
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot115467
               (let ((__slot115470
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115463 'slot))))
                 (if __slot115470
                     __slot115470
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self114520_ _id114521_ _slot114522_ _checked?114523_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114520_
               _id114521_
               __id115465
               __klass115463
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114520_
               _slot114522_
               __slot115467
               __klass115463
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114520_
               _checked?114523_
               __checked?115466
               __klass115463
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator:::init!
       gxc#!mutator:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_self114364_
               _id114365_
               _arity114366_
               _dispatch114367_
               _inline114368_
               _typedecl114369_)
        (if (let ((__tmp115593
                   (let ()
                     (declare (not safe))
                     (##structure-length _self114364_))))
              (declare (not safe))
              (##fx< '5 __tmp115593))
            (begin
              (let ((__tmp115588
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114364_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114364_
                 _id114365_
                 '1
                 __tmp115588
                 '#f))
              (let ((__tmp115589
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114364_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114364_
                 _arity114366_
                 '2
                 __tmp115589
                 '#f))
              (let ((__tmp115590
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114364_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114364_
                 _dispatch114367_
                 '3
                 __tmp115590
                 '#f))
              (let ((__tmp115591
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114364_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114364_
                 _inline114368_
                 '4
                 __tmp115591
                 '#f))
              (let ((__tmp115592
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114364_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114364_
                 _typedecl114369_
                 '5
                 __tmp115592
                 '#f)))
            (let ((__tmp115587
                   (let ()
                     (declare (not safe))
                     (##vector-length _self114364_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self114364_
                     '5
                     __tmp115587)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self114374_ _id114375_ _arity114376_ _dispatch114377_)
        (let* ((_inline114379_ '#f) (_typedecl114381_ '#f))
          (if (let ((__tmp115600
                     (let ()
                       (declare (not safe))
                       (##structure-length _self114374_))))
                (declare (not safe))
                (##fx< '5 __tmp115600))
              (begin
                (let ((__tmp115595
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114374_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114374_
                   _id114375_
                   '1
                   __tmp115595
                   '#f))
                (let ((__tmp115596
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114374_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114374_
                   _arity114376_
                   '2
                   __tmp115596
                   '#f))
                (let ((__tmp115597
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114374_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114374_
                   _dispatch114377_
                   '3
                   __tmp115597
                   '#f))
                (let ((__tmp115598
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114374_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114374_
                   _inline114379_
                   '4
                   __tmp115598
                   '#f))
                (let ((__tmp115599
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114374_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114374_
                   _typedecl114381_
                   '5
                   __tmp115599
                   '#f)))
              (let ((__tmp115594
                     (let ()
                       (declare (not safe))
                       (##vector-length _self114374_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self114374_
                       '5
                       __tmp115594))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self114383_
               _id114384_
               _arity114385_
               _dispatch114386_
               _inline114387_)
        (let ((_typedecl114389_ '#f))
          (if (let ((__tmp115607
                     (let ()
                       (declare (not safe))
                       (##structure-length _self114383_))))
                (declare (not safe))
                (##fx< '5 __tmp115607))
              (begin
                (let ((__tmp115602
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114383_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114383_
                   _id114384_
                   '1
                   __tmp115602
                   '#f))
                (let ((__tmp115603
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114383_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114383_
                   _arity114385_
                   '2
                   __tmp115603
                   '#f))
                (let ((__tmp115604
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114383_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114383_
                   _dispatch114386_
                   '3
                   __tmp115604
                   '#f))
                (let ((__tmp115605
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114383_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114383_
                   _inline114387_
                   '4
                   __tmp115605
                   '#f))
                (let ((__tmp115606
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114383_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114383_
                   _typedecl114389_
                   '5
                   __tmp115606
                   '#f)))
              (let ((__tmp115601
                     (let ()
                       (declare (not safe))
                       (##vector-length _self114383_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self114383_
                       '5
                       __tmp115601))))))
    (define gxc#!lambda:::init!
      (lambda _g115609_
        (let ((_g115608_ (let () (declare (not safe)) (##length _g115609_))))
          (cond ((let () (declare (not safe)) (##fx= _g115608_ 4))
                 (apply (lambda (_self114374_
                                 _id114375_
                                 _arity114376_
                                 _dispatch114377_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self114374_
                             _id114375_
                             _arity114376_
                             _dispatch114377_)))
                        _g115609_))
                ((let () (declare (not safe)) (##fx= _g115608_ 5))
                 (apply (lambda (_self114383_
                                 _id114384_
                                 _arity114385_
                                 _dispatch114386_
                                 _inline114387_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self114383_
                             _id114384_
                             _arity114385_
                             _dispatch114386_
                             _inline114387_)))
                        _g115609_))
                ((let () (declare (not safe)) (##fx= _g115608_ 6))
                 (apply (lambda (_self114391_
                                 _id114392_
                                 _arity114393_
                                 _dispatch114394_
                                 _inline114395_
                                 _typedecl114396_)
                          (if (let ((__tmp115616
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self114391_))))
                                (declare (not safe))
                                (##fx< '5 __tmp115616))
                              (begin
                                (let ((__tmp115611
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self114391_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self114391_
                                   _id114392_
                                   '1
                                   __tmp115611
                                   '#f))
                                (let ((__tmp115612
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self114391_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self114391_
                                   _arity114393_
                                   '2
                                   __tmp115612
                                   '#f))
                                (let ((__tmp115613
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self114391_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self114391_
                                   _dispatch114394_
                                   '3
                                   __tmp115613
                                   '#f))
                                (let ((__tmp115614
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self114391_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self114391_
                                   _inline114395_
                                   '4
                                   __tmp115614
                                   '#f))
                                (let ((__tmp115615
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self114391_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self114391_
                                   _typedecl114396_
                                   '5
                                   __tmp115615
                                   '#f)))
                              (let ((__tmp115610
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self114391_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self114391_
                                       '5
                                       __tmp115610))))
                        _g115609_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g115609_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!primitive-lambda:::init! gxc#!lambda:::init!)
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-lambda::t
       ':init!
       gxc#!primitive-lambda:::init!
       '#f))
    (define gxc#!primitive-case-lambda:::init!
      (lambda (_self114116_ . _args114117_)
        (apply struct-instance-init! _self114116_ _args114117_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type113991_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113991_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type113991_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass113984_)
        (let ((_$e113986_
               (##structure-ref _klass113984_ '10 gxc#!class::t '#f)))
          (if _$e113986_
              _$e113986_
              (let ((_tab113989_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass113984_
                 _tab113989_
                 '10
                 gxc#!class::t
                 '#f)
                _tab113989_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass113975_ _method113976_)
        (let ((_tab113977113979_
               (##structure-ref _klass113975_ '10 gxc#!class::t '#f)))
          (if _tab113977113979_
              (let ((_tab113982_ _tab113977113979_))
                (declare (not safe))
                (hash-get _tab113982_ _method113976_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type113972_ _method113973_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113972_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type113972_ _method113973_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym113956_ _type113957_ _local?113958_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113957_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym113956_
                     _type113957_)))
        (let ((__tmp115617
               (let () (declare (not safe)) (struct->list _type113957_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym113956_ '" " __tmp115617))
        (let ((__tmp115618
               (if _local?113958_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp115618 _sym113956_ _type113957_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym113963_ _type113964_)
        (let ((_local?113966_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym113963_
           _type113964_
           _local?113966_))))
    (define gxc#optimizer-declare-type!
      (lambda _g115620_
        (let ((_g115619_ (let () (declare (not safe)) (##length _g115620_))))
          (cond ((let () (declare (not safe)) (##fx= _g115619_ 2))
                 (apply (lambda (_sym113963_ _type113964_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym113963_
                             _type113964_)))
                        _g115620_))
                ((let () (declare (not safe)) (##fx= _g115619_ 3))
                 (apply (lambda (_sym113968_ _type113969_ _local?113970_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym113968_
                             _type113969_
                             _local?113970_)))
                        _g115620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g115620_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym113942_ _local?113943_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym113942_))
        (let ((__tmp115621
               (if _local?113943_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp115621 _sym113942_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym113948_)
        (let ((_local?113950_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym113948_ _local?113950_))))
    (define gxc#optimizer-clear-type!
      (lambda _g115623_
        (let ((_g115622_ (let () (declare (not safe)) (##length _g115623_))))
          (cond ((let () (declare (not safe)) (##fx= _g115622_ 1))
                 (apply (lambda (_sym113948_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym113948_)))
                        _g115623_))
                ((let () (declare (not safe)) (##fx= _g115622_ 2))
                 (apply (lambda (_sym113952_ _local?113953_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym113952_
                             _local?113953_)))
                        _g115623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g115623_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t113910_ _method113911_ _sym113912_ _rebind?113913_)
        (let* ((_type113915_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t113910_)))
               (_$e113917_
                (let () (declare (not safe)) (gxc#!type-vtab _type113915_))))
          (if _$e113917_
              ((lambda (_vtab113920_)
                 (let ((_$e113922_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab113920_ _method113911_))))
                   (if _$e113922_
                       ((lambda (_existing113925_)
                          (if _rebind?113913_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t113910_
                                   '" "
                                   _method113911_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab113920_
                                   _method113911_
                                   _sym113912_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing113925_ _sym113912_))
                                  '#!void
                                  (let ((__tmp115628
                                         (let ((__tmp115629
                                                (let ((__tmp115630
                                                       (let ((__tmp115631
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym113912_ '()))))
                 (declare (not safe))
                 (cons _method113911_ __tmp115631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t113910_
                                                        __tmp115630))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp115629))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp115628
                                     _method113911_)))))
                        _$e113922_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t113910_
                            '" "
                            _method113911_
                            '" => "
                            _sym113912_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab113920_
                            _method113911_
                            _sym113912_))))))
               _$e113917_)
              (if (let () (declare (not safe)) (not _type113915_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t113910_))
                  (let ((__tmp115624
                         (let ((__tmp115625
                                (let ((__tmp115626
                                       (let ((__tmp115627
                                              (let ()
                                                (declare (not safe))
                                                (cons _method113911_ '()))))
                                         (declare (not safe))
                                         (cons _sym113912_ __tmp115627))))
                                  (declare (not safe))
                                  (cons _type-t113910_ __tmp115626))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp115625))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp115624
                     _type113915_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t113930_ _method113931_ _sym113932_)
        (let ((_rebind?113934_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t113930_
           _method113931_
           _sym113932_
           _rebind?113934_))))
    (define gxc#optimizer-declare-method!
      (lambda _g115633_
        (let ((_g115632_ (let () (declare (not safe)) (##length _g115633_))))
          (cond ((let () (declare (not safe)) (##fx= _g115632_ 3))
                 (apply (lambda (_type-t113930_ _method113931_ _sym113932_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t113930_
                             _method113931_
                             _sym113932_)))
                        _g115633_))
                ((let () (declare (not safe)) (##fx= _g115632_ 4))
                 (apply (lambda (_type-t113936_
                                 _method113937_
                                 _sym113938_
                                 _rebind?113939_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t113936_
                             _method113937_
                             _sym113938_
                             _rebind?113939_)))
                        _g115633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g115633_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym113898_)
        (let ((_$e113906_
               (let ((_ht113899113901_ (gxc#current-compile-local-type)))
                 (if _ht113899113901_
                     (let ((_ht113904_ _ht113899113901_))
                       (declare (not safe))
                       (hash-get _ht113904_ _sym113898_))
                     '#f))))
          (if _$e113906_
              _$e113906_
              (let ((__tmp115634
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp115634 _sym113898_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym113890_)
        (let ((_type113891113893_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym113890_))))
          (if _type113891113893_
              (let ((_type113896_ _type113891113893_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type113896_ 'gxc#!alias::t))
                    (let ((__tmp115635
                           (##structure-ref _type113896_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp115635))
                    _type113896_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where113882_ _klass-id113883_)
        (let ((_$e113885_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id113883_))))
          (if _$e113885_
              ((lambda (_klass113888_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass113888_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where113882_
                        _klass-id113883_
                        _klass113888_)))
                 _klass113888_)
               _$e113885_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where113882_
                 _klass-id113883_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t113879_ _method113880_)
        (let ((__tmp115636
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t113879_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp115636 _method113880_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym113877_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym113877_))
        (let ((__tmp115637
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp115637 _sym113877_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym113875_)
        (let ((__tmp115638
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp115638 _sym113875_))))
    (define gxc#identifier-symbol
      (lambda (_stx113873_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx113873_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx113873_))
            (let () (declare (not safe)) (gx#stx-e _stx113873_)))))))
