(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707846532)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp221415 (list))
            (__tmp221413
             (let ((__tmp221414
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221414 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp221415
         '(type ssxi methods)
         __tmp221413
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args216786_
        (apply make-instance gxc#optimizer-info::t _$args216786_)))
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
      (lambda (_self216784_)
        (if (let ((__tmp221422
                   (let ()
                     (declare (not safe))
                     (##structure-length _self216784_))))
              (declare (not safe))
              (##fx< '3 __tmp221422))
            (begin
              (let ((__tmp221417
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp221416
                     (let ()
                       (declare (not safe))
                       (##structure-type _self216784_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self216784_
                 __tmp221417
                 '1
                 __tmp221416
                 '#f))
              (let ((__tmp221419
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp221418
                     (let ()
                       (declare (not safe))
                       (##structure-type _self216784_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self216784_
                 __tmp221419
                 '2
                 __tmp221418
                 '#f))
              (let ((__tmp221421
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp221420
                     (let ()
                       (declare (not safe))
                       (##structure-type _self216784_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self216784_
                 __tmp221421
                 '3
                 __tmp221420
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self216784_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self216784_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp221425 (list))
            (__tmp221423
             (let ((__tmp221424
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221424 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp221425
         '(id)
         __tmp221423
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args216659_ (apply make-instance gxc#!type::t _$args216659_)))
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
      (let ((__tmp221428 (list gxc#!type::t))
            (__tmp221426
             (let ((__tmp221427
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221427 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp221428
         '()
         __tmp221426
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args216656_ (apply make-instance gxc#!alias::t _$args216656_)))
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
      (let ((__tmp221431 (list gxc#!type::t))
            (__tmp221429
             (let ((__tmp221430
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221430 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp221431
         '()
         __tmp221429
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args216653_
        (apply make-instance gxc#!procedure::t _$args216653_)))
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
      (let ((__tmp221434 (list gxc#!type::t))
            (__tmp221432
             (let ((__tmp221433
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221433 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp221434
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp221432
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args216650_ (apply make-instance gxc#!class::t _$args216650_)))
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
      (let ((__tmp221437 (list gxc#!procedure::t))
            (__tmp221435
             (let ((__tmp221436
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221436 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp221437
         '()
         __tmp221435
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args216647_
        (apply make-instance gxc#!predicate::t _$args216647_)))
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
      (let ((__tmp221440 (list gxc#!procedure::t))
            (__tmp221438
             (let ((__tmp221439
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221439 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp221440
         '()
         __tmp221438
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args216644_
        (apply make-instance gxc#!constructor::t _$args216644_)))
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
      (let ((__tmp221443 (list gxc#!procedure::t))
            (__tmp221441
             (let ((__tmp221442
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221442 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp221443
         '(slot checked?)
         __tmp221441
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args216641_
        (apply make-instance gxc#!accessor::t _$args216641_)))
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
      (let ((__tmp221446 (list gxc#!procedure::t))
            (__tmp221444
             (let ((__tmp221445
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221445 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp221446
         '(slot checked?)
         __tmp221444
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args216638_
        (apply make-instance gxc#!mutator::t _$args216638_)))
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
      (let ((__tmp221449 (list gxc#!procedure::t))
            (__tmp221447
             (let ((__tmp221448
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221448 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp221449
         '(arity dispatch inline inline-typedecl)
         __tmp221447
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args216635_
        (apply make-instance gxc#!lambda::t _$args216635_)))
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
      (let ((__tmp221452 (list gxc#!procedure::t))
            (__tmp221450
             (let ((__tmp221451
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221451 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp221452
         '(clauses)
         __tmp221450
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args216632_
        (apply make-instance gxc#!case-lambda::t _$args216632_)))
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
      (let ((__tmp221455 (list gxc#!procedure::t))
            (__tmp221453
             (let ((__tmp221454
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221454 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp221455
         '(table dispatch)
         __tmp221453
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args216629_
        (apply make-instance gxc#!kw-lambda::t _$args216629_)))
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
      (let ((__tmp221458 (list gxc#!procedure::t))
            (__tmp221456
             (let ((__tmp221457
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221457 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp221458
         '(keys main)
         __tmp221456
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args216626_
        (apply make-instance gxc#!kw-lambda-primary::t _$args216626_)))
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
      (let ((__tmp221459 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp221459
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args216623_
        (apply make-instance gxc#!primitive::t _$args216623_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp221460 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp221460
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args216620_
        (apply make-instance gxc#!primitive-lambda::t _$args216620_)))
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
      (let ((__tmp221461 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp221461
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args216617_
        (apply make-instance gxc#!primitive-case-lambda::t _$args216617_)))
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
      (lambda (_self216499_
               _id216500_
               _super216501_
               _slots216502_
               _ctor-method216503_
               _struct?216504_
               _final?216505_
               _metaclass216506_)
        (let _lp216508_ ((_rest216510_ _super216501_))
          (let* ((_rest216511216519_ _rest216510_)
                 (_else216513216527_ (lambda () '#!void))
                 (_K216515216533_
                  (lambda (_rest216530_ _super-id216531_)
                    (if (##structure-ref
                         (let ((__tmp221464
                                (let ((__tmp221465
                                       (let ()
                                         (declare (not safe))
                                         (cons _id216500_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp221465))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp221464
                            _super-id216531_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp221462
                               (let ((__tmp221463
                                      (let ()
                                        (declare (not safe))
                                        (cons _id216500_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp221463))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp221462
                           _super-id216531_))
                        '#!void)
                    (let () (declare (not safe)) (_lp216508_ _rest216530_)))))
            (if (let () (declare (not safe)) (##pair? _rest216511216519_))
                (let ((_hd216516216536_
                       (let ()
                         (declare (not safe))
                         (##car _rest216511216519_)))
                      (_tl216517216538_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest216511216519_))))
                  (let* ((_super-id216541_ _hd216516216536_)
                         (_rest216543_ _tl216517216538_))
                    (declare (not safe))
                    (_K216515216533_ _rest216543_ _super-id216541_)))
                '#!void)))
        (let* ((_ctor-method216593_
                (let ((_$e216545_ _ctor-method216503_))
                  (if _$e216545_
                      _$e216545_
                      (let _lp216548_ ((_rest216550_ _super216501_)
                                       (_method216551_ '#f))
                        (let* ((_rest216552216560_ _rest216550_)
                               (_else216554216568_ (lambda () _method216551_))
                               (_K216556216581_
                                (lambda (_rest216571_ _super-id216572_)
                                  (let* ((_klass216574_
                                          (let ((__tmp221466
                                                 (let ((__tmp221467
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id216500_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp221467))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp221466
                                             _super-id216572_)))
                                         (_$e216576_
                                          (##structure-ref
                                           _klass216574_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e216576_
                                        ((lambda (_ctor-method216579_)
                                           (if _method216551_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method216579_
                                                          _method216551_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp216548_
                                                      _rest216571_
                                                      _ctor-method216579_))
                                                   (let ((__tmp221468
                                                          (let ((__tmp221469
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id216500_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp221469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp221468
                                                      _method216551_
                                                      _ctor-method216579_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp216548_
                                                  _rest216571_
                                                  _ctor-method216579_))))
                                         _$e216576_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp216548_
                                           _rest216571_
                                           _method216551_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest216552216560_))
                              (let ((_hd216557216584_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest216552216560_)))
                                    (_tl216558216586_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest216552216560_))))
                                (let* ((_super-id216589_ _hd216557216584_)
                                       (_rest216591_ _tl216558216586_))
                                  (declare (not safe))
                                  (_K216556216581_
                                   _rest216591_
                                   _super-id216589_)))
                              (let ()
                                (declare (not safe))
                                (_else216554216568_))))))))
               (_g221470_
                (let ((__tmp221475
                       (lambda (_klass-id216595_)
                         (let ((__tmp221476
                                (##structure-ref
                                 (let ((__tmp221477
                                        (let ((__tmp221478
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id216500_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp221478))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp221477
                                    _klass-id216595_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id216595_ __tmp221476))))
                      (__tmp221472
                       (lambda (_klass-id216597_)
                         (##structure-ref
                          (let ((__tmp221473
                                 (let ((__tmp221474
                                        (let ()
                                          (declare (not safe))
                                          (cons _id216500_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp221474))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp221473
                             _klass-id216597_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp221475
                   __tmp221472
                   eq?
                   identity
                   '()
                   _super216501_))))
          (begin
            (let ((_g221471_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g221470_)
                         (##vector-length _g221470_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g221471_ 2)))
                  (error "Context expects 2 values" _g221471_)))
            (let ((_precedence-list216599_
                   (let () (declare (not safe)) (##vector-ref _g221470_ 0)))
                  (_base-struct216600_
                   (let () (declare (not safe)) (##vector-ref _g221470_ 1))))
              (let ((_fields216602_
                     (let ((__tmp221479
                            (let ((__tmp221480
                                   (let ()
                                     (declare (not safe))
                                     (cons _id216500_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp221480))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp221479
                        _base-struct216600_
                        _precedence-list216599_
                        _slots216502_))))
                (##structure-set! _self216499_ _id216500_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self216499_
                 _super216501_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216499_
                 _precedence-list216599_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216499_
                 _slots216502_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216499_
                 _fields216602_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216499_
                 _ctor-method216593_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216499_
                 _struct?216504_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216499_
                 _final?216505_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216499_
                 _metaclass216506_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self216605_
               _id216606_
               _super216607_
               _precedence-list216608_
               _slots216609_
               _fields216610_
               _constructor216611_
               _struct?216612_
               _final?216613_
               _metaclass216614_
               _methods216615_)
        (##structure-set! _self216605_ _id216606_ '1 gxc#!type::t '#f)
        (##structure-set! _self216605_ _super216607_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self216605_
         _precedence-list216608_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self216605_ _slots216609_ '4 gxc#!class::t '#f)
        (##structure-set! _self216605_ _fields216610_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self216605_
         _constructor216611_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self216605_ _struct?216612_ '7 gxc#!class::t '#f)
        (##structure-set! _self216605_ _final?216613_ '8 gxc#!class::t '#f)
        (##structure-set! _self216605_ _metaclass216614_ '9 gxc#!class::t '#f)
        (if _methods216615_
            (##structure-set!
             _self216605_
             (let ()
               (declare (not safe))
               (list->table _methods216615_ 'test: eq?))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g221482_
        (let ((_g221481_ (let () (declare (not safe)) (##length _g221482_))))
          (cond ((let () (declare (not safe)) (##fx= _g221481_ 8))
                 (apply (lambda (_self216499_
                                 _id216500_
                                 _super216501_
                                 _slots216502_
                                 _ctor-method216503_
                                 _struct?216504_
                                 _final?216505_
                                 _metaclass216506_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self216499_
                             _id216500_
                             _super216501_
                             _slots216502_
                             _ctor-method216503_
                             _struct?216504_
                             _final?216505_
                             _metaclass216506_)))
                        _g221482_))
                ((let () (declare (not safe)) (##fx= _g221481_ 11))
                 (apply (lambda (_self216605_
                                 _id216606_
                                 _super216607_
                                 _precedence-list216608_
                                 _slots216609_
                                 _fields216610_
                                 _constructor216611_
                                 _struct?216612_
                                 _final?216613_
                                 _metaclass216614_
                                 _methods216615_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self216605_
                             _id216606_
                             _super216607_
                             _precedence-list216608_
                             _slots216609_
                             _fields216610_
                             _constructor216611_
                             _struct?216612_
                             _final?216613_
                             _metaclass216614_
                             _methods216615_)))
                        _g221482_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g221482_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t221356)
        (let ((__slots221357
               (let ((__tmp221367
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221356 'slots))))
                 (if __tmp221367 __tmp221367 (error '"Unknown slot" 'slots))))
              (__fields221358
               (let ((__tmp221368
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221356 'fields))))
                 (if __tmp221368 __tmp221368 (error '"Unknown slot" 'fields))))
              (__constructor221359
               (let ((__tmp221369
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221356 'constructor))))
                 (if __tmp221369
                     __tmp221369
                     (error '"Unknown slot" 'constructor))))
              (__methods221360
               (let ((__tmp221370
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221356 'methods))))
                 (if __tmp221370
                     __tmp221370
                     (error '"Unknown slot" 'methods))))
              (__id221361
               (let ((__tmp221371
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221356 'id))))
                 (if __tmp221371 __tmp221371 (error '"Unknown slot" 'id))))
              (__super221362
               (let ((__tmp221372
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221356 'super))))
                 (if __tmp221372 __tmp221372 (error '"Unknown slot" 'super))))
              (__precedence-list221363
               (let ((__tmp221373
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221356 'precedence-list))))
                 (if __tmp221373
                     __tmp221373
                     (error '"Unknown slot" 'precedence-list))))
              (__metaclass221364
               (let ((__tmp221374
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221356 'metaclass))))
                 (if __tmp221374
                     __tmp221374
                     (error '"Unknown slot" 'metaclass))))
              (__struct?221365
               (let ((__tmp221375
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221356 'struct?))))
                 (if __tmp221375
                     __tmp221375
                     (error '"Unknown slot" 'struct?))))
              (__final?221366
               (let ((__tmp221376
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221356 'final?))))
                 (if __tmp221376
                     __tmp221376
                     (error '"Unknown slot" 'final?)))))
          (lambda _g221484_
            (let ((_g221483_
                   (let () (declare (not safe)) (##length _g221484_))))
              (cond ((let () (declare (not safe)) (##fx= _g221483_ 8))
                     (apply (lambda (_self216499_
                                     _id216500_
                                     _super216501_
                                     _slots216502_
                                     _ctor-method216503_
                                     _struct?216504_
                                     _final?216505_
                                     _metaclass216506_)
                              (let _lp216508_ ((_rest216510_ _super216501_))
                                (let* ((_rest216511216519_ _rest216510_)
                                       (_else216513216527_ (lambda () '#!void))
                                       (_K216515216533_
                                        (lambda (_rest216530_ _super-id216531_)
                                          (if (##structure-ref
                                               (let ((__tmp221487
                                                      (let ((__tmp221488
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id216500_ '()))))
                (declare (not safe))
                (cons '!class __tmp221488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp221487
                                                  _super-id216531_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp221485
                                                     (let ((__tmp221486
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id216500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp221486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp221485
                                                 _super-id216531_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp216508_ _rest216530_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest216511216519_))
                                      (let ((_hd216516216536_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest216511216519_)))
                                            (_tl216517216538_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest216511216519_))))
                                        (let* ((_super-id216541_
                                                _hd216516216536_)
                                               (_rest216543_ _tl216517216538_))
                                          (declare (not safe))
                                          (_K216515216533_
                                           _rest216543_
                                           _super-id216541_)))
                                      '#!void)))
                              (let* ((_ctor-method216593_
                                      (let ((_$e216545_ _ctor-method216503_))
                                        (if _$e216545_
                                            _$e216545_
                                            (let _lp216548_ ((_rest216550_
                                                              _super216501_)
                                                             (_method216551_
                                                              '#f))
                                              (let* ((_rest216552216560_
                                                      _rest216550_)
                                                     (_else216554216568_
                                                      (lambda ()
                                                        _method216551_))
                                                     (_K216556216581_
                                                      (lambda (_rest216571_
                                                               _super-id216572_)
                                                        (let* ((_klass216574_
                                                                (let ((__tmp221489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp221490
                                      (let ()
                                        (declare (not safe))
                                        (cons _id216500_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp221490))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp221489
                           _super-id216572_)))
                       (_$e216576_
                        (##structure-ref _klass216574_ '6 gxc#!class::t '#f)))
                  (if _$e216576_
                      ((lambda (_ctor-method216579_)
                         (if _method216551_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method216579_ _method216551_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp216548_
                                    _rest216571_
                                    _ctor-method216579_))
                                 (let ((__tmp221491
                                        (let ((__tmp221492
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id216500_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp221492))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp221491
                                    _method216551_
                                    _ctor-method216579_)))
                             (let ()
                               (declare (not safe))
                               (_lp216548_ _rest216571_ _ctor-method216579_))))
                       _$e216576_)
                      (let ()
                        (declare (not safe))
                        (_lp216548_ _rest216571_ _method216551_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest216552216560_))
                                                    (let ((_hd216557216584_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest216552216560_)))
                                                          (_tl216558216586_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest216552216560_))))
                                                      (let* ((_super-id216589_
                                                              _hd216557216584_)
                                                             (_rest216591_
                                                              _tl216558216586_))
                                                        (declare (not safe))
                                                        (_K216556216581_
                                                         _rest216591_
                                                         _super-id216589_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else216554216568_))))))))
                                     (_g221493_
                                      (let ((__tmp221498
                                             (lambda (_klass-id216595_)
                                               (let ((__tmp221499
                                                      (##structure-ref
                                                       (let ((__tmp221500
                                                              (let ((__tmp221501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id216500_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp221501))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp221500 _klass-id216595_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id216595_
                                                       __tmp221499))))
                                            (__tmp221495
                                             (lambda (_klass-id216597_)
                                               (##structure-ref
                                                (let ((__tmp221496
                                                       (let ((__tmp221497
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id216500_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp221497))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp221496
                                                   _klass-id216597_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp221498
                                         __tmp221495
                                         eq?
                                         identity
                                         '()
                                         _super216501_))))
                                (begin
                                  (let ((_g221494_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221493_)
                                               (##vector-length _g221493_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221494_ 2)))
                                        (error "Context expects 2 values"
                                               _g221494_)))
                                  (let ((_precedence-list216599_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g221493_ 0)))
                                        (_base-struct216600_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g221493_ 1))))
                                    (let ((_fields216602_
                                           (let ((__tmp221502
                                                  (let ((__tmp221503
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id216500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp221503))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp221502
                                              _base-struct216600_
                                              _precedence-list216599_
                                              _slots216502_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216499_
                                         _id216500_
                                         __id221361
                                         __t221356
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216499_
                                         _super216501_
                                         __super221362
                                         __t221356
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216499_
                                         _precedence-list216599_
                                         __precedence-list221363
                                         __t221356
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216499_
                                         _slots216502_
                                         __slots221357
                                         __t221356
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216499_
                                         _fields216602_
                                         __fields221358
                                         __t221356
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216499_
                                         _ctor-method216593_
                                         __constructor221359
                                         __t221356
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216499_
                                         _struct?216504_
                                         __struct?221365
                                         __t221356
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216499_
                                         _final?216505_
                                         __final?221366
                                         __t221356
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216499_
                                         _metaclass216506_
                                         __metaclass221364
                                         __t221356
                                         '#f)))))))
                            _g221484_))
                    ((let () (declare (not safe)) (##fx= _g221483_ 11))
                     (apply (lambda (_self216605_
                                     _id216606_
                                     _super216607_
                                     _precedence-list216608_
                                     _slots216609_
                                     _fields216610_
                                     _constructor216611_
                                     _struct?216612_
                                     _final?216613_
                                     _metaclass216614_
                                     _methods216615_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216605_
                                 _id216606_
                                 __id221361
                                 __t221356
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216605_
                                 _super216607_
                                 __super221362
                                 __t221356
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216605_
                                 _precedence-list216608_
                                 __precedence-list221363
                                 __t221356
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216605_
                                 _slots216609_
                                 __slots221357
                                 __t221356
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216605_
                                 _fields216610_
                                 __fields221358
                                 __t221356
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216605_
                                 _constructor216611_
                                 __constructor221359
                                 __t221356
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216605_
                                 _struct?216612_
                                 __struct?221365
                                 __t221356
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216605_
                                 _final?216613_
                                 __final?221366
                                 __t221356
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216605_
                                 _metaclass216614_
                                 __metaclass221364
                                 __t221356
                                 '#f))
                              (if _methods216615_
                                  (let ((__tmp221504
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods216615_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self216605_
                                     __tmp221504
                                     __methods221360
                                     __t221356
                                     '#f))
                                  '#!void))
                            _g221484_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g221484_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where216351_
               _base-struct216352_
               _precedence-list216353_
               _direct-slots216354_)
        (let* ((_base-fields216356_
                (if _base-struct216352_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where216351_
                        _base-struct216352_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields216358_ (reverse _base-fields216356_))
               (_seen-slots216366_
                (let ((_tab216360_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g216361216363_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab216360_ _g216361216363_ '#t)))
                   _base-fields216356_)
                  _tab216360_))
               (_process-slot216370_
                (lambda (_slot216368_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots216366_ _slot216368_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots216366_ _slot216368_ '#t))
                        (set! _r-fields216358_
                              (let ()
                                (declare (not safe))
                                (cons _slot216368_ _r-fields216358_))))))))
          (for-each
           (lambda (_mixin216373_)
             (let ((_klass216375_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where216351_
                       _mixin216373_))))
               (if (##structure-ref _klass216375_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot216370_
                    (##structure-ref _klass216375_ '5 gxc#!class::t '#f)))))
           _precedence-list216353_)
          (for-each _process-slot216370_ _direct-slots216354_)
          (reverse _r-fields216358_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass216310_ _slot216311_)
        (let _lp216313_ ((_rest216315_
                          (##structure-ref _klass216310_ '5 gxc#!class::t '#f))
                         (_offset216316_ '1))
          (let* ((_rest216317216325_ _rest216315_)
                 (_else216319216333_
                  (lambda ()
                    (let ((__tmp221506
                           (##structure-ref _klass216310_ '1 gxc#!type::t '#f))
                          (__tmp221505
                           (##structure-ref
                            _klass216310_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp221506
                       __tmp221505
                       _slot216311_))))
                 (_K216321216339_
                  (lambda (_rest216336_ _s216337_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s216337_ _slot216311_))
                        _offset216316_
                        (let ((__tmp221507
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset216316_ '1))))
                          (declare (not safe))
                          (_lp216313_ _rest216336_ __tmp221507))))))
            (if (let () (declare (not safe)) (##pair? _rest216317216325_))
                (let ((_hd216322216342_
                       (let ()
                         (declare (not safe))
                         (##car _rest216317216325_)))
                      (_tl216323216344_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest216317216325_))))
                  (let* ((_s216347_ _hd216322216342_)
                         (_rest216349_ _tl216323216344_))
                    (declare (not safe))
                    (_K216321216339_ _rest216349_ _s216347_)))
                (let () (declare (not safe)) (_else216319216333_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass216268_ _slot216269_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass216268_ _slot216269_))
            _klass216268_
            (let _lp216271_ ((_rest216273_
                              (##structure-ref
                               _klass216268_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest216274216282_ _rest216273_)
                     (_else216276216290_ (lambda () '#f))
                     (_K216278216298_
                      (lambda (_rest216293_ _super216294_)
                        (let ((_super-class216296_
                               (let ((__tmp221508
                                      (let ((__tmp221509
                                             (let ((__tmp221511
                                                    (##structure-ref
                                                     _klass216268_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp221510
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot216269_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp221511
                                                     __tmp221510))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp221509))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp221508
                                  _super216294_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class216296_
                                 _slot216269_))
                              _super-class216296_
                              (let ()
                                (declare (not safe))
                                (_lp216271_ _rest216293_)))))))
                (if (let () (declare (not safe)) (##pair? _rest216274216282_))
                    (let ((_hd216279216301_
                           (let ()
                             (declare (not safe))
                             (##car _rest216274216282_)))
                          (_tl216280216303_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest216274216282_))))
                      (let* ((_super216306_ _hd216279216301_)
                             (_rest216308_ _tl216280216303_))
                        (declare (not safe))
                        (_K216278216298_ _rest216308_ _super216306_)))
                    (let () (declare (not safe)) (_else216276216290_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass216265_ _slot216266_)
        (if (##structure-ref _klass216265_ '7 gxc#!class::t '#f)
            (memq _slot216266_
                  (##structure-ref _klass216265_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self216262_ _id216263_)
        (##structure-set! _self216262_ _id216263_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t221377)
        (let ((__id221378
               (let ((__tmp221379
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221377 'id))))
                 (if __tmp221379 __tmp221379 (error '"Unknown slot" 'id)))))
          (lambda (_self216262_ _id216263_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216262_
               _id216263_
               __id221378
               __t221377
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
      (lambda (_self216137_ _id216138_)
        (##structure-set! _self216137_ _id216138_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t221380)
        (let ((__id221381
               (let ((__tmp221382
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221380 'id))))
                 (if __tmp221382 __tmp221382 (error '"Unknown slot" 'id)))))
          (lambda (_self216137_ _id216138_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216137_
               _id216138_
               __id221381
               __t221380
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
      (lambda (_self216010_ _id216011_ _slot216012_ _checked?216013_)
        (##structure-set! _self216010_ _id216011_ '1 gxc#!type::t '#f)
        (##structure-set! _self216010_ _slot216012_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self216010_
         _checked?216013_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t221383)
        (let ((__id221384
               (let ((__tmp221387
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221383 'id))))
                 (if __tmp221387 __tmp221387 (error '"Unknown slot" 'id))))
              (__slot221385
               (let ((__tmp221388
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221383 'slot))))
                 (if __tmp221388 __tmp221388 (error '"Unknown slot" 'slot))))
              (__checked?221386
               (let ((__tmp221389
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221383 'checked?))))
                 (if __tmp221389
                     __tmp221389
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self216010_ _id216011_ _slot216012_ _checked?216013_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216010_
               _id216011_
               __id221384
               __t221383
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216010_
               _slot216012_
               __slot221385
               __t221383
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216010_
               _checked?216013_
               __checked?221386
               __t221383
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
      (lambda (_self215883_ _id215884_ _slot215885_ _checked?215886_)
        (##structure-set! _self215883_ _id215884_ '1 gxc#!type::t '#f)
        (##structure-set! _self215883_ _slot215885_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self215883_
         _checked?215886_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t221390)
        (let ((__id221391
               (let ((__tmp221394
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221390 'id))))
                 (if __tmp221394 __tmp221394 (error '"Unknown slot" 'id))))
              (__slot221392
               (let ((__tmp221395
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221390 'slot))))
                 (if __tmp221395 __tmp221395 (error '"Unknown slot" 'slot))))
              (__checked?221393
               (let ((__tmp221396
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221390 'checked?))))
                 (if __tmp221396
                     __tmp221396
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self215883_ _id215884_ _slot215885_ _checked?215886_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215883_
               _id215884_
               __id221391
               __t221390
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215883_
               _slot215885_
               __slot221392
               __t221390
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215883_
               _checked?215886_
               __checked?221393
               __t221390
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
      (lambda (_self215727_
               _id215728_
               _arity215729_
               _dispatch215730_
               _inline215731_
               _typedecl215732_)
        (if (let ((__tmp221517
                   (let ()
                     (declare (not safe))
                     (##structure-length _self215727_))))
              (declare (not safe))
              (##fx< '5 __tmp221517))
            (begin
              (let ((__tmp221512
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215727_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215727_
                 _id215728_
                 '1
                 __tmp221512
                 '#f))
              (let ((__tmp221513
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215727_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215727_
                 _arity215729_
                 '2
                 __tmp221513
                 '#f))
              (let ((__tmp221514
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215727_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215727_
                 _dispatch215730_
                 '3
                 __tmp221514
                 '#f))
              (let ((__tmp221515
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215727_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215727_
                 _inline215731_
                 '4
                 __tmp221515
                 '#f))
              (let ((__tmp221516
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215727_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215727_
                 _typedecl215732_
                 '5
                 __tmp221516
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self215727_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self215727_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self215737_ _id215738_ _arity215739_ _dispatch215740_)
        (let* ((_inline215742_ '#f) (_typedecl215744_ '#f))
          (if (let ((__tmp221523
                     (let ()
                       (declare (not safe))
                       (##structure-length _self215737_))))
                (declare (not safe))
                (##fx< '5 __tmp221523))
              (begin
                (let ((__tmp221518
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215737_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215737_
                   _id215738_
                   '1
                   __tmp221518
                   '#f))
                (let ((__tmp221519
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215737_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215737_
                   _arity215739_
                   '2
                   __tmp221519
                   '#f))
                (let ((__tmp221520
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215737_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215737_
                   _dispatch215740_
                   '3
                   __tmp221520
                   '#f))
                (let ((__tmp221521
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215737_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215737_
                   _inline215742_
                   '4
                   __tmp221521
                   '#f))
                (let ((__tmp221522
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215737_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215737_
                   _typedecl215744_
                   '5
                   __tmp221522
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self215737_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self215737_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self215746_
               _id215747_
               _arity215748_
               _dispatch215749_
               _inline215750_)
        (let ((_typedecl215752_ '#f))
          (if (let ((__tmp221529
                     (let ()
                       (declare (not safe))
                       (##structure-length _self215746_))))
                (declare (not safe))
                (##fx< '5 __tmp221529))
              (begin
                (let ((__tmp221524
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215746_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215746_
                   _id215747_
                   '1
                   __tmp221524
                   '#f))
                (let ((__tmp221525
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215746_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215746_
                   _arity215748_
                   '2
                   __tmp221525
                   '#f))
                (let ((__tmp221526
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215746_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215746_
                   _dispatch215749_
                   '3
                   __tmp221526
                   '#f))
                (let ((__tmp221527
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215746_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215746_
                   _inline215750_
                   '4
                   __tmp221527
                   '#f))
                (let ((__tmp221528
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215746_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215746_
                   _typedecl215752_
                   '5
                   __tmp221528
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self215746_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self215746_)))))))
    (define gxc#!lambda:::init!
      (lambda _g221531_
        (let ((_g221530_ (let () (declare (not safe)) (##length _g221531_))))
          (cond ((let () (declare (not safe)) (##fx= _g221530_ 4))
                 (apply (lambda (_self215737_
                                 _id215738_
                                 _arity215739_
                                 _dispatch215740_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self215737_
                             _id215738_
                             _arity215739_
                             _dispatch215740_)))
                        _g221531_))
                ((let () (declare (not safe)) (##fx= _g221530_ 5))
                 (apply (lambda (_self215746_
                                 _id215747_
                                 _arity215748_
                                 _dispatch215749_
                                 _inline215750_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self215746_
                             _id215747_
                             _arity215748_
                             _dispatch215749_
                             _inline215750_)))
                        _g221531_))
                ((let () (declare (not safe)) (##fx= _g221530_ 6))
                 (apply (lambda (_self215754_
                                 _id215755_
                                 _arity215756_
                                 _dispatch215757_
                                 _inline215758_
                                 _typedecl215759_)
                          (if (let ((__tmp221537
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self215754_))))
                                (declare (not safe))
                                (##fx< '5 __tmp221537))
                              (begin
                                (let ((__tmp221532
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215754_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215754_
                                   _id215755_
                                   '1
                                   __tmp221532
                                   '#f))
                                (let ((__tmp221533
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215754_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215754_
                                   _arity215756_
                                   '2
                                   __tmp221533
                                   '#f))
                                (let ((__tmp221534
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215754_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215754_
                                   _dispatch215757_
                                   '3
                                   __tmp221534
                                   '#f))
                                (let ((__tmp221535
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215754_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215754_
                                   _inline215758_
                                   '4
                                   __tmp221535
                                   '#f))
                                (let ((__tmp221536
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215754_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215754_
                                   _typedecl215759_
                                   '5
                                   __tmp221536
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self215754_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self215754_)))))
                        _g221531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g221531_))))))
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
      (lambda (_self215479_ . _args215480_)
        (apply struct-instance-init! _self215479_ _args215480_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type215354_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type215354_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type215354_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass215347_)
        (let ((_$e215349_
               (##structure-ref _klass215347_ '10 gxc#!class::t '#f)))
          (if _$e215349_
              _$e215349_
              (let ((_tab215352_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass215347_
                 _tab215352_
                 '10
                 gxc#!class::t
                 '#f)
                _tab215352_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass215338_ _method215339_)
        (let ((_tab215340215342_
               (##structure-ref _klass215338_ '10 gxc#!class::t '#f)))
          (if _tab215340215342_
              (let ((_tab215345_ _tab215340215342_))
                (declare (not safe))
                (table-ref _tab215345_ _method215339_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type215335_ _method215336_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type215335_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type215335_ _method215336_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym215319_ _type215320_ _local?215321_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type215320_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym215319_
                   _type215320_))
        (let ((__tmp221538
               (let () (declare (not safe)) (struct->list _type215320_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym215319_ '" " __tmp221538))
        (let ((__tmp221539
               (if _local?215321_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp221539 _sym215319_ _type215320_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym215326_ _type215327_)
        (let ((_local?215329_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym215326_
           _type215327_
           _local?215329_))))
    (define gxc#optimizer-declare-type!
      (lambda _g221541_
        (let ((_g221540_ (let () (declare (not safe)) (##length _g221541_))))
          (cond ((let () (declare (not safe)) (##fx= _g221540_ 2))
                 (apply (lambda (_sym215326_ _type215327_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym215326_
                             _type215327_)))
                        _g221541_))
                ((let () (declare (not safe)) (##fx= _g221540_ 3))
                 (apply (lambda (_sym215331_ _type215332_ _local?215333_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym215331_
                             _type215332_
                             _local?215333_)))
                        _g221541_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g221541_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym215305_ _local?215306_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym215305_))
        (let ((__tmp221542
               (if _local?215306_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp221542 _sym215305_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym215311_)
        (let ((_local?215313_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym215311_ _local?215313_))))
    (define gxc#optimizer-clear-type!
      (lambda _g221544_
        (let ((_g221543_ (let () (declare (not safe)) (##length _g221544_))))
          (cond ((let () (declare (not safe)) (##fx= _g221543_ 1))
                 (apply (lambda (_sym215311_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym215311_)))
                        _g221544_))
                ((let () (declare (not safe)) (##fx= _g221543_ 2))
                 (apply (lambda (_sym215315_ _local?215316_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym215315_
                             _local?215316_)))
                        _g221544_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g221544_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t215278_ _method215279_ _sym215280_ _rebind?215281_)
        (let* ((_type215283_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t215278_)))
               (_$e215285_
                (let () (declare (not safe)) (gxc#!type-vtab _type215283_))))
          (if _$e215285_
              ((lambda (_vtab215288_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab215288_ _method215279_))
                     (if _rebind?215281_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t215278_
                              '" "
                              _method215279_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab215288_
                              _method215279_
                              _sym215280_)))
                         (let ((__tmp221549
                                (let ((__tmp221550
                                       (let ((__tmp221551
                                              (let ((__tmp221552
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym215280_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method215279_
                                                      __tmp221552))))
                                         (declare (not safe))
                                         (cons _type-t215278_ __tmp221551))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp221550))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp221549
                            _method215279_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t215278_
                          '" "
                          _method215279_
                          '" => "
                          _sym215280_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab215288_
                          _method215279_
                          _sym215280_)))))
               _$e215285_)
              (if (let () (declare (not safe)) (not _type215283_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t215278_))
                  (let ((__tmp221545
                         (let ((__tmp221546
                                (let ((__tmp221547
                                       (let ((__tmp221548
                                              (let ()
                                                (declare (not safe))
                                                (cons _method215279_ '()))))
                                         (declare (not safe))
                                         (cons _sym215280_ __tmp221548))))
                                  (declare (not safe))
                                  (cons _type-t215278_ __tmp221547))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp221546))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp221545
                     _type215283_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t215293_ _method215294_ _sym215295_)
        (let ((_rebind?215297_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t215293_
           _method215294_
           _sym215295_
           _rebind?215297_))))
    (define gxc#optimizer-declare-method!
      (lambda _g221554_
        (let ((_g221553_ (let () (declare (not safe)) (##length _g221554_))))
          (cond ((let () (declare (not safe)) (##fx= _g221553_ 3))
                 (apply (lambda (_type-t215293_ _method215294_ _sym215295_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t215293_
                             _method215294_
                             _sym215295_)))
                        _g221554_))
                ((let () (declare (not safe)) (##fx= _g221553_ 4))
                 (apply (lambda (_type-t215299_
                                 _method215300_
                                 _sym215301_
                                 _rebind?215302_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t215299_
                             _method215300_
                             _sym215301_
                             _rebind?215302_)))
                        _g221554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g221554_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym215266_)
        (let ((_$e215274_
               (let ((_ht215267215269_ (gxc#current-compile-local-type)))
                 (if _ht215267215269_
                     (let ((_ht215272_ _ht215267215269_))
                       (declare (not safe))
                       (table-ref _ht215272_ _sym215266_ '#f))
                     '#f))))
          (if _$e215274_
              _$e215274_
              (let ((__tmp221555
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp221555 _sym215266_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym215258_)
        (let ((_type215259215261_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym215258_))))
          (if _type215259215261_
              (let ((_type215264_ _type215259215261_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type215264_ 'gxc#!alias::t))
                    (let ((__tmp221556
                           (##structure-ref _type215264_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp221556))
                    _type215264_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where215250_ _klass-id215251_)
        (let ((_$e215253_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id215251_))))
          (if _$e215253_
              ((lambda (_klass215256_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass215256_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where215250_
                        _klass-id215251_
                        _klass215256_)))
                 _klass215256_)
               _$e215253_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where215250_
                 _klass-id215251_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t215247_ _method215248_)
        (let ((__tmp221557
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t215247_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp221557 _method215248_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym215245_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym215245_))
        (let ((__tmp221558
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp221558 _sym215245_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym215243_)
        (let ((__tmp221559
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp221559 _sym215243_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx215241_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx215241_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx215241_))
            (let () (declare (not safe)) (gx#stx-e _stx215241_)))))))
