(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708271178)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp227486 (list))
            (__tmp227484
             (let ((__tmp227485
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227485 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp227486
         '(type ssxi methods)
         __tmp227484
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args223358_
        (apply make-instance gxc#optimizer-info::t _$args223358_)))
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
      (lambda (_self223356_)
        (if (let ((__tmp227487
                   (let ()
                     (declare (not safe))
                     (##structure-length _self223356_))))
              (declare (not safe))
              (##fx< '3 __tmp227487))
            (begin
              (let ((__tmp227489
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp227488
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223356_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223356_
                 __tmp227489
                 '1
                 __tmp227488
                 '#f))
              (let ((__tmp227491
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp227490
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223356_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223356_
                 __tmp227491
                 '2
                 __tmp227490
                 '#f))
              (let ((__tmp227493
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp227492
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223356_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223356_
                 __tmp227493
                 '3
                 __tmp227492
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self223356_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self223356_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp227496 (list))
            (__tmp227494
             (let ((__tmp227495
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227495 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp227496
         '(id)
         __tmp227494
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args223231_ (apply make-instance gxc#!type::t _$args223231_)))
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
      (let ((__tmp227499 (list gxc#!type::t))
            (__tmp227497
             (let ((__tmp227498
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227498 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp227499
         '()
         __tmp227497
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args223228_ (apply make-instance gxc#!alias::t _$args223228_)))
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
      (let ((__tmp227502 (list gxc#!type::t))
            (__tmp227500
             (let ((__tmp227501
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227501 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp227502
         '()
         __tmp227500
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args223225_
        (apply make-instance gxc#!procedure::t _$args223225_)))
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
      (let ((__tmp227505 (list gxc#!type::t))
            (__tmp227503
             (let ((__tmp227504
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227504 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp227505
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp227503
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args223222_ (apply make-instance gxc#!class::t _$args223222_)))
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
      (let ((__tmp227508 (list gxc#!procedure::t))
            (__tmp227506
             (let ((__tmp227507
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227507 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp227508
         '()
         __tmp227506
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args223219_
        (apply make-instance gxc#!predicate::t _$args223219_)))
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
      (let ((__tmp227511 (list gxc#!procedure::t))
            (__tmp227509
             (let ((__tmp227510
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227510 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp227511
         '()
         __tmp227509
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args223216_
        (apply make-instance gxc#!constructor::t _$args223216_)))
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
      (let ((__tmp227514 (list gxc#!procedure::t))
            (__tmp227512
             (let ((__tmp227513
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227513 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp227514
         '(slot checked?)
         __tmp227512
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args223213_
        (apply make-instance gxc#!accessor::t _$args223213_)))
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
      (let ((__tmp227517 (list gxc#!procedure::t))
            (__tmp227515
             (let ((__tmp227516
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227516 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp227517
         '(slot checked?)
         __tmp227515
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args223210_
        (apply make-instance gxc#!mutator::t _$args223210_)))
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
      (let ((__tmp227520 (list gxc#!procedure::t))
            (__tmp227518
             (let ((__tmp227519
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227519 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp227520
         '(arity dispatch inline inline-typedecl)
         __tmp227518
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args223207_
        (apply make-instance gxc#!lambda::t _$args223207_)))
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
      (let ((__tmp227523 (list gxc#!procedure::t))
            (__tmp227521
             (let ((__tmp227522
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227522 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp227523
         '(clauses)
         __tmp227521
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args223204_
        (apply make-instance gxc#!case-lambda::t _$args223204_)))
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
      (let ((__tmp227526 (list gxc#!procedure::t))
            (__tmp227524
             (let ((__tmp227525
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227525 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp227526
         '(table dispatch)
         __tmp227524
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args223201_
        (apply make-instance gxc#!kw-lambda::t _$args223201_)))
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
      (let ((__tmp227529 (list gxc#!procedure::t))
            (__tmp227527
             (let ((__tmp227528
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227528 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp227529
         '(keys main)
         __tmp227527
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args223198_
        (apply make-instance gxc#!kw-lambda-primary::t _$args223198_)))
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
      (let ((__tmp227530 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp227530
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args223195_
        (apply make-instance gxc#!primitive::t _$args223195_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp227531 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp227531
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args223192_
        (apply make-instance gxc#!primitive-lambda::t _$args223192_)))
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
      (let ((__tmp227532 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp227532
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args223189_
        (apply make-instance gxc#!primitive-case-lambda::t _$args223189_)))
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
      (lambda (_self223071_
               _id223072_
               _super223073_
               _slots223074_
               _ctor-method223075_
               _struct?223076_
               _final?223077_
               _metaclass223078_)
        (let _lp223080_ ((_rest223082_ _super223073_))
          (let* ((_rest223083223091_ _rest223082_)
                 (_else223085223099_ (lambda () '#!void))
                 (_K223087223105_
                  (lambda (_rest223102_ _super-id223103_)
                    (if (##structure-ref
                         (let ((__tmp227533
                                (let ((__tmp227534
                                       (let ()
                                         (declare (not safe))
                                         (cons _id223072_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp227534))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp227533
                            _super-id223103_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp227535
                               (let ((__tmp227536
                                      (let ()
                                        (declare (not safe))
                                        (cons _id223072_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp227536))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp227535
                           _super-id223103_))
                        '#!void)
                    (let () (declare (not safe)) (_lp223080_ _rest223102_)))))
            (if (let () (declare (not safe)) (##pair? _rest223083223091_))
                (let ((_hd223088223108_
                       (let ()
                         (declare (not safe))
                         (##car _rest223083223091_)))
                      (_tl223089223110_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest223083223091_))))
                  (let* ((_super-id223113_ _hd223088223108_)
                         (_rest223115_ _tl223089223110_))
                    (declare (not safe))
                    (_K223087223105_ _rest223115_ _super-id223113_)))
                '#!void)))
        (let* ((_ctor-method223165_
                (let ((_$e223117_ _ctor-method223075_))
                  (if _$e223117_
                      _$e223117_
                      (let _lp223120_ ((_rest223122_ _super223073_)
                                       (_method223123_ '#f))
                        (let* ((_rest223124223132_ _rest223122_)
                               (_else223126223140_ (lambda () _method223123_))
                               (_K223128223153_
                                (lambda (_rest223143_ _super-id223144_)
                                  (let* ((_klass223146_
                                          (let ((__tmp227537
                                                 (let ((__tmp227538
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id223072_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp227538))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp227537
                                             _super-id223144_)))
                                         (_$e223148_
                                          (##structure-ref
                                           _klass223146_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e223148_
                                        ((lambda (_ctor-method223151_)
                                           (if _method223123_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method223151_
                                                          _method223123_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp223120_
                                                      _rest223143_
                                                      _ctor-method223151_))
                                                   (let ((__tmp227539
                                                          (let ((__tmp227540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id223072_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp227540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp227539
                                                      _method223123_
                                                      _ctor-method223151_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp223120_
                                                  _rest223143_
                                                  _ctor-method223151_))))
                                         _$e223148_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp223120_
                                           _rest223143_
                                           _method223123_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest223124223132_))
                              (let ((_hd223129223156_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest223124223132_)))
                                    (_tl223130223158_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest223124223132_))))
                                (let* ((_super-id223161_ _hd223129223156_)
                                       (_rest223163_ _tl223130223158_))
                                  (declare (not safe))
                                  (_K223128223153_
                                   _rest223163_
                                   _super-id223161_)))
                              (let ()
                                (declare (not safe))
                                (_else223126223140_))))))))
               (_g227541_
                (let ((__tmp227546
                       (lambda (_klass-id223167_)
                         (let ((__tmp227547
                                (##structure-ref
                                 (let ((__tmp227548
                                        (let ((__tmp227549
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id223072_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp227549))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp227548
                                    _klass-id223167_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id223167_ __tmp227547))))
                      (__tmp227543
                       (lambda (_klass-id223169_)
                         (##structure-ref
                          (let ((__tmp227544
                                 (let ((__tmp227545
                                        (let ()
                                          (declare (not safe))
                                          (cons _id223072_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp227545))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp227544
                             _klass-id223169_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super223073_
                   'get-precedence-list:
                   __tmp227546
                   'struct:
                   __tmp227543
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g227542_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g227541_)
                         (##vector-length _g227541_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g227542_ 2)))
                  (error "Context expects 2 values" _g227542_)))
            (let ((_precedence-list223171_
                   (let () (declare (not safe)) (##vector-ref _g227541_ 0)))
                  (_base-struct223172_
                   (let () (declare (not safe)) (##vector-ref _g227541_ 1))))
              (let ((_fields223174_
                     (let ((__tmp227550
                            (let ((__tmp227551
                                   (let ()
                                     (declare (not safe))
                                     (cons _id223072_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp227551))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp227550
                        _base-struct223172_
                        _precedence-list223171_
                        _slots223074_))))
                (##structure-set! _self223071_ _id223072_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self223071_
                 _super223073_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self223071_
                 _precedence-list223171_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self223071_
                 _slots223074_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self223071_
                 _fields223174_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self223071_
                 _ctor-method223165_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self223071_
                 _struct?223076_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self223071_
                 _final?223077_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self223071_
                 _metaclass223078_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self223177_
               _id223178_
               _super223179_
               _precedence-list223180_
               _slots223181_
               _fields223182_
               _constructor223183_
               _struct?223184_
               _final?223185_
               _metaclass223186_
               _methods223187_)
        (##structure-set! _self223177_ _id223178_ '1 gxc#!type::t '#f)
        (##structure-set! _self223177_ _super223179_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self223177_
         _precedence-list223180_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self223177_ _slots223181_ '4 gxc#!class::t '#f)
        (##structure-set! _self223177_ _fields223182_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self223177_
         _constructor223183_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self223177_ _struct?223184_ '7 gxc#!class::t '#f)
        (##structure-set! _self223177_ _final?223185_ '8 gxc#!class::t '#f)
        (##structure-set! _self223177_ _metaclass223186_ '9 gxc#!class::t '#f)
        (if _methods223187_
            (##structure-set!
             _self223177_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods223187_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g227553_
        (let ((_g227552_ (let () (declare (not safe)) (##length _g227553_))))
          (cond ((let () (declare (not safe)) (##fx= _g227552_ 8))
                 (apply (lambda (_self223071_
                                 _id223072_
                                 _super223073_
                                 _slots223074_
                                 _ctor-method223075_
                                 _struct?223076_
                                 _final?223077_
                                 _metaclass223078_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self223071_
                             _id223072_
                             _super223073_
                             _slots223074_
                             _ctor-method223075_
                             _struct?223076_
                             _final?223077_
                             _metaclass223078_)))
                        _g227553_))
                ((let () (declare (not safe)) (##fx= _g227552_ 11))
                 (apply (lambda (_self223177_
                                 _id223178_
                                 _super223179_
                                 _precedence-list223180_
                                 _slots223181_
                                 _fields223182_
                                 _constructor223183_
                                 _struct?223184_
                                 _final?223185_
                                 _metaclass223186_
                                 _methods223187_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self223177_
                             _id223178_
                             _super223179_
                             _precedence-list223180_
                             _slots223181_
                             _fields223182_
                             _constructor223183_
                             _struct?223184_
                             _final?223185_
                             _metaclass223186_
                             _methods223187_)))
                        _g227553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g227553_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t227427)
        (let ((__methods227428
               (let ((__tmp227438
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227427 'methods))))
                 (if __tmp227438
                     __tmp227438
                     (error '"Unknown slot" 'methods))))
              (__final?227429
               (let ((__tmp227439
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227427 'final?))))
                 (if __tmp227439 __tmp227439 (error '"Unknown slot" 'final?))))
              (__fields227430
               (let ((__tmp227440
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227427 'fields))))
                 (if __tmp227440 __tmp227440 (error '"Unknown slot" 'fields))))
              (__metaclass227431
               (let ((__tmp227441
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227427 'metaclass))))
                 (if __tmp227441
                     __tmp227441
                     (error '"Unknown slot" 'metaclass))))
              (__super227432
               (let ((__tmp227442
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227427 'super))))
                 (if __tmp227442 __tmp227442 (error '"Unknown slot" 'super))))
              (__precedence-list227433
               (let ((__tmp227443
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227427 'precedence-list))))
                 (if __tmp227443
                     __tmp227443
                     (error '"Unknown slot" 'precedence-list))))
              (__constructor227434
               (let ((__tmp227444
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227427 'constructor))))
                 (if __tmp227444
                     __tmp227444
                     (error '"Unknown slot" 'constructor))))
              (__struct?227435
               (let ((__tmp227445
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227427 'struct?))))
                 (if __tmp227445
                     __tmp227445
                     (error '"Unknown slot" 'struct?))))
              (__id227436
               (let ((__tmp227446
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227427 'id))))
                 (if __tmp227446 __tmp227446 (error '"Unknown slot" 'id))))
              (__slots227437
               (let ((__tmp227447
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227427 'slots))))
                 (if __tmp227447 __tmp227447 (error '"Unknown slot" 'slots)))))
          (lambda _g227555_
            (let ((_g227554_
                   (let () (declare (not safe)) (##length _g227555_))))
              (cond ((let () (declare (not safe)) (##fx= _g227554_ 8))
                     (apply (lambda (_self223071_
                                     _id223072_
                                     _super223073_
                                     _slots223074_
                                     _ctor-method223075_
                                     _struct?223076_
                                     _final?223077_
                                     _metaclass223078_)
                              (let _lp223080_ ((_rest223082_ _super223073_))
                                (let* ((_rest223083223091_ _rest223082_)
                                       (_else223085223099_ (lambda () '#!void))
                                       (_K223087223105_
                                        (lambda (_rest223102_ _super-id223103_)
                                          (if (##structure-ref
                                               (let ((__tmp227556
                                                      (let ((__tmp227557
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id223072_ '()))))
                (declare (not safe))
                (cons '!class __tmp227557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp227556
                                                  _super-id223103_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp227558
                                                     (let ((__tmp227559
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id223072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp227559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp227558
                                                 _super-id223103_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp223080_ _rest223102_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest223083223091_))
                                      (let ((_hd223088223108_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest223083223091_)))
                                            (_tl223089223110_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest223083223091_))))
                                        (let* ((_super-id223113_
                                                _hd223088223108_)
                                               (_rest223115_ _tl223089223110_))
                                          (declare (not safe))
                                          (_K223087223105_
                                           _rest223115_
                                           _super-id223113_)))
                                      '#!void)))
                              (let* ((_ctor-method223165_
                                      (let ((_$e223117_ _ctor-method223075_))
                                        (if _$e223117_
                                            _$e223117_
                                            (let _lp223120_ ((_rest223122_
                                                              _super223073_)
                                                             (_method223123_
                                                              '#f))
                                              (let* ((_rest223124223132_
                                                      _rest223122_)
                                                     (_else223126223140_
                                                      (lambda ()
                                                        _method223123_))
                                                     (_K223128223153_
                                                      (lambda (_rest223143_
                                                               _super-id223144_)
                                                        (let* ((_klass223146_
                                                                (let ((__tmp227560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp227561
                                      (let ()
                                        (declare (not safe))
                                        (cons _id223072_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp227561))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp227560
                           _super-id223144_)))
                       (_$e223148_
                        (##structure-ref _klass223146_ '6 gxc#!class::t '#f)))
                  (if _$e223148_
                      ((lambda (_ctor-method223151_)
                         (if _method223123_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method223151_ _method223123_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp223120_
                                    _rest223143_
                                    _ctor-method223151_))
                                 (let ((__tmp227562
                                        (let ((__tmp227563
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id223072_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp227563))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp227562
                                    _method223123_
                                    _ctor-method223151_)))
                             (let ()
                               (declare (not safe))
                               (_lp223120_ _rest223143_ _ctor-method223151_))))
                       _$e223148_)
                      (let ()
                        (declare (not safe))
                        (_lp223120_ _rest223143_ _method223123_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest223124223132_))
                                                    (let ((_hd223129223156_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest223124223132_)))
                                                          (_tl223130223158_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest223124223132_))))
                                                      (let* ((_super-id223161_
                                                              _hd223129223156_)
                                                             (_rest223163_
                                                              _tl223130223158_))
                                                        (declare (not safe))
                                                        (_K223128223153_
                                                         _rest223163_
                                                         _super-id223161_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else223126223140_))))))))
                                     (_g227564_
                                      (let ((__tmp227569
                                             (lambda (_klass-id223167_)
                                               (let ((__tmp227570
                                                      (##structure-ref
                                                       (let ((__tmp227571
                                                              (let ((__tmp227572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id223072_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp227572))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp227571 _klass-id223167_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id223167_
                                                       __tmp227570))))
                                            (__tmp227566
                                             (lambda (_klass-id223169_)
                                               (##structure-ref
                                                (let ((__tmp227567
                                                       (let ((__tmp227568
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id223072_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp227568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp227567
                                                   _klass-id223169_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super223073_
                                         'get-precedence-list:
                                         __tmp227569
                                         'struct:
                                         __tmp227566
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g227565_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g227564_)
                                               (##vector-length _g227564_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g227565_ 2)))
                                        (error "Context expects 2 values"
                                               _g227565_)))
                                  (let ((_precedence-list223171_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g227564_ 0)))
                                        (_base-struct223172_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g227564_ 1))))
                                    (let ((_fields223174_
                                           (let ((__tmp227573
                                                  (let ((__tmp227574
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id223072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp227574))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp227573
                                              _base-struct223172_
                                              _precedence-list223171_
                                              _slots223074_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223071_
                                         _id223072_
                                         __id227436
                                         __t227427
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223071_
                                         _super223073_
                                         __super227432
                                         __t227427
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223071_
                                         _precedence-list223171_
                                         __precedence-list227433
                                         __t227427
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223071_
                                         _slots223074_
                                         __slots227437
                                         __t227427
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223071_
                                         _fields223174_
                                         __fields227430
                                         __t227427
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223071_
                                         _ctor-method223165_
                                         __constructor227434
                                         __t227427
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223071_
                                         _struct?223076_
                                         __struct?227435
                                         __t227427
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223071_
                                         _final?223077_
                                         __final?227429
                                         __t227427
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223071_
                                         _metaclass223078_
                                         __metaclass227431
                                         __t227427
                                         '#f)))))))
                            _g227555_))
                    ((let () (declare (not safe)) (##fx= _g227554_ 11))
                     (apply (lambda (_self223177_
                                     _id223178_
                                     _super223179_
                                     _precedence-list223180_
                                     _slots223181_
                                     _fields223182_
                                     _constructor223183_
                                     _struct?223184_
                                     _final?223185_
                                     _metaclass223186_
                                     _methods223187_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223177_
                                 _id223178_
                                 __id227436
                                 __t227427
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223177_
                                 _super223179_
                                 __super227432
                                 __t227427
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223177_
                                 _precedence-list223180_
                                 __precedence-list227433
                                 __t227427
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223177_
                                 _slots223181_
                                 __slots227437
                                 __t227427
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223177_
                                 _fields223182_
                                 __fields227430
                                 __t227427
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223177_
                                 _constructor223183_
                                 __constructor227434
                                 __t227427
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223177_
                                 _struct?223184_
                                 __struct?227435
                                 __t227427
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223177_
                                 _final?223185_
                                 __final?227429
                                 __t227427
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223177_
                                 _metaclass223186_
                                 __metaclass227431
                                 __t227427
                                 '#f))
                              (if _methods223187_
                                  (let ((__tmp227575
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods223187_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self223177_
                                     __tmp227575
                                     __methods227428
                                     __t227427
                                     '#f))
                                  '#!void))
                            _g227555_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g227555_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where222923_
               _base-struct222924_
               _precedence-list222925_
               _direct-slots222926_)
        (let* ((_base-fields222928_
                (if _base-struct222924_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where222923_
                        _base-struct222924_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields222930_ (reverse _base-fields222928_))
               (_seen-slots222938_
                (let ((_tab222932_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g222933222935_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab222932_ _g222933222935_ '#t)))
                   _base-fields222928_)
                  _tab222932_))
               (_process-slot222942_
                (lambda (_slot222940_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots222938_ _slot222940_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots222938_ _slot222940_ '#t))
                        (set! _r-fields222930_
                              (let ()
                                (declare (not safe))
                                (cons _slot222940_ _r-fields222930_))))))))
          (for-each
           (lambda (_mixin222945_)
             (let ((_klass222947_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where222923_
                       _mixin222945_))))
               (if (##structure-ref _klass222947_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot222942_
                    (##structure-ref _klass222947_ '5 gxc#!class::t '#f)))))
           _precedence-list222925_)
          (for-each _process-slot222942_ _direct-slots222926_)
          (reverse _r-fields222930_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass222882_ _slot222883_)
        (let _lp222885_ ((_rest222887_
                          (##structure-ref _klass222882_ '5 gxc#!class::t '#f))
                         (_offset222888_ '1))
          (let* ((_rest222889222897_ _rest222887_)
                 (_else222891222905_
                  (lambda ()
                    (let ((__tmp227577
                           (##structure-ref _klass222882_ '1 gxc#!type::t '#f))
                          (__tmp227576
                           (##structure-ref
                            _klass222882_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp227577
                       __tmp227576
                       _slot222883_))))
                 (_K222893222911_
                  (lambda (_rest222908_ _s222909_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s222909_ _slot222883_))
                        _offset222888_
                        (let ((__tmp227578
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset222888_ '1))))
                          (declare (not safe))
                          (_lp222885_ _rest222908_ __tmp227578))))))
            (if (let () (declare (not safe)) (##pair? _rest222889222897_))
                (let ((_hd222894222914_
                       (let ()
                         (declare (not safe))
                         (##car _rest222889222897_)))
                      (_tl222895222916_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest222889222897_))))
                  (let* ((_s222919_ _hd222894222914_)
                         (_rest222921_ _tl222895222916_))
                    (declare (not safe))
                    (_K222893222911_ _rest222921_ _s222919_)))
                (let () (declare (not safe)) (_else222891222905_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass222840_ _slot222841_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass222840_ _slot222841_))
            _klass222840_
            (let _lp222843_ ((_rest222845_
                              (##structure-ref
                               _klass222840_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest222846222854_ _rest222845_)
                     (_else222848222862_ (lambda () '#f))
                     (_K222850222870_
                      (lambda (_rest222865_ _super222866_)
                        (let ((_super-class222868_
                               (let ((__tmp227579
                                      (let ((__tmp227580
                                             (let ((__tmp227582
                                                    (##structure-ref
                                                     _klass222840_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp227581
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot222841_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp227582
                                                     __tmp227581))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp227580))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp227579
                                  _super222866_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class222868_
                                 _slot222841_))
                              _super-class222868_
                              (let ()
                                (declare (not safe))
                                (_lp222843_ _rest222865_)))))))
                (if (let () (declare (not safe)) (##pair? _rest222846222854_))
                    (let ((_hd222851222873_
                           (let ()
                             (declare (not safe))
                             (##car _rest222846222854_)))
                          (_tl222852222875_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest222846222854_))))
                      (let* ((_super222878_ _hd222851222873_)
                             (_rest222880_ _tl222852222875_))
                        (declare (not safe))
                        (_K222850222870_ _rest222880_ _super222878_)))
                    (let () (declare (not safe)) (_else222848222862_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass222837_ _slot222838_)
        (if (##structure-ref _klass222837_ '7 gxc#!class::t '#f)
            (memq _slot222838_
                  (##structure-ref _klass222837_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self222834_ _id222835_)
        (##structure-set! _self222834_ _id222835_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t227448)
        (let ((__id227449
               (let ((__tmp227450
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227448 'id))))
                 (if __tmp227450 __tmp227450 (error '"Unknown slot" 'id)))))
          (lambda (_self222834_ _id222835_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222834_
               _id222835_
               __id227449
               __t227448
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
      (lambda (_self222709_ _id222710_)
        (##structure-set! _self222709_ _id222710_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t227451)
        (let ((__id227452
               (let ((__tmp227453
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227451 'id))))
                 (if __tmp227453 __tmp227453 (error '"Unknown slot" 'id)))))
          (lambda (_self222709_ _id222710_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222709_
               _id222710_
               __id227452
               __t227451
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
      (lambda (_self222582_ _id222583_ _slot222584_ _checked?222585_)
        (##structure-set! _self222582_ _id222583_ '1 gxc#!type::t '#f)
        (##structure-set! _self222582_ _slot222584_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self222582_
         _checked?222585_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t227454)
        (let ((__slot227455
               (let ((__tmp227458
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227454 'slot))))
                 (if __tmp227458 __tmp227458 (error '"Unknown slot" 'slot))))
              (__id227456
               (let ((__tmp227459
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227454 'id))))
                 (if __tmp227459 __tmp227459 (error '"Unknown slot" 'id))))
              (__checked?227457
               (let ((__tmp227460
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227454 'checked?))))
                 (if __tmp227460
                     __tmp227460
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self222582_ _id222583_ _slot222584_ _checked?222585_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222582_
               _id222583_
               __id227456
               __t227454
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222582_
               _slot222584_
               __slot227455
               __t227454
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222582_
               _checked?222585_
               __checked?227457
               __t227454
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
      (lambda (_self222455_ _id222456_ _slot222457_ _checked?222458_)
        (##structure-set! _self222455_ _id222456_ '1 gxc#!type::t '#f)
        (##structure-set! _self222455_ _slot222457_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self222455_
         _checked?222458_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t227461)
        (let ((__checked?227462
               (let ((__tmp227465
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227461 'checked?))))
                 (if __tmp227465
                     __tmp227465
                     (error '"Unknown slot" 'checked?))))
              (__slot227463
               (let ((__tmp227466
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227461 'slot))))
                 (if __tmp227466 __tmp227466 (error '"Unknown slot" 'slot))))
              (__id227464
               (let ((__tmp227467
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227461 'id))))
                 (if __tmp227467 __tmp227467 (error '"Unknown slot" 'id)))))
          (lambda (_self222455_ _id222456_ _slot222457_ _checked?222458_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222455_
               _id222456_
               __id227464
               __t227461
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222455_
               _slot222457_
               __slot227463
               __t227461
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222455_
               _checked?222458_
               __checked?227462
               __t227461
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
      (lambda (_self222299_
               _id222300_
               _arity222301_
               _dispatch222302_
               _inline222303_
               _typedecl222304_)
        (if (let ((__tmp227583
                   (let ()
                     (declare (not safe))
                     (##structure-length _self222299_))))
              (declare (not safe))
              (##fx< '5 __tmp227583))
            (begin
              (let ((__tmp227584
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222299_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222299_
                 _id222300_
                 '1
                 __tmp227584
                 '#f))
              (let ((__tmp227585
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222299_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222299_
                 _arity222301_
                 '2
                 __tmp227585
                 '#f))
              (let ((__tmp227586
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222299_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222299_
                 _dispatch222302_
                 '3
                 __tmp227586
                 '#f))
              (let ((__tmp227587
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222299_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222299_
                 _inline222303_
                 '4
                 __tmp227587
                 '#f))
              (let ((__tmp227588
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222299_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222299_
                 _typedecl222304_
                 '5
                 __tmp227588
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self222299_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self222299_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self222309_ _id222310_ _arity222311_ _dispatch222312_)
        (let* ((_inline222314_ '#f) (_typedecl222316_ '#f))
          (if (let ((__tmp227589
                     (let ()
                       (declare (not safe))
                       (##structure-length _self222309_))))
                (declare (not safe))
                (##fx< '5 __tmp227589))
              (begin
                (let ((__tmp227590
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222309_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222309_
                   _id222310_
                   '1
                   __tmp227590
                   '#f))
                (let ((__tmp227591
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222309_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222309_
                   _arity222311_
                   '2
                   __tmp227591
                   '#f))
                (let ((__tmp227592
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222309_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222309_
                   _dispatch222312_
                   '3
                   __tmp227592
                   '#f))
                (let ((__tmp227593
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222309_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222309_
                   _inline222314_
                   '4
                   __tmp227593
                   '#f))
                (let ((__tmp227594
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222309_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222309_
                   _typedecl222316_
                   '5
                   __tmp227594
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self222309_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self222309_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self222318_
               _id222319_
               _arity222320_
               _dispatch222321_
               _inline222322_)
        (let ((_typedecl222324_ '#f))
          (if (let ((__tmp227595
                     (let ()
                       (declare (not safe))
                       (##structure-length _self222318_))))
                (declare (not safe))
                (##fx< '5 __tmp227595))
              (begin
                (let ((__tmp227596
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222318_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222318_
                   _id222319_
                   '1
                   __tmp227596
                   '#f))
                (let ((__tmp227597
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222318_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222318_
                   _arity222320_
                   '2
                   __tmp227597
                   '#f))
                (let ((__tmp227598
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222318_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222318_
                   _dispatch222321_
                   '3
                   __tmp227598
                   '#f))
                (let ((__tmp227599
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222318_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222318_
                   _inline222322_
                   '4
                   __tmp227599
                   '#f))
                (let ((__tmp227600
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222318_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222318_
                   _typedecl222324_
                   '5
                   __tmp227600
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self222318_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self222318_)))))))
    (define gxc#!lambda:::init!
      (lambda _g227602_
        (let ((_g227601_ (let () (declare (not safe)) (##length _g227602_))))
          (cond ((let () (declare (not safe)) (##fx= _g227601_ 4))
                 (apply (lambda (_self222309_
                                 _id222310_
                                 _arity222311_
                                 _dispatch222312_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self222309_
                             _id222310_
                             _arity222311_
                             _dispatch222312_)))
                        _g227602_))
                ((let () (declare (not safe)) (##fx= _g227601_ 5))
                 (apply (lambda (_self222318_
                                 _id222319_
                                 _arity222320_
                                 _dispatch222321_
                                 _inline222322_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self222318_
                             _id222319_
                             _arity222320_
                             _dispatch222321_
                             _inline222322_)))
                        _g227602_))
                ((let () (declare (not safe)) (##fx= _g227601_ 6))
                 (apply (lambda (_self222326_
                                 _id222327_
                                 _arity222328_
                                 _dispatch222329_
                                 _inline222330_
                                 _typedecl222331_)
                          (if (let ((__tmp227603
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self222326_))))
                                (declare (not safe))
                                (##fx< '5 __tmp227603))
                              (begin
                                (let ((__tmp227604
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self222326_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self222326_
                                   _id222327_
                                   '1
                                   __tmp227604
                                   '#f))
                                (let ((__tmp227605
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self222326_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self222326_
                                   _arity222328_
                                   '2
                                   __tmp227605
                                   '#f))
                                (let ((__tmp227606
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self222326_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self222326_
                                   _dispatch222329_
                                   '3
                                   __tmp227606
                                   '#f))
                                (let ((__tmp227607
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self222326_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self222326_
                                   _inline222330_
                                   '4
                                   __tmp227607
                                   '#f))
                                (let ((__tmp227608
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self222326_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self222326_
                                   _typedecl222331_
                                   '5
                                   __tmp227608
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self222326_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self222326_)))))
                        _g227602_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g227602_))))))
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
      (lambda (_self222051_ . _args222052_)
        (apply struct-instance-init! _self222051_ _args222052_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type221926_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type221926_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type221926_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass221919_)
        (let ((_$e221921_
               (##structure-ref _klass221919_ '10 gxc#!class::t '#f)))
          (if _$e221921_
              _$e221921_
              (let ((_tab221924_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass221919_
                 _tab221924_
                 '10
                 gxc#!class::t
                 '#f)
                _tab221924_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass221910_ _method221911_)
        (let ((_tab221912221914_
               (##structure-ref _klass221910_ '10 gxc#!class::t '#f)))
          (if _tab221912221914_
              (let ((_tab221917_ _tab221912221914_))
                (declare (not safe))
                (hash-get _tab221917_ _method221911_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type221907_ _method221908_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type221907_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type221907_ _method221908_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym221891_ _type221892_ _local?221893_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type221892_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym221891_
                   _type221892_))
        (let ((__tmp227609
               (let () (declare (not safe)) (struct->list _type221892_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym221891_ '" " __tmp227609))
        (let ((__tmp227610
               (if _local?221893_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp227610 _sym221891_ _type221892_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym221898_ _type221899_)
        (let ((_local?221901_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym221898_
           _type221899_
           _local?221901_))))
    (define gxc#optimizer-declare-type!
      (lambda _g227612_
        (let ((_g227611_ (let () (declare (not safe)) (##length _g227612_))))
          (cond ((let () (declare (not safe)) (##fx= _g227611_ 2))
                 (apply (lambda (_sym221898_ _type221899_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym221898_
                             _type221899_)))
                        _g227612_))
                ((let () (declare (not safe)) (##fx= _g227611_ 3))
                 (apply (lambda (_sym221903_ _type221904_ _local?221905_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym221903_
                             _type221904_
                             _local?221905_)))
                        _g227612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g227612_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym221877_ _local?221878_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym221877_))
        (let ((__tmp227613
               (if _local?221878_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp227613 _sym221877_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym221883_)
        (let ((_local?221885_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym221883_ _local?221885_))))
    (define gxc#optimizer-clear-type!
      (lambda _g227615_
        (let ((_g227614_ (let () (declare (not safe)) (##length _g227615_))))
          (cond ((let () (declare (not safe)) (##fx= _g227614_ 1))
                 (apply (lambda (_sym221883_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym221883_)))
                        _g227615_))
                ((let () (declare (not safe)) (##fx= _g227614_ 2))
                 (apply (lambda (_sym221887_ _local?221888_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym221887_
                             _local?221888_)))
                        _g227615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g227615_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t221850_ _method221851_ _sym221852_ _rebind?221853_)
        (let* ((_type221855_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t221850_)))
               (_$e221857_
                (let () (declare (not safe)) (gxc#!type-vtab _type221855_))))
          (if _$e221857_
              ((lambda (_vtab221860_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab221860_ _method221851_))
                     (if _rebind?221853_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t221850_
                              '" "
                              _method221851_))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              _vtab221860_
                              _method221851_
                              _sym221852_)))
                         (let ((__tmp227616
                                (let ((__tmp227617
                                       (let ((__tmp227618
                                              (let ((__tmp227619
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym221852_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method221851_
                                                      __tmp227619))))
                                         (declare (not safe))
                                         (cons _type-t221850_ __tmp227618))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp227617))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp227616
                            _method221851_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t221850_
                          '" "
                          _method221851_
                          '" => "
                          _sym221852_))
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _vtab221860_
                          _method221851_
                          _sym221852_)))))
               _$e221857_)
              (if (let () (declare (not safe)) (not _type221855_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t221850_))
                  (let ((__tmp227620
                         (let ((__tmp227621
                                (let ((__tmp227622
                                       (let ((__tmp227623
                                              (let ()
                                                (declare (not safe))
                                                (cons _method221851_ '()))))
                                         (declare (not safe))
                                         (cons _sym221852_ __tmp227623))))
                                  (declare (not safe))
                                  (cons _type-t221850_ __tmp227622))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp227621))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp227620
                     _type221855_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t221865_ _method221866_ _sym221867_)
        (let ((_rebind?221869_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t221865_
           _method221866_
           _sym221867_
           _rebind?221869_))))
    (define gxc#optimizer-declare-method!
      (lambda _g227625_
        (let ((_g227624_ (let () (declare (not safe)) (##length _g227625_))))
          (cond ((let () (declare (not safe)) (##fx= _g227624_ 3))
                 (apply (lambda (_type-t221865_ _method221866_ _sym221867_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t221865_
                             _method221866_
                             _sym221867_)))
                        _g227625_))
                ((let () (declare (not safe)) (##fx= _g227624_ 4))
                 (apply (lambda (_type-t221871_
                                 _method221872_
                                 _sym221873_
                                 _rebind?221874_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t221871_
                             _method221872_
                             _sym221873_
                             _rebind?221874_)))
                        _g227625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g227625_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym221838_)
        (let ((_$e221846_
               (let ((_ht221839221841_ (gxc#current-compile-local-type)))
                 (if _ht221839221841_
                     (let ((_ht221844_ _ht221839221841_))
                       (declare (not safe))
                       (hash-get _ht221844_ _sym221838_))
                     '#f))))
          (if _$e221846_
              _$e221846_
              (let ((__tmp227626
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp227626 _sym221838_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym221830_)
        (let ((_type221831221833_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym221830_))))
          (if _type221831221833_
              (let ((_type221836_ _type221831221833_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type221836_ 'gxc#!alias::t))
                    (let ((__tmp227627
                           (##structure-ref _type221836_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp227627))
                    _type221836_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where221822_ _klass-id221823_)
        (let ((_$e221825_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id221823_))))
          (if _$e221825_
              ((lambda (_klass221828_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass221828_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where221822_
                        _klass-id221823_
                        _klass221828_)))
                 _klass221828_)
               _$e221825_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where221822_
                 _klass-id221823_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t221819_ _method221820_)
        (let ((__tmp227628
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t221819_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp227628 _method221820_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym221817_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym221817_))
        (let ((__tmp227629
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp227629 _sym221817_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym221815_)
        (let ((__tmp227630
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp227630 _sym221815_))))
    (define gxc#identifier-symbol
      (lambda (_stx221813_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx221813_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx221813_))
            (let () (declare (not safe)) (gx#stx-e _stx221813_)))))))
