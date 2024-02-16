(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708102805)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp221416 (list))
            (__tmp221414
             (let ((__tmp221415
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221415 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp221416
         '(type ssxi methods)
         __tmp221414
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args216787_
        (apply make-instance gxc#optimizer-info::t _$args216787_)))
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
      (lambda (_self216785_)
        (if (let ((__tmp221423
                   (let ()
                     (declare (not safe))
                     (##structure-length _self216785_))))
              (declare (not safe))
              (##fx< '3 __tmp221423))
            (begin
              (let ((__tmp221418
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp221417
                     (let ()
                       (declare (not safe))
                       (##structure-type _self216785_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self216785_
                 __tmp221418
                 '1
                 __tmp221417
                 '#f))
              (let ((__tmp221420
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp221419
                     (let ()
                       (declare (not safe))
                       (##structure-type _self216785_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self216785_
                 __tmp221420
                 '2
                 __tmp221419
                 '#f))
              (let ((__tmp221422
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp221421
                     (let ()
                       (declare (not safe))
                       (##structure-type _self216785_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self216785_
                 __tmp221422
                 '3
                 __tmp221421
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self216785_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self216785_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp221426 (list))
            (__tmp221424
             (let ((__tmp221425
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221425 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp221426
         '(id)
         __tmp221424
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args216660_ (apply make-instance gxc#!type::t _$args216660_)))
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
      (let ((__tmp221429 (list gxc#!type::t))
            (__tmp221427
             (let ((__tmp221428
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221428 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp221429
         '()
         __tmp221427
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args216657_ (apply make-instance gxc#!alias::t _$args216657_)))
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
      (let ((__tmp221432 (list gxc#!type::t))
            (__tmp221430
             (let ((__tmp221431
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221431 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp221432
         '()
         __tmp221430
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args216654_
        (apply make-instance gxc#!procedure::t _$args216654_)))
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
      (let ((__tmp221435 (list gxc#!type::t))
            (__tmp221433
             (let ((__tmp221434
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221434 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp221435
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp221433
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args216651_ (apply make-instance gxc#!class::t _$args216651_)))
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
      (let ((__tmp221438 (list gxc#!procedure::t))
            (__tmp221436
             (let ((__tmp221437
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221437 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp221438
         '()
         __tmp221436
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args216648_
        (apply make-instance gxc#!predicate::t _$args216648_)))
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
      (let ((__tmp221441 (list gxc#!procedure::t))
            (__tmp221439
             (let ((__tmp221440
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221440 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp221441
         '()
         __tmp221439
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args216645_
        (apply make-instance gxc#!constructor::t _$args216645_)))
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
      (let ((__tmp221444 (list gxc#!procedure::t))
            (__tmp221442
             (let ((__tmp221443
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221443 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp221444
         '(slot checked?)
         __tmp221442
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args216642_
        (apply make-instance gxc#!accessor::t _$args216642_)))
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
      (let ((__tmp221447 (list gxc#!procedure::t))
            (__tmp221445
             (let ((__tmp221446
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221446 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp221447
         '(slot checked?)
         __tmp221445
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args216639_
        (apply make-instance gxc#!mutator::t _$args216639_)))
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
      (let ((__tmp221450 (list gxc#!procedure::t))
            (__tmp221448
             (let ((__tmp221449
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221449 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp221450
         '(arity dispatch inline inline-typedecl)
         __tmp221448
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args216636_
        (apply make-instance gxc#!lambda::t _$args216636_)))
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
      (let ((__tmp221453 (list gxc#!procedure::t))
            (__tmp221451
             (let ((__tmp221452
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221452 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp221453
         '(clauses)
         __tmp221451
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args216633_
        (apply make-instance gxc#!case-lambda::t _$args216633_)))
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
      (let ((__tmp221456 (list gxc#!procedure::t))
            (__tmp221454
             (let ((__tmp221455
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221455 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp221456
         '(table dispatch)
         __tmp221454
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args216630_
        (apply make-instance gxc#!kw-lambda::t _$args216630_)))
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
      (let ((__tmp221459 (list gxc#!procedure::t))
            (__tmp221457
             (let ((__tmp221458
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221458 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp221459
         '(keys main)
         __tmp221457
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args216627_
        (apply make-instance gxc#!kw-lambda-primary::t _$args216627_)))
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
      (let ((__tmp221460 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp221460
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args216624_
        (apply make-instance gxc#!primitive::t _$args216624_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp221461 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp221461
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args216621_
        (apply make-instance gxc#!primitive-lambda::t _$args216621_)))
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
      (let ((__tmp221462 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp221462
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args216618_
        (apply make-instance gxc#!primitive-case-lambda::t _$args216618_)))
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
      (lambda (_self216500_
               _id216501_
               _super216502_
               _slots216503_
               _ctor-method216504_
               _struct?216505_
               _final?216506_
               _metaclass216507_)
        (let _lp216509_ ((_rest216511_ _super216502_))
          (let* ((_rest216512216520_ _rest216511_)
                 (_else216514216528_ (lambda () '#!void))
                 (_K216516216534_
                  (lambda (_rest216531_ _super-id216532_)
                    (if (##structure-ref
                         (let ((__tmp221465
                                (let ((__tmp221466
                                       (let ()
                                         (declare (not safe))
                                         (cons _id216501_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp221466))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp221465
                            _super-id216532_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp221463
                               (let ((__tmp221464
                                      (let ()
                                        (declare (not safe))
                                        (cons _id216501_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp221464))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp221463
                           _super-id216532_))
                        '#!void)
                    (let () (declare (not safe)) (_lp216509_ _rest216531_)))))
            (if (let () (declare (not safe)) (##pair? _rest216512216520_))
                (let ((_hd216517216537_
                       (let ()
                         (declare (not safe))
                         (##car _rest216512216520_)))
                      (_tl216518216539_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest216512216520_))))
                  (let* ((_super-id216542_ _hd216517216537_)
                         (_rest216544_ _tl216518216539_))
                    (declare (not safe))
                    (_K216516216534_ _rest216544_ _super-id216542_)))
                '#!void)))
        (let* ((_ctor-method216594_
                (let ((_$e216546_ _ctor-method216504_))
                  (if _$e216546_
                      _$e216546_
                      (let _lp216549_ ((_rest216551_ _super216502_)
                                       (_method216552_ '#f))
                        (let* ((_rest216553216561_ _rest216551_)
                               (_else216555216569_ (lambda () _method216552_))
                               (_K216557216582_
                                (lambda (_rest216572_ _super-id216573_)
                                  (let* ((_klass216575_
                                          (let ((__tmp221467
                                                 (let ((__tmp221468
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id216501_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp221468))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp221467
                                             _super-id216573_)))
                                         (_$e216577_
                                          (##structure-ref
                                           _klass216575_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e216577_
                                        ((lambda (_ctor-method216580_)
                                           (if _method216552_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method216580_
                                                          _method216552_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp216549_
                                                      _rest216572_
                                                      _ctor-method216580_))
                                                   (let ((__tmp221469
                                                          (let ((__tmp221470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id216501_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp221470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp221469
                                                      _method216552_
                                                      _ctor-method216580_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp216549_
                                                  _rest216572_
                                                  _ctor-method216580_))))
                                         _$e216577_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp216549_
                                           _rest216572_
                                           _method216552_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest216553216561_))
                              (let ((_hd216558216585_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest216553216561_)))
                                    (_tl216559216587_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest216553216561_))))
                                (let* ((_super-id216590_ _hd216558216585_)
                                       (_rest216592_ _tl216559216587_))
                                  (declare (not safe))
                                  (_K216557216582_
                                   _rest216592_
                                   _super-id216590_)))
                              (let ()
                                (declare (not safe))
                                (_else216555216569_))))))))
               (_g221471_
                (let ((__tmp221476
                       (lambda (_klass-id216596_)
                         (let ((__tmp221477
                                (##structure-ref
                                 (let ((__tmp221478
                                        (let ((__tmp221479
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id216501_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp221479))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp221478
                                    _klass-id216596_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id216596_ __tmp221477))))
                      (__tmp221473
                       (lambda (_klass-id216598_)
                         (##structure-ref
                          (let ((__tmp221474
                                 (let ((__tmp221475
                                        (let ()
                                          (declare (not safe))
                                          (cons _id216501_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp221475))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp221474
                             _klass-id216598_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp221476
                   __tmp221473
                   eq?
                   identity
                   '()
                   _super216502_))))
          (begin
            (let ((_g221472_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g221471_)
                         (##vector-length _g221471_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g221472_ 2)))
                  (error "Context expects 2 values" _g221472_)))
            (let ((_precedence-list216600_
                   (let () (declare (not safe)) (##vector-ref _g221471_ 0)))
                  (_base-struct216601_
                   (let () (declare (not safe)) (##vector-ref _g221471_ 1))))
              (let ((_fields216603_
                     (let ((__tmp221480
                            (let ((__tmp221481
                                   (let ()
                                     (declare (not safe))
                                     (cons _id216501_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp221481))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp221480
                        _base-struct216601_
                        _precedence-list216600_
                        _slots216503_))))
                (##structure-set! _self216500_ _id216501_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self216500_
                 _super216502_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216500_
                 _precedence-list216600_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216500_
                 _slots216503_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216500_
                 _fields216603_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216500_
                 _ctor-method216594_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216500_
                 _struct?216505_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216500_
                 _final?216506_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216500_
                 _metaclass216507_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self216606_
               _id216607_
               _super216608_
               _precedence-list216609_
               _slots216610_
               _fields216611_
               _constructor216612_
               _struct?216613_
               _final?216614_
               _metaclass216615_
               _methods216616_)
        (##structure-set! _self216606_ _id216607_ '1 gxc#!type::t '#f)
        (##structure-set! _self216606_ _super216608_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self216606_
         _precedence-list216609_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self216606_ _slots216610_ '4 gxc#!class::t '#f)
        (##structure-set! _self216606_ _fields216611_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self216606_
         _constructor216612_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self216606_ _struct?216613_ '7 gxc#!class::t '#f)
        (##structure-set! _self216606_ _final?216614_ '8 gxc#!class::t '#f)
        (##structure-set! _self216606_ _metaclass216615_ '9 gxc#!class::t '#f)
        (if _methods216616_
            (##structure-set!
             _self216606_
             (let ()
               (declare (not safe))
               (list->table _methods216616_ 'test: eq?))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g221483_
        (let ((_g221482_ (let () (declare (not safe)) (##length _g221483_))))
          (cond ((let () (declare (not safe)) (##fx= _g221482_ 8))
                 (apply (lambda (_self216500_
                                 _id216501_
                                 _super216502_
                                 _slots216503_
                                 _ctor-method216504_
                                 _struct?216505_
                                 _final?216506_
                                 _metaclass216507_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self216500_
                             _id216501_
                             _super216502_
                             _slots216503_
                             _ctor-method216504_
                             _struct?216505_
                             _final?216506_
                             _metaclass216507_)))
                        _g221483_))
                ((let () (declare (not safe)) (##fx= _g221482_ 11))
                 (apply (lambda (_self216606_
                                 _id216607_
                                 _super216608_
                                 _precedence-list216609_
                                 _slots216610_
                                 _fields216611_
                                 _constructor216612_
                                 _struct?216613_
                                 _final?216614_
                                 _metaclass216615_
                                 _methods216616_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self216606_
                             _id216607_
                             _super216608_
                             _precedence-list216609_
                             _slots216610_
                             _fields216611_
                             _constructor216612_
                             _struct?216613_
                             _final?216614_
                             _metaclass216615_
                             _methods216616_)))
                        _g221483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g221483_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t221357)
        (let ((__precedence-list221358
               (let ((__tmp221368
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221357 'precedence-list))))
                 (if __tmp221368
                     __tmp221368
                     (error '"Unknown slot" 'precedence-list))))
              (__fields221359
               (let ((__tmp221369
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221357 'fields))))
                 (if __tmp221369 __tmp221369 (error '"Unknown slot" 'fields))))
              (__id221360
               (let ((__tmp221370
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221357 'id))))
                 (if __tmp221370 __tmp221370 (error '"Unknown slot" 'id))))
              (__super221361
               (let ((__tmp221371
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221357 'super))))
                 (if __tmp221371 __tmp221371 (error '"Unknown slot" 'super))))
              (__metaclass221362
               (let ((__tmp221372
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221357 'metaclass))))
                 (if __tmp221372
                     __tmp221372
                     (error '"Unknown slot" 'metaclass))))
              (__constructor221363
               (let ((__tmp221373
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221357 'constructor))))
                 (if __tmp221373
                     __tmp221373
                     (error '"Unknown slot" 'constructor))))
              (__slots221364
               (let ((__tmp221374
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221357 'slots))))
                 (if __tmp221374 __tmp221374 (error '"Unknown slot" 'slots))))
              (__final?221365
               (let ((__tmp221375
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221357 'final?))))
                 (if __tmp221375 __tmp221375 (error '"Unknown slot" 'final?))))
              (__struct?221366
               (let ((__tmp221376
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221357 'struct?))))
                 (if __tmp221376
                     __tmp221376
                     (error '"Unknown slot" 'struct?))))
              (__methods221367
               (let ((__tmp221377
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221357 'methods))))
                 (if __tmp221377
                     __tmp221377
                     (error '"Unknown slot" 'methods)))))
          (lambda _g221485_
            (let ((_g221484_
                   (let () (declare (not safe)) (##length _g221485_))))
              (cond ((let () (declare (not safe)) (##fx= _g221484_ 8))
                     (apply (lambda (_self216500_
                                     _id216501_
                                     _super216502_
                                     _slots216503_
                                     _ctor-method216504_
                                     _struct?216505_
                                     _final?216506_
                                     _metaclass216507_)
                              (let _lp216509_ ((_rest216511_ _super216502_))
                                (let* ((_rest216512216520_ _rest216511_)
                                       (_else216514216528_ (lambda () '#!void))
                                       (_K216516216534_
                                        (lambda (_rest216531_ _super-id216532_)
                                          (if (##structure-ref
                                               (let ((__tmp221488
                                                      (let ((__tmp221489
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id216501_ '()))))
                (declare (not safe))
                (cons '!class __tmp221489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp221488
                                                  _super-id216532_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp221486
                                                     (let ((__tmp221487
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id216501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp221487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp221486
                                                 _super-id216532_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp216509_ _rest216531_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest216512216520_))
                                      (let ((_hd216517216537_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest216512216520_)))
                                            (_tl216518216539_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest216512216520_))))
                                        (let* ((_super-id216542_
                                                _hd216517216537_)
                                               (_rest216544_ _tl216518216539_))
                                          (declare (not safe))
                                          (_K216516216534_
                                           _rest216544_
                                           _super-id216542_)))
                                      '#!void)))
                              (let* ((_ctor-method216594_
                                      (let ((_$e216546_ _ctor-method216504_))
                                        (if _$e216546_
                                            _$e216546_
                                            (let _lp216549_ ((_rest216551_
                                                              _super216502_)
                                                             (_method216552_
                                                              '#f))
                                              (let* ((_rest216553216561_
                                                      _rest216551_)
                                                     (_else216555216569_
                                                      (lambda ()
                                                        _method216552_))
                                                     (_K216557216582_
                                                      (lambda (_rest216572_
                                                               _super-id216573_)
                                                        (let* ((_klass216575_
                                                                (let ((__tmp221490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp221491
                                      (let ()
                                        (declare (not safe))
                                        (cons _id216501_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp221491))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp221490
                           _super-id216573_)))
                       (_$e216577_
                        (##structure-ref _klass216575_ '6 gxc#!class::t '#f)))
                  (if _$e216577_
                      ((lambda (_ctor-method216580_)
                         (if _method216552_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method216580_ _method216552_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp216549_
                                    _rest216572_
                                    _ctor-method216580_))
                                 (let ((__tmp221492
                                        (let ((__tmp221493
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id216501_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp221493))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp221492
                                    _method216552_
                                    _ctor-method216580_)))
                             (let ()
                               (declare (not safe))
                               (_lp216549_ _rest216572_ _ctor-method216580_))))
                       _$e216577_)
                      (let ()
                        (declare (not safe))
                        (_lp216549_ _rest216572_ _method216552_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest216553216561_))
                                                    (let ((_hd216558216585_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest216553216561_)))
                                                          (_tl216559216587_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest216553216561_))))
                                                      (let* ((_super-id216590_
                                                              _hd216558216585_)
                                                             (_rest216592_
                                                              _tl216559216587_))
                                                        (declare (not safe))
                                                        (_K216557216582_
                                                         _rest216592_
                                                         _super-id216590_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else216555216569_))))))))
                                     (_g221494_
                                      (let ((__tmp221499
                                             (lambda (_klass-id216596_)
                                               (let ((__tmp221500
                                                      (##structure-ref
                                                       (let ((__tmp221501
                                                              (let ((__tmp221502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id216501_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp221502))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp221501 _klass-id216596_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id216596_
                                                       __tmp221500))))
                                            (__tmp221496
                                             (lambda (_klass-id216598_)
                                               (##structure-ref
                                                (let ((__tmp221497
                                                       (let ((__tmp221498
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id216501_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp221498))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp221497
                                                   _klass-id216598_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp221499
                                         __tmp221496
                                         eq?
                                         identity
                                         '()
                                         _super216502_))))
                                (begin
                                  (let ((_g221495_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221494_)
                                               (##vector-length _g221494_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221495_ 2)))
                                        (error "Context expects 2 values"
                                               _g221495_)))
                                  (let ((_precedence-list216600_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g221494_ 0)))
                                        (_base-struct216601_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g221494_ 1))))
                                    (let ((_fields216603_
                                           (let ((__tmp221503
                                                  (let ((__tmp221504
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id216501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp221504))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp221503
                                              _base-struct216601_
                                              _precedence-list216600_
                                              _slots216503_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216500_
                                         _id216501_
                                         __id221360
                                         __t221357
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216500_
                                         _super216502_
                                         __super221361
                                         __t221357
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216500_
                                         _precedence-list216600_
                                         __precedence-list221358
                                         __t221357
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216500_
                                         _slots216503_
                                         __slots221364
                                         __t221357
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216500_
                                         _fields216603_
                                         __fields221359
                                         __t221357
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216500_
                                         _ctor-method216594_
                                         __constructor221363
                                         __t221357
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216500_
                                         _struct?216505_
                                         __struct?221366
                                         __t221357
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216500_
                                         _final?216506_
                                         __final?221365
                                         __t221357
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216500_
                                         _metaclass216507_
                                         __metaclass221362
                                         __t221357
                                         '#f)))))))
                            _g221485_))
                    ((let () (declare (not safe)) (##fx= _g221484_ 11))
                     (apply (lambda (_self216606_
                                     _id216607_
                                     _super216608_
                                     _precedence-list216609_
                                     _slots216610_
                                     _fields216611_
                                     _constructor216612_
                                     _struct?216613_
                                     _final?216614_
                                     _metaclass216615_
                                     _methods216616_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216606_
                                 _id216607_
                                 __id221360
                                 __t221357
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216606_
                                 _super216608_
                                 __super221361
                                 __t221357
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216606_
                                 _precedence-list216609_
                                 __precedence-list221358
                                 __t221357
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216606_
                                 _slots216610_
                                 __slots221364
                                 __t221357
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216606_
                                 _fields216611_
                                 __fields221359
                                 __t221357
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216606_
                                 _constructor216612_
                                 __constructor221363
                                 __t221357
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216606_
                                 _struct?216613_
                                 __struct?221366
                                 __t221357
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216606_
                                 _final?216614_
                                 __final?221365
                                 __t221357
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216606_
                                 _metaclass216615_
                                 __metaclass221362
                                 __t221357
                                 '#f))
                              (if _methods216616_
                                  (let ((__tmp221505
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods216616_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self216606_
                                     __tmp221505
                                     __methods221367
                                     __t221357
                                     '#f))
                                  '#!void))
                            _g221485_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g221485_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where216352_
               _base-struct216353_
               _precedence-list216354_
               _direct-slots216355_)
        (let* ((_base-fields216357_
                (if _base-struct216353_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where216352_
                        _base-struct216353_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields216359_ (reverse _base-fields216357_))
               (_seen-slots216367_
                (let ((_tab216361_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g216362216364_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab216361_ _g216362216364_ '#t)))
                   _base-fields216357_)
                  _tab216361_))
               (_process-slot216371_
                (lambda (_slot216369_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots216367_ _slot216369_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots216367_ _slot216369_ '#t))
                        (set! _r-fields216359_
                              (let ()
                                (declare (not safe))
                                (cons _slot216369_ _r-fields216359_))))))))
          (for-each
           (lambda (_mixin216374_)
             (let ((_klass216376_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where216352_
                       _mixin216374_))))
               (if (##structure-ref _klass216376_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot216371_
                    (##structure-ref _klass216376_ '5 gxc#!class::t '#f)))))
           _precedence-list216354_)
          (for-each _process-slot216371_ _direct-slots216355_)
          (reverse _r-fields216359_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass216311_ _slot216312_)
        (let _lp216314_ ((_rest216316_
                          (##structure-ref _klass216311_ '5 gxc#!class::t '#f))
                         (_offset216317_ '1))
          (let* ((_rest216318216326_ _rest216316_)
                 (_else216320216334_
                  (lambda ()
                    (let ((__tmp221507
                           (##structure-ref _klass216311_ '1 gxc#!type::t '#f))
                          (__tmp221506
                           (##structure-ref
                            _klass216311_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp221507
                       __tmp221506
                       _slot216312_))))
                 (_K216322216340_
                  (lambda (_rest216337_ _s216338_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s216338_ _slot216312_))
                        _offset216317_
                        (let ((__tmp221508
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset216317_ '1))))
                          (declare (not safe))
                          (_lp216314_ _rest216337_ __tmp221508))))))
            (if (let () (declare (not safe)) (##pair? _rest216318216326_))
                (let ((_hd216323216343_
                       (let ()
                         (declare (not safe))
                         (##car _rest216318216326_)))
                      (_tl216324216345_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest216318216326_))))
                  (let* ((_s216348_ _hd216323216343_)
                         (_rest216350_ _tl216324216345_))
                    (declare (not safe))
                    (_K216322216340_ _rest216350_ _s216348_)))
                (let () (declare (not safe)) (_else216320216334_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass216269_ _slot216270_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass216269_ _slot216270_))
            _klass216269_
            (let _lp216272_ ((_rest216274_
                              (##structure-ref
                               _klass216269_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest216275216283_ _rest216274_)
                     (_else216277216291_ (lambda () '#f))
                     (_K216279216299_
                      (lambda (_rest216294_ _super216295_)
                        (let ((_super-class216297_
                               (let ((__tmp221509
                                      (let ((__tmp221510
                                             (let ((__tmp221512
                                                    (##structure-ref
                                                     _klass216269_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp221511
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot216270_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp221512
                                                     __tmp221511))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp221510))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp221509
                                  _super216295_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class216297_
                                 _slot216270_))
                              _super-class216297_
                              (let ()
                                (declare (not safe))
                                (_lp216272_ _rest216294_)))))))
                (if (let () (declare (not safe)) (##pair? _rest216275216283_))
                    (let ((_hd216280216302_
                           (let ()
                             (declare (not safe))
                             (##car _rest216275216283_)))
                          (_tl216281216304_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest216275216283_))))
                      (let* ((_super216307_ _hd216280216302_)
                             (_rest216309_ _tl216281216304_))
                        (declare (not safe))
                        (_K216279216299_ _rest216309_ _super216307_)))
                    (let () (declare (not safe)) (_else216277216291_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass216266_ _slot216267_)
        (if (##structure-ref _klass216266_ '7 gxc#!class::t '#f)
            (memq _slot216267_
                  (##structure-ref _klass216266_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self216263_ _id216264_)
        (##structure-set! _self216263_ _id216264_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t221378)
        (let ((__id221379
               (let ((__tmp221380
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221378 'id))))
                 (if __tmp221380 __tmp221380 (error '"Unknown slot" 'id)))))
          (lambda (_self216263_ _id216264_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216263_
               _id216264_
               __id221379
               __t221378
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
      (lambda (_self216138_ _id216139_)
        (##structure-set! _self216138_ _id216139_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t221381)
        (let ((__id221382
               (let ((__tmp221383
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221381 'id))))
                 (if __tmp221383 __tmp221383 (error '"Unknown slot" 'id)))))
          (lambda (_self216138_ _id216139_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216138_
               _id216139_
               __id221382
               __t221381
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
      (lambda (_self216011_ _id216012_ _slot216013_ _checked?216014_)
        (##structure-set! _self216011_ _id216012_ '1 gxc#!type::t '#f)
        (##structure-set! _self216011_ _slot216013_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self216011_
         _checked?216014_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t221384)
        (let ((__slot221385
               (let ((__tmp221388
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221384 'slot))))
                 (if __tmp221388 __tmp221388 (error '"Unknown slot" 'slot))))
              (__id221386
               (let ((__tmp221389
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221384 'id))))
                 (if __tmp221389 __tmp221389 (error '"Unknown slot" 'id))))
              (__checked?221387
               (let ((__tmp221390
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221384 'checked?))))
                 (if __tmp221390
                     __tmp221390
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self216011_ _id216012_ _slot216013_ _checked?216014_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216011_
               _id216012_
               __id221386
               __t221384
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216011_
               _slot216013_
               __slot221385
               __t221384
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216011_
               _checked?216014_
               __checked?221387
               __t221384
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
      (lambda (_self215884_ _id215885_ _slot215886_ _checked?215887_)
        (##structure-set! _self215884_ _id215885_ '1 gxc#!type::t '#f)
        (##structure-set! _self215884_ _slot215886_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self215884_
         _checked?215887_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t221391)
        (let ((__slot221392
               (let ((__tmp221395
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221391 'slot))))
                 (if __tmp221395 __tmp221395 (error '"Unknown slot" 'slot))))
              (__id221393
               (let ((__tmp221396
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221391 'id))))
                 (if __tmp221396 __tmp221396 (error '"Unknown slot" 'id))))
              (__checked?221394
               (let ((__tmp221397
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221391 'checked?))))
                 (if __tmp221397
                     __tmp221397
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self215884_ _id215885_ _slot215886_ _checked?215887_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215884_
               _id215885_
               __id221393
               __t221391
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215884_
               _slot215886_
               __slot221392
               __t221391
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215884_
               _checked?215887_
               __checked?221394
               __t221391
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
      (lambda (_self215728_
               _id215729_
               _arity215730_
               _dispatch215731_
               _inline215732_
               _typedecl215733_)
        (if (let ((__tmp221518
                   (let ()
                     (declare (not safe))
                     (##structure-length _self215728_))))
              (declare (not safe))
              (##fx< '5 __tmp221518))
            (begin
              (let ((__tmp221513
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215728_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215728_
                 _id215729_
                 '1
                 __tmp221513
                 '#f))
              (let ((__tmp221514
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215728_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215728_
                 _arity215730_
                 '2
                 __tmp221514
                 '#f))
              (let ((__tmp221515
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215728_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215728_
                 _dispatch215731_
                 '3
                 __tmp221515
                 '#f))
              (let ((__tmp221516
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215728_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215728_
                 _inline215732_
                 '4
                 __tmp221516
                 '#f))
              (let ((__tmp221517
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215728_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215728_
                 _typedecl215733_
                 '5
                 __tmp221517
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self215728_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self215728_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self215738_ _id215739_ _arity215740_ _dispatch215741_)
        (let* ((_inline215743_ '#f) (_typedecl215745_ '#f))
          (if (let ((__tmp221524
                     (let ()
                       (declare (not safe))
                       (##structure-length _self215738_))))
                (declare (not safe))
                (##fx< '5 __tmp221524))
              (begin
                (let ((__tmp221519
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215738_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215738_
                   _id215739_
                   '1
                   __tmp221519
                   '#f))
                (let ((__tmp221520
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215738_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215738_
                   _arity215740_
                   '2
                   __tmp221520
                   '#f))
                (let ((__tmp221521
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215738_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215738_
                   _dispatch215741_
                   '3
                   __tmp221521
                   '#f))
                (let ((__tmp221522
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215738_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215738_
                   _inline215743_
                   '4
                   __tmp221522
                   '#f))
                (let ((__tmp221523
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215738_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215738_
                   _typedecl215745_
                   '5
                   __tmp221523
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self215738_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self215738_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self215747_
               _id215748_
               _arity215749_
               _dispatch215750_
               _inline215751_)
        (let ((_typedecl215753_ '#f))
          (if (let ((__tmp221530
                     (let ()
                       (declare (not safe))
                       (##structure-length _self215747_))))
                (declare (not safe))
                (##fx< '5 __tmp221530))
              (begin
                (let ((__tmp221525
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215747_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215747_
                   _id215748_
                   '1
                   __tmp221525
                   '#f))
                (let ((__tmp221526
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215747_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215747_
                   _arity215749_
                   '2
                   __tmp221526
                   '#f))
                (let ((__tmp221527
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215747_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215747_
                   _dispatch215750_
                   '3
                   __tmp221527
                   '#f))
                (let ((__tmp221528
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215747_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215747_
                   _inline215751_
                   '4
                   __tmp221528
                   '#f))
                (let ((__tmp221529
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215747_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215747_
                   _typedecl215753_
                   '5
                   __tmp221529
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self215747_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self215747_)))))))
    (define gxc#!lambda:::init!
      (lambda _g221532_
        (let ((_g221531_ (let () (declare (not safe)) (##length _g221532_))))
          (cond ((let () (declare (not safe)) (##fx= _g221531_ 4))
                 (apply (lambda (_self215738_
                                 _id215739_
                                 _arity215740_
                                 _dispatch215741_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self215738_
                             _id215739_
                             _arity215740_
                             _dispatch215741_)))
                        _g221532_))
                ((let () (declare (not safe)) (##fx= _g221531_ 5))
                 (apply (lambda (_self215747_
                                 _id215748_
                                 _arity215749_
                                 _dispatch215750_
                                 _inline215751_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self215747_
                             _id215748_
                             _arity215749_
                             _dispatch215750_
                             _inline215751_)))
                        _g221532_))
                ((let () (declare (not safe)) (##fx= _g221531_ 6))
                 (apply (lambda (_self215755_
                                 _id215756_
                                 _arity215757_
                                 _dispatch215758_
                                 _inline215759_
                                 _typedecl215760_)
                          (if (let ((__tmp221538
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self215755_))))
                                (declare (not safe))
                                (##fx< '5 __tmp221538))
                              (begin
                                (let ((__tmp221533
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215755_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215755_
                                   _id215756_
                                   '1
                                   __tmp221533
                                   '#f))
                                (let ((__tmp221534
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215755_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215755_
                                   _arity215757_
                                   '2
                                   __tmp221534
                                   '#f))
                                (let ((__tmp221535
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215755_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215755_
                                   _dispatch215758_
                                   '3
                                   __tmp221535
                                   '#f))
                                (let ((__tmp221536
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215755_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215755_
                                   _inline215759_
                                   '4
                                   __tmp221536
                                   '#f))
                                (let ((__tmp221537
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215755_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215755_
                                   _typedecl215760_
                                   '5
                                   __tmp221537
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self215755_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self215755_)))))
                        _g221532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g221532_))))))
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
      (lambda (_self215480_ . _args215481_)
        (apply struct-instance-init! _self215480_ _args215481_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type215355_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type215355_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type215355_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass215348_)
        (let ((_$e215350_
               (##structure-ref _klass215348_ '10 gxc#!class::t '#f)))
          (if _$e215350_
              _$e215350_
              (let ((_tab215353_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass215348_
                 _tab215353_
                 '10
                 gxc#!class::t
                 '#f)
                _tab215353_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass215339_ _method215340_)
        (let ((_tab215341215343_
               (##structure-ref _klass215339_ '10 gxc#!class::t '#f)))
          (if _tab215341215343_
              (let ((_tab215346_ _tab215341215343_))
                (declare (not safe))
                (table-ref _tab215346_ _method215340_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type215336_ _method215337_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type215336_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type215336_ _method215337_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym215320_ _type215321_ _local?215322_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type215321_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym215320_
                   _type215321_))
        (let ((__tmp221539
               (let () (declare (not safe)) (struct->list _type215321_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym215320_ '" " __tmp221539))
        (let ((__tmp221540
               (if _local?215322_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp221540 _sym215320_ _type215321_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym215327_ _type215328_)
        (let ((_local?215330_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym215327_
           _type215328_
           _local?215330_))))
    (define gxc#optimizer-declare-type!
      (lambda _g221542_
        (let ((_g221541_ (let () (declare (not safe)) (##length _g221542_))))
          (cond ((let () (declare (not safe)) (##fx= _g221541_ 2))
                 (apply (lambda (_sym215327_ _type215328_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym215327_
                             _type215328_)))
                        _g221542_))
                ((let () (declare (not safe)) (##fx= _g221541_ 3))
                 (apply (lambda (_sym215332_ _type215333_ _local?215334_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym215332_
                             _type215333_
                             _local?215334_)))
                        _g221542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g221542_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym215306_ _local?215307_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym215306_))
        (let ((__tmp221543
               (if _local?215307_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp221543 _sym215306_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym215312_)
        (let ((_local?215314_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym215312_ _local?215314_))))
    (define gxc#optimizer-clear-type!
      (lambda _g221545_
        (let ((_g221544_ (let () (declare (not safe)) (##length _g221545_))))
          (cond ((let () (declare (not safe)) (##fx= _g221544_ 1))
                 (apply (lambda (_sym215312_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym215312_)))
                        _g221545_))
                ((let () (declare (not safe)) (##fx= _g221544_ 2))
                 (apply (lambda (_sym215316_ _local?215317_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym215316_
                             _local?215317_)))
                        _g221545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g221545_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t215279_ _method215280_ _sym215281_ _rebind?215282_)
        (let* ((_type215284_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t215279_)))
               (_$e215286_
                (let () (declare (not safe)) (gxc#!type-vtab _type215284_))))
          (if _$e215286_
              ((lambda (_vtab215289_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab215289_ _method215280_))
                     (if _rebind?215282_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t215279_
                              '" "
                              _method215280_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab215289_
                              _method215280_
                              _sym215281_)))
                         (let ((__tmp221550
                                (let ((__tmp221551
                                       (let ((__tmp221552
                                              (let ((__tmp221553
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym215281_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method215280_
                                                      __tmp221553))))
                                         (declare (not safe))
                                         (cons _type-t215279_ __tmp221552))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp221551))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp221550
                            _method215280_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t215279_
                          '" "
                          _method215280_
                          '" => "
                          _sym215281_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab215289_
                          _method215280_
                          _sym215281_)))))
               _$e215286_)
              (if (let () (declare (not safe)) (not _type215284_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t215279_))
                  (let ((__tmp221546
                         (let ((__tmp221547
                                (let ((__tmp221548
                                       (let ((__tmp221549
                                              (let ()
                                                (declare (not safe))
                                                (cons _method215280_ '()))))
                                         (declare (not safe))
                                         (cons _sym215281_ __tmp221549))))
                                  (declare (not safe))
                                  (cons _type-t215279_ __tmp221548))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp221547))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp221546
                     _type215284_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t215294_ _method215295_ _sym215296_)
        (let ((_rebind?215298_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t215294_
           _method215295_
           _sym215296_
           _rebind?215298_))))
    (define gxc#optimizer-declare-method!
      (lambda _g221555_
        (let ((_g221554_ (let () (declare (not safe)) (##length _g221555_))))
          (cond ((let () (declare (not safe)) (##fx= _g221554_ 3))
                 (apply (lambda (_type-t215294_ _method215295_ _sym215296_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t215294_
                             _method215295_
                             _sym215296_)))
                        _g221555_))
                ((let () (declare (not safe)) (##fx= _g221554_ 4))
                 (apply (lambda (_type-t215300_
                                 _method215301_
                                 _sym215302_
                                 _rebind?215303_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t215300_
                             _method215301_
                             _sym215302_
                             _rebind?215303_)))
                        _g221555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g221555_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym215267_)
        (let ((_$e215275_
               (let ((_ht215268215270_ (gxc#current-compile-local-type)))
                 (if _ht215268215270_
                     (let ((_ht215273_ _ht215268215270_))
                       (declare (not safe))
                       (table-ref _ht215273_ _sym215267_ '#f))
                     '#f))))
          (if _$e215275_
              _$e215275_
              (let ((__tmp221556
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp221556 _sym215267_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym215259_)
        (let ((_type215260215262_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym215259_))))
          (if _type215260215262_
              (let ((_type215265_ _type215260215262_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type215265_ 'gxc#!alias::t))
                    (let ((__tmp221557
                           (##structure-ref _type215265_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp221557))
                    _type215265_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where215251_ _klass-id215252_)
        (let ((_$e215254_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id215252_))))
          (if _$e215254_
              ((lambda (_klass215257_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass215257_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where215251_
                        _klass-id215252_
                        _klass215257_)))
                 _klass215257_)
               _$e215254_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where215251_
                 _klass-id215252_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t215248_ _method215249_)
        (let ((__tmp221558
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t215248_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp221558 _method215249_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym215246_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym215246_))
        (let ((__tmp221559
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp221559 _sym215246_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym215244_)
        (let ((__tmp221560
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp221560 _sym215244_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx215242_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx215242_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx215242_))
            (let () (declare (not safe)) (gx#stx-e _stx215242_)))))))
