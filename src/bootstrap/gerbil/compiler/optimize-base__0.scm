(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1709213451)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp114306 (list))
            (__tmp114304
             (let ((__tmp114305
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114305 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp114306
         '(type ssxi methods)
         __tmp114304
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args114240_
        (apply make-instance gxc#optimizer-info::t _$args114240_)))
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
      (lambda (_self114238_)
        (if (let ((__tmp114314
                   (let ()
                     (declare (not safe))
                     (##structure-length _self114238_))))
              (declare (not safe))
              (##fx< '3 __tmp114314))
            (begin
              (let ((__tmp114309
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114308
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114238_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114238_
                 __tmp114309
                 '1
                 __tmp114308
                 '#f))
              (let ((__tmp114311
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114310
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114238_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114238_
                 __tmp114311
                 '2
                 __tmp114310
                 '#f))
              (let ((__tmp114313
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114312
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114238_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114238_
                 __tmp114313
                 '3
                 __tmp114312
                 '#f)))
            (let ((__tmp114307
                   (let ()
                     (declare (not safe))
                     (##vector-length _self114238_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self114238_
                     '3
                     __tmp114307)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp114317 (list))
            (__tmp114315
             (let ((__tmp114316
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114316 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp114317
         '(id)
         __tmp114315
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args114113_ (apply make-instance gxc#!type::t _$args114113_)))
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
      (let ((__tmp114320 (list gxc#!type::t))
            (__tmp114318
             (let ((__tmp114319
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114319 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp114320
         '()
         __tmp114318
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args114110_ (apply make-instance gxc#!alias::t _$args114110_)))
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
      (let ((__tmp114323 (list gxc#!type::t))
            (__tmp114321
             (let ((__tmp114322
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114322 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp114323
         '()
         __tmp114321
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args114107_
        (apply make-instance gxc#!procedure::t _$args114107_)))
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
      (let ((__tmp114326 (list gxc#!type::t))
            (__tmp114324
             (let ((__tmp114325
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114325 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp114326
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp114324
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args114104_ (apply make-instance gxc#!class::t _$args114104_)))
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
      (let ((__tmp114329 (list gxc#!procedure::t))
            (__tmp114327
             (let ((__tmp114328
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114328 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp114329
         '()
         __tmp114327
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args114101_
        (apply make-instance gxc#!predicate::t _$args114101_)))
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
      (let ((__tmp114332 (list gxc#!procedure::t))
            (__tmp114330
             (let ((__tmp114331
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114331 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp114332
         '()
         __tmp114330
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args114098_
        (apply make-instance gxc#!constructor::t _$args114098_)))
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
      (let ((__tmp114335 (list gxc#!procedure::t))
            (__tmp114333
             (let ((__tmp114334
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114334 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp114335
         '(slot checked?)
         __tmp114333
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args114095_
        (apply make-instance gxc#!accessor::t _$args114095_)))
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
      (let ((__tmp114338 (list gxc#!procedure::t))
            (__tmp114336
             (let ((__tmp114337
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114337 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp114338
         '(slot checked?)
         __tmp114336
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args114092_
        (apply make-instance gxc#!mutator::t _$args114092_)))
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
      (let ((__tmp114341 (list gxc#!procedure::t))
            (__tmp114339
             (let ((__tmp114340
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114340 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp114341
         '(arity dispatch inline inline-typedecl)
         __tmp114339
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args114089_
        (apply make-instance gxc#!lambda::t _$args114089_)))
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
      (let ((__tmp114344 (list gxc#!procedure::t))
            (__tmp114342
             (let ((__tmp114343
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114343 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp114344
         '(clauses)
         __tmp114342
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args114086_
        (apply make-instance gxc#!case-lambda::t _$args114086_)))
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
      (let ((__tmp114347 (list gxc#!procedure::t))
            (__tmp114345
             (let ((__tmp114346
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114346 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp114347
         '(table dispatch)
         __tmp114345
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args114083_
        (apply make-instance gxc#!kw-lambda::t _$args114083_)))
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
      (let ((__tmp114350 (list gxc#!procedure::t))
            (__tmp114348
             (let ((__tmp114349
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114349 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp114350
         '(keys main)
         __tmp114348
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args114080_
        (apply make-instance gxc#!kw-lambda-primary::t _$args114080_)))
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
      (let ((__tmp114351 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp114351
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args114077_
        (apply make-instance gxc#!primitive::t _$args114077_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp114352 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp114352
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args114074_
        (apply make-instance gxc#!primitive-lambda::t _$args114074_)))
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
      (let ((__tmp114353 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp114353
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args114071_
        (apply make-instance gxc#!primitive-case-lambda::t _$args114071_)))
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
      (lambda (_self113953_
               _id113954_
               _super113955_
               _slots113956_
               _ctor-method113957_
               _struct?113958_
               _final?113959_
               _metaclass113960_)
        (let _lp113962_ ((_rest113964_ _super113955_))
          (let* ((_rest113965113973_ _rest113964_)
                 (_else113967113981_ (lambda () '#!void))
                 (_K113969113987_
                  (lambda (_rest113984_ _super-id113985_)
                    (if (##structure-ref
                         (let ((__tmp114356
                                (let ((__tmp114357
                                       (let ()
                                         (declare (not safe))
                                         (cons _id113954_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp114357))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp114356
                            _super-id113985_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp114354
                               (let ((__tmp114355
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113954_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114355))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp114354
                           _super-id113985_))
                        '#!void)
                    (let () (declare (not safe)) (_lp113962_ _rest113984_)))))
            (if (let () (declare (not safe)) (##pair? _rest113965113973_))
                (let ((_hd113970113990_
                       (let ()
                         (declare (not safe))
                         (##car _rest113965113973_)))
                      (_tl113971113992_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113965113973_))))
                  (let* ((_super-id113995_ _hd113970113990_)
                         (_rest113997_ _tl113971113992_))
                    (declare (not safe))
                    (_K113969113987_ _rest113997_ _super-id113995_)))
                '#!void)))
        (let* ((_ctor-method114047_
                (let ((_$e113999_ _ctor-method113957_))
                  (if _$e113999_
                      _$e113999_
                      (let _lp114002_ ((_rest114004_ _super113955_)
                                       (_method114005_ '#f))
                        (let* ((_rest114006114014_ _rest114004_)
                               (_else114008114022_ (lambda () _method114005_))
                               (_K114010114035_
                                (lambda (_rest114025_ _super-id114026_)
                                  (let* ((_klass114028_
                                          (let ((__tmp114358
                                                 (let ((__tmp114359
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id113954_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp114359))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp114358
                                             _super-id114026_)))
                                         (_$e114030_
                                          (##structure-ref
                                           _klass114028_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e114030_
                                        ((lambda (_ctor-method114033_)
                                           (if _method114005_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method114033_
                                                          _method114005_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp114002_
                                                      _rest114025_
                                                      _ctor-method114033_))
                                                   (let ((__tmp114360
                                                          (let ((__tmp114361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id113954_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp114361))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp114360
                                                      _method114005_
                                                      _ctor-method114033_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp114002_
                                                  _rest114025_
                                                  _ctor-method114033_))))
                                         _$e114030_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp114002_
                                           _rest114025_
                                           _method114005_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest114006114014_))
                              (let ((_hd114011114038_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest114006114014_)))
                                    (_tl114012114040_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest114006114014_))))
                                (let* ((_super-id114043_ _hd114011114038_)
                                       (_rest114045_ _tl114012114040_))
                                  (declare (not safe))
                                  (_K114010114035_
                                   _rest114045_
                                   _super-id114043_)))
                              (let ()
                                (declare (not safe))
                                (_else114008114022_))))))))
               (_g114362_
                (let ((__tmp114367
                       (lambda (_klass-id114049_)
                         (let ((__tmp114368
                                (##structure-ref
                                 (let ((__tmp114369
                                        (let ((__tmp114370
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113954_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114370))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp114369
                                    _klass-id114049_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id114049_ __tmp114368))))
                      (__tmp114364
                       (lambda (_klass-id114051_)
                         (##structure-ref
                          (let ((__tmp114365
                                 (let ((__tmp114366
                                        (let ()
                                          (declare (not safe))
                                          (cons _id113954_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp114366))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp114365
                             _klass-id114051_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super113955_
                   'get-precedence-list:
                   __tmp114367
                   'struct:
                   __tmp114364
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g114363_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g114362_)
                         (##vector-length _g114362_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g114363_ 2)))
                  (error "Context expects 2 values" _g114363_)))
            (let ((_precedence-list114053_
                   (let () (declare (not safe)) (##vector-ref _g114362_ 0)))
                  (_base-struct114054_
                   (let () (declare (not safe)) (##vector-ref _g114362_ 1))))
              (let ((_fields114056_
                     (let ((__tmp114371
                            (let ((__tmp114372
                                   (let ()
                                     (declare (not safe))
                                     (cons _id113954_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp114372))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp114371
                        _base-struct114054_
                        _precedence-list114053_
                        _slots113956_))))
                (##structure-set! _self113953_ _id113954_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self113953_
                 _super113955_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113953_
                 _precedence-list114053_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113953_
                 _slots113956_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113953_
                 _fields114056_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113953_
                 _ctor-method114047_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113953_
                 _struct?113958_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113953_
                 _final?113959_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113953_
                 _metaclass113960_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self114059_
               _id114060_
               _super114061_
               _precedence-list114062_
               _slots114063_
               _fields114064_
               _constructor114065_
               _struct?114066_
               _final?114067_
               _metaclass114068_
               _methods114069_)
        (##structure-set! _self114059_ _id114060_ '1 gxc#!type::t '#f)
        (##structure-set! _self114059_ _super114061_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self114059_
         _precedence-list114062_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self114059_ _slots114063_ '4 gxc#!class::t '#f)
        (##structure-set! _self114059_ _fields114064_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self114059_
         _constructor114065_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self114059_ _struct?114066_ '7 gxc#!class::t '#f)
        (##structure-set! _self114059_ _final?114067_ '8 gxc#!class::t '#f)
        (##structure-set! _self114059_ _metaclass114068_ '9 gxc#!class::t '#f)
        (if _methods114069_
            (##structure-set!
             _self114059_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods114069_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g114374_
        (let ((_g114373_ (let () (declare (not safe)) (##length _g114374_))))
          (cond ((let () (declare (not safe)) (##fx= _g114373_ 8))
                 (apply (lambda (_self113953_
                                 _id113954_
                                 _super113955_
                                 _slots113956_
                                 _ctor-method113957_
                                 _struct?113958_
                                 _final?113959_
                                 _metaclass113960_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self113953_
                             _id113954_
                             _super113955_
                             _slots113956_
                             _ctor-method113957_
                             _struct?113958_
                             _final?113959_
                             _metaclass113960_)))
                        _g114374_))
                ((let () (declare (not safe)) (##fx= _g114373_ 11))
                 (apply (lambda (_self114059_
                                 _id114060_
                                 _super114061_
                                 _precedence-list114062_
                                 _slots114063_
                                 _fields114064_
                                 _constructor114065_
                                 _struct?114066_
                                 _final?114067_
                                 _metaclass114068_
                                 _methods114069_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self114059_
                             _id114060_
                             _super114061_
                             _precedence-list114062_
                             _slots114063_
                             _fields114064_
                             _constructor114065_
                             _struct?114066_
                             _final?114067_
                             _metaclass114068_
                             _methods114069_)))
                        _g114374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g114374_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass114242 __method-table114243)
        (let ((__id114244
               (let ((__slot114254
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114242 'id))))
                 (if __slot114254
                     __slot114254
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super114245
               (let ((__slot114255
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114242 'super))))
                 (if __slot114255
                     __slot114255
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__final?114246
               (let ((__slot114256
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114242 'final?))))
                 (if __slot114256
                     __slot114256
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__precedence-list114247
               (let ((__slot114257
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114242 'precedence-list))))
                 (if __slot114257
                     __slot114257
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__constructor114248
               (let ((__slot114258
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114242 'constructor))))
                 (if __slot114258
                     __slot114258
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__metaclass114249
               (let ((__slot114259
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114242 'metaclass))))
                 (if __slot114259
                     __slot114259
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__struct?114250
               (let ((__slot114260
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114242 'struct?))))
                 (if __slot114260
                     __slot114260
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__fields114251
               (let ((__slot114261
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114242 'fields))))
                 (if __slot114261
                     __slot114261
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__methods114252
               (let ((__slot114262
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114242 'methods))))
                 (if __slot114262
                     __slot114262
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__slots114253
               (let ((__slot114263
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114242 'slots))))
                 (if __slot114263
                     __slot114263
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots))))))
          (lambda _g114376_
            (let ((_g114375_
                   (let () (declare (not safe)) (##length _g114376_))))
              (cond ((let () (declare (not safe)) (##fx= _g114375_ 8))
                     (apply (lambda (_self113953_
                                     _id113954_
                                     _super113955_
                                     _slots113956_
                                     _ctor-method113957_
                                     _struct?113958_
                                     _final?113959_
                                     _metaclass113960_)
                              (let _lp113962_ ((_rest113964_ _super113955_))
                                (let* ((_rest113965113973_ _rest113964_)
                                       (_else113967113981_ (lambda () '#!void))
                                       (_K113969113987_
                                        (lambda (_rest113984_ _super-id113985_)
                                          (if (##structure-ref
                                               (let ((__tmp114379
                                                      (let ((__tmp114380
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id113954_ '()))))
                (declare (not safe))
                (cons '!class __tmp114380))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp114379
                                                  _super-id113985_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp114377
                                                     (let ((__tmp114378
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id113954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp114378))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp114377
                                                 _super-id113985_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp113962_ _rest113984_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest113965113973_))
                                      (let ((_hd113970113990_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest113965113973_)))
                                            (_tl113971113992_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest113965113973_))))
                                        (let* ((_super-id113995_
                                                _hd113970113990_)
                                               (_rest113997_ _tl113971113992_))
                                          (declare (not safe))
                                          (_K113969113987_
                                           _rest113997_
                                           _super-id113995_)))
                                      '#!void)))
                              (let* ((_ctor-method114047_
                                      (let ((_$e113999_ _ctor-method113957_))
                                        (if _$e113999_
                                            _$e113999_
                                            (let _lp114002_ ((_rest114004_
                                                              _super113955_)
                                                             (_method114005_
                                                              '#f))
                                              (let* ((_rest114006114014_
                                                      _rest114004_)
                                                     (_else114008114022_
                                                      (lambda ()
                                                        _method114005_))
                                                     (_K114010114035_
                                                      (lambda (_rest114025_
                                                               _super-id114026_)
                                                        (let* ((_klass114028_
                                                                (let ((__tmp114381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114382
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113954_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114382))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp114381
                           _super-id114026_)))
                       (_$e114030_
                        (##structure-ref _klass114028_ '6 gxc#!class::t '#f)))
                  (if _$e114030_
                      ((lambda (_ctor-method114033_)
                         (if _method114005_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method114033_ _method114005_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp114002_
                                    _rest114025_
                                    _ctor-method114033_))
                                 (let ((__tmp114383
                                        (let ((__tmp114384
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113954_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114384))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp114383
                                    _method114005_
                                    _ctor-method114033_)))
                             (let ()
                               (declare (not safe))
                               (_lp114002_ _rest114025_ _ctor-method114033_))))
                       _$e114030_)
                      (let ()
                        (declare (not safe))
                        (_lp114002_ _rest114025_ _method114005_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest114006114014_))
                                                    (let ((_hd114011114038_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest114006114014_)))
                                                          (_tl114012114040_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest114006114014_))))
                                                      (let* ((_super-id114043_
                                                              _hd114011114038_)
                                                             (_rest114045_
                                                              _tl114012114040_))
                                                        (declare (not safe))
                                                        (_K114010114035_
                                                         _rest114045_
                                                         _super-id114043_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else114008114022_))))))))
                                     (_g114385_
                                      (let ((__tmp114390
                                             (lambda (_klass-id114049_)
                                               (let ((__tmp114391
                                                      (##structure-ref
                                                       (let ((__tmp114392
                                                              (let ((__tmp114393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id113954_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp114393))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp114392 _klass-id114049_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id114049_
                                                       __tmp114391))))
                                            (__tmp114387
                                             (lambda (_klass-id114051_)
                                               (##structure-ref
                                                (let ((__tmp114388
                                                       (let ((__tmp114389
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id113954_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp114389))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp114388
                                                   _klass-id114051_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super113955_
                                         'get-precedence-list:
                                         __tmp114390
                                         'struct:
                                         __tmp114387
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g114386_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g114385_)
                                               (##vector-length _g114385_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g114386_ 2)))
                                        (error "Context expects 2 values"
                                               _g114386_)))
                                  (let ((_precedence-list114053_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114385_ 0)))
                                        (_base-struct114054_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114385_ 1))))
                                    (let ((_fields114056_
                                           (let ((__tmp114394
                                                  (let ((__tmp114395
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id113954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp114395))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp114394
                                              _base-struct114054_
                                              _precedence-list114053_
                                              _slots113956_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113953_
                                         _id113954_
                                         __id114244
                                         __klass114242
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113953_
                                         _super113955_
                                         __super114245
                                         __klass114242
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113953_
                                         _precedence-list114053_
                                         __precedence-list114247
                                         __klass114242
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113953_
                                         _slots113956_
                                         __slots114253
                                         __klass114242
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113953_
                                         _fields114056_
                                         __fields114251
                                         __klass114242
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113953_
                                         _ctor-method114047_
                                         __constructor114248
                                         __klass114242
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113953_
                                         _struct?113958_
                                         __struct?114250
                                         __klass114242
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113953_
                                         _final?113959_
                                         __final?114246
                                         __klass114242
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113953_
                                         _metaclass113960_
                                         __metaclass114249
                                         __klass114242
                                         '#f)))))))
                            _g114376_))
                    ((let () (declare (not safe)) (##fx= _g114375_ 11))
                     (apply (lambda (_self114059_
                                     _id114060_
                                     _super114061_
                                     _precedence-list114062_
                                     _slots114063_
                                     _fields114064_
                                     _constructor114065_
                                     _struct?114066_
                                     _final?114067_
                                     _metaclass114068_
                                     _methods114069_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114059_
                                 _id114060_
                                 __id114244
                                 __klass114242
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114059_
                                 _super114061_
                                 __super114245
                                 __klass114242
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114059_
                                 _precedence-list114062_
                                 __precedence-list114247
                                 __klass114242
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114059_
                                 _slots114063_
                                 __slots114253
                                 __klass114242
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114059_
                                 _fields114064_
                                 __fields114251
                                 __klass114242
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114059_
                                 _constructor114065_
                                 __constructor114248
                                 __klass114242
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114059_
                                 _struct?114066_
                                 __struct?114250
                                 __klass114242
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114059_
                                 _final?114067_
                                 __final?114246
                                 __klass114242
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114059_
                                 _metaclass114068_
                                 __metaclass114249
                                 __klass114242
                                 '#f))
                              (if _methods114069_
                                  (let ((__tmp114396
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods114069_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self114059_
                                     __tmp114396
                                     __methods114252
                                     __klass114242
                                     '#f))
                                  '#!void))
                            _g114376_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g114376_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where113805_
               _base-struct113806_
               _precedence-list113807_
               _direct-slots113808_)
        (let* ((_base-fields113810_
                (if _base-struct113806_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where113805_
                        _base-struct113806_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields113812_ (reverse _base-fields113810_))
               (_seen-slots113820_
                (let ((_tab113814_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g113815113817_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab113814_ _g113815113817_ '#t)))
                   _base-fields113810_)
                  _tab113814_))
               (_process-slot113824_
                (lambda (_slot113822_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots113820_ _slot113822_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots113820_ _slot113822_ '#t))
                        (set! _r-fields113812_
                              (let ()
                                (declare (not safe))
                                (cons _slot113822_ _r-fields113812_))))))))
          (for-each
           (lambda (_mixin113827_)
             (let ((_klass113829_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where113805_
                       _mixin113827_))))
               (if (##structure-ref _klass113829_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot113824_
                    (##structure-ref _klass113829_ '5 gxc#!class::t '#f)))))
           _precedence-list113807_)
          (for-each _process-slot113824_ _direct-slots113808_)
          (reverse _r-fields113812_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass113764_ _slot113765_)
        (let _lp113767_ ((_rest113769_
                          (##structure-ref _klass113764_ '5 gxc#!class::t '#f))
                         (_offset113770_ '1))
          (let* ((_rest113771113779_ _rest113769_)
                 (_else113773113787_
                  (lambda ()
                    (let ((__tmp114398
                           (##structure-ref _klass113764_ '1 gxc#!type::t '#f))
                          (__tmp114397
                           (##structure-ref
                            _klass113764_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp114398
                       __tmp114397
                       _slot113765_))))
                 (_K113775113793_
                  (lambda (_rest113790_ _s113791_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s113791_ _slot113765_))
                        _offset113770_
                        (let ((__tmp114399
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset113770_ '1))))
                          (declare (not safe))
                          (_lp113767_ _rest113790_ __tmp114399))))))
            (if (let () (declare (not safe)) (##pair? _rest113771113779_))
                (let ((_hd113776113796_
                       (let ()
                         (declare (not safe))
                         (##car _rest113771113779_)))
                      (_tl113777113798_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113771113779_))))
                  (let* ((_s113801_ _hd113776113796_)
                         (_rest113803_ _tl113777113798_))
                    (declare (not safe))
                    (_K113775113793_ _rest113803_ _s113801_)))
                (let () (declare (not safe)) (_else113773113787_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass113722_ _slot113723_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass113722_ _slot113723_))
            _klass113722_
            (let _lp113725_ ((_rest113727_
                              (##structure-ref
                               _klass113722_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest113728113736_ _rest113727_)
                     (_else113730113744_ (lambda () '#f))
                     (_K113732113752_
                      (lambda (_rest113747_ _super113748_)
                        (let ((_super-class113750_
                               (let ((__tmp114400
                                      (let ((__tmp114401
                                             (let ((__tmp114403
                                                    (##structure-ref
                                                     _klass113722_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp114402
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot113723_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp114403
                                                     __tmp114402))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp114401))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp114400
                                  _super113748_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class113750_
                                 _slot113723_))
                              _super-class113750_
                              (let ()
                                (declare (not safe))
                                (_lp113725_ _rest113747_)))))))
                (if (let () (declare (not safe)) (##pair? _rest113728113736_))
                    (let ((_hd113733113755_
                           (let ()
                             (declare (not safe))
                             (##car _rest113728113736_)))
                          (_tl113734113757_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest113728113736_))))
                      (let* ((_super113760_ _hd113733113755_)
                             (_rest113762_ _tl113734113757_))
                        (declare (not safe))
                        (_K113732113752_ _rest113762_ _super113760_)))
                    (let () (declare (not safe)) (_else113730113744_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass113719_ _slot113720_)
        (if (##structure-ref _klass113719_ '7 gxc#!class::t '#f)
            (memq _slot113720_
                  (##structure-ref _klass113719_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self113716_ _id113717_)
        (##structure-set! _self113716_ _id113717_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass114264 __method-table114265)
        (let ((__id114266
               (let ((__slot114267
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114264 'id))))
                 (if __slot114267
                     __slot114267
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113716_ _id113717_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113716_
               _id113717_
               __id114266
               __klass114264
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
      (lambda (_self113591_ _id113592_)
        (##structure-set! _self113591_ _id113592_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass114268 __method-table114269)
        (let ((__id114270
               (let ((__slot114271
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114268 'id))))
                 (if __slot114271
                     __slot114271
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113591_ _id113592_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113591_
               _id113592_
               __id114270
               __klass114268
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
      (lambda (_self113464_ _id113465_ _slot113466_ _checked?113467_)
        (##structure-set! _self113464_ _id113465_ '1 gxc#!type::t '#f)
        (##structure-set! _self113464_ _slot113466_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self113464_
         _checked?113467_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass114272 __method-table114273)
        (let ((__id114274
               (let ((__slot114277
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114272 'id))))
                 (if __slot114277
                     __slot114277
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot114275
               (let ((__slot114278
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114272 'slot))))
                 (if __slot114278
                     __slot114278
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?114276
               (let ((__slot114279
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114272 'checked?))))
                 (if __slot114279
                     __slot114279
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self113464_ _id113465_ _slot113466_ _checked?113467_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113464_
               _id113465_
               __id114274
               __klass114272
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113464_
               _slot113466_
               __slot114275
               __klass114272
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113464_
               _checked?113467_
               __checked?114276
               __klass114272
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
      (lambda (_self113337_ _id113338_ _slot113339_ _checked?113340_)
        (##structure-set! _self113337_ _id113338_ '1 gxc#!type::t '#f)
        (##structure-set! _self113337_ _slot113339_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self113337_
         _checked?113340_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass114280 __method-table114281)
        (let ((__id114282
               (let ((__slot114285
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114280 'id))))
                 (if __slot114285
                     __slot114285
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot114283
               (let ((__slot114286
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114280 'slot))))
                 (if __slot114286
                     __slot114286
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?114284
               (let ((__slot114287
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114280 'checked?))))
                 (if __slot114287
                     __slot114287
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self113337_ _id113338_ _slot113339_ _checked?113340_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113337_
               _id113338_
               __id114282
               __klass114280
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113337_
               _slot113339_
               __slot114283
               __klass114280
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113337_
               _checked?113340_
               __checked?114284
               __klass114280
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
      (lambda (_self113181_
               _id113182_
               _arity113183_
               _dispatch113184_
               _inline113185_
               _typedecl113186_)
        (if (let ((__tmp114410
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113181_))))
              (declare (not safe))
              (##fx< '5 __tmp114410))
            (begin
              (let ((__tmp114405
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113181_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113181_
                 _id113182_
                 '1
                 __tmp114405
                 '#f))
              (let ((__tmp114406
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113181_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113181_
                 _arity113183_
                 '2
                 __tmp114406
                 '#f))
              (let ((__tmp114407
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113181_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113181_
                 _dispatch113184_
                 '3
                 __tmp114407
                 '#f))
              (let ((__tmp114408
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113181_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113181_
                 _inline113185_
                 '4
                 __tmp114408
                 '#f))
              (let ((__tmp114409
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113181_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113181_
                 _typedecl113186_
                 '5
                 __tmp114409
                 '#f)))
            (let ((__tmp114404
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113181_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113181_
                     '5
                     __tmp114404)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self113191_ _id113192_ _arity113193_ _dispatch113194_)
        (let* ((_inline113196_ '#f) (_typedecl113198_ '#f))
          (if (let ((__tmp114417
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113191_))))
                (declare (not safe))
                (##fx< '5 __tmp114417))
              (begin
                (let ((__tmp114412
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113191_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113191_
                   _id113192_
                   '1
                   __tmp114412
                   '#f))
                (let ((__tmp114413
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113191_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113191_
                   _arity113193_
                   '2
                   __tmp114413
                   '#f))
                (let ((__tmp114414
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113191_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113191_
                   _dispatch113194_
                   '3
                   __tmp114414
                   '#f))
                (let ((__tmp114415
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113191_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113191_
                   _inline113196_
                   '4
                   __tmp114415
                   '#f))
                (let ((__tmp114416
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113191_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113191_
                   _typedecl113198_
                   '5
                   __tmp114416
                   '#f)))
              (let ((__tmp114411
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113191_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113191_
                       '5
                       __tmp114411))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self113200_
               _id113201_
               _arity113202_
               _dispatch113203_
               _inline113204_)
        (let ((_typedecl113206_ '#f))
          (if (let ((__tmp114424
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113200_))))
                (declare (not safe))
                (##fx< '5 __tmp114424))
              (begin
                (let ((__tmp114419
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113200_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113200_
                   _id113201_
                   '1
                   __tmp114419
                   '#f))
                (let ((__tmp114420
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113200_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113200_
                   _arity113202_
                   '2
                   __tmp114420
                   '#f))
                (let ((__tmp114421
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113200_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113200_
                   _dispatch113203_
                   '3
                   __tmp114421
                   '#f))
                (let ((__tmp114422
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113200_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113200_
                   _inline113204_
                   '4
                   __tmp114422
                   '#f))
                (let ((__tmp114423
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113200_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113200_
                   _typedecl113206_
                   '5
                   __tmp114423
                   '#f)))
              (let ((__tmp114418
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113200_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113200_
                       '5
                       __tmp114418))))))
    (define gxc#!lambda:::init!
      (lambda _g114426_
        (let ((_g114425_ (let () (declare (not safe)) (##length _g114426_))))
          (cond ((let () (declare (not safe)) (##fx= _g114425_ 4))
                 (apply (lambda (_self113191_
                                 _id113192_
                                 _arity113193_
                                 _dispatch113194_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self113191_
                             _id113192_
                             _arity113193_
                             _dispatch113194_)))
                        _g114426_))
                ((let () (declare (not safe)) (##fx= _g114425_ 5))
                 (apply (lambda (_self113200_
                                 _id113201_
                                 _arity113202_
                                 _dispatch113203_
                                 _inline113204_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self113200_
                             _id113201_
                             _arity113202_
                             _dispatch113203_
                             _inline113204_)))
                        _g114426_))
                ((let () (declare (not safe)) (##fx= _g114425_ 6))
                 (apply (lambda (_self113208_
                                 _id113209_
                                 _arity113210_
                                 _dispatch113211_
                                 _inline113212_
                                 _typedecl113213_)
                          (if (let ((__tmp114433
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self113208_))))
                                (declare (not safe))
                                (##fx< '5 __tmp114433))
                              (begin
                                (let ((__tmp114428
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113208_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113208_
                                   _id113209_
                                   '1
                                   __tmp114428
                                   '#f))
                                (let ((__tmp114429
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113208_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113208_
                                   _arity113210_
                                   '2
                                   __tmp114429
                                   '#f))
                                (let ((__tmp114430
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113208_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113208_
                                   _dispatch113211_
                                   '3
                                   __tmp114430
                                   '#f))
                                (let ((__tmp114431
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113208_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113208_
                                   _inline113212_
                                   '4
                                   __tmp114431
                                   '#f))
                                (let ((__tmp114432
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113208_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113208_
                                   _typedecl113213_
                                   '5
                                   __tmp114432
                                   '#f)))
                              (let ((__tmp114427
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self113208_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self113208_
                                       '5
                                       __tmp114427))))
                        _g114426_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g114426_))))))
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
      (lambda (_self112933_ . _args112934_)
        (apply struct-instance-init! _self112933_ _args112934_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type112808_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112808_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type112808_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass112801_)
        (let ((_$e112803_
               (##structure-ref _klass112801_ '10 gxc#!class::t '#f)))
          (if _$e112803_
              _$e112803_
              (let ((_tab112806_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass112801_
                 _tab112806_
                 '10
                 gxc#!class::t
                 '#f)
                _tab112806_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass112792_ _method112793_)
        (let ((_tab112794112796_
               (##structure-ref _klass112792_ '10 gxc#!class::t '#f)))
          (if _tab112794112796_
              (let ((_tab112799_ _tab112794112796_))
                (declare (not safe))
                (hash-get _tab112799_ _method112793_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type112789_ _method112790_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112789_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type112789_ _method112790_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym112773_ _type112774_ _local?112775_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112774_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym112773_
                     _type112774_)))
        (let ((__tmp114434
               (let () (declare (not safe)) (struct->list _type112774_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym112773_ '" " __tmp114434))
        (let ((__tmp114435
               (if _local?112775_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp114435 _sym112773_ _type112774_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym112780_ _type112781_)
        (let ((_local?112783_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym112780_
           _type112781_
           _local?112783_))))
    (define gxc#optimizer-declare-type!
      (lambda _g114437_
        (let ((_g114436_ (let () (declare (not safe)) (##length _g114437_))))
          (cond ((let () (declare (not safe)) (##fx= _g114436_ 2))
                 (apply (lambda (_sym112780_ _type112781_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym112780_
                             _type112781_)))
                        _g114437_))
                ((let () (declare (not safe)) (##fx= _g114436_ 3))
                 (apply (lambda (_sym112785_ _type112786_ _local?112787_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym112785_
                             _type112786_
                             _local?112787_)))
                        _g114437_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g114437_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym112759_ _local?112760_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym112759_))
        (let ((__tmp114438
               (if _local?112760_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp114438 _sym112759_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym112765_)
        (let ((_local?112767_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym112765_ _local?112767_))))
    (define gxc#optimizer-clear-type!
      (lambda _g114440_
        (let ((_g114439_ (let () (declare (not safe)) (##length _g114440_))))
          (cond ((let () (declare (not safe)) (##fx= _g114439_ 1))
                 (apply (lambda (_sym112765_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym112765_)))
                        _g114440_))
                ((let () (declare (not safe)) (##fx= _g114439_ 2))
                 (apply (lambda (_sym112769_ _local?112770_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym112769_
                             _local?112770_)))
                        _g114440_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g114440_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t112732_ _method112733_ _sym112734_ _rebind?112735_)
        (let* ((_type112737_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t112732_)))
               (_$e112739_
                (let () (declare (not safe)) (gxc#!type-vtab _type112737_))))
          (if _$e112739_
              ((lambda (_vtab112742_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab112742_ _method112733_))
                     (if _rebind?112735_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t112732_
                              '" "
                              _method112733_))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              _vtab112742_
                              _method112733_
                              _sym112734_)))
                         (let ((__tmp114445
                                (let ((__tmp114446
                                       (let ((__tmp114447
                                              (let ((__tmp114448
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym112734_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method112733_
                                                      __tmp114448))))
                                         (declare (not safe))
                                         (cons _type-t112732_ __tmp114447))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp114446))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp114445
                            _method112733_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t112732_
                          '" "
                          _method112733_
                          '" => "
                          _sym112734_))
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _vtab112742_
                          _method112733_
                          _sym112734_)))))
               _$e112739_)
              (if (let () (declare (not safe)) (not _type112737_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t112732_))
                  (let ((__tmp114441
                         (let ((__tmp114442
                                (let ((__tmp114443
                                       (let ((__tmp114444
                                              (let ()
                                                (declare (not safe))
                                                (cons _method112733_ '()))))
                                         (declare (not safe))
                                         (cons _sym112734_ __tmp114444))))
                                  (declare (not safe))
                                  (cons _type-t112732_ __tmp114443))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp114442))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp114441
                     _type112737_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t112747_ _method112748_ _sym112749_)
        (let ((_rebind?112751_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t112747_
           _method112748_
           _sym112749_
           _rebind?112751_))))
    (define gxc#optimizer-declare-method!
      (lambda _g114450_
        (let ((_g114449_ (let () (declare (not safe)) (##length _g114450_))))
          (cond ((let () (declare (not safe)) (##fx= _g114449_ 3))
                 (apply (lambda (_type-t112747_ _method112748_ _sym112749_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t112747_
                             _method112748_
                             _sym112749_)))
                        _g114450_))
                ((let () (declare (not safe)) (##fx= _g114449_ 4))
                 (apply (lambda (_type-t112753_
                                 _method112754_
                                 _sym112755_
                                 _rebind?112756_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t112753_
                             _method112754_
                             _sym112755_
                             _rebind?112756_)))
                        _g114450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g114450_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym112720_)
        (let ((_$e112728_
               (let ((_ht112721112723_ (gxc#current-compile-local-type)))
                 (if _ht112721112723_
                     (let ((_ht112726_ _ht112721112723_))
                       (declare (not safe))
                       (hash-get _ht112726_ _sym112720_))
                     '#f))))
          (if _$e112728_
              _$e112728_
              (let ((__tmp114451
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp114451 _sym112720_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym112712_)
        (let ((_type112713112715_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym112712_))))
          (if _type112713112715_
              (let ((_type112718_ _type112713112715_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type112718_ 'gxc#!alias::t))
                    (let ((__tmp114452
                           (##structure-ref _type112718_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp114452))
                    _type112718_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where112704_ _klass-id112705_)
        (let ((_$e112707_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id112705_))))
          (if _$e112707_
              ((lambda (_klass112710_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass112710_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where112704_
                        _klass-id112705_
                        _klass112710_)))
                 _klass112710_)
               _$e112707_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where112704_
                 _klass-id112705_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t112701_ _method112702_)
        (let ((__tmp114453
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t112701_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp114453 _method112702_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym112699_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym112699_))
        (let ((__tmp114454
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp114454 _sym112699_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym112697_)
        (let ((__tmp114455
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp114455 _sym112697_))))
    (define gxc#identifier-symbol
      (lambda (_stx112695_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx112695_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx112695_))
            (let () (declare (not safe)) (gx#stx-e _stx112695_)))))))
