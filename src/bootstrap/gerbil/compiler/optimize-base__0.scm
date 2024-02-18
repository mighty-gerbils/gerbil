(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708289483)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp228447 (list))
            (__tmp228445
             (let ((__tmp228446
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228446 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp228447
         '(type ssxi methods)
         __tmp228445
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args224319_
        (apply make-instance gxc#optimizer-info::t _$args224319_)))
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
      (lambda (_self224317_)
        (if (let ((__tmp228454
                   (let ()
                     (declare (not safe))
                     (##structure-length _self224317_))))
              (declare (not safe))
              (##fx< '3 __tmp228454))
            (begin
              (let ((__tmp228449
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp228448
                     (let ()
                       (declare (not safe))
                       (##structure-type _self224317_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self224317_
                 __tmp228449
                 '1
                 __tmp228448
                 '#f))
              (let ((__tmp228451
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp228450
                     (let ()
                       (declare (not safe))
                       (##structure-type _self224317_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self224317_
                 __tmp228451
                 '2
                 __tmp228450
                 '#f))
              (let ((__tmp228453
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp228452
                     (let ()
                       (declare (not safe))
                       (##structure-type _self224317_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self224317_
                 __tmp228453
                 '3
                 __tmp228452
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self224317_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self224317_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp228457 (list))
            (__tmp228455
             (let ((__tmp228456
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228456 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp228457
         '(id)
         __tmp228455
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args224192_ (apply make-instance gxc#!type::t _$args224192_)))
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
      (let ((__tmp228460 (list gxc#!type::t))
            (__tmp228458
             (let ((__tmp228459
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228459 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp228460
         '()
         __tmp228458
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args224189_ (apply make-instance gxc#!alias::t _$args224189_)))
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
      (let ((__tmp228463 (list gxc#!type::t))
            (__tmp228461
             (let ((__tmp228462
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228462 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp228463
         '()
         __tmp228461
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args224186_
        (apply make-instance gxc#!procedure::t _$args224186_)))
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
      (let ((__tmp228466 (list gxc#!type::t))
            (__tmp228464
             (let ((__tmp228465
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228465 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp228466
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp228464
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args224183_ (apply make-instance gxc#!class::t _$args224183_)))
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
      (let ((__tmp228469 (list gxc#!procedure::t))
            (__tmp228467
             (let ((__tmp228468
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228468 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp228469
         '()
         __tmp228467
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args224180_
        (apply make-instance gxc#!predicate::t _$args224180_)))
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
      (let ((__tmp228472 (list gxc#!procedure::t))
            (__tmp228470
             (let ((__tmp228471
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228471 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp228472
         '()
         __tmp228470
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args224177_
        (apply make-instance gxc#!constructor::t _$args224177_)))
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
      (let ((__tmp228475 (list gxc#!procedure::t))
            (__tmp228473
             (let ((__tmp228474
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228474 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp228475
         '(slot checked?)
         __tmp228473
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args224174_
        (apply make-instance gxc#!accessor::t _$args224174_)))
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
      (let ((__tmp228478 (list gxc#!procedure::t))
            (__tmp228476
             (let ((__tmp228477
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228477 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp228478
         '(slot checked?)
         __tmp228476
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args224171_
        (apply make-instance gxc#!mutator::t _$args224171_)))
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
      (let ((__tmp228481 (list gxc#!procedure::t))
            (__tmp228479
             (let ((__tmp228480
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228480 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp228481
         '(arity dispatch inline inline-typedecl)
         __tmp228479
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args224168_
        (apply make-instance gxc#!lambda::t _$args224168_)))
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
      (let ((__tmp228484 (list gxc#!procedure::t))
            (__tmp228482
             (let ((__tmp228483
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228483 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp228484
         '(clauses)
         __tmp228482
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args224165_
        (apply make-instance gxc#!case-lambda::t _$args224165_)))
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
      (let ((__tmp228487 (list gxc#!procedure::t))
            (__tmp228485
             (let ((__tmp228486
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228486 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp228487
         '(table dispatch)
         __tmp228485
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args224162_
        (apply make-instance gxc#!kw-lambda::t _$args224162_)))
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
      (let ((__tmp228490 (list gxc#!procedure::t))
            (__tmp228488
             (let ((__tmp228489
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228489 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp228490
         '(keys main)
         __tmp228488
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args224159_
        (apply make-instance gxc#!kw-lambda-primary::t _$args224159_)))
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
      (let ((__tmp228491 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp228491
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args224156_
        (apply make-instance gxc#!primitive::t _$args224156_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp228492 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp228492
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args224153_
        (apply make-instance gxc#!primitive-lambda::t _$args224153_)))
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
      (let ((__tmp228493 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp228493
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args224150_
        (apply make-instance gxc#!primitive-case-lambda::t _$args224150_)))
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
      (lambda (_self224032_
               _id224033_
               _super224034_
               _slots224035_
               _ctor-method224036_
               _struct?224037_
               _final?224038_
               _metaclass224039_)
        (let _lp224041_ ((_rest224043_ _super224034_))
          (let* ((_rest224044224052_ _rest224043_)
                 (_else224046224060_ (lambda () '#!void))
                 (_K224048224066_
                  (lambda (_rest224063_ _super-id224064_)
                    (if (##structure-ref
                         (let ((__tmp228496
                                (let ((__tmp228497
                                       (let ()
                                         (declare (not safe))
                                         (cons _id224033_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp228497))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp228496
                            _super-id224064_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp228494
                               (let ((__tmp228495
                                      (let ()
                                        (declare (not safe))
                                        (cons _id224033_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp228495))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp228494
                           _super-id224064_))
                        '#!void)
                    (let () (declare (not safe)) (_lp224041_ _rest224063_)))))
            (if (let () (declare (not safe)) (##pair? _rest224044224052_))
                (let ((_hd224049224069_
                       (let ()
                         (declare (not safe))
                         (##car _rest224044224052_)))
                      (_tl224050224071_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest224044224052_))))
                  (let* ((_super-id224074_ _hd224049224069_)
                         (_rest224076_ _tl224050224071_))
                    (declare (not safe))
                    (_K224048224066_ _rest224076_ _super-id224074_)))
                '#!void)))
        (let* ((_ctor-method224126_
                (let ((_$e224078_ _ctor-method224036_))
                  (if _$e224078_
                      _$e224078_
                      (let _lp224081_ ((_rest224083_ _super224034_)
                                       (_method224084_ '#f))
                        (let* ((_rest224085224093_ _rest224083_)
                               (_else224087224101_ (lambda () _method224084_))
                               (_K224089224114_
                                (lambda (_rest224104_ _super-id224105_)
                                  (let* ((_klass224107_
                                          (let ((__tmp228498
                                                 (let ((__tmp228499
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id224033_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp228499))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp228498
                                             _super-id224105_)))
                                         (_$e224109_
                                          (##structure-ref
                                           _klass224107_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e224109_
                                        ((lambda (_ctor-method224112_)
                                           (if _method224084_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method224112_
                                                          _method224084_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp224081_
                                                      _rest224104_
                                                      _ctor-method224112_))
                                                   (let ((__tmp228500
                                                          (let ((__tmp228501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id224033_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp228501))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp228500
                                                      _method224084_
                                                      _ctor-method224112_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp224081_
                                                  _rest224104_
                                                  _ctor-method224112_))))
                                         _$e224109_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp224081_
                                           _rest224104_
                                           _method224084_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest224085224093_))
                              (let ((_hd224090224117_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest224085224093_)))
                                    (_tl224091224119_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest224085224093_))))
                                (let* ((_super-id224122_ _hd224090224117_)
                                       (_rest224124_ _tl224091224119_))
                                  (declare (not safe))
                                  (_K224089224114_
                                   _rest224124_
                                   _super-id224122_)))
                              (let ()
                                (declare (not safe))
                                (_else224087224101_))))))))
               (_g228502_
                (let ((__tmp228507
                       (lambda (_klass-id224128_)
                         (let ((__tmp228508
                                (##structure-ref
                                 (let ((__tmp228509
                                        (let ((__tmp228510
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id224033_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp228510))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp228509
                                    _klass-id224128_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id224128_ __tmp228508))))
                      (__tmp228504
                       (lambda (_klass-id224130_)
                         (##structure-ref
                          (let ((__tmp228505
                                 (let ((__tmp228506
                                        (let ()
                                          (declare (not safe))
                                          (cons _id224033_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp228506))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp228505
                             _klass-id224130_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super224034_
                   'get-precedence-list:
                   __tmp228507
                   'struct:
                   __tmp228504
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g228503_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g228502_)
                         (##vector-length _g228502_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g228503_ 2)))
                  (error "Context expects 2 values" _g228503_)))
            (let ((_precedence-list224132_
                   (let () (declare (not safe)) (##vector-ref _g228502_ 0)))
                  (_base-struct224133_
                   (let () (declare (not safe)) (##vector-ref _g228502_ 1))))
              (let ((_fields224135_
                     (let ((__tmp228511
                            (let ((__tmp228512
                                   (let ()
                                     (declare (not safe))
                                     (cons _id224033_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp228512))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp228511
                        _base-struct224133_
                        _precedence-list224132_
                        _slots224035_))))
                (##structure-set! _self224032_ _id224033_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self224032_
                 _super224034_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self224032_
                 _precedence-list224132_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self224032_
                 _slots224035_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self224032_
                 _fields224135_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self224032_
                 _ctor-method224126_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self224032_
                 _struct?224037_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self224032_
                 _final?224038_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self224032_
                 _metaclass224039_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self224138_
               _id224139_
               _super224140_
               _precedence-list224141_
               _slots224142_
               _fields224143_
               _constructor224144_
               _struct?224145_
               _final?224146_
               _metaclass224147_
               _methods224148_)
        (##structure-set! _self224138_ _id224139_ '1 gxc#!type::t '#f)
        (##structure-set! _self224138_ _super224140_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self224138_
         _precedence-list224141_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self224138_ _slots224142_ '4 gxc#!class::t '#f)
        (##structure-set! _self224138_ _fields224143_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self224138_
         _constructor224144_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self224138_ _struct?224145_ '7 gxc#!class::t '#f)
        (##structure-set! _self224138_ _final?224146_ '8 gxc#!class::t '#f)
        (##structure-set! _self224138_ _metaclass224147_ '9 gxc#!class::t '#f)
        (if _methods224148_
            (##structure-set!
             _self224138_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods224148_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g228514_
        (let ((_g228513_ (let () (declare (not safe)) (##length _g228514_))))
          (cond ((let () (declare (not safe)) (##fx= _g228513_ 8))
                 (apply (lambda (_self224032_
                                 _id224033_
                                 _super224034_
                                 _slots224035_
                                 _ctor-method224036_
                                 _struct?224037_
                                 _final?224038_
                                 _metaclass224039_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self224032_
                             _id224033_
                             _super224034_
                             _slots224035_
                             _ctor-method224036_
                             _struct?224037_
                             _final?224038_
                             _metaclass224039_)))
                        _g228514_))
                ((let () (declare (not safe)) (##fx= _g228513_ 11))
                 (apply (lambda (_self224138_
                                 _id224139_
                                 _super224140_
                                 _precedence-list224141_
                                 _slots224142_
                                 _fields224143_
                                 _constructor224144_
                                 _struct?224145_
                                 _final?224146_
                                 _metaclass224147_
                                 _methods224148_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self224138_
                             _id224139_
                             _super224140_
                             _precedence-list224141_
                             _slots224142_
                             _fields224143_
                             _constructor224144_
                             _struct?224145_
                             _final?224146_
                             _metaclass224147_
                             _methods224148_)))
                        _g228514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g228514_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t228388)
        (let ((__slots228389
               (let ((__tmp228399
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228388 'slots))))
                 (if __tmp228399 __tmp228399 (error '"Unknown slot" 'slots))))
              (__id228390
               (let ((__tmp228400
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228388 'id))))
                 (if __tmp228400 __tmp228400 (error '"Unknown slot" 'id))))
              (__struct?228391
               (let ((__tmp228401
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228388 'struct?))))
                 (if __tmp228401
                     __tmp228401
                     (error '"Unknown slot" 'struct?))))
              (__constructor228392
               (let ((__tmp228402
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228388 'constructor))))
                 (if __tmp228402
                     __tmp228402
                     (error '"Unknown slot" 'constructor))))
              (__precedence-list228393
               (let ((__tmp228403
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228388 'precedence-list))))
                 (if __tmp228403
                     __tmp228403
                     (error '"Unknown slot" 'precedence-list))))
              (__super228394
               (let ((__tmp228404
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228388 'super))))
                 (if __tmp228404 __tmp228404 (error '"Unknown slot" 'super))))
              (__metaclass228395
               (let ((__tmp228405
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228388 'metaclass))))
                 (if __tmp228405
                     __tmp228405
                     (error '"Unknown slot" 'metaclass))))
              (__fields228396
               (let ((__tmp228406
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228388 'fields))))
                 (if __tmp228406 __tmp228406 (error '"Unknown slot" 'fields))))
              (__methods228397
               (let ((__tmp228407
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228388 'methods))))
                 (if __tmp228407
                     __tmp228407
                     (error '"Unknown slot" 'methods))))
              (__final?228398
               (let ((__tmp228408
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228388 'final?))))
                 (if __tmp228408
                     __tmp228408
                     (error '"Unknown slot" 'final?)))))
          (lambda _g228516_
            (let ((_g228515_
                   (let () (declare (not safe)) (##length _g228516_))))
              (cond ((let () (declare (not safe)) (##fx= _g228515_ 8))
                     (apply (lambda (_self224032_
                                     _id224033_
                                     _super224034_
                                     _slots224035_
                                     _ctor-method224036_
                                     _struct?224037_
                                     _final?224038_
                                     _metaclass224039_)
                              (let _lp224041_ ((_rest224043_ _super224034_))
                                (let* ((_rest224044224052_ _rest224043_)
                                       (_else224046224060_ (lambda () '#!void))
                                       (_K224048224066_
                                        (lambda (_rest224063_ _super-id224064_)
                                          (if (##structure-ref
                                               (let ((__tmp228519
                                                      (let ((__tmp228520
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id224033_ '()))))
                (declare (not safe))
                (cons '!class __tmp228520))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp228519
                                                  _super-id224064_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp228517
                                                     (let ((__tmp228518
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id224033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp228518))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp228517
                                                 _super-id224064_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp224041_ _rest224063_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest224044224052_))
                                      (let ((_hd224049224069_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest224044224052_)))
                                            (_tl224050224071_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest224044224052_))))
                                        (let* ((_super-id224074_
                                                _hd224049224069_)
                                               (_rest224076_ _tl224050224071_))
                                          (declare (not safe))
                                          (_K224048224066_
                                           _rest224076_
                                           _super-id224074_)))
                                      '#!void)))
                              (let* ((_ctor-method224126_
                                      (let ((_$e224078_ _ctor-method224036_))
                                        (if _$e224078_
                                            _$e224078_
                                            (let _lp224081_ ((_rest224083_
                                                              _super224034_)
                                                             (_method224084_
                                                              '#f))
                                              (let* ((_rest224085224093_
                                                      _rest224083_)
                                                     (_else224087224101_
                                                      (lambda ()
                                                        _method224084_))
                                                     (_K224089224114_
                                                      (lambda (_rest224104_
                                                               _super-id224105_)
                                                        (let* ((_klass224107_
                                                                (let ((__tmp228521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp228522
                                      (let ()
                                        (declare (not safe))
                                        (cons _id224033_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp228522))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp228521
                           _super-id224105_)))
                       (_$e224109_
                        (##structure-ref _klass224107_ '6 gxc#!class::t '#f)))
                  (if _$e224109_
                      ((lambda (_ctor-method224112_)
                         (if _method224084_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method224112_ _method224084_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp224081_
                                    _rest224104_
                                    _ctor-method224112_))
                                 (let ((__tmp228523
                                        (let ((__tmp228524
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id224033_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp228524))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp228523
                                    _method224084_
                                    _ctor-method224112_)))
                             (let ()
                               (declare (not safe))
                               (_lp224081_ _rest224104_ _ctor-method224112_))))
                       _$e224109_)
                      (let ()
                        (declare (not safe))
                        (_lp224081_ _rest224104_ _method224084_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest224085224093_))
                                                    (let ((_hd224090224117_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest224085224093_)))
                                                          (_tl224091224119_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest224085224093_))))
                                                      (let* ((_super-id224122_
                                                              _hd224090224117_)
                                                             (_rest224124_
                                                              _tl224091224119_))
                                                        (declare (not safe))
                                                        (_K224089224114_
                                                         _rest224124_
                                                         _super-id224122_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else224087224101_))))))))
                                     (_g228525_
                                      (let ((__tmp228530
                                             (lambda (_klass-id224128_)
                                               (let ((__tmp228531
                                                      (##structure-ref
                                                       (let ((__tmp228532
                                                              (let ((__tmp228533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id224033_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp228533))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp228532 _klass-id224128_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id224128_
                                                       __tmp228531))))
                                            (__tmp228527
                                             (lambda (_klass-id224130_)
                                               (##structure-ref
                                                (let ((__tmp228528
                                                       (let ((__tmp228529
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id224033_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp228529))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp228528
                                                   _klass-id224130_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super224034_
                                         'get-precedence-list:
                                         __tmp228530
                                         'struct:
                                         __tmp228527
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g228526_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228525_)
                                               (##vector-length _g228525_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228526_ 2)))
                                        (error "Context expects 2 values"
                                               _g228526_)))
                                  (let ((_precedence-list224132_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228525_ 0)))
                                        (_base-struct224133_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228525_ 1))))
                                    (let ((_fields224135_
                                           (let ((__tmp228534
                                                  (let ((__tmp228535
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id224033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp228535))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp228534
                                              _base-struct224133_
                                              _precedence-list224132_
                                              _slots224035_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224032_
                                         _id224033_
                                         __id228390
                                         __t228388
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224032_
                                         _super224034_
                                         __super228394
                                         __t228388
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224032_
                                         _precedence-list224132_
                                         __precedence-list228393
                                         __t228388
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224032_
                                         _slots224035_
                                         __slots228389
                                         __t228388
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224032_
                                         _fields224135_
                                         __fields228396
                                         __t228388
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224032_
                                         _ctor-method224126_
                                         __constructor228392
                                         __t228388
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224032_
                                         _struct?224037_
                                         __struct?228391
                                         __t228388
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224032_
                                         _final?224038_
                                         __final?228398
                                         __t228388
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224032_
                                         _metaclass224039_
                                         __metaclass228395
                                         __t228388
                                         '#f)))))))
                            _g228516_))
                    ((let () (declare (not safe)) (##fx= _g228515_ 11))
                     (apply (lambda (_self224138_
                                     _id224139_
                                     _super224140_
                                     _precedence-list224141_
                                     _slots224142_
                                     _fields224143_
                                     _constructor224144_
                                     _struct?224145_
                                     _final?224146_
                                     _metaclass224147_
                                     _methods224148_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224138_
                                 _id224139_
                                 __id228390
                                 __t228388
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224138_
                                 _super224140_
                                 __super228394
                                 __t228388
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224138_
                                 _precedence-list224141_
                                 __precedence-list228393
                                 __t228388
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224138_
                                 _slots224142_
                                 __slots228389
                                 __t228388
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224138_
                                 _fields224143_
                                 __fields228396
                                 __t228388
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224138_
                                 _constructor224144_
                                 __constructor228392
                                 __t228388
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224138_
                                 _struct?224145_
                                 __struct?228391
                                 __t228388
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224138_
                                 _final?224146_
                                 __final?228398
                                 __t228388
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224138_
                                 _metaclass224147_
                                 __metaclass228395
                                 __t228388
                                 '#f))
                              (if _methods224148_
                                  (let ((__tmp228536
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods224148_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self224138_
                                     __tmp228536
                                     __methods228397
                                     __t228388
                                     '#f))
                                  '#!void))
                            _g228516_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g228516_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where223884_
               _base-struct223885_
               _precedence-list223886_
               _direct-slots223887_)
        (let* ((_base-fields223889_
                (if _base-struct223885_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where223884_
                        _base-struct223885_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields223891_ (reverse _base-fields223889_))
               (_seen-slots223899_
                (let ((_tab223893_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g223894223896_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab223893_ _g223894223896_ '#t)))
                   _base-fields223889_)
                  _tab223893_))
               (_process-slot223903_
                (lambda (_slot223901_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots223899_ _slot223901_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots223899_ _slot223901_ '#t))
                        (set! _r-fields223891_
                              (let ()
                                (declare (not safe))
                                (cons _slot223901_ _r-fields223891_))))))))
          (for-each
           (lambda (_mixin223906_)
             (let ((_klass223908_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where223884_
                       _mixin223906_))))
               (if (##structure-ref _klass223908_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot223903_
                    (##structure-ref _klass223908_ '5 gxc#!class::t '#f)))))
           _precedence-list223886_)
          (for-each _process-slot223903_ _direct-slots223887_)
          (reverse _r-fields223891_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass223843_ _slot223844_)
        (let _lp223846_ ((_rest223848_
                          (##structure-ref _klass223843_ '5 gxc#!class::t '#f))
                         (_offset223849_ '1))
          (let* ((_rest223850223858_ _rest223848_)
                 (_else223852223866_
                  (lambda ()
                    (let ((__tmp228538
                           (##structure-ref _klass223843_ '1 gxc#!type::t '#f))
                          (__tmp228537
                           (##structure-ref
                            _klass223843_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp228538
                       __tmp228537
                       _slot223844_))))
                 (_K223854223872_
                  (lambda (_rest223869_ _s223870_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s223870_ _slot223844_))
                        _offset223849_
                        (let ((__tmp228539
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset223849_ '1))))
                          (declare (not safe))
                          (_lp223846_ _rest223869_ __tmp228539))))))
            (if (let () (declare (not safe)) (##pair? _rest223850223858_))
                (let ((_hd223855223875_
                       (let ()
                         (declare (not safe))
                         (##car _rest223850223858_)))
                      (_tl223856223877_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest223850223858_))))
                  (let* ((_s223880_ _hd223855223875_)
                         (_rest223882_ _tl223856223877_))
                    (declare (not safe))
                    (_K223854223872_ _rest223882_ _s223880_)))
                (let () (declare (not safe)) (_else223852223866_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass223801_ _slot223802_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass223801_ _slot223802_))
            _klass223801_
            (let _lp223804_ ((_rest223806_
                              (##structure-ref
                               _klass223801_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest223807223815_ _rest223806_)
                     (_else223809223823_ (lambda () '#f))
                     (_K223811223831_
                      (lambda (_rest223826_ _super223827_)
                        (let ((_super-class223829_
                               (let ((__tmp228540
                                      (let ((__tmp228541
                                             (let ((__tmp228543
                                                    (##structure-ref
                                                     _klass223801_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp228542
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot223802_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp228543
                                                     __tmp228542))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp228541))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp228540
                                  _super223827_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class223829_
                                 _slot223802_))
                              _super-class223829_
                              (let ()
                                (declare (not safe))
                                (_lp223804_ _rest223826_)))))))
                (if (let () (declare (not safe)) (##pair? _rest223807223815_))
                    (let ((_hd223812223834_
                           (let ()
                             (declare (not safe))
                             (##car _rest223807223815_)))
                          (_tl223813223836_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest223807223815_))))
                      (let* ((_super223839_ _hd223812223834_)
                             (_rest223841_ _tl223813223836_))
                        (declare (not safe))
                        (_K223811223831_ _rest223841_ _super223839_)))
                    (let () (declare (not safe)) (_else223809223823_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass223798_ _slot223799_)
        (if (##structure-ref _klass223798_ '7 gxc#!class::t '#f)
            (memq _slot223799_
                  (##structure-ref _klass223798_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self223795_ _id223796_)
        (##structure-set! _self223795_ _id223796_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t228409)
        (let ((__id228410
               (let ((__tmp228411
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228409 'id))))
                 (if __tmp228411 __tmp228411 (error '"Unknown slot" 'id)))))
          (lambda (_self223795_ _id223796_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223795_
               _id223796_
               __id228410
               __t228409
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
      (lambda (_self223670_ _id223671_)
        (##structure-set! _self223670_ _id223671_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t228412)
        (let ((__id228413
               (let ((__tmp228414
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228412 'id))))
                 (if __tmp228414 __tmp228414 (error '"Unknown slot" 'id)))))
          (lambda (_self223670_ _id223671_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223670_
               _id223671_
               __id228413
               __t228412
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
      (lambda (_self223543_ _id223544_ _slot223545_ _checked?223546_)
        (##structure-set! _self223543_ _id223544_ '1 gxc#!type::t '#f)
        (##structure-set! _self223543_ _slot223545_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self223543_
         _checked?223546_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t228415)
        (let ((__slot228416
               (let ((__tmp228419
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228415 'slot))))
                 (if __tmp228419 __tmp228419 (error '"Unknown slot" 'slot))))
              (__id228417
               (let ((__tmp228420
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228415 'id))))
                 (if __tmp228420 __tmp228420 (error '"Unknown slot" 'id))))
              (__checked?228418
               (let ((__tmp228421
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228415 'checked?))))
                 (if __tmp228421
                     __tmp228421
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self223543_ _id223544_ _slot223545_ _checked?223546_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223543_
               _id223544_
               __id228417
               __t228415
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223543_
               _slot223545_
               __slot228416
               __t228415
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223543_
               _checked?223546_
               __checked?228418
               __t228415
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
      (lambda (_self223416_ _id223417_ _slot223418_ _checked?223419_)
        (##structure-set! _self223416_ _id223417_ '1 gxc#!type::t '#f)
        (##structure-set! _self223416_ _slot223418_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self223416_
         _checked?223419_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t228422)
        (let ((__checked?228423
               (let ((__tmp228426
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228422 'checked?))))
                 (if __tmp228426
                     __tmp228426
                     (error '"Unknown slot" 'checked?))))
              (__id228424
               (let ((__tmp228427
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228422 'id))))
                 (if __tmp228427 __tmp228427 (error '"Unknown slot" 'id))))
              (__slot228425
               (let ((__tmp228428
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228422 'slot))))
                 (if __tmp228428 __tmp228428 (error '"Unknown slot" 'slot)))))
          (lambda (_self223416_ _id223417_ _slot223418_ _checked?223419_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223416_
               _id223417_
               __id228424
               __t228422
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223416_
               _slot223418_
               __slot228425
               __t228422
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223416_
               _checked?223419_
               __checked?228423
               __t228422
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
      (lambda (_self223260_
               _id223261_
               _arity223262_
               _dispatch223263_
               _inline223264_
               _typedecl223265_)
        (if (let ((__tmp228549
                   (let ()
                     (declare (not safe))
                     (##structure-length _self223260_))))
              (declare (not safe))
              (##fx< '5 __tmp228549))
            (begin
              (let ((__tmp228544
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223260_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223260_
                 _id223261_
                 '1
                 __tmp228544
                 '#f))
              (let ((__tmp228545
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223260_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223260_
                 _arity223262_
                 '2
                 __tmp228545
                 '#f))
              (let ((__tmp228546
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223260_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223260_
                 _dispatch223263_
                 '3
                 __tmp228546
                 '#f))
              (let ((__tmp228547
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223260_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223260_
                 _inline223264_
                 '4
                 __tmp228547
                 '#f))
              (let ((__tmp228548
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223260_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223260_
                 _typedecl223265_
                 '5
                 __tmp228548
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self223260_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self223260_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self223270_ _id223271_ _arity223272_ _dispatch223273_)
        (let* ((_inline223275_ '#f) (_typedecl223277_ '#f))
          (if (let ((__tmp228555
                     (let ()
                       (declare (not safe))
                       (##structure-length _self223270_))))
                (declare (not safe))
                (##fx< '5 __tmp228555))
              (begin
                (let ((__tmp228550
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223270_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223270_
                   _id223271_
                   '1
                   __tmp228550
                   '#f))
                (let ((__tmp228551
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223270_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223270_
                   _arity223272_
                   '2
                   __tmp228551
                   '#f))
                (let ((__tmp228552
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223270_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223270_
                   _dispatch223273_
                   '3
                   __tmp228552
                   '#f))
                (let ((__tmp228553
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223270_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223270_
                   _inline223275_
                   '4
                   __tmp228553
                   '#f))
                (let ((__tmp228554
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223270_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223270_
                   _typedecl223277_
                   '5
                   __tmp228554
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self223270_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self223270_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self223279_
               _id223280_
               _arity223281_
               _dispatch223282_
               _inline223283_)
        (let ((_typedecl223285_ '#f))
          (if (let ((__tmp228561
                     (let ()
                       (declare (not safe))
                       (##structure-length _self223279_))))
                (declare (not safe))
                (##fx< '5 __tmp228561))
              (begin
                (let ((__tmp228556
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223279_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223279_
                   _id223280_
                   '1
                   __tmp228556
                   '#f))
                (let ((__tmp228557
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223279_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223279_
                   _arity223281_
                   '2
                   __tmp228557
                   '#f))
                (let ((__tmp228558
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223279_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223279_
                   _dispatch223282_
                   '3
                   __tmp228558
                   '#f))
                (let ((__tmp228559
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223279_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223279_
                   _inline223283_
                   '4
                   __tmp228559
                   '#f))
                (let ((__tmp228560
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223279_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223279_
                   _typedecl223285_
                   '5
                   __tmp228560
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self223279_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self223279_)))))))
    (define gxc#!lambda:::init!
      (lambda _g228563_
        (let ((_g228562_ (let () (declare (not safe)) (##length _g228563_))))
          (cond ((let () (declare (not safe)) (##fx= _g228562_ 4))
                 (apply (lambda (_self223270_
                                 _id223271_
                                 _arity223272_
                                 _dispatch223273_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self223270_
                             _id223271_
                             _arity223272_
                             _dispatch223273_)))
                        _g228563_))
                ((let () (declare (not safe)) (##fx= _g228562_ 5))
                 (apply (lambda (_self223279_
                                 _id223280_
                                 _arity223281_
                                 _dispatch223282_
                                 _inline223283_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self223279_
                             _id223280_
                             _arity223281_
                             _dispatch223282_
                             _inline223283_)))
                        _g228563_))
                ((let () (declare (not safe)) (##fx= _g228562_ 6))
                 (apply (lambda (_self223287_
                                 _id223288_
                                 _arity223289_
                                 _dispatch223290_
                                 _inline223291_
                                 _typedecl223292_)
                          (if (let ((__tmp228569
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self223287_))))
                                (declare (not safe))
                                (##fx< '5 __tmp228569))
                              (begin
                                (let ((__tmp228564
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self223287_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self223287_
                                   _id223288_
                                   '1
                                   __tmp228564
                                   '#f))
                                (let ((__tmp228565
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self223287_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self223287_
                                   _arity223289_
                                   '2
                                   __tmp228565
                                   '#f))
                                (let ((__tmp228566
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self223287_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self223287_
                                   _dispatch223290_
                                   '3
                                   __tmp228566
                                   '#f))
                                (let ((__tmp228567
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self223287_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self223287_
                                   _inline223291_
                                   '4
                                   __tmp228567
                                   '#f))
                                (let ((__tmp228568
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self223287_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self223287_
                                   _typedecl223292_
                                   '5
                                   __tmp228568
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self223287_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self223287_)))))
                        _g228563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g228563_))))))
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
      (lambda (_self223012_ . _args223013_)
        (apply struct-instance-init! _self223012_ _args223013_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type222887_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type222887_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type222887_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass222880_)
        (let ((_$e222882_
               (##structure-ref _klass222880_ '10 gxc#!class::t '#f)))
          (if _$e222882_
              _$e222882_
              (let ((_tab222885_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass222880_
                 _tab222885_
                 '10
                 gxc#!class::t
                 '#f)
                _tab222885_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass222871_ _method222872_)
        (let ((_tab222873222875_
               (##structure-ref _klass222871_ '10 gxc#!class::t '#f)))
          (if _tab222873222875_
              (let ((_tab222878_ _tab222873222875_))
                (declare (not safe))
                (hash-get _tab222878_ _method222872_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type222868_ _method222869_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type222868_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type222868_ _method222869_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym222852_ _type222853_ _local?222854_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type222853_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym222852_
                   _type222853_))
        (let ((__tmp228570
               (let () (declare (not safe)) (struct->list _type222853_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym222852_ '" " __tmp228570))
        (let ((__tmp228571
               (if _local?222854_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp228571 _sym222852_ _type222853_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym222859_ _type222860_)
        (let ((_local?222862_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym222859_
           _type222860_
           _local?222862_))))
    (define gxc#optimizer-declare-type!
      (lambda _g228573_
        (let ((_g228572_ (let () (declare (not safe)) (##length _g228573_))))
          (cond ((let () (declare (not safe)) (##fx= _g228572_ 2))
                 (apply (lambda (_sym222859_ _type222860_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym222859_
                             _type222860_)))
                        _g228573_))
                ((let () (declare (not safe)) (##fx= _g228572_ 3))
                 (apply (lambda (_sym222864_ _type222865_ _local?222866_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym222864_
                             _type222865_
                             _local?222866_)))
                        _g228573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g228573_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym222838_ _local?222839_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym222838_))
        (let ((__tmp228574
               (if _local?222839_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp228574 _sym222838_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym222844_)
        (let ((_local?222846_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym222844_ _local?222846_))))
    (define gxc#optimizer-clear-type!
      (lambda _g228576_
        (let ((_g228575_ (let () (declare (not safe)) (##length _g228576_))))
          (cond ((let () (declare (not safe)) (##fx= _g228575_ 1))
                 (apply (lambda (_sym222844_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym222844_)))
                        _g228576_))
                ((let () (declare (not safe)) (##fx= _g228575_ 2))
                 (apply (lambda (_sym222848_ _local?222849_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym222848_
                             _local?222849_)))
                        _g228576_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g228576_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t222811_ _method222812_ _sym222813_ _rebind?222814_)
        (let* ((_type222816_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t222811_)))
               (_$e222818_
                (let () (declare (not safe)) (gxc#!type-vtab _type222816_))))
          (if _$e222818_
              ((lambda (_vtab222821_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab222821_ _method222812_))
                     (if _rebind?222814_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t222811_
                              '" "
                              _method222812_))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              _vtab222821_
                              _method222812_
                              _sym222813_)))
                         (let ((__tmp228581
                                (let ((__tmp228582
                                       (let ((__tmp228583
                                              (let ((__tmp228584
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym222813_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method222812_
                                                      __tmp228584))))
                                         (declare (not safe))
                                         (cons _type-t222811_ __tmp228583))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp228582))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp228581
                            _method222812_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t222811_
                          '" "
                          _method222812_
                          '" => "
                          _sym222813_))
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _vtab222821_
                          _method222812_
                          _sym222813_)))))
               _$e222818_)
              (if (let () (declare (not safe)) (not _type222816_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t222811_))
                  (let ((__tmp228577
                         (let ((__tmp228578
                                (let ((__tmp228579
                                       (let ((__tmp228580
                                              (let ()
                                                (declare (not safe))
                                                (cons _method222812_ '()))))
                                         (declare (not safe))
                                         (cons _sym222813_ __tmp228580))))
                                  (declare (not safe))
                                  (cons _type-t222811_ __tmp228579))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp228578))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp228577
                     _type222816_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t222826_ _method222827_ _sym222828_)
        (let ((_rebind?222830_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t222826_
           _method222827_
           _sym222828_
           _rebind?222830_))))
    (define gxc#optimizer-declare-method!
      (lambda _g228586_
        (let ((_g228585_ (let () (declare (not safe)) (##length _g228586_))))
          (cond ((let () (declare (not safe)) (##fx= _g228585_ 3))
                 (apply (lambda (_type-t222826_ _method222827_ _sym222828_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t222826_
                             _method222827_
                             _sym222828_)))
                        _g228586_))
                ((let () (declare (not safe)) (##fx= _g228585_ 4))
                 (apply (lambda (_type-t222832_
                                 _method222833_
                                 _sym222834_
                                 _rebind?222835_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t222832_
                             _method222833_
                             _sym222834_
                             _rebind?222835_)))
                        _g228586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g228586_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym222799_)
        (let ((_$e222807_
               (let ((_ht222800222802_ (gxc#current-compile-local-type)))
                 (if _ht222800222802_
                     (let ((_ht222805_ _ht222800222802_))
                       (declare (not safe))
                       (hash-get _ht222805_ _sym222799_))
                     '#f))))
          (if _$e222807_
              _$e222807_
              (let ((__tmp228587
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp228587 _sym222799_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym222791_)
        (let ((_type222792222794_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym222791_))))
          (if _type222792222794_
              (let ((_type222797_ _type222792222794_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type222797_ 'gxc#!alias::t))
                    (let ((__tmp228588
                           (##structure-ref _type222797_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp228588))
                    _type222797_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where222783_ _klass-id222784_)
        (let ((_$e222786_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id222784_))))
          (if _$e222786_
              ((lambda (_klass222789_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass222789_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where222783_
                        _klass-id222784_
                        _klass222789_)))
                 _klass222789_)
               _$e222786_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where222783_
                 _klass-id222784_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t222780_ _method222781_)
        (let ((__tmp228589
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t222780_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp228589 _method222781_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym222778_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym222778_))
        (let ((__tmp228590
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp228590 _sym222778_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym222776_)
        (let ((__tmp228591
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp228591 _sym222776_))))
    (define gxc#identifier-symbol
      (lambda (_stx222774_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx222774_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx222774_))
            (let () (declare (not safe)) (gx#stx-e _stx222774_)))))))
