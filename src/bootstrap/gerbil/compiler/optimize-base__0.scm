(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707842374)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp221411 (list))
            (__tmp221409
             (let ((__tmp221410
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221410 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp221411
         '(type ssxi methods)
         __tmp221409
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args216782_
        (apply make-instance gxc#optimizer-info::t _$args216782_)))
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
      (lambda (_self216780_)
        (if (let ((__tmp221418
                   (let ()
                     (declare (not safe))
                     (##structure-length _self216780_))))
              (declare (not safe))
              (##fx< '3 __tmp221418))
            (begin
              (let ((__tmp221413
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp221412
                     (let ()
                       (declare (not safe))
                       (##structure-type _self216780_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self216780_
                 __tmp221413
                 '1
                 __tmp221412
                 '#f))
              (let ((__tmp221415
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp221414
                     (let ()
                       (declare (not safe))
                       (##structure-type _self216780_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self216780_
                 __tmp221415
                 '2
                 __tmp221414
                 '#f))
              (let ((__tmp221417
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp221416
                     (let ()
                       (declare (not safe))
                       (##structure-type _self216780_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self216780_
                 __tmp221417
                 '3
                 __tmp221416
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self216780_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self216780_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp221421 (list))
            (__tmp221419
             (let ((__tmp221420
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221420 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp221421
         '(id)
         __tmp221419
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args216655_ (apply make-instance gxc#!type::t _$args216655_)))
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
      (let ((__tmp221424 (list gxc#!type::t))
            (__tmp221422
             (let ((__tmp221423
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221423 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp221424
         '()
         __tmp221422
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args216652_ (apply make-instance gxc#!alias::t _$args216652_)))
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
      (let ((__tmp221427 (list gxc#!type::t))
            (__tmp221425
             (let ((__tmp221426
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221426 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp221427
         '()
         __tmp221425
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args216649_
        (apply make-instance gxc#!procedure::t _$args216649_)))
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
      (let ((__tmp221430 (list gxc#!type::t))
            (__tmp221428
             (let ((__tmp221429
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221429 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp221430
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp221428
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args216646_ (apply make-instance gxc#!class::t _$args216646_)))
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
      (let ((__tmp221433 (list gxc#!procedure::t))
            (__tmp221431
             (let ((__tmp221432
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221432 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp221433
         '()
         __tmp221431
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args216643_
        (apply make-instance gxc#!predicate::t _$args216643_)))
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
      (let ((__tmp221436 (list gxc#!procedure::t))
            (__tmp221434
             (let ((__tmp221435
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221435 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp221436
         '()
         __tmp221434
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args216640_
        (apply make-instance gxc#!constructor::t _$args216640_)))
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
      (let ((__tmp221439 (list gxc#!procedure::t))
            (__tmp221437
             (let ((__tmp221438
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221438 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp221439
         '(slot checked?)
         __tmp221437
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args216637_
        (apply make-instance gxc#!accessor::t _$args216637_)))
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
      (let ((__tmp221442 (list gxc#!procedure::t))
            (__tmp221440
             (let ((__tmp221441
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221441 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp221442
         '(slot checked?)
         __tmp221440
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args216634_
        (apply make-instance gxc#!mutator::t _$args216634_)))
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
      (let ((__tmp221445 (list gxc#!procedure::t))
            (__tmp221443
             (let ((__tmp221444
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221444 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp221445
         '(arity dispatch inline inline-typedecl)
         __tmp221443
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args216631_
        (apply make-instance gxc#!lambda::t _$args216631_)))
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
      (let ((__tmp221448 (list gxc#!procedure::t))
            (__tmp221446
             (let ((__tmp221447
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221447 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp221448
         '(clauses)
         __tmp221446
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args216628_
        (apply make-instance gxc#!case-lambda::t _$args216628_)))
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
      (let ((__tmp221451 (list gxc#!procedure::t))
            (__tmp221449
             (let ((__tmp221450
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221450 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp221451
         '(table dispatch)
         __tmp221449
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args216625_
        (apply make-instance gxc#!kw-lambda::t _$args216625_)))
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
      (let ((__tmp221454 (list gxc#!procedure::t))
            (__tmp221452
             (let ((__tmp221453
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221453 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp221454
         '(keys main)
         __tmp221452
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args216622_
        (apply make-instance gxc#!kw-lambda-primary::t _$args216622_)))
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
      (let ((__tmp221455 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp221455
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args216619_
        (apply make-instance gxc#!primitive::t _$args216619_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp221456 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp221456
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args216616_
        (apply make-instance gxc#!primitive-lambda::t _$args216616_)))
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
      (let ((__tmp221457 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp221457
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args216613_
        (apply make-instance gxc#!primitive-case-lambda::t _$args216613_)))
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
      (lambda (_self216495_
               _id216496_
               _super216497_
               _slots216498_
               _ctor-method216499_
               _struct?216500_
               _final?216501_
               _metaclass216502_)
        (let _lp216504_ ((_rest216506_ _super216497_))
          (let* ((_rest216507216515_ _rest216506_)
                 (_else216509216523_ (lambda () '#!void))
                 (_K216511216529_
                  (lambda (_rest216526_ _super-id216527_)
                    (if (##structure-ref
                         (let ((__tmp221460
                                (let ((__tmp221461
                                       (let ()
                                         (declare (not safe))
                                         (cons _id216496_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp221461))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp221460
                            _super-id216527_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp221458
                               (let ((__tmp221459
                                      (let ()
                                        (declare (not safe))
                                        (cons _id216496_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp221459))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp221458
                           _super-id216527_))
                        '#!void)
                    (let () (declare (not safe)) (_lp216504_ _rest216526_)))))
            (if (let () (declare (not safe)) (##pair? _rest216507216515_))
                (let ((_hd216512216532_
                       (let ()
                         (declare (not safe))
                         (##car _rest216507216515_)))
                      (_tl216513216534_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest216507216515_))))
                  (let* ((_super-id216537_ _hd216512216532_)
                         (_rest216539_ _tl216513216534_))
                    (declare (not safe))
                    (_K216511216529_ _rest216539_ _super-id216537_)))
                '#!void)))
        (let* ((_ctor-method216589_
                (let ((_$e216541_ _ctor-method216499_))
                  (if _$e216541_
                      _$e216541_
                      (let _lp216544_ ((_rest216546_ _super216497_)
                                       (_method216547_ '#f))
                        (let* ((_rest216548216556_ _rest216546_)
                               (_else216550216564_ (lambda () _method216547_))
                               (_K216552216577_
                                (lambda (_rest216567_ _super-id216568_)
                                  (let* ((_klass216570_
                                          (let ((__tmp221462
                                                 (let ((__tmp221463
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id216496_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp221463))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp221462
                                             _super-id216568_)))
                                         (_$e216572_
                                          (##structure-ref
                                           _klass216570_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e216572_
                                        ((lambda (_ctor-method216575_)
                                           (if _method216547_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method216575_
                                                          _method216547_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp216544_
                                                      _rest216567_
                                                      _ctor-method216575_))
                                                   (let ((__tmp221464
                                                          (let ((__tmp221465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id216496_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp221465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp221464
                                                      _method216547_
                                                      _ctor-method216575_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp216544_
                                                  _rest216567_
                                                  _ctor-method216575_))))
                                         _$e216572_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp216544_
                                           _rest216567_
                                           _method216547_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest216548216556_))
                              (let ((_hd216553216580_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest216548216556_)))
                                    (_tl216554216582_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest216548216556_))))
                                (let* ((_super-id216585_ _hd216553216580_)
                                       (_rest216587_ _tl216554216582_))
                                  (declare (not safe))
                                  (_K216552216577_
                                   _rest216587_
                                   _super-id216585_)))
                              (let ()
                                (declare (not safe))
                                (_else216550216564_))))))))
               (_g221466_
                (let ((__tmp221471
                       (lambda (_klass-id216591_)
                         (let ((__tmp221472
                                (##structure-ref
                                 (let ((__tmp221473
                                        (let ((__tmp221474
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id216496_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp221474))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp221473
                                    _klass-id216591_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id216591_ __tmp221472))))
                      (__tmp221468
                       (lambda (_klass-id216593_)
                         (##structure-ref
                          (let ((__tmp221469
                                 (let ((__tmp221470
                                        (let ()
                                          (declare (not safe))
                                          (cons _id216496_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp221470))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp221469
                             _klass-id216593_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp221471
                   __tmp221468
                   eq?
                   identity
                   '()
                   _super216497_))))
          (begin
            (let ((_g221467_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g221466_)
                         (##vector-length _g221466_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g221467_ 2)))
                  (error "Context expects 2 values" _g221467_)))
            (let ((_precedence-list216595_
                   (let () (declare (not safe)) (##vector-ref _g221466_ 0)))
                  (_base-struct216596_
                   (let () (declare (not safe)) (##vector-ref _g221466_ 1))))
              (let ((_fields216598_
                     (let ((__tmp221475
                            (let ((__tmp221476
                                   (let ()
                                     (declare (not safe))
                                     (cons _id216496_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp221476))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp221475
                        _base-struct216596_
                        _precedence-list216595_
                        _slots216498_))))
                (##structure-set! _self216495_ _id216496_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self216495_
                 _super216497_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216495_
                 _precedence-list216595_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216495_
                 _slots216498_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216495_
                 _fields216598_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216495_
                 _ctor-method216589_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216495_
                 _struct?216500_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216495_
                 _final?216501_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216495_
                 _metaclass216502_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self216601_
               _id216602_
               _super216603_
               _precedence-list216604_
               _slots216605_
               _fields216606_
               _constructor216607_
               _struct?216608_
               _final?216609_
               _metaclass216610_
               _methods216611_)
        (##structure-set! _self216601_ _id216602_ '1 gxc#!type::t '#f)
        (##structure-set! _self216601_ _super216603_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self216601_
         _precedence-list216604_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self216601_ _slots216605_ '4 gxc#!class::t '#f)
        (##structure-set! _self216601_ _fields216606_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self216601_
         _constructor216607_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self216601_ _struct?216608_ '7 gxc#!class::t '#f)
        (##structure-set! _self216601_ _final?216609_ '8 gxc#!class::t '#f)
        (##structure-set! _self216601_ _metaclass216610_ '9 gxc#!class::t '#f)
        (if _methods216611_
            (##structure-set!
             _self216601_
             (let ()
               (declare (not safe))
               (list->table _methods216611_ 'test: eq?))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g221478_
        (let ((_g221477_ (let () (declare (not safe)) (##length _g221478_))))
          (cond ((let () (declare (not safe)) (##fx= _g221477_ 8))
                 (apply (lambda (_self216495_
                                 _id216496_
                                 _super216497_
                                 _slots216498_
                                 _ctor-method216499_
                                 _struct?216500_
                                 _final?216501_
                                 _metaclass216502_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self216495_
                             _id216496_
                             _super216497_
                             _slots216498_
                             _ctor-method216499_
                             _struct?216500_
                             _final?216501_
                             _metaclass216502_)))
                        _g221478_))
                ((let () (declare (not safe)) (##fx= _g221477_ 11))
                 (apply (lambda (_self216601_
                                 _id216602_
                                 _super216603_
                                 _precedence-list216604_
                                 _slots216605_
                                 _fields216606_
                                 _constructor216607_
                                 _struct?216608_
                                 _final?216609_
                                 _metaclass216610_
                                 _methods216611_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self216601_
                             _id216602_
                             _super216603_
                             _precedence-list216604_
                             _slots216605_
                             _fields216606_
                             _constructor216607_
                             _struct?216608_
                             _final?216609_
                             _metaclass216610_
                             _methods216611_)))
                        _g221478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g221478_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t221352)
        (let ((__methods221353
               (let ((__tmp221363
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221352 'methods))))
                 (if __tmp221363
                     __tmp221363
                     (error '"Unknown slot" 'methods))))
              (__metaclass221354
               (let ((__tmp221364
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221352 'metaclass))))
                 (if __tmp221364
                     __tmp221364
                     (error '"Unknown slot" 'metaclass))))
              (__struct?221355
               (let ((__tmp221365
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221352 'struct?))))
                 (if __tmp221365
                     __tmp221365
                     (error '"Unknown slot" 'struct?))))
              (__slots221356
               (let ((__tmp221366
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221352 'slots))))
                 (if __tmp221366 __tmp221366 (error '"Unknown slot" 'slots))))
              (__constructor221357
               (let ((__tmp221367
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221352 'constructor))))
                 (if __tmp221367
                     __tmp221367
                     (error '"Unknown slot" 'constructor))))
              (__fields221358
               (let ((__tmp221368
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221352 'fields))))
                 (if __tmp221368 __tmp221368 (error '"Unknown slot" 'fields))))
              (__id221359
               (let ((__tmp221369
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221352 'id))))
                 (if __tmp221369 __tmp221369 (error '"Unknown slot" 'id))))
              (__super221360
               (let ((__tmp221370
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221352 'super))))
                 (if __tmp221370 __tmp221370 (error '"Unknown slot" 'super))))
              (__final?221361
               (let ((__tmp221371
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221352 'final?))))
                 (if __tmp221371 __tmp221371 (error '"Unknown slot" 'final?))))
              (__precedence-list221362
               (let ((__tmp221372
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221352 'precedence-list))))
                 (if __tmp221372
                     __tmp221372
                     (error '"Unknown slot" 'precedence-list)))))
          (lambda _g221480_
            (let ((_g221479_
                   (let () (declare (not safe)) (##length _g221480_))))
              (cond ((let () (declare (not safe)) (##fx= _g221479_ 8))
                     (apply (lambda (_self216495_
                                     _id216496_
                                     _super216497_
                                     _slots216498_
                                     _ctor-method216499_
                                     _struct?216500_
                                     _final?216501_
                                     _metaclass216502_)
                              (let _lp216504_ ((_rest216506_ _super216497_))
                                (let* ((_rest216507216515_ _rest216506_)
                                       (_else216509216523_ (lambda () '#!void))
                                       (_K216511216529_
                                        (lambda (_rest216526_ _super-id216527_)
                                          (if (##structure-ref
                                               (let ((__tmp221483
                                                      (let ((__tmp221484
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id216496_ '()))))
                (declare (not safe))
                (cons '!class __tmp221484))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp221483
                                                  _super-id216527_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp221481
                                                     (let ((__tmp221482
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id216496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp221482))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp221481
                                                 _super-id216527_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp216504_ _rest216526_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest216507216515_))
                                      (let ((_hd216512216532_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest216507216515_)))
                                            (_tl216513216534_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest216507216515_))))
                                        (let* ((_super-id216537_
                                                _hd216512216532_)
                                               (_rest216539_ _tl216513216534_))
                                          (declare (not safe))
                                          (_K216511216529_
                                           _rest216539_
                                           _super-id216537_)))
                                      '#!void)))
                              (let* ((_ctor-method216589_
                                      (let ((_$e216541_ _ctor-method216499_))
                                        (if _$e216541_
                                            _$e216541_
                                            (let _lp216544_ ((_rest216546_
                                                              _super216497_)
                                                             (_method216547_
                                                              '#f))
                                              (let* ((_rest216548216556_
                                                      _rest216546_)
                                                     (_else216550216564_
                                                      (lambda ()
                                                        _method216547_))
                                                     (_K216552216577_
                                                      (lambda (_rest216567_
                                                               _super-id216568_)
                                                        (let* ((_klass216570_
                                                                (let ((__tmp221485
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp221486
                                      (let ()
                                        (declare (not safe))
                                        (cons _id216496_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp221486))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp221485
                           _super-id216568_)))
                       (_$e216572_
                        (##structure-ref _klass216570_ '6 gxc#!class::t '#f)))
                  (if _$e216572_
                      ((lambda (_ctor-method216575_)
                         (if _method216547_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method216575_ _method216547_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp216544_
                                    _rest216567_
                                    _ctor-method216575_))
                                 (let ((__tmp221487
                                        (let ((__tmp221488
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id216496_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp221488))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp221487
                                    _method216547_
                                    _ctor-method216575_)))
                             (let ()
                               (declare (not safe))
                               (_lp216544_ _rest216567_ _ctor-method216575_))))
                       _$e216572_)
                      (let ()
                        (declare (not safe))
                        (_lp216544_ _rest216567_ _method216547_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest216548216556_))
                                                    (let ((_hd216553216580_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest216548216556_)))
                                                          (_tl216554216582_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest216548216556_))))
                                                      (let* ((_super-id216585_
                                                              _hd216553216580_)
                                                             (_rest216587_
                                                              _tl216554216582_))
                                                        (declare (not safe))
                                                        (_K216552216577_
                                                         _rest216587_
                                                         _super-id216585_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else216550216564_))))))))
                                     (_g221489_
                                      (let ((__tmp221494
                                             (lambda (_klass-id216591_)
                                               (let ((__tmp221495
                                                      (##structure-ref
                                                       (let ((__tmp221496
                                                              (let ((__tmp221497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id216496_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp221497))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp221496 _klass-id216591_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id216591_
                                                       __tmp221495))))
                                            (__tmp221491
                                             (lambda (_klass-id216593_)
                                               (##structure-ref
                                                (let ((__tmp221492
                                                       (let ((__tmp221493
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id216496_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp221493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp221492
                                                   _klass-id216593_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp221494
                                         __tmp221491
                                         eq?
                                         identity
                                         '()
                                         _super216497_))))
                                (begin
                                  (let ((_g221490_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221489_)
                                               (##vector-length _g221489_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221490_ 2)))
                                        (error "Context expects 2 values"
                                               _g221490_)))
                                  (let ((_precedence-list216595_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g221489_ 0)))
                                        (_base-struct216596_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g221489_ 1))))
                                    (let ((_fields216598_
                                           (let ((__tmp221498
                                                  (let ((__tmp221499
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id216496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp221499))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp221498
                                              _base-struct216596_
                                              _precedence-list216595_
                                              _slots216498_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216495_
                                         _id216496_
                                         __id221359
                                         __t221352
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216495_
                                         _super216497_
                                         __super221360
                                         __t221352
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216495_
                                         _precedence-list216595_
                                         __precedence-list221362
                                         __t221352
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216495_
                                         _slots216498_
                                         __slots221356
                                         __t221352
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216495_
                                         _fields216598_
                                         __fields221358
                                         __t221352
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216495_
                                         _ctor-method216589_
                                         __constructor221357
                                         __t221352
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216495_
                                         _struct?216500_
                                         __struct?221355
                                         __t221352
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216495_
                                         _final?216501_
                                         __final?221361
                                         __t221352
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216495_
                                         _metaclass216502_
                                         __metaclass221354
                                         __t221352
                                         '#f)))))))
                            _g221480_))
                    ((let () (declare (not safe)) (##fx= _g221479_ 11))
                     (apply (lambda (_self216601_
                                     _id216602_
                                     _super216603_
                                     _precedence-list216604_
                                     _slots216605_
                                     _fields216606_
                                     _constructor216607_
                                     _struct?216608_
                                     _final?216609_
                                     _metaclass216610_
                                     _methods216611_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216601_
                                 _id216602_
                                 __id221359
                                 __t221352
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216601_
                                 _super216603_
                                 __super221360
                                 __t221352
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216601_
                                 _precedence-list216604_
                                 __precedence-list221362
                                 __t221352
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216601_
                                 _slots216605_
                                 __slots221356
                                 __t221352
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216601_
                                 _fields216606_
                                 __fields221358
                                 __t221352
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216601_
                                 _constructor216607_
                                 __constructor221357
                                 __t221352
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216601_
                                 _struct?216608_
                                 __struct?221355
                                 __t221352
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216601_
                                 _final?216609_
                                 __final?221361
                                 __t221352
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216601_
                                 _metaclass216610_
                                 __metaclass221354
                                 __t221352
                                 '#f))
                              (if _methods216611_
                                  (let ((__tmp221500
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods216611_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self216601_
                                     __tmp221500
                                     __methods221353
                                     __t221352
                                     '#f))
                                  '#!void))
                            _g221480_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g221480_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where216347_
               _base-struct216348_
               _precedence-list216349_
               _direct-slots216350_)
        (let* ((_base-fields216352_
                (if _base-struct216348_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where216347_
                        _base-struct216348_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields216354_ (reverse _base-fields216352_))
               (_seen-slots216362_
                (let ((_tab216356_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g216357216359_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab216356_ _g216357216359_ '#t)))
                   _base-fields216352_)
                  _tab216356_))
               (_process-slot216366_
                (lambda (_slot216364_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots216362_ _slot216364_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots216362_ _slot216364_ '#t))
                        (set! _r-fields216354_
                              (let ()
                                (declare (not safe))
                                (cons _slot216364_ _r-fields216354_))))))))
          (for-each
           (lambda (_mixin216369_)
             (let ((_klass216371_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where216347_
                       _mixin216369_))))
               (if (##structure-ref _klass216371_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot216366_
                    (##structure-ref _klass216371_ '5 gxc#!class::t '#f)))))
           _precedence-list216349_)
          (for-each _process-slot216366_ _direct-slots216350_)
          (reverse _r-fields216354_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass216306_ _slot216307_)
        (let _lp216309_ ((_rest216311_
                          (##structure-ref _klass216306_ '5 gxc#!class::t '#f))
                         (_offset216312_ '1))
          (let* ((_rest216313216321_ _rest216311_)
                 (_else216315216329_
                  (lambda ()
                    (let ((__tmp221502
                           (##structure-ref _klass216306_ '1 gxc#!type::t '#f))
                          (__tmp221501
                           (##structure-ref
                            _klass216306_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp221502
                       __tmp221501
                       _slot216307_))))
                 (_K216317216335_
                  (lambda (_rest216332_ _s216333_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s216333_ _slot216307_))
                        _offset216312_
                        (let ((__tmp221503
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset216312_ '1))))
                          (declare (not safe))
                          (_lp216309_ _rest216332_ __tmp221503))))))
            (if (let () (declare (not safe)) (##pair? _rest216313216321_))
                (let ((_hd216318216338_
                       (let ()
                         (declare (not safe))
                         (##car _rest216313216321_)))
                      (_tl216319216340_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest216313216321_))))
                  (let* ((_s216343_ _hd216318216338_)
                         (_rest216345_ _tl216319216340_))
                    (declare (not safe))
                    (_K216317216335_ _rest216345_ _s216343_)))
                (let () (declare (not safe)) (_else216315216329_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass216264_ _slot216265_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass216264_ _slot216265_))
            _klass216264_
            (let _lp216267_ ((_rest216269_
                              (##structure-ref
                               _klass216264_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest216270216278_ _rest216269_)
                     (_else216272216286_ (lambda () '#f))
                     (_K216274216294_
                      (lambda (_rest216289_ _super216290_)
                        (let ((_super-class216292_
                               (let ((__tmp221504
                                      (let ((__tmp221505
                                             (let ((__tmp221507
                                                    (##structure-ref
                                                     _klass216264_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp221506
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot216265_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp221507
                                                     __tmp221506))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp221505))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp221504
                                  _super216290_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class216292_
                                 _slot216265_))
                              _super-class216292_
                              (let ()
                                (declare (not safe))
                                (_lp216267_ _rest216289_)))))))
                (if (let () (declare (not safe)) (##pair? _rest216270216278_))
                    (let ((_hd216275216297_
                           (let ()
                             (declare (not safe))
                             (##car _rest216270216278_)))
                          (_tl216276216299_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest216270216278_))))
                      (let* ((_super216302_ _hd216275216297_)
                             (_rest216304_ _tl216276216299_))
                        (declare (not safe))
                        (_K216274216294_ _rest216304_ _super216302_)))
                    (let () (declare (not safe)) (_else216272216286_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass216261_ _slot216262_)
        (if (##structure-ref _klass216261_ '7 gxc#!class::t '#f)
            (memq _slot216262_
                  (##structure-ref _klass216261_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self216258_ _id216259_)
        (##structure-set! _self216258_ _id216259_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t221373)
        (let ((__id221374
               (let ((__tmp221375
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221373 'id))))
                 (if __tmp221375 __tmp221375 (error '"Unknown slot" 'id)))))
          (lambda (_self216258_ _id216259_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216258_
               _id216259_
               __id221374
               __t221373
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
      (lambda (_self216133_ _id216134_)
        (##structure-set! _self216133_ _id216134_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t221376)
        (let ((__id221377
               (let ((__tmp221378
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221376 'id))))
                 (if __tmp221378 __tmp221378 (error '"Unknown slot" 'id)))))
          (lambda (_self216133_ _id216134_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216133_
               _id216134_
               __id221377
               __t221376
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
      (lambda (_self216006_ _id216007_ _slot216008_ _checked?216009_)
        (##structure-set! _self216006_ _id216007_ '1 gxc#!type::t '#f)
        (##structure-set! _self216006_ _slot216008_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self216006_
         _checked?216009_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t221379)
        (let ((__checked?221380
               (let ((__tmp221383
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221379 'checked?))))
                 (if __tmp221383
                     __tmp221383
                     (error '"Unknown slot" 'checked?))))
              (__id221381
               (let ((__tmp221384
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221379 'id))))
                 (if __tmp221384 __tmp221384 (error '"Unknown slot" 'id))))
              (__slot221382
               (let ((__tmp221385
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221379 'slot))))
                 (if __tmp221385 __tmp221385 (error '"Unknown slot" 'slot)))))
          (lambda (_self216006_ _id216007_ _slot216008_ _checked?216009_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216006_
               _id216007_
               __id221381
               __t221379
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216006_
               _slot216008_
               __slot221382
               __t221379
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216006_
               _checked?216009_
               __checked?221380
               __t221379
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
      (lambda (_self215879_ _id215880_ _slot215881_ _checked?215882_)
        (##structure-set! _self215879_ _id215880_ '1 gxc#!type::t '#f)
        (##structure-set! _self215879_ _slot215881_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self215879_
         _checked?215882_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t221386)
        (let ((__checked?221387
               (let ((__tmp221390
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221386 'checked?))))
                 (if __tmp221390
                     __tmp221390
                     (error '"Unknown slot" 'checked?))))
              (__id221388
               (let ((__tmp221391
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221386 'id))))
                 (if __tmp221391 __tmp221391 (error '"Unknown slot" 'id))))
              (__slot221389
               (let ((__tmp221392
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221386 'slot))))
                 (if __tmp221392 __tmp221392 (error '"Unknown slot" 'slot)))))
          (lambda (_self215879_ _id215880_ _slot215881_ _checked?215882_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215879_
               _id215880_
               __id221388
               __t221386
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215879_
               _slot215881_
               __slot221389
               __t221386
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215879_
               _checked?215882_
               __checked?221387
               __t221386
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
      (lambda (_self215723_
               _id215724_
               _arity215725_
               _dispatch215726_
               _inline215727_
               _typedecl215728_)
        (if (let ((__tmp221513
                   (let ()
                     (declare (not safe))
                     (##structure-length _self215723_))))
              (declare (not safe))
              (##fx< '5 __tmp221513))
            (begin
              (let ((__tmp221508
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215723_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215723_
                 _id215724_
                 '1
                 __tmp221508
                 '#f))
              (let ((__tmp221509
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215723_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215723_
                 _arity215725_
                 '2
                 __tmp221509
                 '#f))
              (let ((__tmp221510
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215723_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215723_
                 _dispatch215726_
                 '3
                 __tmp221510
                 '#f))
              (let ((__tmp221511
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215723_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215723_
                 _inline215727_
                 '4
                 __tmp221511
                 '#f))
              (let ((__tmp221512
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215723_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215723_
                 _typedecl215728_
                 '5
                 __tmp221512
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self215723_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self215723_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self215733_ _id215734_ _arity215735_ _dispatch215736_)
        (let* ((_inline215738_ '#f) (_typedecl215740_ '#f))
          (if (let ((__tmp221519
                     (let ()
                       (declare (not safe))
                       (##structure-length _self215733_))))
                (declare (not safe))
                (##fx< '5 __tmp221519))
              (begin
                (let ((__tmp221514
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215733_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215733_
                   _id215734_
                   '1
                   __tmp221514
                   '#f))
                (let ((__tmp221515
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215733_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215733_
                   _arity215735_
                   '2
                   __tmp221515
                   '#f))
                (let ((__tmp221516
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215733_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215733_
                   _dispatch215736_
                   '3
                   __tmp221516
                   '#f))
                (let ((__tmp221517
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215733_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215733_
                   _inline215738_
                   '4
                   __tmp221517
                   '#f))
                (let ((__tmp221518
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215733_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215733_
                   _typedecl215740_
                   '5
                   __tmp221518
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self215733_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self215733_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self215742_
               _id215743_
               _arity215744_
               _dispatch215745_
               _inline215746_)
        (let ((_typedecl215748_ '#f))
          (if (let ((__tmp221525
                     (let ()
                       (declare (not safe))
                       (##structure-length _self215742_))))
                (declare (not safe))
                (##fx< '5 __tmp221525))
              (begin
                (let ((__tmp221520
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215742_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215742_
                   _id215743_
                   '1
                   __tmp221520
                   '#f))
                (let ((__tmp221521
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215742_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215742_
                   _arity215744_
                   '2
                   __tmp221521
                   '#f))
                (let ((__tmp221522
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215742_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215742_
                   _dispatch215745_
                   '3
                   __tmp221522
                   '#f))
                (let ((__tmp221523
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215742_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215742_
                   _inline215746_
                   '4
                   __tmp221523
                   '#f))
                (let ((__tmp221524
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215742_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215742_
                   _typedecl215748_
                   '5
                   __tmp221524
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self215742_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self215742_)))))))
    (define gxc#!lambda:::init!
      (lambda _g221527_
        (let ((_g221526_ (let () (declare (not safe)) (##length _g221527_))))
          (cond ((let () (declare (not safe)) (##fx= _g221526_ 4))
                 (apply (lambda (_self215733_
                                 _id215734_
                                 _arity215735_
                                 _dispatch215736_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self215733_
                             _id215734_
                             _arity215735_
                             _dispatch215736_)))
                        _g221527_))
                ((let () (declare (not safe)) (##fx= _g221526_ 5))
                 (apply (lambda (_self215742_
                                 _id215743_
                                 _arity215744_
                                 _dispatch215745_
                                 _inline215746_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self215742_
                             _id215743_
                             _arity215744_
                             _dispatch215745_
                             _inline215746_)))
                        _g221527_))
                ((let () (declare (not safe)) (##fx= _g221526_ 6))
                 (apply (lambda (_self215750_
                                 _id215751_
                                 _arity215752_
                                 _dispatch215753_
                                 _inline215754_
                                 _typedecl215755_)
                          (if (let ((__tmp221533
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self215750_))))
                                (declare (not safe))
                                (##fx< '5 __tmp221533))
                              (begin
                                (let ((__tmp221528
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215750_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215750_
                                   _id215751_
                                   '1
                                   __tmp221528
                                   '#f))
                                (let ((__tmp221529
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215750_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215750_
                                   _arity215752_
                                   '2
                                   __tmp221529
                                   '#f))
                                (let ((__tmp221530
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215750_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215750_
                                   _dispatch215753_
                                   '3
                                   __tmp221530
                                   '#f))
                                (let ((__tmp221531
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215750_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215750_
                                   _inline215754_
                                   '4
                                   __tmp221531
                                   '#f))
                                (let ((__tmp221532
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215750_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215750_
                                   _typedecl215755_
                                   '5
                                   __tmp221532
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self215750_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self215750_)))))
                        _g221527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g221527_))))))
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
      (lambda (_self215475_ . _args215476_)
        (apply struct-instance-init! _self215475_ _args215476_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type215350_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type215350_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type215350_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass215343_)
        (let ((_$e215345_
               (##structure-ref _klass215343_ '10 gxc#!class::t '#f)))
          (if _$e215345_
              _$e215345_
              (let ((_tab215348_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass215343_
                 _tab215348_
                 '10
                 gxc#!class::t
                 '#f)
                _tab215348_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass215334_ _method215335_)
        (let ((_tab215336215338_
               (##structure-ref _klass215334_ '10 gxc#!class::t '#f)))
          (if _tab215336215338_
              (let ((_tab215341_ _tab215336215338_))
                (declare (not safe))
                (table-ref _tab215341_ _method215335_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type215331_ _method215332_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type215331_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type215331_ _method215332_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym215315_ _type215316_ _local?215317_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type215316_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym215315_
                   _type215316_))
        (let ((__tmp221534
               (let () (declare (not safe)) (struct->list _type215316_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym215315_ '" " __tmp221534))
        (let ((__tmp221535
               (if _local?215317_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp221535 _sym215315_ _type215316_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym215322_ _type215323_)
        (let ((_local?215325_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym215322_
           _type215323_
           _local?215325_))))
    (define gxc#optimizer-declare-type!
      (lambda _g221537_
        (let ((_g221536_ (let () (declare (not safe)) (##length _g221537_))))
          (cond ((let () (declare (not safe)) (##fx= _g221536_ 2))
                 (apply (lambda (_sym215322_ _type215323_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym215322_
                             _type215323_)))
                        _g221537_))
                ((let () (declare (not safe)) (##fx= _g221536_ 3))
                 (apply (lambda (_sym215327_ _type215328_ _local?215329_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym215327_
                             _type215328_
                             _local?215329_)))
                        _g221537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g221537_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym215301_ _local?215302_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym215301_))
        (let ((__tmp221538
               (if _local?215302_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp221538 _sym215301_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym215307_)
        (let ((_local?215309_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym215307_ _local?215309_))))
    (define gxc#optimizer-clear-type!
      (lambda _g221540_
        (let ((_g221539_ (let () (declare (not safe)) (##length _g221540_))))
          (cond ((let () (declare (not safe)) (##fx= _g221539_ 1))
                 (apply (lambda (_sym215307_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym215307_)))
                        _g221540_))
                ((let () (declare (not safe)) (##fx= _g221539_ 2))
                 (apply (lambda (_sym215311_ _local?215312_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym215311_
                             _local?215312_)))
                        _g221540_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g221540_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t215274_ _method215275_ _sym215276_ _rebind?215277_)
        (let* ((_type215279_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t215274_)))
               (_$e215281_
                (let () (declare (not safe)) (gxc#!type-vtab _type215279_))))
          (if _$e215281_
              ((lambda (_vtab215284_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab215284_ _method215275_))
                     (if _rebind?215277_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t215274_
                              '" "
                              _method215275_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab215284_
                              _method215275_
                              _sym215276_)))
                         (let ((__tmp221545
                                (let ((__tmp221546
                                       (let ((__tmp221547
                                              (let ((__tmp221548
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym215276_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method215275_
                                                      __tmp221548))))
                                         (declare (not safe))
                                         (cons _type-t215274_ __tmp221547))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp221546))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp221545
                            _method215275_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t215274_
                          '" "
                          _method215275_
                          '" => "
                          _sym215276_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab215284_
                          _method215275_
                          _sym215276_)))))
               _$e215281_)
              (if (let () (declare (not safe)) (not _type215279_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t215274_))
                  (let ((__tmp221541
                         (let ((__tmp221542
                                (let ((__tmp221543
                                       (let ((__tmp221544
                                              (let ()
                                                (declare (not safe))
                                                (cons _method215275_ '()))))
                                         (declare (not safe))
                                         (cons _sym215276_ __tmp221544))))
                                  (declare (not safe))
                                  (cons _type-t215274_ __tmp221543))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp221542))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp221541
                     _type215279_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t215289_ _method215290_ _sym215291_)
        (let ((_rebind?215293_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t215289_
           _method215290_
           _sym215291_
           _rebind?215293_))))
    (define gxc#optimizer-declare-method!
      (lambda _g221550_
        (let ((_g221549_ (let () (declare (not safe)) (##length _g221550_))))
          (cond ((let () (declare (not safe)) (##fx= _g221549_ 3))
                 (apply (lambda (_type-t215289_ _method215290_ _sym215291_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t215289_
                             _method215290_
                             _sym215291_)))
                        _g221550_))
                ((let () (declare (not safe)) (##fx= _g221549_ 4))
                 (apply (lambda (_type-t215295_
                                 _method215296_
                                 _sym215297_
                                 _rebind?215298_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t215295_
                             _method215296_
                             _sym215297_
                             _rebind?215298_)))
                        _g221550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g221550_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym215262_)
        (let ((_$e215270_
               (let ((_ht215263215265_ (gxc#current-compile-local-type)))
                 (if _ht215263215265_
                     (let ((_ht215268_ _ht215263215265_))
                       (declare (not safe))
                       (table-ref _ht215268_ _sym215262_ '#f))
                     '#f))))
          (if _$e215270_
              _$e215270_
              (let ((__tmp221551
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp221551 _sym215262_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym215254_)
        (let ((_type215255215257_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym215254_))))
          (if _type215255215257_
              (let ((_type215260_ _type215255215257_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type215260_ 'gxc#!alias::t))
                    (let ((__tmp221552
                           (##structure-ref _type215260_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp221552))
                    _type215260_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where215246_ _klass-id215247_)
        (let ((_$e215249_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id215247_))))
          (if _$e215249_
              ((lambda (_klass215252_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass215252_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where215246_
                        _klass-id215247_
                        _klass215252_)))
                 _klass215252_)
               _$e215249_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where215246_
                 _klass-id215247_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t215243_ _method215244_)
        (let ((__tmp221553
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t215243_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp221553 _method215244_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym215241_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym215241_))
        (let ((__tmp221554
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp221554 _sym215241_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym215239_)
        (let ((__tmp221555
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp221555 _sym215239_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx215237_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx215237_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx215237_))
            (let () (declare (not safe)) (gx#stx-e _stx215237_)))))))
