(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1709125256)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp114286 (list))
            (__tmp114284
             (let ((__tmp114285
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114285 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp114286
         '(type ssxi methods)
         __tmp114284
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args114220_
        (apply make-instance gxc#optimizer-info::t _$args114220_)))
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
      (lambda (_self114218_)
        (if (let ((__tmp114294
                   (let ()
                     (declare (not safe))
                     (##structure-length _self114218_))))
              (declare (not safe))
              (##fx< '3 __tmp114294))
            (begin
              (let ((__tmp114289
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114288
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114218_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114218_
                 __tmp114289
                 '1
                 __tmp114288
                 '#f))
              (let ((__tmp114291
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114290
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114218_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114218_
                 __tmp114291
                 '2
                 __tmp114290
                 '#f))
              (let ((__tmp114293
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114292
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114218_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114218_
                 __tmp114293
                 '3
                 __tmp114292
                 '#f)))
            (let ((__tmp114287
                   (let ()
                     (declare (not safe))
                     (##vector-length _self114218_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self114218_
                     '3
                     __tmp114287)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp114297 (list))
            (__tmp114295
             (let ((__tmp114296
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114296 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp114297
         '(id)
         __tmp114295
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args114093_ (apply make-instance gxc#!type::t _$args114093_)))
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
      (let ((__tmp114300 (list gxc#!type::t))
            (__tmp114298
             (let ((__tmp114299
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114299 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp114300
         '()
         __tmp114298
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args114090_ (apply make-instance gxc#!alias::t _$args114090_)))
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
      (let ((__tmp114303 (list gxc#!type::t))
            (__tmp114301
             (let ((__tmp114302
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114302 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp114303
         '()
         __tmp114301
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args114087_
        (apply make-instance gxc#!procedure::t _$args114087_)))
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
      (let ((__tmp114306 (list gxc#!type::t))
            (__tmp114304
             (let ((__tmp114305
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114305 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp114306
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp114304
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args114084_ (apply make-instance gxc#!class::t _$args114084_)))
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
      (let ((__tmp114309 (list gxc#!procedure::t))
            (__tmp114307
             (let ((__tmp114308
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114308 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp114309
         '()
         __tmp114307
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args114081_
        (apply make-instance gxc#!predicate::t _$args114081_)))
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
      (let ((__tmp114312 (list gxc#!procedure::t))
            (__tmp114310
             (let ((__tmp114311
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114311 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp114312
         '()
         __tmp114310
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args114078_
        (apply make-instance gxc#!constructor::t _$args114078_)))
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
      (let ((__tmp114315 (list gxc#!procedure::t))
            (__tmp114313
             (let ((__tmp114314
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114314 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp114315
         '(slot checked?)
         __tmp114313
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args114075_
        (apply make-instance gxc#!accessor::t _$args114075_)))
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
      (let ((__tmp114318 (list gxc#!procedure::t))
            (__tmp114316
             (let ((__tmp114317
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114317 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp114318
         '(slot checked?)
         __tmp114316
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args114072_
        (apply make-instance gxc#!mutator::t _$args114072_)))
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
      (let ((__tmp114321 (list gxc#!procedure::t))
            (__tmp114319
             (let ((__tmp114320
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114320 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp114321
         '(arity dispatch inline inline-typedecl)
         __tmp114319
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args114069_
        (apply make-instance gxc#!lambda::t _$args114069_)))
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
      (let ((__tmp114324 (list gxc#!procedure::t))
            (__tmp114322
             (let ((__tmp114323
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114323 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp114324
         '(clauses)
         __tmp114322
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args114066_
        (apply make-instance gxc#!case-lambda::t _$args114066_)))
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
      (let ((__tmp114327 (list gxc#!procedure::t))
            (__tmp114325
             (let ((__tmp114326
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114326 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp114327
         '(table dispatch)
         __tmp114325
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args114063_
        (apply make-instance gxc#!kw-lambda::t _$args114063_)))
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
      (let ((__tmp114330 (list gxc#!procedure::t))
            (__tmp114328
             (let ((__tmp114329
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114329 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp114330
         '(keys main)
         __tmp114328
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args114060_
        (apply make-instance gxc#!kw-lambda-primary::t _$args114060_)))
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
      (let ((__tmp114331 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp114331
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args114057_
        (apply make-instance gxc#!primitive::t _$args114057_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp114332 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp114332
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args114054_
        (apply make-instance gxc#!primitive-lambda::t _$args114054_)))
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
      (let ((__tmp114333 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp114333
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args114051_
        (apply make-instance gxc#!primitive-case-lambda::t _$args114051_)))
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
      (lambda (_self113933_
               _id113934_
               _super113935_
               _slots113936_
               _ctor-method113937_
               _struct?113938_
               _final?113939_
               _metaclass113940_)
        (let _lp113942_ ((_rest113944_ _super113935_))
          (let* ((_rest113945113953_ _rest113944_)
                 (_else113947113961_ (lambda () '#!void))
                 (_K113949113967_
                  (lambda (_rest113964_ _super-id113965_)
                    (if (##structure-ref
                         (let ((__tmp114336
                                (let ((__tmp114337
                                       (let ()
                                         (declare (not safe))
                                         (cons _id113934_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp114337))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp114336
                            _super-id113965_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp114334
                               (let ((__tmp114335
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113934_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114335))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp114334
                           _super-id113965_))
                        '#!void)
                    (let () (declare (not safe)) (_lp113942_ _rest113964_)))))
            (if (let () (declare (not safe)) (##pair? _rest113945113953_))
                (let ((_hd113950113970_
                       (let ()
                         (declare (not safe))
                         (##car _rest113945113953_)))
                      (_tl113951113972_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113945113953_))))
                  (let* ((_super-id113975_ _hd113950113970_)
                         (_rest113977_ _tl113951113972_))
                    (declare (not safe))
                    (_K113949113967_ _rest113977_ _super-id113975_)))
                '#!void)))
        (let* ((_ctor-method114027_
                (let ((_$e113979_ _ctor-method113937_))
                  (if _$e113979_
                      _$e113979_
                      (let _lp113982_ ((_rest113984_ _super113935_)
                                       (_method113985_ '#f))
                        (let* ((_rest113986113994_ _rest113984_)
                               (_else113988114002_ (lambda () _method113985_))
                               (_K113990114015_
                                (lambda (_rest114005_ _super-id114006_)
                                  (let* ((_klass114008_
                                          (let ((__tmp114338
                                                 (let ((__tmp114339
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id113934_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp114339))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp114338
                                             _super-id114006_)))
                                         (_$e114010_
                                          (##structure-ref
                                           _klass114008_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e114010_
                                        ((lambda (_ctor-method114013_)
                                           (if _method113985_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method114013_
                                                          _method113985_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp113982_
                                                      _rest114005_
                                                      _ctor-method114013_))
                                                   (let ((__tmp114340
                                                          (let ((__tmp114341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id113934_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp114341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp114340
                                                      _method113985_
                                                      _ctor-method114013_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp113982_
                                                  _rest114005_
                                                  _ctor-method114013_))))
                                         _$e114010_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp113982_
                                           _rest114005_
                                           _method113985_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest113986113994_))
                              (let ((_hd113991114018_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest113986113994_)))
                                    (_tl113992114020_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest113986113994_))))
                                (let* ((_super-id114023_ _hd113991114018_)
                                       (_rest114025_ _tl113992114020_))
                                  (declare (not safe))
                                  (_K113990114015_
                                   _rest114025_
                                   _super-id114023_)))
                              (let ()
                                (declare (not safe))
                                (_else113988114002_))))))))
               (_g114342_
                (let ((__tmp114347
                       (lambda (_klass-id114029_)
                         (let ((__tmp114348
                                (##structure-ref
                                 (let ((__tmp114349
                                        (let ((__tmp114350
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113934_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114350))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp114349
                                    _klass-id114029_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id114029_ __tmp114348))))
                      (__tmp114344
                       (lambda (_klass-id114031_)
                         (##structure-ref
                          (let ((__tmp114345
                                 (let ((__tmp114346
                                        (let ()
                                          (declare (not safe))
                                          (cons _id113934_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp114346))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp114345
                             _klass-id114031_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super113935_
                   'get-precedence-list:
                   __tmp114347
                   'struct:
                   __tmp114344
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g114343_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g114342_)
                         (##vector-length _g114342_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g114343_ 2)))
                  (error "Context expects 2 values" _g114343_)))
            (let ((_precedence-list114033_
                   (let () (declare (not safe)) (##vector-ref _g114342_ 0)))
                  (_base-struct114034_
                   (let () (declare (not safe)) (##vector-ref _g114342_ 1))))
              (let ((_fields114036_
                     (let ((__tmp114351
                            (let ((__tmp114352
                                   (let ()
                                     (declare (not safe))
                                     (cons _id113934_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp114352))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp114351
                        _base-struct114034_
                        _precedence-list114033_
                        _slots113936_))))
                (##structure-set! _self113933_ _id113934_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self113933_
                 _super113935_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113933_
                 _precedence-list114033_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113933_
                 _slots113936_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113933_
                 _fields114036_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113933_
                 _ctor-method114027_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113933_
                 _struct?113938_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113933_
                 _final?113939_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113933_
                 _metaclass113940_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self114039_
               _id114040_
               _super114041_
               _precedence-list114042_
               _slots114043_
               _fields114044_
               _constructor114045_
               _struct?114046_
               _final?114047_
               _metaclass114048_
               _methods114049_)
        (##structure-set! _self114039_ _id114040_ '1 gxc#!type::t '#f)
        (##structure-set! _self114039_ _super114041_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self114039_
         _precedence-list114042_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self114039_ _slots114043_ '4 gxc#!class::t '#f)
        (##structure-set! _self114039_ _fields114044_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self114039_
         _constructor114045_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self114039_ _struct?114046_ '7 gxc#!class::t '#f)
        (##structure-set! _self114039_ _final?114047_ '8 gxc#!class::t '#f)
        (##structure-set! _self114039_ _metaclass114048_ '9 gxc#!class::t '#f)
        (if _methods114049_
            (##structure-set!
             _self114039_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods114049_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g114354_
        (let ((_g114353_ (let () (declare (not safe)) (##length _g114354_))))
          (cond ((let () (declare (not safe)) (##fx= _g114353_ 8))
                 (apply (lambda (_self113933_
                                 _id113934_
                                 _super113935_
                                 _slots113936_
                                 _ctor-method113937_
                                 _struct?113938_
                                 _final?113939_
                                 _metaclass113940_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self113933_
                             _id113934_
                             _super113935_
                             _slots113936_
                             _ctor-method113937_
                             _struct?113938_
                             _final?113939_
                             _metaclass113940_)))
                        _g114354_))
                ((let () (declare (not safe)) (##fx= _g114353_ 11))
                 (apply (lambda (_self114039_
                                 _id114040_
                                 _super114041_
                                 _precedence-list114042_
                                 _slots114043_
                                 _fields114044_
                                 _constructor114045_
                                 _struct?114046_
                                 _final?114047_
                                 _metaclass114048_
                                 _methods114049_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self114039_
                             _id114040_
                             _super114041_
                             _precedence-list114042_
                             _slots114043_
                             _fields114044_
                             _constructor114045_
                             _struct?114046_
                             _final?114047_
                             _metaclass114048_
                             _methods114049_)))
                        _g114354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g114354_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass114222 __method-table114223)
        (let ((__super114224
               (let ((__slot114234
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114222 'super))))
                 (if __slot114234
                     __slot114234
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__metaclass114225
               (let ((__slot114235
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114222 'metaclass))))
                 (if __slot114235
                     __slot114235
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__fields114226
               (let ((__slot114236
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114222 'fields))))
                 (if __slot114236
                     __slot114236
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__methods114227
               (let ((__slot114237
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114222 'methods))))
                 (if __slot114237
                     __slot114237
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__final?114228
               (let ((__slot114238
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114222 'final?))))
                 (if __slot114238
                     __slot114238
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__slots114229
               (let ((__slot114239
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114222 'slots))))
                 (if __slot114239
                     __slot114239
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__id114230
               (let ((__slot114240
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114222 'id))))
                 (if __slot114240
                     __slot114240
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__struct?114231
               (let ((__slot114241
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114222 'struct?))))
                 (if __slot114241
                     __slot114241
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__constructor114232
               (let ((__slot114242
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114222 'constructor))))
                 (if __slot114242
                     __slot114242
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__precedence-list114233
               (let ((__slot114243
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114222 'precedence-list))))
                 (if __slot114243
                     __slot114243
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list))))))
          (lambda _g114356_
            (let ((_g114355_
                   (let () (declare (not safe)) (##length _g114356_))))
              (cond ((let () (declare (not safe)) (##fx= _g114355_ 8))
                     (apply (lambda (_self113933_
                                     _id113934_
                                     _super113935_
                                     _slots113936_
                                     _ctor-method113937_
                                     _struct?113938_
                                     _final?113939_
                                     _metaclass113940_)
                              (let _lp113942_ ((_rest113944_ _super113935_))
                                (let* ((_rest113945113953_ _rest113944_)
                                       (_else113947113961_ (lambda () '#!void))
                                       (_K113949113967_
                                        (lambda (_rest113964_ _super-id113965_)
                                          (if (##structure-ref
                                               (let ((__tmp114359
                                                      (let ((__tmp114360
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id113934_ '()))))
                (declare (not safe))
                (cons '!class __tmp114360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp114359
                                                  _super-id113965_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp114357
                                                     (let ((__tmp114358
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id113934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp114358))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp114357
                                                 _super-id113965_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp113942_ _rest113964_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest113945113953_))
                                      (let ((_hd113950113970_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest113945113953_)))
                                            (_tl113951113972_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest113945113953_))))
                                        (let* ((_super-id113975_
                                                _hd113950113970_)
                                               (_rest113977_ _tl113951113972_))
                                          (declare (not safe))
                                          (_K113949113967_
                                           _rest113977_
                                           _super-id113975_)))
                                      '#!void)))
                              (let* ((_ctor-method114027_
                                      (let ((_$e113979_ _ctor-method113937_))
                                        (if _$e113979_
                                            _$e113979_
                                            (let _lp113982_ ((_rest113984_
                                                              _super113935_)
                                                             (_method113985_
                                                              '#f))
                                              (let* ((_rest113986113994_
                                                      _rest113984_)
                                                     (_else113988114002_
                                                      (lambda ()
                                                        _method113985_))
                                                     (_K113990114015_
                                                      (lambda (_rest114005_
                                                               _super-id114006_)
                                                        (let* ((_klass114008_
                                                                (let ((__tmp114361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114362
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113934_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114362))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp114361
                           _super-id114006_)))
                       (_$e114010_
                        (##structure-ref _klass114008_ '6 gxc#!class::t '#f)))
                  (if _$e114010_
                      ((lambda (_ctor-method114013_)
                         (if _method113985_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method114013_ _method113985_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp113982_
                                    _rest114005_
                                    _ctor-method114013_))
                                 (let ((__tmp114363
                                        (let ((__tmp114364
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113934_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114364))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp114363
                                    _method113985_
                                    _ctor-method114013_)))
                             (let ()
                               (declare (not safe))
                               (_lp113982_ _rest114005_ _ctor-method114013_))))
                       _$e114010_)
                      (let ()
                        (declare (not safe))
                        (_lp113982_ _rest114005_ _method113985_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest113986113994_))
                                                    (let ((_hd113991114018_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest113986113994_)))
                                                          (_tl113992114020_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest113986113994_))))
                                                      (let* ((_super-id114023_
                                                              _hd113991114018_)
                                                             (_rest114025_
                                                              _tl113992114020_))
                                                        (declare (not safe))
                                                        (_K113990114015_
                                                         _rest114025_
                                                         _super-id114023_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else113988114002_))))))))
                                     (_g114365_
                                      (let ((__tmp114370
                                             (lambda (_klass-id114029_)
                                               (let ((__tmp114371
                                                      (##structure-ref
                                                       (let ((__tmp114372
                                                              (let ((__tmp114373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id113934_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp114373))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp114372 _klass-id114029_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id114029_
                                                       __tmp114371))))
                                            (__tmp114367
                                             (lambda (_klass-id114031_)
                                               (##structure-ref
                                                (let ((__tmp114368
                                                       (let ((__tmp114369
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id113934_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp114369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp114368
                                                   _klass-id114031_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super113935_
                                         'get-precedence-list:
                                         __tmp114370
                                         'struct:
                                         __tmp114367
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g114366_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g114365_)
                                               (##vector-length _g114365_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g114366_ 2)))
                                        (error "Context expects 2 values"
                                               _g114366_)))
                                  (let ((_precedence-list114033_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114365_ 0)))
                                        (_base-struct114034_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114365_ 1))))
                                    (let ((_fields114036_
                                           (let ((__tmp114374
                                                  (let ((__tmp114375
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id113934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp114375))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp114374
                                              _base-struct114034_
                                              _precedence-list114033_
                                              _slots113936_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113933_
                                         _id113934_
                                         __id114230
                                         __klass114222
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113933_
                                         _super113935_
                                         __super114224
                                         __klass114222
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113933_
                                         _precedence-list114033_
                                         __precedence-list114233
                                         __klass114222
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113933_
                                         _slots113936_
                                         __slots114229
                                         __klass114222
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113933_
                                         _fields114036_
                                         __fields114226
                                         __klass114222
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113933_
                                         _ctor-method114027_
                                         __constructor114232
                                         __klass114222
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113933_
                                         _struct?113938_
                                         __struct?114231
                                         __klass114222
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113933_
                                         _final?113939_
                                         __final?114228
                                         __klass114222
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113933_
                                         _metaclass113940_
                                         __metaclass114225
                                         __klass114222
                                         '#f)))))))
                            _g114356_))
                    ((let () (declare (not safe)) (##fx= _g114355_ 11))
                     (apply (lambda (_self114039_
                                     _id114040_
                                     _super114041_
                                     _precedence-list114042_
                                     _slots114043_
                                     _fields114044_
                                     _constructor114045_
                                     _struct?114046_
                                     _final?114047_
                                     _metaclass114048_
                                     _methods114049_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114039_
                                 _id114040_
                                 __id114230
                                 __klass114222
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114039_
                                 _super114041_
                                 __super114224
                                 __klass114222
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114039_
                                 _precedence-list114042_
                                 __precedence-list114233
                                 __klass114222
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114039_
                                 _slots114043_
                                 __slots114229
                                 __klass114222
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114039_
                                 _fields114044_
                                 __fields114226
                                 __klass114222
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114039_
                                 _constructor114045_
                                 __constructor114232
                                 __klass114222
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114039_
                                 _struct?114046_
                                 __struct?114231
                                 __klass114222
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114039_
                                 _final?114047_
                                 __final?114228
                                 __klass114222
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114039_
                                 _metaclass114048_
                                 __metaclass114225
                                 __klass114222
                                 '#f))
                              (if _methods114049_
                                  (let ((__tmp114376
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods114049_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self114039_
                                     __tmp114376
                                     __methods114227
                                     __klass114222
                                     '#f))
                                  '#!void))
                            _g114356_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g114356_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where113785_
               _base-struct113786_
               _precedence-list113787_
               _direct-slots113788_)
        (let* ((_base-fields113790_
                (if _base-struct113786_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where113785_
                        _base-struct113786_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields113792_ (reverse _base-fields113790_))
               (_seen-slots113800_
                (let ((_tab113794_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g113795113797_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab113794_ _g113795113797_ '#t)))
                   _base-fields113790_)
                  _tab113794_))
               (_process-slot113804_
                (lambda (_slot113802_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots113800_ _slot113802_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots113800_ _slot113802_ '#t))
                        (set! _r-fields113792_
                              (let ()
                                (declare (not safe))
                                (cons _slot113802_ _r-fields113792_))))))))
          (for-each
           (lambda (_mixin113807_)
             (let ((_klass113809_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where113785_
                       _mixin113807_))))
               (if (##structure-ref _klass113809_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot113804_
                    (##structure-ref _klass113809_ '5 gxc#!class::t '#f)))))
           _precedence-list113787_)
          (for-each _process-slot113804_ _direct-slots113788_)
          (reverse _r-fields113792_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass113744_ _slot113745_)
        (let _lp113747_ ((_rest113749_
                          (##structure-ref _klass113744_ '5 gxc#!class::t '#f))
                         (_offset113750_ '1))
          (let* ((_rest113751113759_ _rest113749_)
                 (_else113753113767_
                  (lambda ()
                    (let ((__tmp114378
                           (##structure-ref _klass113744_ '1 gxc#!type::t '#f))
                          (__tmp114377
                           (##structure-ref
                            _klass113744_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp114378
                       __tmp114377
                       _slot113745_))))
                 (_K113755113773_
                  (lambda (_rest113770_ _s113771_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s113771_ _slot113745_))
                        _offset113750_
                        (let ((__tmp114379
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset113750_ '1))))
                          (declare (not safe))
                          (_lp113747_ _rest113770_ __tmp114379))))))
            (if (let () (declare (not safe)) (##pair? _rest113751113759_))
                (let ((_hd113756113776_
                       (let ()
                         (declare (not safe))
                         (##car _rest113751113759_)))
                      (_tl113757113778_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113751113759_))))
                  (let* ((_s113781_ _hd113756113776_)
                         (_rest113783_ _tl113757113778_))
                    (declare (not safe))
                    (_K113755113773_ _rest113783_ _s113781_)))
                (let () (declare (not safe)) (_else113753113767_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass113702_ _slot113703_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass113702_ _slot113703_))
            _klass113702_
            (let _lp113705_ ((_rest113707_
                              (##structure-ref
                               _klass113702_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest113708113716_ _rest113707_)
                     (_else113710113724_ (lambda () '#f))
                     (_K113712113732_
                      (lambda (_rest113727_ _super113728_)
                        (let ((_super-class113730_
                               (let ((__tmp114380
                                      (let ((__tmp114381
                                             (let ((__tmp114383
                                                    (##structure-ref
                                                     _klass113702_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp114382
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot113703_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp114383
                                                     __tmp114382))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp114381))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp114380
                                  _super113728_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class113730_
                                 _slot113703_))
                              _super-class113730_
                              (let ()
                                (declare (not safe))
                                (_lp113705_ _rest113727_)))))))
                (if (let () (declare (not safe)) (##pair? _rest113708113716_))
                    (let ((_hd113713113735_
                           (let ()
                             (declare (not safe))
                             (##car _rest113708113716_)))
                          (_tl113714113737_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest113708113716_))))
                      (let* ((_super113740_ _hd113713113735_)
                             (_rest113742_ _tl113714113737_))
                        (declare (not safe))
                        (_K113712113732_ _rest113742_ _super113740_)))
                    (let () (declare (not safe)) (_else113710113724_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass113699_ _slot113700_)
        (if (##structure-ref _klass113699_ '7 gxc#!class::t '#f)
            (memq _slot113700_
                  (##structure-ref _klass113699_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self113696_ _id113697_)
        (##structure-set! _self113696_ _id113697_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass114244 __method-table114245)
        (let ((__id114246
               (let ((__slot114247
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114244 'id))))
                 (if __slot114247
                     __slot114247
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113696_ _id113697_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113696_
               _id113697_
               __id114246
               __klass114244
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
      (lambda (_self113571_ _id113572_)
        (##structure-set! _self113571_ _id113572_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass114248 __method-table114249)
        (let ((__id114250
               (let ((__slot114251
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114248 'id))))
                 (if __slot114251
                     __slot114251
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113571_ _id113572_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113571_
               _id113572_
               __id114250
               __klass114248
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
      (lambda (_self113444_ _id113445_ _slot113446_ _checked?113447_)
        (##structure-set! _self113444_ _id113445_ '1 gxc#!type::t '#f)
        (##structure-set! _self113444_ _slot113446_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self113444_
         _checked?113447_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass114252 __method-table114253)
        (let ((__checked?114254
               (let ((__slot114257
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114252 'checked?))))
                 (if __slot114257
                     __slot114257
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id114255
               (let ((__slot114258
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114252 'id))))
                 (if __slot114258
                     __slot114258
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot114256
               (let ((__slot114259
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114252 'slot))))
                 (if __slot114259
                     __slot114259
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self113444_ _id113445_ _slot113446_ _checked?113447_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113444_
               _id113445_
               __id114255
               __klass114252
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113444_
               _slot113446_
               __slot114256
               __klass114252
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113444_
               _checked?113447_
               __checked?114254
               __klass114252
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
      (lambda (_self113317_ _id113318_ _slot113319_ _checked?113320_)
        (##structure-set! _self113317_ _id113318_ '1 gxc#!type::t '#f)
        (##structure-set! _self113317_ _slot113319_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self113317_
         _checked?113320_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass114260 __method-table114261)
        (let ((__checked?114262
               (let ((__slot114265
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114260 'checked?))))
                 (if __slot114265
                     __slot114265
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id114263
               (let ((__slot114266
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114260 'id))))
                 (if __slot114266
                     __slot114266
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot114264
               (let ((__slot114267
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114260 'slot))))
                 (if __slot114267
                     __slot114267
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self113317_ _id113318_ _slot113319_ _checked?113320_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113317_
               _id113318_
               __id114263
               __klass114260
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113317_
               _slot113319_
               __slot114264
               __klass114260
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113317_
               _checked?113320_
               __checked?114262
               __klass114260
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
      (lambda (_self113161_
               _id113162_
               _arity113163_
               _dispatch113164_
               _inline113165_
               _typedecl113166_)
        (if (let ((__tmp114390
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113161_))))
              (declare (not safe))
              (##fx< '5 __tmp114390))
            (begin
              (let ((__tmp114385
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113161_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113161_
                 _id113162_
                 '1
                 __tmp114385
                 '#f))
              (let ((__tmp114386
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113161_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113161_
                 _arity113163_
                 '2
                 __tmp114386
                 '#f))
              (let ((__tmp114387
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113161_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113161_
                 _dispatch113164_
                 '3
                 __tmp114387
                 '#f))
              (let ((__tmp114388
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113161_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113161_
                 _inline113165_
                 '4
                 __tmp114388
                 '#f))
              (let ((__tmp114389
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113161_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113161_
                 _typedecl113166_
                 '5
                 __tmp114389
                 '#f)))
            (let ((__tmp114384
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113161_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113161_
                     '5
                     __tmp114384)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self113171_ _id113172_ _arity113173_ _dispatch113174_)
        (let* ((_inline113176_ '#f) (_typedecl113178_ '#f))
          (if (let ((__tmp114397
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113171_))))
                (declare (not safe))
                (##fx< '5 __tmp114397))
              (begin
                (let ((__tmp114392
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113171_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113171_
                   _id113172_
                   '1
                   __tmp114392
                   '#f))
                (let ((__tmp114393
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113171_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113171_
                   _arity113173_
                   '2
                   __tmp114393
                   '#f))
                (let ((__tmp114394
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113171_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113171_
                   _dispatch113174_
                   '3
                   __tmp114394
                   '#f))
                (let ((__tmp114395
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113171_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113171_
                   _inline113176_
                   '4
                   __tmp114395
                   '#f))
                (let ((__tmp114396
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113171_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113171_
                   _typedecl113178_
                   '5
                   __tmp114396
                   '#f)))
              (let ((__tmp114391
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113171_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113171_
                       '5
                       __tmp114391))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self113180_
               _id113181_
               _arity113182_
               _dispatch113183_
               _inline113184_)
        (let ((_typedecl113186_ '#f))
          (if (let ((__tmp114404
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113180_))))
                (declare (not safe))
                (##fx< '5 __tmp114404))
              (begin
                (let ((__tmp114399
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113180_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113180_
                   _id113181_
                   '1
                   __tmp114399
                   '#f))
                (let ((__tmp114400
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113180_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113180_
                   _arity113182_
                   '2
                   __tmp114400
                   '#f))
                (let ((__tmp114401
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113180_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113180_
                   _dispatch113183_
                   '3
                   __tmp114401
                   '#f))
                (let ((__tmp114402
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113180_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113180_
                   _inline113184_
                   '4
                   __tmp114402
                   '#f))
                (let ((__tmp114403
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113180_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113180_
                   _typedecl113186_
                   '5
                   __tmp114403
                   '#f)))
              (let ((__tmp114398
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113180_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113180_
                       '5
                       __tmp114398))))))
    (define gxc#!lambda:::init!
      (lambda _g114406_
        (let ((_g114405_ (let () (declare (not safe)) (##length _g114406_))))
          (cond ((let () (declare (not safe)) (##fx= _g114405_ 4))
                 (apply (lambda (_self113171_
                                 _id113172_
                                 _arity113173_
                                 _dispatch113174_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self113171_
                             _id113172_
                             _arity113173_
                             _dispatch113174_)))
                        _g114406_))
                ((let () (declare (not safe)) (##fx= _g114405_ 5))
                 (apply (lambda (_self113180_
                                 _id113181_
                                 _arity113182_
                                 _dispatch113183_
                                 _inline113184_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self113180_
                             _id113181_
                             _arity113182_
                             _dispatch113183_
                             _inline113184_)))
                        _g114406_))
                ((let () (declare (not safe)) (##fx= _g114405_ 6))
                 (apply (lambda (_self113188_
                                 _id113189_
                                 _arity113190_
                                 _dispatch113191_
                                 _inline113192_
                                 _typedecl113193_)
                          (if (let ((__tmp114413
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self113188_))))
                                (declare (not safe))
                                (##fx< '5 __tmp114413))
                              (begin
                                (let ((__tmp114408
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113188_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113188_
                                   _id113189_
                                   '1
                                   __tmp114408
                                   '#f))
                                (let ((__tmp114409
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113188_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113188_
                                   _arity113190_
                                   '2
                                   __tmp114409
                                   '#f))
                                (let ((__tmp114410
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113188_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113188_
                                   _dispatch113191_
                                   '3
                                   __tmp114410
                                   '#f))
                                (let ((__tmp114411
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113188_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113188_
                                   _inline113192_
                                   '4
                                   __tmp114411
                                   '#f))
                                (let ((__tmp114412
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113188_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113188_
                                   _typedecl113193_
                                   '5
                                   __tmp114412
                                   '#f)))
                              (let ((__tmp114407
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self113188_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self113188_
                                       '5
                                       __tmp114407))))
                        _g114406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g114406_))))))
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
      (lambda (_self112913_ . _args112914_)
        (apply struct-instance-init! _self112913_ _args112914_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type112788_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112788_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type112788_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass112781_)
        (let ((_$e112783_
               (##structure-ref _klass112781_ '10 gxc#!class::t '#f)))
          (if _$e112783_
              _$e112783_
              (let ((_tab112786_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass112781_
                 _tab112786_
                 '10
                 gxc#!class::t
                 '#f)
                _tab112786_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass112772_ _method112773_)
        (let ((_tab112774112776_
               (##structure-ref _klass112772_ '10 gxc#!class::t '#f)))
          (if _tab112774112776_
              (let ((_tab112779_ _tab112774112776_))
                (declare (not safe))
                (hash-get _tab112779_ _method112773_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type112769_ _method112770_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112769_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type112769_ _method112770_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym112753_ _type112754_ _local?112755_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112754_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym112753_
                     _type112754_)))
        (let ((__tmp114414
               (let () (declare (not safe)) (struct->list _type112754_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym112753_ '" " __tmp114414))
        (let ((__tmp114415
               (if _local?112755_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp114415 _sym112753_ _type112754_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym112760_ _type112761_)
        (let ((_local?112763_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym112760_
           _type112761_
           _local?112763_))))
    (define gxc#optimizer-declare-type!
      (lambda _g114417_
        (let ((_g114416_ (let () (declare (not safe)) (##length _g114417_))))
          (cond ((let () (declare (not safe)) (##fx= _g114416_ 2))
                 (apply (lambda (_sym112760_ _type112761_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym112760_
                             _type112761_)))
                        _g114417_))
                ((let () (declare (not safe)) (##fx= _g114416_ 3))
                 (apply (lambda (_sym112765_ _type112766_ _local?112767_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym112765_
                             _type112766_
                             _local?112767_)))
                        _g114417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g114417_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym112739_ _local?112740_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym112739_))
        (let ((__tmp114418
               (if _local?112740_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp114418 _sym112739_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym112745_)
        (let ((_local?112747_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym112745_ _local?112747_))))
    (define gxc#optimizer-clear-type!
      (lambda _g114420_
        (let ((_g114419_ (let () (declare (not safe)) (##length _g114420_))))
          (cond ((let () (declare (not safe)) (##fx= _g114419_ 1))
                 (apply (lambda (_sym112745_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym112745_)))
                        _g114420_))
                ((let () (declare (not safe)) (##fx= _g114419_ 2))
                 (apply (lambda (_sym112749_ _local?112750_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym112749_
                             _local?112750_)))
                        _g114420_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g114420_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t112712_ _method112713_ _sym112714_ _rebind?112715_)
        (let* ((_type112717_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t112712_)))
               (_$e112719_
                (let () (declare (not safe)) (gxc#!type-vtab _type112717_))))
          (if _$e112719_
              ((lambda (_vtab112722_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab112722_ _method112713_))
                     (if _rebind?112715_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t112712_
                              '" "
                              _method112713_))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              _vtab112722_
                              _method112713_
                              _sym112714_)))
                         (let ((__tmp114425
                                (let ((__tmp114426
                                       (let ((__tmp114427
                                              (let ((__tmp114428
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym112714_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method112713_
                                                      __tmp114428))))
                                         (declare (not safe))
                                         (cons _type-t112712_ __tmp114427))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp114426))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp114425
                            _method112713_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t112712_
                          '" "
                          _method112713_
                          '" => "
                          _sym112714_))
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _vtab112722_
                          _method112713_
                          _sym112714_)))))
               _$e112719_)
              (if (let () (declare (not safe)) (not _type112717_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t112712_))
                  (let ((__tmp114421
                         (let ((__tmp114422
                                (let ((__tmp114423
                                       (let ((__tmp114424
                                              (let ()
                                                (declare (not safe))
                                                (cons _method112713_ '()))))
                                         (declare (not safe))
                                         (cons _sym112714_ __tmp114424))))
                                  (declare (not safe))
                                  (cons _type-t112712_ __tmp114423))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp114422))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp114421
                     _type112717_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t112727_ _method112728_ _sym112729_)
        (let ((_rebind?112731_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t112727_
           _method112728_
           _sym112729_
           _rebind?112731_))))
    (define gxc#optimizer-declare-method!
      (lambda _g114430_
        (let ((_g114429_ (let () (declare (not safe)) (##length _g114430_))))
          (cond ((let () (declare (not safe)) (##fx= _g114429_ 3))
                 (apply (lambda (_type-t112727_ _method112728_ _sym112729_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t112727_
                             _method112728_
                             _sym112729_)))
                        _g114430_))
                ((let () (declare (not safe)) (##fx= _g114429_ 4))
                 (apply (lambda (_type-t112733_
                                 _method112734_
                                 _sym112735_
                                 _rebind?112736_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t112733_
                             _method112734_
                             _sym112735_
                             _rebind?112736_)))
                        _g114430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g114430_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym112700_)
        (let ((_$e112708_
               (let ((_ht112701112703_ (gxc#current-compile-local-type)))
                 (if _ht112701112703_
                     (let ((_ht112706_ _ht112701112703_))
                       (declare (not safe))
                       (hash-get _ht112706_ _sym112700_))
                     '#f))))
          (if _$e112708_
              _$e112708_
              (let ((__tmp114431
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp114431 _sym112700_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym112692_)
        (let ((_type112693112695_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym112692_))))
          (if _type112693112695_
              (let ((_type112698_ _type112693112695_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type112698_ 'gxc#!alias::t))
                    (let ((__tmp114432
                           (##structure-ref _type112698_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp114432))
                    _type112698_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where112684_ _klass-id112685_)
        (let ((_$e112687_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id112685_))))
          (if _$e112687_
              ((lambda (_klass112690_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass112690_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where112684_
                        _klass-id112685_
                        _klass112690_)))
                 _klass112690_)
               _$e112687_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where112684_
                 _klass-id112685_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t112681_ _method112682_)
        (let ((__tmp114433
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t112681_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp114433 _method112682_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym112679_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym112679_))
        (let ((__tmp114434
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp114434 _sym112679_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym112677_)
        (let ((__tmp114435
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp114435 _sym112677_))))
    (define gxc#identifier-symbol
      (lambda (_stx112675_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx112675_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx112675_))
            (let () (declare (not safe)) (gx#stx-e _stx112675_)))))))
