(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710488241)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp115425 (list))
            (__tmp115423
             (let ((__tmp115424
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115424 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp115425
         '(type ssxi methods)
         __tmp115423
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args115359_
        (apply make-instance gxc#optimizer-info::t _$args115359_)))
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
      (lambda (_self115357_)
        (if (let ((__tmp115433
                   (let ()
                     (declare (not safe))
                     (##structure-length _self115357_))))
              (declare (not safe))
              (##fx< '3 __tmp115433))
            (begin
              (let ((__tmp115428
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp115427
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115357_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115357_
                 __tmp115428
                 '1
                 __tmp115427
                 '#f))
              (let ((__tmp115430
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp115429
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115357_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115357_
                 __tmp115430
                 '2
                 __tmp115429
                 '#f))
              (let ((__tmp115432
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp115431
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115357_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115357_
                 __tmp115432
                 '3
                 __tmp115431
                 '#f)))
            (let ((__tmp115426
                   (let ()
                     (declare (not safe))
                     (##vector-length _self115357_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self115357_
                     '3
                     __tmp115426)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp115436 (list))
            (__tmp115434
             (let ((__tmp115435
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115435 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp115436
         '(id)
         __tmp115434
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args115232_ (apply make-instance gxc#!type::t _$args115232_)))
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
      (let ((__tmp115439 (list gxc#!type::t))
            (__tmp115437
             (let ((__tmp115438
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115438 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp115439
         '()
         __tmp115437
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args115229_ (apply make-instance gxc#!alias::t _$args115229_)))
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
      (let ((__tmp115442 (list gxc#!type::t))
            (__tmp115440
             (let ((__tmp115441
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115441 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp115442
         '()
         __tmp115440
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args115226_
        (apply make-instance gxc#!procedure::t _$args115226_)))
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
      (let ((__tmp115445 (list gxc#!type::t))
            (__tmp115443
             (let ((__tmp115444
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115444 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp115445
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp115443
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args115223_ (apply make-instance gxc#!class::t _$args115223_)))
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
      (let ((__tmp115448 (list gxc#!procedure::t))
            (__tmp115446
             (let ((__tmp115447
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115447 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp115448
         '()
         __tmp115446
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args115220_
        (apply make-instance gxc#!predicate::t _$args115220_)))
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
      (let ((__tmp115451 (list gxc#!procedure::t))
            (__tmp115449
             (let ((__tmp115450
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115450 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp115451
         '()
         __tmp115449
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args115217_
        (apply make-instance gxc#!constructor::t _$args115217_)))
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
      (let ((__tmp115454 (list gxc#!procedure::t))
            (__tmp115452
             (let ((__tmp115453
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115453 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp115454
         '(slot checked?)
         __tmp115452
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args115214_
        (apply make-instance gxc#!accessor::t _$args115214_)))
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
      (let ((__tmp115457 (list gxc#!procedure::t))
            (__tmp115455
             (let ((__tmp115456
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115456 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp115457
         '(slot checked?)
         __tmp115455
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args115211_
        (apply make-instance gxc#!mutator::t _$args115211_)))
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
      (let ((__tmp115460 (list gxc#!procedure::t))
            (__tmp115458
             (let ((__tmp115459
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115459 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp115460
         '(arity dispatch inline inline-typedecl)
         __tmp115458
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args115208_
        (apply make-instance gxc#!lambda::t _$args115208_)))
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
      (let ((__tmp115463 (list gxc#!procedure::t))
            (__tmp115461
             (let ((__tmp115462
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115462 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp115463
         '(clauses)
         __tmp115461
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args115205_
        (apply make-instance gxc#!case-lambda::t _$args115205_)))
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
      (let ((__tmp115466 (list gxc#!procedure::t))
            (__tmp115464
             (let ((__tmp115465
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115465 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp115466
         '(table dispatch)
         __tmp115464
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args115202_
        (apply make-instance gxc#!kw-lambda::t _$args115202_)))
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
      (let ((__tmp115469 (list gxc#!procedure::t))
            (__tmp115467
             (let ((__tmp115468
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115468 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp115469
         '(keys main)
         __tmp115467
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args115199_
        (apply make-instance gxc#!kw-lambda-primary::t _$args115199_)))
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
      (let ((__tmp115470 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp115470
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args115196_
        (apply make-instance gxc#!primitive::t _$args115196_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp115471 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp115471
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args115193_
        (apply make-instance gxc#!primitive-lambda::t _$args115193_)))
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
      (let ((__tmp115472 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp115472
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args115190_
        (apply make-instance gxc#!primitive-case-lambda::t _$args115190_)))
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
      (lambda (_self115072_
               _id115073_
               _super115074_
               _slots115075_
               _ctor-method115076_
               _struct?115077_
               _final?115078_
               _metaclass115079_)
        (let _lp115081_ ((_rest115083_ _super115074_))
          (let* ((_rest115084115092_ _rest115083_)
                 (_else115086115100_ (lambda () '#!void))
                 (_K115088115106_
                  (lambda (_rest115103_ _super-id115104_)
                    (if (##structure-ref
                         (let ((__tmp115475
                                (let ((__tmp115476
                                       (let ()
                                         (declare (not safe))
                                         (cons _id115073_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp115476))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp115475
                            _super-id115104_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp115473
                               (let ((__tmp115474
                                      (let ()
                                        (declare (not safe))
                                        (cons _id115073_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp115474))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp115473
                           _super-id115104_))
                        '#!void)
                    (let () (declare (not safe)) (_lp115081_ _rest115103_)))))
            (if (let () (declare (not safe)) (##pair? _rest115084115092_))
                (let ((_hd115089115109_
                       (let ()
                         (declare (not safe))
                         (##car _rest115084115092_)))
                      (_tl115090115111_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest115084115092_))))
                  (let* ((_super-id115114_ _hd115089115109_)
                         (_rest115116_ _tl115090115111_))
                    (declare (not safe))
                    (_K115088115106_ _rest115116_ _super-id115114_)))
                '#!void)))
        (let* ((_ctor-method115166_
                (let ((_$e115118_ _ctor-method115076_))
                  (if _$e115118_
                      _$e115118_
                      (let _lp115121_ ((_rest115123_ _super115074_)
                                       (_method115124_ '#f))
                        (let* ((_rest115125115133_ _rest115123_)
                               (_else115127115141_ (lambda () _method115124_))
                               (_K115129115154_
                                (lambda (_rest115144_ _super-id115145_)
                                  (let* ((_klass115147_
                                          (let ((__tmp115477
                                                 (let ((__tmp115478
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id115073_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp115478))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp115477
                                             _super-id115145_)))
                                         (_$e115149_
                                          (##structure-ref
                                           _klass115147_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e115149_
                                        ((lambda (_ctor-method115152_)
                                           (if _method115124_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method115152_
                                                          _method115124_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp115121_
                                                      _rest115144_
                                                      _ctor-method115152_))
                                                   (let ((__tmp115479
                                                          (let ((__tmp115480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id115073_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp115480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp115479
                                                      _method115124_
                                                      _ctor-method115152_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp115121_
                                                  _rest115144_
                                                  _ctor-method115152_))))
                                         _$e115149_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp115121_
                                           _rest115144_
                                           _method115124_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest115125115133_))
                              (let ((_hd115130115157_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest115125115133_)))
                                    (_tl115131115159_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest115125115133_))))
                                (let* ((_super-id115162_ _hd115130115157_)
                                       (_rest115164_ _tl115131115159_))
                                  (declare (not safe))
                                  (_K115129115154_
                                   _rest115164_
                                   _super-id115162_)))
                              (let ()
                                (declare (not safe))
                                (_else115127115141_))))))))
               (_g115481_
                (let ((__tmp115486
                       (lambda (_klass-id115168_)
                         (let ((__tmp115487
                                (##structure-ref
                                 (let ((__tmp115488
                                        (let ((__tmp115489
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id115073_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp115489))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp115488
                                    _klass-id115168_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id115168_ __tmp115487))))
                      (__tmp115483
                       (lambda (_klass-id115170_)
                         (##structure-ref
                          (let ((__tmp115484
                                 (let ((__tmp115485
                                        (let ()
                                          (declare (not safe))
                                          (cons _id115073_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp115485))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp115484
                             _klass-id115170_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super115074_
                   'get-precedence-list:
                   __tmp115486
                   'struct:
                   __tmp115483
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g115482_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g115481_)
                         (##vector-length _g115481_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g115482_ 2)))
                  (error "Context expects 2 values" _g115482_)))
            (let ((_precedence-list115172_
                   (let () (declare (not safe)) (##vector-ref _g115481_ 0)))
                  (_base-struct115173_
                   (let () (declare (not safe)) (##vector-ref _g115481_ 1))))
              (let ((_fields115175_
                     (let ((__tmp115490
                            (let ((__tmp115491
                                   (let ()
                                     (declare (not safe))
                                     (cons _id115073_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp115491))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp115490
                        _base-struct115173_
                        _precedence-list115172_
                        _slots115075_))))
                (##structure-set! _self115072_ _id115073_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self115072_
                 _super115074_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self115072_
                 _precedence-list115172_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self115072_
                 _slots115075_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self115072_
                 _fields115175_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self115072_
                 _ctor-method115166_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self115072_
                 _struct?115077_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self115072_
                 _final?115078_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self115072_
                 _metaclass115079_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self115178_
               _id115179_
               _super115180_
               _precedence-list115181_
               _slots115182_
               _fields115183_
               _constructor115184_
               _struct?115185_
               _final?115186_
               _metaclass115187_
               _methods115188_)
        (##structure-set! _self115178_ _id115179_ '1 gxc#!type::t '#f)
        (##structure-set! _self115178_ _super115180_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self115178_
         _precedence-list115181_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self115178_ _slots115182_ '4 gxc#!class::t '#f)
        (##structure-set! _self115178_ _fields115183_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self115178_
         _constructor115184_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self115178_ _struct?115185_ '7 gxc#!class::t '#f)
        (##structure-set! _self115178_ _final?115186_ '8 gxc#!class::t '#f)
        (##structure-set! _self115178_ _metaclass115187_ '9 gxc#!class::t '#f)
        (if _methods115188_
            (##structure-set!
             _self115178_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods115188_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g115493_
        (let ((_g115492_ (let () (declare (not safe)) (##length _g115493_))))
          (cond ((let () (declare (not safe)) (##fx= _g115492_ 8))
                 (apply (lambda (_self115072_
                                 _id115073_
                                 _super115074_
                                 _slots115075_
                                 _ctor-method115076_
                                 _struct?115077_
                                 _final?115078_
                                 _metaclass115079_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self115072_
                             _id115073_
                             _super115074_
                             _slots115075_
                             _ctor-method115076_
                             _struct?115077_
                             _final?115078_
                             _metaclass115079_)))
                        _g115493_))
                ((let () (declare (not safe)) (##fx= _g115492_ 11))
                 (apply (lambda (_self115178_
                                 _id115179_
                                 _super115180_
                                 _precedence-list115181_
                                 _slots115182_
                                 _fields115183_
                                 _constructor115184_
                                 _struct?115185_
                                 _final?115186_
                                 _metaclass115187_
                                 _methods115188_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self115178_
                             _id115179_
                             _super115180_
                             _precedence-list115181_
                             _slots115182_
                             _fields115183_
                             _constructor115184_
                             _struct?115185_
                             _final?115186_
                             _metaclass115187_
                             _methods115188_)))
                        _g115493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g115493_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass115361 __method-table115362)
        (let ((__methods115363
               (let ((__slot115373
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115361 'methods))))
                 (if __slot115373
                     __slot115373
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__precedence-list115364
               (let ((__slot115374
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115361 'precedence-list))))
                 (if __slot115374
                     __slot115374
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__constructor115365
               (let ((__slot115375
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115361 'constructor))))
                 (if __slot115375
                     __slot115375
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__struct?115366
               (let ((__slot115376
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115361 'struct?))))
                 (if __slot115376
                     __slot115376
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__fields115367
               (let ((__slot115377
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115361 'fields))))
                 (if __slot115377
                     __slot115377
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__slots115368
               (let ((__slot115378
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115361 'slots))))
                 (if __slot115378
                     __slot115378
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__final?115369
               (let ((__slot115379
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115361 'final?))))
                 (if __slot115379
                     __slot115379
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__id115370
               (let ((__slot115380
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115361 'id))))
                 (if __slot115380
                     __slot115380
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super115371
               (let ((__slot115381
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115361 'super))))
                 (if __slot115381
                     __slot115381
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__metaclass115372
               (let ((__slot115382
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115361 'metaclass))))
                 (if __slot115382
                     __slot115382
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass))))))
          (lambda _g115495_
            (let ((_g115494_
                   (let () (declare (not safe)) (##length _g115495_))))
              (cond ((let () (declare (not safe)) (##fx= _g115494_ 8))
                     (apply (lambda (_self115072_
                                     _id115073_
                                     _super115074_
                                     _slots115075_
                                     _ctor-method115076_
                                     _struct?115077_
                                     _final?115078_
                                     _metaclass115079_)
                              (let _lp115081_ ((_rest115083_ _super115074_))
                                (let* ((_rest115084115092_ _rest115083_)
                                       (_else115086115100_ (lambda () '#!void))
                                       (_K115088115106_
                                        (lambda (_rest115103_ _super-id115104_)
                                          (if (##structure-ref
                                               (let ((__tmp115498
                                                      (let ((__tmp115499
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id115073_ '()))))
                (declare (not safe))
                (cons '!class __tmp115499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp115498
                                                  _super-id115104_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp115496
                                                     (let ((__tmp115497
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id115073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp115497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp115496
                                                 _super-id115104_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp115081_ _rest115103_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest115084115092_))
                                      (let ((_hd115089115109_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest115084115092_)))
                                            (_tl115090115111_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest115084115092_))))
                                        (let* ((_super-id115114_
                                                _hd115089115109_)
                                               (_rest115116_ _tl115090115111_))
                                          (declare (not safe))
                                          (_K115088115106_
                                           _rest115116_
                                           _super-id115114_)))
                                      '#!void)))
                              (let* ((_ctor-method115166_
                                      (let ((_$e115118_ _ctor-method115076_))
                                        (if _$e115118_
                                            _$e115118_
                                            (let _lp115121_ ((_rest115123_
                                                              _super115074_)
                                                             (_method115124_
                                                              '#f))
                                              (let* ((_rest115125115133_
                                                      _rest115123_)
                                                     (_else115127115141_
                                                      (lambda ()
                                                        _method115124_))
                                                     (_K115129115154_
                                                      (lambda (_rest115144_
                                                               _super-id115145_)
                                                        (let* ((_klass115147_
                                                                (let ((__tmp115500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp115501
                                      (let ()
                                        (declare (not safe))
                                        (cons _id115073_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp115501))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp115500
                           _super-id115145_)))
                       (_$e115149_
                        (##structure-ref _klass115147_ '6 gxc#!class::t '#f)))
                  (if _$e115149_
                      ((lambda (_ctor-method115152_)
                         (if _method115124_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method115152_ _method115124_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp115121_
                                    _rest115144_
                                    _ctor-method115152_))
                                 (let ((__tmp115502
                                        (let ((__tmp115503
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id115073_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp115503))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp115502
                                    _method115124_
                                    _ctor-method115152_)))
                             (let ()
                               (declare (not safe))
                               (_lp115121_ _rest115144_ _ctor-method115152_))))
                       _$e115149_)
                      (let ()
                        (declare (not safe))
                        (_lp115121_ _rest115144_ _method115124_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest115125115133_))
                                                    (let ((_hd115130115157_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest115125115133_)))
                                                          (_tl115131115159_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest115125115133_))))
                                                      (let* ((_super-id115162_
                                                              _hd115130115157_)
                                                             (_rest115164_
                                                              _tl115131115159_))
                                                        (declare (not safe))
                                                        (_K115129115154_
                                                         _rest115164_
                                                         _super-id115162_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else115127115141_))))))))
                                     (_g115504_
                                      (let ((__tmp115509
                                             (lambda (_klass-id115168_)
                                               (let ((__tmp115510
                                                      (##structure-ref
                                                       (let ((__tmp115511
                                                              (let ((__tmp115512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id115073_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp115512))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp115511 _klass-id115168_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id115168_
                                                       __tmp115510))))
                                            (__tmp115506
                                             (lambda (_klass-id115170_)
                                               (##structure-ref
                                                (let ((__tmp115507
                                                       (let ((__tmp115508
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id115073_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp115508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp115507
                                                   _klass-id115170_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super115074_
                                         'get-precedence-list:
                                         __tmp115509
                                         'struct:
                                         __tmp115506
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g115505_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g115504_)
                                               (##vector-length _g115504_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g115505_ 2)))
                                        (error "Context expects 2 values"
                                               _g115505_)))
                                  (let ((_precedence-list115172_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g115504_ 0)))
                                        (_base-struct115173_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g115504_ 1))))
                                    (let ((_fields115175_
                                           (let ((__tmp115513
                                                  (let ((__tmp115514
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id115073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp115514))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp115513
                                              _base-struct115173_
                                              _precedence-list115172_
                                              _slots115075_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115072_
                                         _id115073_
                                         __id115370
                                         __klass115361
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115072_
                                         _super115074_
                                         __super115371
                                         __klass115361
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115072_
                                         _precedence-list115172_
                                         __precedence-list115364
                                         __klass115361
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115072_
                                         _slots115075_
                                         __slots115368
                                         __klass115361
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115072_
                                         _fields115175_
                                         __fields115367
                                         __klass115361
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115072_
                                         _ctor-method115166_
                                         __constructor115365
                                         __klass115361
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115072_
                                         _struct?115077_
                                         __struct?115366
                                         __klass115361
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115072_
                                         _final?115078_
                                         __final?115369
                                         __klass115361
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self115072_
                                         _metaclass115079_
                                         __metaclass115372
                                         __klass115361
                                         '#f)))))))
                            _g115495_))
                    ((let () (declare (not safe)) (##fx= _g115494_ 11))
                     (apply (lambda (_self115178_
                                     _id115179_
                                     _super115180_
                                     _precedence-list115181_
                                     _slots115182_
                                     _fields115183_
                                     _constructor115184_
                                     _struct?115185_
                                     _final?115186_
                                     _metaclass115187_
                                     _methods115188_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115178_
                                 _id115179_
                                 __id115370
                                 __klass115361
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115178_
                                 _super115180_
                                 __super115371
                                 __klass115361
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115178_
                                 _precedence-list115181_
                                 __precedence-list115364
                                 __klass115361
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115178_
                                 _slots115182_
                                 __slots115368
                                 __klass115361
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115178_
                                 _fields115183_
                                 __fields115367
                                 __klass115361
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115178_
                                 _constructor115184_
                                 __constructor115365
                                 __klass115361
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115178_
                                 _struct?115185_
                                 __struct?115366
                                 __klass115361
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115178_
                                 _final?115186_
                                 __final?115369
                                 __klass115361
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115178_
                                 _metaclass115187_
                                 __metaclass115372
                                 __klass115361
                                 '#f))
                              (if _methods115188_
                                  (let ((__tmp115515
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods115188_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self115178_
                                     __tmp115515
                                     __methods115363
                                     __klass115361
                                     '#f))
                                  '#!void))
                            _g115495_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g115495_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where114924_
               _base-struct114925_
               _precedence-list114926_
               _direct-slots114927_)
        (let* ((_base-fields114929_
                (if _base-struct114925_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where114924_
                        _base-struct114925_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields114931_ (reverse _base-fields114929_))
               (_seen-slots114939_
                (let ((_tab114933_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g114934114936_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab114933_ _g114934114936_ '#t)))
                   _base-fields114929_)
                  _tab114933_))
               (_process-slot114943_
                (lambda (_slot114941_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots114939_ _slot114941_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots114939_ _slot114941_ '#t))
                        (set! _r-fields114931_
                              (let ()
                                (declare (not safe))
                                (cons _slot114941_ _r-fields114931_))))))))
          (for-each
           (lambda (_mixin114946_)
             (let ((_klass114948_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where114924_
                       _mixin114946_))))
               (if (##structure-ref _klass114948_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot114943_
                    (##structure-ref _klass114948_ '5 gxc#!class::t '#f)))))
           _precedence-list114926_)
          (for-each _process-slot114943_ _direct-slots114927_)
          (reverse _r-fields114931_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass114883_ _slot114884_)
        (let _lp114886_ ((_rest114888_
                          (##structure-ref _klass114883_ '5 gxc#!class::t '#f))
                         (_offset114889_ '1))
          (let* ((_rest114890114898_ _rest114888_)
                 (_else114892114906_
                  (lambda ()
                    (let ((__tmp115517
                           (##structure-ref _klass114883_ '1 gxc#!type::t '#f))
                          (__tmp115516
                           (##structure-ref
                            _klass114883_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp115517
                       __tmp115516
                       _slot114884_))))
                 (_K114894114912_
                  (lambda (_rest114909_ _s114910_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s114910_ _slot114884_))
                        _offset114889_
                        (let ((__tmp115518
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset114889_ '1))))
                          (declare (not safe))
                          (_lp114886_ _rest114909_ __tmp115518))))))
            (if (let () (declare (not safe)) (##pair? _rest114890114898_))
                (let ((_hd114895114915_
                       (let ()
                         (declare (not safe))
                         (##car _rest114890114898_)))
                      (_tl114896114917_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest114890114898_))))
                  (let* ((_s114920_ _hd114895114915_)
                         (_rest114922_ _tl114896114917_))
                    (declare (not safe))
                    (_K114894114912_ _rest114922_ _s114920_)))
                (let () (declare (not safe)) (_else114892114906_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass114841_ _slot114842_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass114841_ _slot114842_))
            _klass114841_
            (let _lp114844_ ((_rest114846_
                              (##structure-ref
                               _klass114841_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest114847114855_ _rest114846_)
                     (_else114849114863_ (lambda () '#f))
                     (_K114851114871_
                      (lambda (_rest114866_ _super114867_)
                        (let ((_super-class114869_
                               (let ((__tmp115519
                                      (let ((__tmp115520
                                             (let ((__tmp115522
                                                    (##structure-ref
                                                     _klass114841_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp115521
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot114842_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp115522
                                                     __tmp115521))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp115520))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp115519
                                  _super114867_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class114869_
                                 _slot114842_))
                              _super-class114869_
                              (let ()
                                (declare (not safe))
                                (_lp114844_ _rest114866_)))))))
                (if (let () (declare (not safe)) (##pair? _rest114847114855_))
                    (let ((_hd114852114874_
                           (let ()
                             (declare (not safe))
                             (##car _rest114847114855_)))
                          (_tl114853114876_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest114847114855_))))
                      (let* ((_super114879_ _hd114852114874_)
                             (_rest114881_ _tl114853114876_))
                        (declare (not safe))
                        (_K114851114871_ _rest114881_ _super114879_)))
                    (let () (declare (not safe)) (_else114849114863_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass114838_ _slot114839_)
        (if (##structure-ref _klass114838_ '7 gxc#!class::t '#f)
            (memq _slot114839_
                  (##structure-ref _klass114838_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self114835_ _id114836_)
        (##structure-set! _self114835_ _id114836_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass115383 __method-table115384)
        (let ((__id115385
               (let ((__slot115386
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115383 'id))))
                 (if __slot115386
                     __slot115386
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self114835_ _id114836_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114835_
               _id114836_
               __id115385
               __klass115383
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
      (lambda (_self114710_ _id114711_)
        (##structure-set! _self114710_ _id114711_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass115387 __method-table115388)
        (let ((__id115389
               (let ((__slot115390
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115387 'id))))
                 (if __slot115390
                     __slot115390
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self114710_ _id114711_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114710_
               _id114711_
               __id115389
               __klass115387
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
      (lambda (_self114583_ _id114584_ _slot114585_ _checked?114586_)
        (##structure-set! _self114583_ _id114584_ '1 gxc#!type::t '#f)
        (##structure-set! _self114583_ _slot114585_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self114583_
         _checked?114586_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass115391 __method-table115392)
        (let ((__checked?115393
               (let ((__slot115396
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115391 'checked?))))
                 (if __slot115396
                     __slot115396
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot115394
               (let ((__slot115397
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115391 'slot))))
                 (if __slot115397
                     __slot115397
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id115395
               (let ((__slot115398
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115391 'id))))
                 (if __slot115398
                     __slot115398
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self114583_ _id114584_ _slot114585_ _checked?114586_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114583_
               _id114584_
               __id115395
               __klass115391
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114583_
               _slot114585_
               __slot115394
               __klass115391
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114583_
               _checked?114586_
               __checked?115393
               __klass115391
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
      (lambda (_self114456_ _id114457_ _slot114458_ _checked?114459_)
        (##structure-set! _self114456_ _id114457_ '1 gxc#!type::t '#f)
        (##structure-set! _self114456_ _slot114458_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self114456_
         _checked?114459_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass115399 __method-table115400)
        (let ((__checked?115401
               (let ((__slot115404
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115399 'checked?))))
                 (if __slot115404
                     __slot115404
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot115402
               (let ((__slot115405
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115399 'slot))))
                 (if __slot115405
                     __slot115405
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id115403
               (let ((__slot115406
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115399 'id))))
                 (if __slot115406
                     __slot115406
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self114456_ _id114457_ _slot114458_ _checked?114459_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114456_
               _id114457_
               __id115403
               __klass115399
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114456_
               _slot114458_
               __slot115402
               __klass115399
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114456_
               _checked?114459_
               __checked?115401
               __klass115399
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
      (lambda (_self114300_
               _id114301_
               _arity114302_
               _dispatch114303_
               _inline114304_
               _typedecl114305_)
        (if (let ((__tmp115529
                   (let ()
                     (declare (not safe))
                     (##structure-length _self114300_))))
              (declare (not safe))
              (##fx< '5 __tmp115529))
            (begin
              (let ((__tmp115524
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114300_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114300_
                 _id114301_
                 '1
                 __tmp115524
                 '#f))
              (let ((__tmp115525
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114300_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114300_
                 _arity114302_
                 '2
                 __tmp115525
                 '#f))
              (let ((__tmp115526
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114300_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114300_
                 _dispatch114303_
                 '3
                 __tmp115526
                 '#f))
              (let ((__tmp115527
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114300_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114300_
                 _inline114304_
                 '4
                 __tmp115527
                 '#f))
              (let ((__tmp115528
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114300_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114300_
                 _typedecl114305_
                 '5
                 __tmp115528
                 '#f)))
            (let ((__tmp115523
                   (let ()
                     (declare (not safe))
                     (##vector-length _self114300_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self114300_
                     '5
                     __tmp115523)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self114310_ _id114311_ _arity114312_ _dispatch114313_)
        (let* ((_inline114315_ '#f) (_typedecl114317_ '#f))
          (if (let ((__tmp115536
                     (let ()
                       (declare (not safe))
                       (##structure-length _self114310_))))
                (declare (not safe))
                (##fx< '5 __tmp115536))
              (begin
                (let ((__tmp115531
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114310_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114310_
                   _id114311_
                   '1
                   __tmp115531
                   '#f))
                (let ((__tmp115532
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114310_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114310_
                   _arity114312_
                   '2
                   __tmp115532
                   '#f))
                (let ((__tmp115533
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114310_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114310_
                   _dispatch114313_
                   '3
                   __tmp115533
                   '#f))
                (let ((__tmp115534
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114310_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114310_
                   _inline114315_
                   '4
                   __tmp115534
                   '#f))
                (let ((__tmp115535
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114310_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114310_
                   _typedecl114317_
                   '5
                   __tmp115535
                   '#f)))
              (let ((__tmp115530
                     (let ()
                       (declare (not safe))
                       (##vector-length _self114310_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self114310_
                       '5
                       __tmp115530))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self114319_
               _id114320_
               _arity114321_
               _dispatch114322_
               _inline114323_)
        (let ((_typedecl114325_ '#f))
          (if (let ((__tmp115543
                     (let ()
                       (declare (not safe))
                       (##structure-length _self114319_))))
                (declare (not safe))
                (##fx< '5 __tmp115543))
              (begin
                (let ((__tmp115538
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114319_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114319_
                   _id114320_
                   '1
                   __tmp115538
                   '#f))
                (let ((__tmp115539
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114319_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114319_
                   _arity114321_
                   '2
                   __tmp115539
                   '#f))
                (let ((__tmp115540
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114319_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114319_
                   _dispatch114322_
                   '3
                   __tmp115540
                   '#f))
                (let ((__tmp115541
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114319_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114319_
                   _inline114323_
                   '4
                   __tmp115541
                   '#f))
                (let ((__tmp115542
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114319_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114319_
                   _typedecl114325_
                   '5
                   __tmp115542
                   '#f)))
              (let ((__tmp115537
                     (let ()
                       (declare (not safe))
                       (##vector-length _self114319_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self114319_
                       '5
                       __tmp115537))))))
    (define gxc#!lambda:::init!
      (lambda _g115545_
        (let ((_g115544_ (let () (declare (not safe)) (##length _g115545_))))
          (cond ((let () (declare (not safe)) (##fx= _g115544_ 4))
                 (apply (lambda (_self114310_
                                 _id114311_
                                 _arity114312_
                                 _dispatch114313_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self114310_
                             _id114311_
                             _arity114312_
                             _dispatch114313_)))
                        _g115545_))
                ((let () (declare (not safe)) (##fx= _g115544_ 5))
                 (apply (lambda (_self114319_
                                 _id114320_
                                 _arity114321_
                                 _dispatch114322_
                                 _inline114323_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self114319_
                             _id114320_
                             _arity114321_
                             _dispatch114322_
                             _inline114323_)))
                        _g115545_))
                ((let () (declare (not safe)) (##fx= _g115544_ 6))
                 (apply (lambda (_self114327_
                                 _id114328_
                                 _arity114329_
                                 _dispatch114330_
                                 _inline114331_
                                 _typedecl114332_)
                          (if (let ((__tmp115552
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self114327_))))
                                (declare (not safe))
                                (##fx< '5 __tmp115552))
                              (begin
                                (let ((__tmp115547
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self114327_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self114327_
                                   _id114328_
                                   '1
                                   __tmp115547
                                   '#f))
                                (let ((__tmp115548
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self114327_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self114327_
                                   _arity114329_
                                   '2
                                   __tmp115548
                                   '#f))
                                (let ((__tmp115549
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self114327_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self114327_
                                   _dispatch114330_
                                   '3
                                   __tmp115549
                                   '#f))
                                (let ((__tmp115550
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self114327_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self114327_
                                   _inline114331_
                                   '4
                                   __tmp115550
                                   '#f))
                                (let ((__tmp115551
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self114327_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self114327_
                                   _typedecl114332_
                                   '5
                                   __tmp115551
                                   '#f)))
                              (let ((__tmp115546
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self114327_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self114327_
                                       '5
                                       __tmp115546))))
                        _g115545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g115545_))))))
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
      (lambda (_self114052_ . _args114053_)
        (apply struct-instance-init! _self114052_ _args114053_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type113927_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113927_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type113927_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass113920_)
        (let ((_$e113922_
               (##structure-ref _klass113920_ '10 gxc#!class::t '#f)))
          (if _$e113922_
              _$e113922_
              (let ((_tab113925_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass113920_
                 _tab113925_
                 '10
                 gxc#!class::t
                 '#f)
                _tab113925_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass113911_ _method113912_)
        (let ((_tab113913113915_
               (##structure-ref _klass113911_ '10 gxc#!class::t '#f)))
          (if _tab113913113915_
              (let ((_tab113918_ _tab113913113915_))
                (declare (not safe))
                (hash-get _tab113918_ _method113912_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type113908_ _method113909_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113908_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type113908_ _method113909_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym113892_ _type113893_ _local?113894_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113893_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym113892_
                     _type113893_)))
        (let ((__tmp115553
               (let () (declare (not safe)) (struct->list _type113893_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym113892_ '" " __tmp115553))
        (let ((__tmp115554
               (if _local?113894_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp115554 _sym113892_ _type113893_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym113899_ _type113900_)
        (let ((_local?113902_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym113899_
           _type113900_
           _local?113902_))))
    (define gxc#optimizer-declare-type!
      (lambda _g115556_
        (let ((_g115555_ (let () (declare (not safe)) (##length _g115556_))))
          (cond ((let () (declare (not safe)) (##fx= _g115555_ 2))
                 (apply (lambda (_sym113899_ _type113900_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym113899_
                             _type113900_)))
                        _g115556_))
                ((let () (declare (not safe)) (##fx= _g115555_ 3))
                 (apply (lambda (_sym113904_ _type113905_ _local?113906_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym113904_
                             _type113905_
                             _local?113906_)))
                        _g115556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g115556_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym113878_ _local?113879_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym113878_))
        (let ((__tmp115557
               (if _local?113879_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp115557 _sym113878_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym113884_)
        (let ((_local?113886_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym113884_ _local?113886_))))
    (define gxc#optimizer-clear-type!
      (lambda _g115559_
        (let ((_g115558_ (let () (declare (not safe)) (##length _g115559_))))
          (cond ((let () (declare (not safe)) (##fx= _g115558_ 1))
                 (apply (lambda (_sym113884_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym113884_)))
                        _g115559_))
                ((let () (declare (not safe)) (##fx= _g115558_ 2))
                 (apply (lambda (_sym113888_ _local?113889_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym113888_
                             _local?113889_)))
                        _g115559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g115559_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t113846_ _method113847_ _sym113848_ _rebind?113849_)
        (let* ((_type113851_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t113846_)))
               (_$e113853_
                (let () (declare (not safe)) (gxc#!type-vtab _type113851_))))
          (if _$e113853_
              ((lambda (_vtab113856_)
                 (let ((_$e113858_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab113856_ _method113847_))))
                   (if _$e113858_
                       ((lambda (_existing113861_)
                          (if _rebind?113849_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t113846_
                                   '" "
                                   _method113847_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab113856_
                                   _method113847_
                                   _sym113848_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing113861_ _sym113848_))
                                  '#!void
                                  (let ((__tmp115564
                                         (let ((__tmp115565
                                                (let ((__tmp115566
                                                       (let ((__tmp115567
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym113848_ '()))))
                 (declare (not safe))
                 (cons _method113847_ __tmp115567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t113846_
                                                        __tmp115566))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp115565))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp115564
                                     _method113847_)))))
                        _$e113858_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t113846_
                            '" "
                            _method113847_
                            '" => "
                            _sym113848_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab113856_
                            _method113847_
                            _sym113848_))))))
               _$e113853_)
              (if (let () (declare (not safe)) (not _type113851_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t113846_))
                  (let ((__tmp115560
                         (let ((__tmp115561
                                (let ((__tmp115562
                                       (let ((__tmp115563
                                              (let ()
                                                (declare (not safe))
                                                (cons _method113847_ '()))))
                                         (declare (not safe))
                                         (cons _sym113848_ __tmp115563))))
                                  (declare (not safe))
                                  (cons _type-t113846_ __tmp115562))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp115561))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp115560
                     _type113851_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t113866_ _method113867_ _sym113868_)
        (let ((_rebind?113870_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t113866_
           _method113867_
           _sym113868_
           _rebind?113870_))))
    (define gxc#optimizer-declare-method!
      (lambda _g115569_
        (let ((_g115568_ (let () (declare (not safe)) (##length _g115569_))))
          (cond ((let () (declare (not safe)) (##fx= _g115568_ 3))
                 (apply (lambda (_type-t113866_ _method113867_ _sym113868_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t113866_
                             _method113867_
                             _sym113868_)))
                        _g115569_))
                ((let () (declare (not safe)) (##fx= _g115568_ 4))
                 (apply (lambda (_type-t113872_
                                 _method113873_
                                 _sym113874_
                                 _rebind?113875_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t113872_
                             _method113873_
                             _sym113874_
                             _rebind?113875_)))
                        _g115569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g115569_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym113834_)
        (let ((_$e113842_
               (let ((_ht113835113837_ (gxc#current-compile-local-type)))
                 (if _ht113835113837_
                     (let ((_ht113840_ _ht113835113837_))
                       (declare (not safe))
                       (hash-get _ht113840_ _sym113834_))
                     '#f))))
          (if _$e113842_
              _$e113842_
              (let ((__tmp115570
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp115570 _sym113834_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym113826_)
        (let ((_type113827113829_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym113826_))))
          (if _type113827113829_
              (let ((_type113832_ _type113827113829_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type113832_ 'gxc#!alias::t))
                    (let ((__tmp115571
                           (##structure-ref _type113832_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp115571))
                    _type113832_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where113818_ _klass-id113819_)
        (let ((_$e113821_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id113819_))))
          (if _$e113821_
              ((lambda (_klass113824_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass113824_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where113818_
                        _klass-id113819_
                        _klass113824_)))
                 _klass113824_)
               _$e113821_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where113818_
                 _klass-id113819_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t113815_ _method113816_)
        (let ((__tmp115572
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t113815_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp115572 _method113816_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym113813_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym113813_))
        (let ((__tmp115573
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp115573 _sym113813_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym113811_)
        (let ((__tmp115574
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp115574 _sym113811_))))
    (define gxc#identifier-symbol
      (lambda (_stx113809_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx113809_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx113809_))
            (let () (declare (not safe)) (gx#stx-e _stx113809_)))))))
