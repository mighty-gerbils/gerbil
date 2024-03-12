(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710238839)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp115345 (list))
            (__tmp115343
             (let ((__tmp115344
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115344 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp115345
         '(type ssxi methods)
         __tmp115343
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args115279_
        (apply make-instance gxc#optimizer-info::t _$args115279_)))
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
      (lambda (_self115277_)
        (if (let ((__tmp115353
                   (let ()
                     (declare (not safe))
                     (##structure-length _self115277_))))
              (declare (not safe))
              (##fx< '3 __tmp115353))
            (begin
              (let ((__tmp115348
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp115347
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115277_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115277_
                 __tmp115348
                 '1
                 __tmp115347
                 '#f))
              (let ((__tmp115350
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp115349
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115277_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115277_
                 __tmp115350
                 '2
                 __tmp115349
                 '#f))
              (let ((__tmp115352
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp115351
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115277_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115277_
                 __tmp115352
                 '3
                 __tmp115351
                 '#f)))
            (let ((__tmp115346
                   (let ()
                     (declare (not safe))
                     (##vector-length _self115277_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self115277_
                     '3
                     __tmp115346)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp115356 (list))
            (__tmp115354
             (let ((__tmp115355
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115355 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp115356
         '(id)
         __tmp115354
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args115152_ (apply make-instance gxc#!type::t _$args115152_)))
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
      (let ((__tmp115359 (list gxc#!type::t))
            (__tmp115357
             (let ((__tmp115358
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115358 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp115359
         '()
         __tmp115357
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args115149_ (apply make-instance gxc#!alias::t _$args115149_)))
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
      (let ((__tmp115362 (list gxc#!type::t))
            (__tmp115360
             (let ((__tmp115361
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115361 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp115362
         '()
         __tmp115360
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args115146_
        (apply make-instance gxc#!procedure::t _$args115146_)))
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
      (let ((__tmp115365 (list gxc#!type::t))
            (__tmp115363
             (let ((__tmp115364
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115364 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp115365
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp115363
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args115143_ (apply make-instance gxc#!class::t _$args115143_)))
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
      (let ((__tmp115368 (list gxc#!procedure::t))
            (__tmp115366
             (let ((__tmp115367
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115367 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp115368
         '()
         __tmp115366
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args115140_
        (apply make-instance gxc#!predicate::t _$args115140_)))
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
      (let ((__tmp115371 (list gxc#!procedure::t))
            (__tmp115369
             (let ((__tmp115370
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115370 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp115371
         '()
         __tmp115369
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args115137_
        (apply make-instance gxc#!constructor::t _$args115137_)))
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
      (let ((__tmp115374 (list gxc#!procedure::t))
            (__tmp115372
             (let ((__tmp115373
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115373 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp115374
         '(slot checked?)
         __tmp115372
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args115134_
        (apply make-instance gxc#!accessor::t _$args115134_)))
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
      (let ((__tmp115377 (list gxc#!procedure::t))
            (__tmp115375
             (let ((__tmp115376
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115376 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp115377
         '(slot checked?)
         __tmp115375
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args115131_
        (apply make-instance gxc#!mutator::t _$args115131_)))
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
      (let ((__tmp115380 (list gxc#!procedure::t))
            (__tmp115378
             (let ((__tmp115379
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115379 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp115380
         '(arity dispatch inline inline-typedecl)
         __tmp115378
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args115128_
        (apply make-instance gxc#!lambda::t _$args115128_)))
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
      (let ((__tmp115383 (list gxc#!procedure::t))
            (__tmp115381
             (let ((__tmp115382
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115382 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp115383
         '(clauses)
         __tmp115381
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args115125_
        (apply make-instance gxc#!case-lambda::t _$args115125_)))
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
      (let ((__tmp115386 (list gxc#!procedure::t))
            (__tmp115384
             (let ((__tmp115385
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115385 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp115386
         '(table dispatch)
         __tmp115384
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args115122_
        (apply make-instance gxc#!kw-lambda::t _$args115122_)))
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
      (let ((__tmp115389 (list gxc#!procedure::t))
            (__tmp115387
             (let ((__tmp115388
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115388 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp115389
         '(keys main)
         __tmp115387
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args115119_
        (apply make-instance gxc#!kw-lambda-primary::t _$args115119_)))
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
      (let ((__tmp115390 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp115390
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args115116_
        (apply make-instance gxc#!primitive::t _$args115116_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp115391 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp115391
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args115113_
        (apply make-instance gxc#!primitive-lambda::t _$args115113_)))
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
      (let ((__tmp115392 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp115392
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args115110_
        (apply make-instance gxc#!primitive-case-lambda::t _$args115110_)))
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
      (lambda (_self114992_
               _id114993_
               _super114994_
               _slots114995_
               _ctor-method114996_
               _struct?114997_
               _final?114998_
               _metaclass114999_)
        (let _lp115001_ ((_rest115003_ _super114994_))
          (let* ((_rest115004115012_ _rest115003_)
                 (_else115006115020_ (lambda () '#!void))
                 (_K115008115026_
                  (lambda (_rest115023_ _super-id115024_)
                    (if (##structure-ref
                         (let ((__tmp115395
                                (let ((__tmp115396
                                       (let ()
                                         (declare (not safe))
                                         (cons _id114993_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp115396))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp115395
                            _super-id115024_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp115393
                               (let ((__tmp115394
                                      (let ()
                                        (declare (not safe))
                                        (cons _id114993_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp115394))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp115393
                           _super-id115024_))
                        '#!void)
                    (let () (declare (not safe)) (_lp115001_ _rest115023_)))))
            (if (let () (declare (not safe)) (##pair? _rest115004115012_))
                (let ((_hd115009115029_
                       (let ()
                         (declare (not safe))
                         (##car _rest115004115012_)))
                      (_tl115010115031_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest115004115012_))))
                  (let* ((_super-id115034_ _hd115009115029_)
                         (_rest115036_ _tl115010115031_))
                    (declare (not safe))
                    (_K115008115026_ _rest115036_ _super-id115034_)))
                '#!void)))
        (let* ((_ctor-method115086_
                (let ((_$e115038_ _ctor-method114996_))
                  (if _$e115038_
                      _$e115038_
                      (let _lp115041_ ((_rest115043_ _super114994_)
                                       (_method115044_ '#f))
                        (let* ((_rest115045115053_ _rest115043_)
                               (_else115047115061_ (lambda () _method115044_))
                               (_K115049115074_
                                (lambda (_rest115064_ _super-id115065_)
                                  (let* ((_klass115067_
                                          (let ((__tmp115397
                                                 (let ((__tmp115398
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id114993_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp115398))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp115397
                                             _super-id115065_)))
                                         (_$e115069_
                                          (##structure-ref
                                           _klass115067_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e115069_
                                        ((lambda (_ctor-method115072_)
                                           (if _method115044_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method115072_
                                                          _method115044_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp115041_
                                                      _rest115064_
                                                      _ctor-method115072_))
                                                   (let ((__tmp115399
                                                          (let ((__tmp115400
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id114993_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp115400))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp115399
                                                      _method115044_
                                                      _ctor-method115072_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp115041_
                                                  _rest115064_
                                                  _ctor-method115072_))))
                                         _$e115069_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp115041_
                                           _rest115064_
                                           _method115044_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest115045115053_))
                              (let ((_hd115050115077_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest115045115053_)))
                                    (_tl115051115079_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest115045115053_))))
                                (let* ((_super-id115082_ _hd115050115077_)
                                       (_rest115084_ _tl115051115079_))
                                  (declare (not safe))
                                  (_K115049115074_
                                   _rest115084_
                                   _super-id115082_)))
                              (let ()
                                (declare (not safe))
                                (_else115047115061_))))))))
               (_g115401_
                (let ((__tmp115406
                       (lambda (_klass-id115088_)
                         (let ((__tmp115407
                                (##structure-ref
                                 (let ((__tmp115408
                                        (let ((__tmp115409
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id114993_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp115409))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp115408
                                    _klass-id115088_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id115088_ __tmp115407))))
                      (__tmp115403
                       (lambda (_klass-id115090_)
                         (##structure-ref
                          (let ((__tmp115404
                                 (let ((__tmp115405
                                        (let ()
                                          (declare (not safe))
                                          (cons _id114993_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp115405))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp115404
                             _klass-id115090_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super114994_
                   'get-precedence-list:
                   __tmp115406
                   'struct:
                   __tmp115403
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g115402_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g115401_)
                         (##vector-length _g115401_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g115402_ 2)))
                  (error "Context expects 2 values" _g115402_)))
            (let ((_precedence-list115092_
                   (let () (declare (not safe)) (##vector-ref _g115401_ 0)))
                  (_base-struct115093_
                   (let () (declare (not safe)) (##vector-ref _g115401_ 1))))
              (let ((_fields115095_
                     (let ((__tmp115410
                            (let ((__tmp115411
                                   (let ()
                                     (declare (not safe))
                                     (cons _id114993_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp115411))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp115410
                        _base-struct115093_
                        _precedence-list115092_
                        _slots114995_))))
                (##structure-set! _self114992_ _id114993_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self114992_
                 _super114994_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114992_
                 _precedence-list115092_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114992_
                 _slots114995_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114992_
                 _fields115095_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114992_
                 _ctor-method115086_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114992_
                 _struct?114997_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114992_
                 _final?114998_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114992_
                 _metaclass114999_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self115098_
               _id115099_
               _super115100_
               _precedence-list115101_
               _slots115102_
               _fields115103_
               _constructor115104_
               _struct?115105_
               _final?115106_
               _metaclass115107_
               _methods115108_)
        (##structure-set! _self115098_ _id115099_ '1 gxc#!type::t '#f)
        (##structure-set! _self115098_ _super115100_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self115098_
         _precedence-list115101_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self115098_ _slots115102_ '4 gxc#!class::t '#f)
        (##structure-set! _self115098_ _fields115103_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self115098_
         _constructor115104_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self115098_ _struct?115105_ '7 gxc#!class::t '#f)
        (##structure-set! _self115098_ _final?115106_ '8 gxc#!class::t '#f)
        (##structure-set! _self115098_ _metaclass115107_ '9 gxc#!class::t '#f)
        (if _methods115108_
            (##structure-set!
             _self115098_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods115108_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g115413_
        (let ((_g115412_ (let () (declare (not safe)) (##length _g115413_))))
          (cond ((let () (declare (not safe)) (##fx= _g115412_ 8))
                 (apply (lambda (_self114992_
                                 _id114993_
                                 _super114994_
                                 _slots114995_
                                 _ctor-method114996_
                                 _struct?114997_
                                 _final?114998_
                                 _metaclass114999_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self114992_
                             _id114993_
                             _super114994_
                             _slots114995_
                             _ctor-method114996_
                             _struct?114997_
                             _final?114998_
                             _metaclass114999_)))
                        _g115413_))
                ((let () (declare (not safe)) (##fx= _g115412_ 11))
                 (apply (lambda (_self115098_
                                 _id115099_
                                 _super115100_
                                 _precedence-list115101_
                                 _slots115102_
                                 _fields115103_
                                 _constructor115104_
                                 _struct?115105_
                                 _final?115106_
                                 _metaclass115107_
                                 _methods115108_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self115098_
                             _id115099_
                             _super115100_
                             _precedence-list115101_
                             _slots115102_
                             _fields115103_
                             _constructor115104_
                             _struct?115105_
                             _final?115106_
                             _metaclass115107_
                             _methods115108_)))
                        _g115413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g115413_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass115281 __method-table115282)
        (let ((__final?115283
               (let ((__slot115293
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115281 'final?))))
                 (if __slot115293
                     __slot115293
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__metaclass115284
               (let ((__slot115294
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115281 'metaclass))))
                 (if __slot115294
                     __slot115294
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__slots115285
               (let ((__slot115295
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115281 'slots))))
                 (if __slot115295
                     __slot115295
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__methods115286
               (let ((__slot115296
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115281 'methods))))
                 (if __slot115296
                     __slot115296
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__precedence-list115287
               (let ((__slot115297
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115281 'precedence-list))))
                 (if __slot115297
                     __slot115297
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__id115288
               (let ((__slot115298
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115281 'id))))
                 (if __slot115298
                     __slot115298
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super115289
               (let ((__slot115299
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115281 'super))))
                 (if __slot115299
                     __slot115299
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__constructor115290
               (let ((__slot115300
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115281 'constructor))))
                 (if __slot115300
                     __slot115300
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__fields115291
               (let ((__slot115301
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115281 'fields))))
                 (if __slot115301
                     __slot115301
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__struct?115292
               (let ((__slot115302
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115281 'struct?))))
                 (if __slot115302
                     __slot115302
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?))))))
          (lambda _g115415_
            (let ((_g115414_
                   (let () (declare (not safe)) (##length _g115415_))))
              (cond ((let () (declare (not safe)) (##fx= _g115414_ 8))
                     (apply (lambda (_self114992_
                                     _id114993_
                                     _super114994_
                                     _slots114995_
                                     _ctor-method114996_
                                     _struct?114997_
                                     _final?114998_
                                     _metaclass114999_)
                              (let _lp115001_ ((_rest115003_ _super114994_))
                                (let* ((_rest115004115012_ _rest115003_)
                                       (_else115006115020_ (lambda () '#!void))
                                       (_K115008115026_
                                        (lambda (_rest115023_ _super-id115024_)
                                          (if (##structure-ref
                                               (let ((__tmp115418
                                                      (let ((__tmp115419
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id114993_ '()))))
                (declare (not safe))
                (cons '!class __tmp115419))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp115418
                                                  _super-id115024_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp115416
                                                     (let ((__tmp115417
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id114993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp115417))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp115416
                                                 _super-id115024_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp115001_ _rest115023_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest115004115012_))
                                      (let ((_hd115009115029_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest115004115012_)))
                                            (_tl115010115031_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest115004115012_))))
                                        (let* ((_super-id115034_
                                                _hd115009115029_)
                                               (_rest115036_ _tl115010115031_))
                                          (declare (not safe))
                                          (_K115008115026_
                                           _rest115036_
                                           _super-id115034_)))
                                      '#!void)))
                              (let* ((_ctor-method115086_
                                      (let ((_$e115038_ _ctor-method114996_))
                                        (if _$e115038_
                                            _$e115038_
                                            (let _lp115041_ ((_rest115043_
                                                              _super114994_)
                                                             (_method115044_
                                                              '#f))
                                              (let* ((_rest115045115053_
                                                      _rest115043_)
                                                     (_else115047115061_
                                                      (lambda ()
                                                        _method115044_))
                                                     (_K115049115074_
                                                      (lambda (_rest115064_
                                                               _super-id115065_)
                                                        (let* ((_klass115067_
                                                                (let ((__tmp115420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp115421
                                      (let ()
                                        (declare (not safe))
                                        (cons _id114993_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp115421))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp115420
                           _super-id115065_)))
                       (_$e115069_
                        (##structure-ref _klass115067_ '6 gxc#!class::t '#f)))
                  (if _$e115069_
                      ((lambda (_ctor-method115072_)
                         (if _method115044_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method115072_ _method115044_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp115041_
                                    _rest115064_
                                    _ctor-method115072_))
                                 (let ((__tmp115422
                                        (let ((__tmp115423
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id114993_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp115423))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp115422
                                    _method115044_
                                    _ctor-method115072_)))
                             (let ()
                               (declare (not safe))
                               (_lp115041_ _rest115064_ _ctor-method115072_))))
                       _$e115069_)
                      (let ()
                        (declare (not safe))
                        (_lp115041_ _rest115064_ _method115044_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest115045115053_))
                                                    (let ((_hd115050115077_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest115045115053_)))
                                                          (_tl115051115079_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest115045115053_))))
                                                      (let* ((_super-id115082_
                                                              _hd115050115077_)
                                                             (_rest115084_
                                                              _tl115051115079_))
                                                        (declare (not safe))
                                                        (_K115049115074_
                                                         _rest115084_
                                                         _super-id115082_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else115047115061_))))))))
                                     (_g115424_
                                      (let ((__tmp115429
                                             (lambda (_klass-id115088_)
                                               (let ((__tmp115430
                                                      (##structure-ref
                                                       (let ((__tmp115431
                                                              (let ((__tmp115432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id114993_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp115432))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp115431 _klass-id115088_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id115088_
                                                       __tmp115430))))
                                            (__tmp115426
                                             (lambda (_klass-id115090_)
                                               (##structure-ref
                                                (let ((__tmp115427
                                                       (let ((__tmp115428
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id114993_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp115428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp115427
                                                   _klass-id115090_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super114994_
                                         'get-precedence-list:
                                         __tmp115429
                                         'struct:
                                         __tmp115426
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g115425_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g115424_)
                                               (##vector-length _g115424_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g115425_ 2)))
                                        (error "Context expects 2 values"
                                               _g115425_)))
                                  (let ((_precedence-list115092_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g115424_ 0)))
                                        (_base-struct115093_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g115424_ 1))))
                                    (let ((_fields115095_
                                           (let ((__tmp115433
                                                  (let ((__tmp115434
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id114993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp115434))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp115433
                                              _base-struct115093_
                                              _precedence-list115092_
                                              _slots114995_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114992_
                                         _id114993_
                                         __id115288
                                         __klass115281
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114992_
                                         _super114994_
                                         __super115289
                                         __klass115281
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114992_
                                         _precedence-list115092_
                                         __precedence-list115287
                                         __klass115281
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114992_
                                         _slots114995_
                                         __slots115285
                                         __klass115281
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114992_
                                         _fields115095_
                                         __fields115291
                                         __klass115281
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114992_
                                         _ctor-method115086_
                                         __constructor115290
                                         __klass115281
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114992_
                                         _struct?114997_
                                         __struct?115292
                                         __klass115281
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114992_
                                         _final?114998_
                                         __final?115283
                                         __klass115281
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114992_
                                         _metaclass114999_
                                         __metaclass115284
                                         __klass115281
                                         '#f)))))))
                            _g115415_))
                    ((let () (declare (not safe)) (##fx= _g115414_ 11))
                     (apply (lambda (_self115098_
                                     _id115099_
                                     _super115100_
                                     _precedence-list115101_
                                     _slots115102_
                                     _fields115103_
                                     _constructor115104_
                                     _struct?115105_
                                     _final?115106_
                                     _metaclass115107_
                                     _methods115108_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115098_
                                 _id115099_
                                 __id115288
                                 __klass115281
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115098_
                                 _super115100_
                                 __super115289
                                 __klass115281
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115098_
                                 _precedence-list115101_
                                 __precedence-list115287
                                 __klass115281
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115098_
                                 _slots115102_
                                 __slots115285
                                 __klass115281
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115098_
                                 _fields115103_
                                 __fields115291
                                 __klass115281
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115098_
                                 _constructor115104_
                                 __constructor115290
                                 __klass115281
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115098_
                                 _struct?115105_
                                 __struct?115292
                                 __klass115281
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115098_
                                 _final?115106_
                                 __final?115283
                                 __klass115281
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self115098_
                                 _metaclass115107_
                                 __metaclass115284
                                 __klass115281
                                 '#f))
                              (if _methods115108_
                                  (let ((__tmp115435
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods115108_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self115098_
                                     __tmp115435
                                     __methods115286
                                     __klass115281
                                     '#f))
                                  '#!void))
                            _g115415_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g115415_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where114844_
               _base-struct114845_
               _precedence-list114846_
               _direct-slots114847_)
        (let* ((_base-fields114849_
                (if _base-struct114845_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where114844_
                        _base-struct114845_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields114851_ (reverse _base-fields114849_))
               (_seen-slots114859_
                (let ((_tab114853_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g114854114856_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab114853_ _g114854114856_ '#t)))
                   _base-fields114849_)
                  _tab114853_))
               (_process-slot114863_
                (lambda (_slot114861_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots114859_ _slot114861_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots114859_ _slot114861_ '#t))
                        (set! _r-fields114851_
                              (let ()
                                (declare (not safe))
                                (cons _slot114861_ _r-fields114851_))))))))
          (for-each
           (lambda (_mixin114866_)
             (let ((_klass114868_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where114844_
                       _mixin114866_))))
               (if (##structure-ref _klass114868_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot114863_
                    (##structure-ref _klass114868_ '5 gxc#!class::t '#f)))))
           _precedence-list114846_)
          (for-each _process-slot114863_ _direct-slots114847_)
          (reverse _r-fields114851_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass114803_ _slot114804_)
        (let _lp114806_ ((_rest114808_
                          (##structure-ref _klass114803_ '5 gxc#!class::t '#f))
                         (_offset114809_ '1))
          (let* ((_rest114810114818_ _rest114808_)
                 (_else114812114826_
                  (lambda ()
                    (let ((__tmp115437
                           (##structure-ref _klass114803_ '1 gxc#!type::t '#f))
                          (__tmp115436
                           (##structure-ref
                            _klass114803_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp115437
                       __tmp115436
                       _slot114804_))))
                 (_K114814114832_
                  (lambda (_rest114829_ _s114830_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s114830_ _slot114804_))
                        _offset114809_
                        (let ((__tmp115438
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset114809_ '1))))
                          (declare (not safe))
                          (_lp114806_ _rest114829_ __tmp115438))))))
            (if (let () (declare (not safe)) (##pair? _rest114810114818_))
                (let ((_hd114815114835_
                       (let ()
                         (declare (not safe))
                         (##car _rest114810114818_)))
                      (_tl114816114837_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest114810114818_))))
                  (let* ((_s114840_ _hd114815114835_)
                         (_rest114842_ _tl114816114837_))
                    (declare (not safe))
                    (_K114814114832_ _rest114842_ _s114840_)))
                (let () (declare (not safe)) (_else114812114826_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass114761_ _slot114762_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass114761_ _slot114762_))
            _klass114761_
            (let _lp114764_ ((_rest114766_
                              (##structure-ref
                               _klass114761_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest114767114775_ _rest114766_)
                     (_else114769114783_ (lambda () '#f))
                     (_K114771114791_
                      (lambda (_rest114786_ _super114787_)
                        (let ((_super-class114789_
                               (let ((__tmp115439
                                      (let ((__tmp115440
                                             (let ((__tmp115442
                                                    (##structure-ref
                                                     _klass114761_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp115441
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot114762_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp115442
                                                     __tmp115441))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp115440))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp115439
                                  _super114787_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class114789_
                                 _slot114762_))
                              _super-class114789_
                              (let ()
                                (declare (not safe))
                                (_lp114764_ _rest114786_)))))))
                (if (let () (declare (not safe)) (##pair? _rest114767114775_))
                    (let ((_hd114772114794_
                           (let ()
                             (declare (not safe))
                             (##car _rest114767114775_)))
                          (_tl114773114796_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest114767114775_))))
                      (let* ((_super114799_ _hd114772114794_)
                             (_rest114801_ _tl114773114796_))
                        (declare (not safe))
                        (_K114771114791_ _rest114801_ _super114799_)))
                    (let () (declare (not safe)) (_else114769114783_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass114758_ _slot114759_)
        (if (##structure-ref _klass114758_ '7 gxc#!class::t '#f)
            (memq _slot114759_
                  (##structure-ref _klass114758_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self114755_ _id114756_)
        (##structure-set! _self114755_ _id114756_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass115303 __method-table115304)
        (let ((__id115305
               (let ((__slot115306
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115303 'id))))
                 (if __slot115306
                     __slot115306
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self114755_ _id114756_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114755_
               _id114756_
               __id115305
               __klass115303
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
      (lambda (_self114630_ _id114631_)
        (##structure-set! _self114630_ _id114631_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass115307 __method-table115308)
        (let ((__id115309
               (let ((__slot115310
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115307 'id))))
                 (if __slot115310
                     __slot115310
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self114630_ _id114631_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114630_
               _id114631_
               __id115309
               __klass115307
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
      (lambda (_self114503_ _id114504_ _slot114505_ _checked?114506_)
        (##structure-set! _self114503_ _id114504_ '1 gxc#!type::t '#f)
        (##structure-set! _self114503_ _slot114505_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self114503_
         _checked?114506_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass115311 __method-table115312)
        (let ((__checked?115313
               (let ((__slot115316
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115311 'checked?))))
                 (if __slot115316
                     __slot115316
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id115314
               (let ((__slot115317
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115311 'id))))
                 (if __slot115317
                     __slot115317
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot115315
               (let ((__slot115318
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115311 'slot))))
                 (if __slot115318
                     __slot115318
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self114503_ _id114504_ _slot114505_ _checked?114506_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114503_
               _id114504_
               __id115314
               __klass115311
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114503_
               _slot114505_
               __slot115315
               __klass115311
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114503_
               _checked?114506_
               __checked?115313
               __klass115311
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
      (lambda (_self114376_ _id114377_ _slot114378_ _checked?114379_)
        (##structure-set! _self114376_ _id114377_ '1 gxc#!type::t '#f)
        (##structure-set! _self114376_ _slot114378_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self114376_
         _checked?114379_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass115319 __method-table115320)
        (let ((__checked?115321
               (let ((__slot115324
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115319 'checked?))))
                 (if __slot115324
                     __slot115324
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id115322
               (let ((__slot115325
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115319 'id))))
                 (if __slot115325
                     __slot115325
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot115323
               (let ((__slot115326
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass115319 'slot))))
                 (if __slot115326
                     __slot115326
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self114376_ _id114377_ _slot114378_ _checked?114379_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114376_
               _id114377_
               __id115322
               __klass115319
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114376_
               _slot114378_
               __slot115323
               __klass115319
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114376_
               _checked?114379_
               __checked?115321
               __klass115319
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
      (lambda (_self114220_
               _id114221_
               _arity114222_
               _dispatch114223_
               _inline114224_
               _typedecl114225_)
        (if (let ((__tmp115449
                   (let ()
                     (declare (not safe))
                     (##structure-length _self114220_))))
              (declare (not safe))
              (##fx< '5 __tmp115449))
            (begin
              (let ((__tmp115444
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114220_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114220_
                 _id114221_
                 '1
                 __tmp115444
                 '#f))
              (let ((__tmp115445
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114220_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114220_
                 _arity114222_
                 '2
                 __tmp115445
                 '#f))
              (let ((__tmp115446
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114220_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114220_
                 _dispatch114223_
                 '3
                 __tmp115446
                 '#f))
              (let ((__tmp115447
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114220_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114220_
                 _inline114224_
                 '4
                 __tmp115447
                 '#f))
              (let ((__tmp115448
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114220_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114220_
                 _typedecl114225_
                 '5
                 __tmp115448
                 '#f)))
            (let ((__tmp115443
                   (let ()
                     (declare (not safe))
                     (##vector-length _self114220_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self114220_
                     '5
                     __tmp115443)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self114230_ _id114231_ _arity114232_ _dispatch114233_)
        (let* ((_inline114235_ '#f) (_typedecl114237_ '#f))
          (if (let ((__tmp115456
                     (let ()
                       (declare (not safe))
                       (##structure-length _self114230_))))
                (declare (not safe))
                (##fx< '5 __tmp115456))
              (begin
                (let ((__tmp115451
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114230_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114230_
                   _id114231_
                   '1
                   __tmp115451
                   '#f))
                (let ((__tmp115452
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114230_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114230_
                   _arity114232_
                   '2
                   __tmp115452
                   '#f))
                (let ((__tmp115453
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114230_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114230_
                   _dispatch114233_
                   '3
                   __tmp115453
                   '#f))
                (let ((__tmp115454
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114230_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114230_
                   _inline114235_
                   '4
                   __tmp115454
                   '#f))
                (let ((__tmp115455
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114230_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114230_
                   _typedecl114237_
                   '5
                   __tmp115455
                   '#f)))
              (let ((__tmp115450
                     (let ()
                       (declare (not safe))
                       (##vector-length _self114230_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self114230_
                       '5
                       __tmp115450))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self114239_
               _id114240_
               _arity114241_
               _dispatch114242_
               _inline114243_)
        (let ((_typedecl114245_ '#f))
          (if (let ((__tmp115463
                     (let ()
                       (declare (not safe))
                       (##structure-length _self114239_))))
                (declare (not safe))
                (##fx< '5 __tmp115463))
              (begin
                (let ((__tmp115458
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114239_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114239_
                   _id114240_
                   '1
                   __tmp115458
                   '#f))
                (let ((__tmp115459
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114239_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114239_
                   _arity114241_
                   '2
                   __tmp115459
                   '#f))
                (let ((__tmp115460
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114239_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114239_
                   _dispatch114242_
                   '3
                   __tmp115460
                   '#f))
                (let ((__tmp115461
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114239_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114239_
                   _inline114243_
                   '4
                   __tmp115461
                   '#f))
                (let ((__tmp115462
                       (let ()
                         (declare (not safe))
                         (##structure-type _self114239_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self114239_
                   _typedecl114245_
                   '5
                   __tmp115462
                   '#f)))
              (let ((__tmp115457
                     (let ()
                       (declare (not safe))
                       (##vector-length _self114239_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self114239_
                       '5
                       __tmp115457))))))
    (define gxc#!lambda:::init!
      (lambda _g115465_
        (let ((_g115464_ (let () (declare (not safe)) (##length _g115465_))))
          (cond ((let () (declare (not safe)) (##fx= _g115464_ 4))
                 (apply (lambda (_self114230_
                                 _id114231_
                                 _arity114232_
                                 _dispatch114233_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self114230_
                             _id114231_
                             _arity114232_
                             _dispatch114233_)))
                        _g115465_))
                ((let () (declare (not safe)) (##fx= _g115464_ 5))
                 (apply (lambda (_self114239_
                                 _id114240_
                                 _arity114241_
                                 _dispatch114242_
                                 _inline114243_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self114239_
                             _id114240_
                             _arity114241_
                             _dispatch114242_
                             _inline114243_)))
                        _g115465_))
                ((let () (declare (not safe)) (##fx= _g115464_ 6))
                 (apply (lambda (_self114247_
                                 _id114248_
                                 _arity114249_
                                 _dispatch114250_
                                 _inline114251_
                                 _typedecl114252_)
                          (if (let ((__tmp115472
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self114247_))))
                                (declare (not safe))
                                (##fx< '5 __tmp115472))
                              (begin
                                (let ((__tmp115467
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self114247_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self114247_
                                   _id114248_
                                   '1
                                   __tmp115467
                                   '#f))
                                (let ((__tmp115468
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self114247_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self114247_
                                   _arity114249_
                                   '2
                                   __tmp115468
                                   '#f))
                                (let ((__tmp115469
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self114247_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self114247_
                                   _dispatch114250_
                                   '3
                                   __tmp115469
                                   '#f))
                                (let ((__tmp115470
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self114247_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self114247_
                                   _inline114251_
                                   '4
                                   __tmp115470
                                   '#f))
                                (let ((__tmp115471
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self114247_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self114247_
                                   _typedecl114252_
                                   '5
                                   __tmp115471
                                   '#f)))
                              (let ((__tmp115466
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self114247_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self114247_
                                       '5
                                       __tmp115466))))
                        _g115465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g115465_))))))
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
      (lambda (_self113972_ . _args113973_)
        (apply struct-instance-init! _self113972_ _args113973_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type113847_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113847_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type113847_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass113840_)
        (let ((_$e113842_
               (##structure-ref _klass113840_ '10 gxc#!class::t '#f)))
          (if _$e113842_
              _$e113842_
              (let ((_tab113845_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass113840_
                 _tab113845_
                 '10
                 gxc#!class::t
                 '#f)
                _tab113845_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass113831_ _method113832_)
        (let ((_tab113833113835_
               (##structure-ref _klass113831_ '10 gxc#!class::t '#f)))
          (if _tab113833113835_
              (let ((_tab113838_ _tab113833113835_))
                (declare (not safe))
                (hash-get _tab113838_ _method113832_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type113828_ _method113829_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113828_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type113828_ _method113829_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym113812_ _type113813_ _local?113814_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113813_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym113812_
                     _type113813_)))
        (let ((__tmp115473
               (let () (declare (not safe)) (struct->list _type113813_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym113812_ '" " __tmp115473))
        (let ((__tmp115474
               (if _local?113814_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp115474 _sym113812_ _type113813_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym113819_ _type113820_)
        (let ((_local?113822_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym113819_
           _type113820_
           _local?113822_))))
    (define gxc#optimizer-declare-type!
      (lambda _g115476_
        (let ((_g115475_ (let () (declare (not safe)) (##length _g115476_))))
          (cond ((let () (declare (not safe)) (##fx= _g115475_ 2))
                 (apply (lambda (_sym113819_ _type113820_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym113819_
                             _type113820_)))
                        _g115476_))
                ((let () (declare (not safe)) (##fx= _g115475_ 3))
                 (apply (lambda (_sym113824_ _type113825_ _local?113826_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym113824_
                             _type113825_
                             _local?113826_)))
                        _g115476_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g115476_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym113798_ _local?113799_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym113798_))
        (let ((__tmp115477
               (if _local?113799_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp115477 _sym113798_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym113804_)
        (let ((_local?113806_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym113804_ _local?113806_))))
    (define gxc#optimizer-clear-type!
      (lambda _g115479_
        (let ((_g115478_ (let () (declare (not safe)) (##length _g115479_))))
          (cond ((let () (declare (not safe)) (##fx= _g115478_ 1))
                 (apply (lambda (_sym113804_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym113804_)))
                        _g115479_))
                ((let () (declare (not safe)) (##fx= _g115478_ 2))
                 (apply (lambda (_sym113808_ _local?113809_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym113808_
                             _local?113809_)))
                        _g115479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g115479_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t113766_ _method113767_ _sym113768_ _rebind?113769_)
        (let* ((_type113771_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t113766_)))
               (_$e113773_
                (let () (declare (not safe)) (gxc#!type-vtab _type113771_))))
          (if _$e113773_
              ((lambda (_vtab113776_)
                 (let ((_$e113778_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab113776_ _method113767_))))
                   (if _$e113778_
                       ((lambda (_existing113781_)
                          (if _rebind?113769_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t113766_
                                   '" "
                                   _method113767_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab113776_
                                   _method113767_
                                   _sym113768_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing113781_ _sym113768_))
                                  '#!void
                                  (let ((__tmp115484
                                         (let ((__tmp115485
                                                (let ((__tmp115486
                                                       (let ((__tmp115487
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym113768_ '()))))
                 (declare (not safe))
                 (cons _method113767_ __tmp115487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t113766_
                                                        __tmp115486))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp115485))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp115484
                                     _method113767_)))))
                        _$e113778_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t113766_
                            '" "
                            _method113767_
                            '" => "
                            _sym113768_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab113776_
                            _method113767_
                            _sym113768_))))))
               _$e113773_)
              (if (let () (declare (not safe)) (not _type113771_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t113766_))
                  (let ((__tmp115480
                         (let ((__tmp115481
                                (let ((__tmp115482
                                       (let ((__tmp115483
                                              (let ()
                                                (declare (not safe))
                                                (cons _method113767_ '()))))
                                         (declare (not safe))
                                         (cons _sym113768_ __tmp115483))))
                                  (declare (not safe))
                                  (cons _type-t113766_ __tmp115482))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp115481))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp115480
                     _type113771_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t113786_ _method113787_ _sym113788_)
        (let ((_rebind?113790_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t113786_
           _method113787_
           _sym113788_
           _rebind?113790_))))
    (define gxc#optimizer-declare-method!
      (lambda _g115489_
        (let ((_g115488_ (let () (declare (not safe)) (##length _g115489_))))
          (cond ((let () (declare (not safe)) (##fx= _g115488_ 3))
                 (apply (lambda (_type-t113786_ _method113787_ _sym113788_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t113786_
                             _method113787_
                             _sym113788_)))
                        _g115489_))
                ((let () (declare (not safe)) (##fx= _g115488_ 4))
                 (apply (lambda (_type-t113792_
                                 _method113793_
                                 _sym113794_
                                 _rebind?113795_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t113792_
                             _method113793_
                             _sym113794_
                             _rebind?113795_)))
                        _g115489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g115489_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym113754_)
        (let ((_$e113762_
               (let ((_ht113755113757_ (gxc#current-compile-local-type)))
                 (if _ht113755113757_
                     (let ((_ht113760_ _ht113755113757_))
                       (declare (not safe))
                       (hash-get _ht113760_ _sym113754_))
                     '#f))))
          (if _$e113762_
              _$e113762_
              (let ((__tmp115490
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp115490 _sym113754_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym113746_)
        (let ((_type113747113749_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym113746_))))
          (if _type113747113749_
              (let ((_type113752_ _type113747113749_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type113752_ 'gxc#!alias::t))
                    (let ((__tmp115491
                           (##structure-ref _type113752_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp115491))
                    _type113752_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where113738_ _klass-id113739_)
        (let ((_$e113741_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id113739_))))
          (if _$e113741_
              ((lambda (_klass113744_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass113744_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where113738_
                        _klass-id113739_
                        _klass113744_)))
                 _klass113744_)
               _$e113741_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where113738_
                 _klass-id113739_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t113735_ _method113736_)
        (let ((__tmp115492
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t113735_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp115492 _method113736_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym113733_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym113733_))
        (let ((__tmp115493
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp115493 _sym113733_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym113731_)
        (let ((__tmp115494
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp115494 _sym113731_))))
    (define gxc#identifier-symbol
      (lambda (_stx113729_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx113729_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx113729_))
            (let () (declare (not safe)) (gx#stx-e _stx113729_)))))))
