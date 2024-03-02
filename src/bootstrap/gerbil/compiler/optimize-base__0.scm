(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1709375799)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp114298 (list))
            (__tmp114296
             (let ((__tmp114297
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114297 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp114298
         '(type ssxi methods)
         __tmp114296
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args114232_
        (apply make-instance gxc#optimizer-info::t _$args114232_)))
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
      (lambda (_self114230_)
        (if (let ((__tmp114306
                   (let ()
                     (declare (not safe))
                     (##structure-length _self114230_))))
              (declare (not safe))
              (##fx< '3 __tmp114306))
            (begin
              (let ((__tmp114301
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114300
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114230_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114230_
                 __tmp114301
                 '1
                 __tmp114300
                 '#f))
              (let ((__tmp114303
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114302
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114230_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114230_
                 __tmp114303
                 '2
                 __tmp114302
                 '#f))
              (let ((__tmp114305
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114304
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114230_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114230_
                 __tmp114305
                 '3
                 __tmp114304
                 '#f)))
            (let ((__tmp114299
                   (let ()
                     (declare (not safe))
                     (##vector-length _self114230_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self114230_
                     '3
                     __tmp114299)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp114309 (list))
            (__tmp114307
             (let ((__tmp114308
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114308 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp114309
         '(id)
         __tmp114307
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args114105_ (apply make-instance gxc#!type::t _$args114105_)))
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
      (let ((__tmp114312 (list gxc#!type::t))
            (__tmp114310
             (let ((__tmp114311
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114311 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp114312
         '()
         __tmp114310
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args114102_ (apply make-instance gxc#!alias::t _$args114102_)))
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
      (let ((__tmp114315 (list gxc#!type::t))
            (__tmp114313
             (let ((__tmp114314
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114314 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp114315
         '()
         __tmp114313
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args114099_
        (apply make-instance gxc#!procedure::t _$args114099_)))
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
      (let ((__tmp114318 (list gxc#!type::t))
            (__tmp114316
             (let ((__tmp114317
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114317 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp114318
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp114316
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args114096_ (apply make-instance gxc#!class::t _$args114096_)))
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
      (let ((__tmp114321 (list gxc#!procedure::t))
            (__tmp114319
             (let ((__tmp114320
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114320 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp114321
         '()
         __tmp114319
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args114093_
        (apply make-instance gxc#!predicate::t _$args114093_)))
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
      (let ((__tmp114324 (list gxc#!procedure::t))
            (__tmp114322
             (let ((__tmp114323
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114323 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp114324
         '()
         __tmp114322
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args114090_
        (apply make-instance gxc#!constructor::t _$args114090_)))
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
      (let ((__tmp114327 (list gxc#!procedure::t))
            (__tmp114325
             (let ((__tmp114326
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114326 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp114327
         '(slot checked?)
         __tmp114325
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args114087_
        (apply make-instance gxc#!accessor::t _$args114087_)))
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
      (let ((__tmp114330 (list gxc#!procedure::t))
            (__tmp114328
             (let ((__tmp114329
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114329 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp114330
         '(slot checked?)
         __tmp114328
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args114084_
        (apply make-instance gxc#!mutator::t _$args114084_)))
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
      (let ((__tmp114333 (list gxc#!procedure::t))
            (__tmp114331
             (let ((__tmp114332
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114332 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp114333
         '(arity dispatch inline inline-typedecl)
         __tmp114331
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args114081_
        (apply make-instance gxc#!lambda::t _$args114081_)))
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
      (let ((__tmp114336 (list gxc#!procedure::t))
            (__tmp114334
             (let ((__tmp114335
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114335 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp114336
         '(clauses)
         __tmp114334
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args114078_
        (apply make-instance gxc#!case-lambda::t _$args114078_)))
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
      (let ((__tmp114339 (list gxc#!procedure::t))
            (__tmp114337
             (let ((__tmp114338
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114338 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp114339
         '(table dispatch)
         __tmp114337
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args114075_
        (apply make-instance gxc#!kw-lambda::t _$args114075_)))
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
      (let ((__tmp114342 (list gxc#!procedure::t))
            (__tmp114340
             (let ((__tmp114341
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114341 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp114342
         '(keys main)
         __tmp114340
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args114072_
        (apply make-instance gxc#!kw-lambda-primary::t _$args114072_)))
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
      (let ((__tmp114343 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp114343
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args114069_
        (apply make-instance gxc#!primitive::t _$args114069_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp114344 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp114344
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args114066_
        (apply make-instance gxc#!primitive-lambda::t _$args114066_)))
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
      (let ((__tmp114345 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp114345
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args114063_
        (apply make-instance gxc#!primitive-case-lambda::t _$args114063_)))
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
      (lambda (_self113945_
               _id113946_
               _super113947_
               _slots113948_
               _ctor-method113949_
               _struct?113950_
               _final?113951_
               _metaclass113952_)
        (let _lp113954_ ((_rest113956_ _super113947_))
          (let* ((_rest113957113965_ _rest113956_)
                 (_else113959113973_ (lambda () '#!void))
                 (_K113961113979_
                  (lambda (_rest113976_ _super-id113977_)
                    (if (##structure-ref
                         (let ((__tmp114348
                                (let ((__tmp114349
                                       (let ()
                                         (declare (not safe))
                                         (cons _id113946_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp114349))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp114348
                            _super-id113977_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp114346
                               (let ((__tmp114347
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113946_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114347))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp114346
                           _super-id113977_))
                        '#!void)
                    (let () (declare (not safe)) (_lp113954_ _rest113976_)))))
            (if (let () (declare (not safe)) (##pair? _rest113957113965_))
                (let ((_hd113962113982_
                       (let ()
                         (declare (not safe))
                         (##car _rest113957113965_)))
                      (_tl113963113984_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113957113965_))))
                  (let* ((_super-id113987_ _hd113962113982_)
                         (_rest113989_ _tl113963113984_))
                    (declare (not safe))
                    (_K113961113979_ _rest113989_ _super-id113987_)))
                '#!void)))
        (let* ((_ctor-method114039_
                (let ((_$e113991_ _ctor-method113949_))
                  (if _$e113991_
                      _$e113991_
                      (let _lp113994_ ((_rest113996_ _super113947_)
                                       (_method113997_ '#f))
                        (let* ((_rest113998114006_ _rest113996_)
                               (_else114000114014_ (lambda () _method113997_))
                               (_K114002114027_
                                (lambda (_rest114017_ _super-id114018_)
                                  (let* ((_klass114020_
                                          (let ((__tmp114350
                                                 (let ((__tmp114351
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id113946_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp114351))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp114350
                                             _super-id114018_)))
                                         (_$e114022_
                                          (##structure-ref
                                           _klass114020_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e114022_
                                        ((lambda (_ctor-method114025_)
                                           (if _method113997_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method114025_
                                                          _method113997_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp113994_
                                                      _rest114017_
                                                      _ctor-method114025_))
                                                   (let ((__tmp114352
                                                          (let ((__tmp114353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id113946_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp114353))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp114352
                                                      _method113997_
                                                      _ctor-method114025_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp113994_
                                                  _rest114017_
                                                  _ctor-method114025_))))
                                         _$e114022_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp113994_
                                           _rest114017_
                                           _method113997_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest113998114006_))
                              (let ((_hd114003114030_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest113998114006_)))
                                    (_tl114004114032_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest113998114006_))))
                                (let* ((_super-id114035_ _hd114003114030_)
                                       (_rest114037_ _tl114004114032_))
                                  (declare (not safe))
                                  (_K114002114027_
                                   _rest114037_
                                   _super-id114035_)))
                              (let ()
                                (declare (not safe))
                                (_else114000114014_))))))))
               (_g114354_
                (let ((__tmp114359
                       (lambda (_klass-id114041_)
                         (let ((__tmp114360
                                (##structure-ref
                                 (let ((__tmp114361
                                        (let ((__tmp114362
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113946_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114362))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp114361
                                    _klass-id114041_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id114041_ __tmp114360))))
                      (__tmp114356
                       (lambda (_klass-id114043_)
                         (##structure-ref
                          (let ((__tmp114357
                                 (let ((__tmp114358
                                        (let ()
                                          (declare (not safe))
                                          (cons _id113946_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp114358))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp114357
                             _klass-id114043_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super113947_
                   'get-precedence-list:
                   __tmp114359
                   'struct:
                   __tmp114356
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g114355_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g114354_)
                         (##vector-length _g114354_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g114355_ 2)))
                  (error "Context expects 2 values" _g114355_)))
            (let ((_precedence-list114045_
                   (let () (declare (not safe)) (##vector-ref _g114354_ 0)))
                  (_base-struct114046_
                   (let () (declare (not safe)) (##vector-ref _g114354_ 1))))
              (let ((_fields114048_
                     (let ((__tmp114363
                            (let ((__tmp114364
                                   (let ()
                                     (declare (not safe))
                                     (cons _id113946_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp114364))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp114363
                        _base-struct114046_
                        _precedence-list114045_
                        _slots113948_))))
                (##structure-set! _self113945_ _id113946_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self113945_
                 _super113947_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113945_
                 _precedence-list114045_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113945_
                 _slots113948_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113945_
                 _fields114048_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113945_
                 _ctor-method114039_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113945_
                 _struct?113950_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113945_
                 _final?113951_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113945_
                 _metaclass113952_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self114051_
               _id114052_
               _super114053_
               _precedence-list114054_
               _slots114055_
               _fields114056_
               _constructor114057_
               _struct?114058_
               _final?114059_
               _metaclass114060_
               _methods114061_)
        (##structure-set! _self114051_ _id114052_ '1 gxc#!type::t '#f)
        (##structure-set! _self114051_ _super114053_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self114051_
         _precedence-list114054_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self114051_ _slots114055_ '4 gxc#!class::t '#f)
        (##structure-set! _self114051_ _fields114056_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self114051_
         _constructor114057_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self114051_ _struct?114058_ '7 gxc#!class::t '#f)
        (##structure-set! _self114051_ _final?114059_ '8 gxc#!class::t '#f)
        (##structure-set! _self114051_ _metaclass114060_ '9 gxc#!class::t '#f)
        (if _methods114061_
            (##structure-set!
             _self114051_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods114061_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g114366_
        (let ((_g114365_ (let () (declare (not safe)) (##length _g114366_))))
          (cond ((let () (declare (not safe)) (##fx= _g114365_ 8))
                 (apply (lambda (_self113945_
                                 _id113946_
                                 _super113947_
                                 _slots113948_
                                 _ctor-method113949_
                                 _struct?113950_
                                 _final?113951_
                                 _metaclass113952_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self113945_
                             _id113946_
                             _super113947_
                             _slots113948_
                             _ctor-method113949_
                             _struct?113950_
                             _final?113951_
                             _metaclass113952_)))
                        _g114366_))
                ((let () (declare (not safe)) (##fx= _g114365_ 11))
                 (apply (lambda (_self114051_
                                 _id114052_
                                 _super114053_
                                 _precedence-list114054_
                                 _slots114055_
                                 _fields114056_
                                 _constructor114057_
                                 _struct?114058_
                                 _final?114059_
                                 _metaclass114060_
                                 _methods114061_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self114051_
                             _id114052_
                             _super114053_
                             _precedence-list114054_
                             _slots114055_
                             _fields114056_
                             _constructor114057_
                             _struct?114058_
                             _final?114059_
                             _metaclass114060_
                             _methods114061_)))
                        _g114366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g114366_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass114234 __method-table114235)
        (let ((__fields114236
               (let ((__slot114246
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114234 'fields))))
                 (if __slot114246
                     __slot114246
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__final?114237
               (let ((__slot114247
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114234 'final?))))
                 (if __slot114247
                     __slot114247
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__slots114238
               (let ((__slot114248
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114234 'slots))))
                 (if __slot114248
                     __slot114248
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__id114239
               (let ((__slot114249
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114234 'id))))
                 (if __slot114249
                     __slot114249
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super114240
               (let ((__slot114250
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114234 'super))))
                 (if __slot114250
                     __slot114250
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__methods114241
               (let ((__slot114251
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114234 'methods))))
                 (if __slot114251
                     __slot114251
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__metaclass114242
               (let ((__slot114252
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114234 'metaclass))))
                 (if __slot114252
                     __slot114252
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__constructor114243
               (let ((__slot114253
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114234 'constructor))))
                 (if __slot114253
                     __slot114253
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__struct?114244
               (let ((__slot114254
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114234 'struct?))))
                 (if __slot114254
                     __slot114254
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__precedence-list114245
               (let ((__slot114255
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114234 'precedence-list))))
                 (if __slot114255
                     __slot114255
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list))))))
          (lambda _g114368_
            (let ((_g114367_
                   (let () (declare (not safe)) (##length _g114368_))))
              (cond ((let () (declare (not safe)) (##fx= _g114367_ 8))
                     (apply (lambda (_self113945_
                                     _id113946_
                                     _super113947_
                                     _slots113948_
                                     _ctor-method113949_
                                     _struct?113950_
                                     _final?113951_
                                     _metaclass113952_)
                              (let _lp113954_ ((_rest113956_ _super113947_))
                                (let* ((_rest113957113965_ _rest113956_)
                                       (_else113959113973_ (lambda () '#!void))
                                       (_K113961113979_
                                        (lambda (_rest113976_ _super-id113977_)
                                          (if (##structure-ref
                                               (let ((__tmp114371
                                                      (let ((__tmp114372
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id113946_ '()))))
                (declare (not safe))
                (cons '!class __tmp114372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp114371
                                                  _super-id113977_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp114369
                                                     (let ((__tmp114370
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id113946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp114370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp114369
                                                 _super-id113977_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp113954_ _rest113976_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest113957113965_))
                                      (let ((_hd113962113982_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest113957113965_)))
                                            (_tl113963113984_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest113957113965_))))
                                        (let* ((_super-id113987_
                                                _hd113962113982_)
                                               (_rest113989_ _tl113963113984_))
                                          (declare (not safe))
                                          (_K113961113979_
                                           _rest113989_
                                           _super-id113987_)))
                                      '#!void)))
                              (let* ((_ctor-method114039_
                                      (let ((_$e113991_ _ctor-method113949_))
                                        (if _$e113991_
                                            _$e113991_
                                            (let _lp113994_ ((_rest113996_
                                                              _super113947_)
                                                             (_method113997_
                                                              '#f))
                                              (let* ((_rest113998114006_
                                                      _rest113996_)
                                                     (_else114000114014_
                                                      (lambda ()
                                                        _method113997_))
                                                     (_K114002114027_
                                                      (lambda (_rest114017_
                                                               _super-id114018_)
                                                        (let* ((_klass114020_
                                                                (let ((__tmp114373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114374
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113946_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114374))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp114373
                           _super-id114018_)))
                       (_$e114022_
                        (##structure-ref _klass114020_ '6 gxc#!class::t '#f)))
                  (if _$e114022_
                      ((lambda (_ctor-method114025_)
                         (if _method113997_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method114025_ _method113997_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp113994_
                                    _rest114017_
                                    _ctor-method114025_))
                                 (let ((__tmp114375
                                        (let ((__tmp114376
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113946_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114376))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp114375
                                    _method113997_
                                    _ctor-method114025_)))
                             (let ()
                               (declare (not safe))
                               (_lp113994_ _rest114017_ _ctor-method114025_))))
                       _$e114022_)
                      (let ()
                        (declare (not safe))
                        (_lp113994_ _rest114017_ _method113997_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest113998114006_))
                                                    (let ((_hd114003114030_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest113998114006_)))
                                                          (_tl114004114032_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest113998114006_))))
                                                      (let* ((_super-id114035_
                                                              _hd114003114030_)
                                                             (_rest114037_
                                                              _tl114004114032_))
                                                        (declare (not safe))
                                                        (_K114002114027_
                                                         _rest114037_
                                                         _super-id114035_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else114000114014_))))))))
                                     (_g114377_
                                      (let ((__tmp114382
                                             (lambda (_klass-id114041_)
                                               (let ((__tmp114383
                                                      (##structure-ref
                                                       (let ((__tmp114384
                                                              (let ((__tmp114385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id113946_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp114385))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp114384 _klass-id114041_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id114041_
                                                       __tmp114383))))
                                            (__tmp114379
                                             (lambda (_klass-id114043_)
                                               (##structure-ref
                                                (let ((__tmp114380
                                                       (let ((__tmp114381
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id113946_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp114381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp114380
                                                   _klass-id114043_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super113947_
                                         'get-precedence-list:
                                         __tmp114382
                                         'struct:
                                         __tmp114379
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g114378_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g114377_)
                                               (##vector-length _g114377_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g114378_ 2)))
                                        (error "Context expects 2 values"
                                               _g114378_)))
                                  (let ((_precedence-list114045_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114377_ 0)))
                                        (_base-struct114046_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114377_ 1))))
                                    (let ((_fields114048_
                                           (let ((__tmp114386
                                                  (let ((__tmp114387
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id113946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp114387))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp114386
                                              _base-struct114046_
                                              _precedence-list114045_
                                              _slots113948_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113945_
                                         _id113946_
                                         __id114239
                                         __klass114234
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113945_
                                         _super113947_
                                         __super114240
                                         __klass114234
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113945_
                                         _precedence-list114045_
                                         __precedence-list114245
                                         __klass114234
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113945_
                                         _slots113948_
                                         __slots114238
                                         __klass114234
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113945_
                                         _fields114048_
                                         __fields114236
                                         __klass114234
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113945_
                                         _ctor-method114039_
                                         __constructor114243
                                         __klass114234
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113945_
                                         _struct?113950_
                                         __struct?114244
                                         __klass114234
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113945_
                                         _final?113951_
                                         __final?114237
                                         __klass114234
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113945_
                                         _metaclass113952_
                                         __metaclass114242
                                         __klass114234
                                         '#f)))))))
                            _g114368_))
                    ((let () (declare (not safe)) (##fx= _g114367_ 11))
                     (apply (lambda (_self114051_
                                     _id114052_
                                     _super114053_
                                     _precedence-list114054_
                                     _slots114055_
                                     _fields114056_
                                     _constructor114057_
                                     _struct?114058_
                                     _final?114059_
                                     _metaclass114060_
                                     _methods114061_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114051_
                                 _id114052_
                                 __id114239
                                 __klass114234
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114051_
                                 _super114053_
                                 __super114240
                                 __klass114234
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114051_
                                 _precedence-list114054_
                                 __precedence-list114245
                                 __klass114234
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114051_
                                 _slots114055_
                                 __slots114238
                                 __klass114234
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114051_
                                 _fields114056_
                                 __fields114236
                                 __klass114234
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114051_
                                 _constructor114057_
                                 __constructor114243
                                 __klass114234
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114051_
                                 _struct?114058_
                                 __struct?114244
                                 __klass114234
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114051_
                                 _final?114059_
                                 __final?114237
                                 __klass114234
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114051_
                                 _metaclass114060_
                                 __metaclass114242
                                 __klass114234
                                 '#f))
                              (if _methods114061_
                                  (let ((__tmp114388
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods114061_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self114051_
                                     __tmp114388
                                     __methods114241
                                     __klass114234
                                     '#f))
                                  '#!void))
                            _g114368_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g114368_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where113797_
               _base-struct113798_
               _precedence-list113799_
               _direct-slots113800_)
        (let* ((_base-fields113802_
                (if _base-struct113798_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where113797_
                        _base-struct113798_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields113804_ (reverse _base-fields113802_))
               (_seen-slots113812_
                (let ((_tab113806_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g113807113809_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab113806_ _g113807113809_ '#t)))
                   _base-fields113802_)
                  _tab113806_))
               (_process-slot113816_
                (lambda (_slot113814_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots113812_ _slot113814_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots113812_ _slot113814_ '#t))
                        (set! _r-fields113804_
                              (let ()
                                (declare (not safe))
                                (cons _slot113814_ _r-fields113804_))))))))
          (for-each
           (lambda (_mixin113819_)
             (let ((_klass113821_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where113797_
                       _mixin113819_))))
               (if (##structure-ref _klass113821_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot113816_
                    (##structure-ref _klass113821_ '5 gxc#!class::t '#f)))))
           _precedence-list113799_)
          (for-each _process-slot113816_ _direct-slots113800_)
          (reverse _r-fields113804_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass113756_ _slot113757_)
        (let _lp113759_ ((_rest113761_
                          (##structure-ref _klass113756_ '5 gxc#!class::t '#f))
                         (_offset113762_ '1))
          (let* ((_rest113763113771_ _rest113761_)
                 (_else113765113779_
                  (lambda ()
                    (let ((__tmp114390
                           (##structure-ref _klass113756_ '1 gxc#!type::t '#f))
                          (__tmp114389
                           (##structure-ref
                            _klass113756_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp114390
                       __tmp114389
                       _slot113757_))))
                 (_K113767113785_
                  (lambda (_rest113782_ _s113783_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s113783_ _slot113757_))
                        _offset113762_
                        (let ((__tmp114391
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset113762_ '1))))
                          (declare (not safe))
                          (_lp113759_ _rest113782_ __tmp114391))))))
            (if (let () (declare (not safe)) (##pair? _rest113763113771_))
                (let ((_hd113768113788_
                       (let ()
                         (declare (not safe))
                         (##car _rest113763113771_)))
                      (_tl113769113790_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113763113771_))))
                  (let* ((_s113793_ _hd113768113788_)
                         (_rest113795_ _tl113769113790_))
                    (declare (not safe))
                    (_K113767113785_ _rest113795_ _s113793_)))
                (let () (declare (not safe)) (_else113765113779_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass113714_ _slot113715_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass113714_ _slot113715_))
            _klass113714_
            (let _lp113717_ ((_rest113719_
                              (##structure-ref
                               _klass113714_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest113720113728_ _rest113719_)
                     (_else113722113736_ (lambda () '#f))
                     (_K113724113744_
                      (lambda (_rest113739_ _super113740_)
                        (let ((_super-class113742_
                               (let ((__tmp114392
                                      (let ((__tmp114393
                                             (let ((__tmp114395
                                                    (##structure-ref
                                                     _klass113714_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp114394
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot113715_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp114395
                                                     __tmp114394))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp114393))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp114392
                                  _super113740_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class113742_
                                 _slot113715_))
                              _super-class113742_
                              (let ()
                                (declare (not safe))
                                (_lp113717_ _rest113739_)))))))
                (if (let () (declare (not safe)) (##pair? _rest113720113728_))
                    (let ((_hd113725113747_
                           (let ()
                             (declare (not safe))
                             (##car _rest113720113728_)))
                          (_tl113726113749_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest113720113728_))))
                      (let* ((_super113752_ _hd113725113747_)
                             (_rest113754_ _tl113726113749_))
                        (declare (not safe))
                        (_K113724113744_ _rest113754_ _super113752_)))
                    (let () (declare (not safe)) (_else113722113736_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass113711_ _slot113712_)
        (if (##structure-ref _klass113711_ '7 gxc#!class::t '#f)
            (memq _slot113712_
                  (##structure-ref _klass113711_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self113708_ _id113709_)
        (##structure-set! _self113708_ _id113709_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass114256 __method-table114257)
        (let ((__id114258
               (let ((__slot114259
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114256 'id))))
                 (if __slot114259
                     __slot114259
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113708_ _id113709_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113708_
               _id113709_
               __id114258
               __klass114256
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
      (lambda (_self113583_ _id113584_)
        (##structure-set! _self113583_ _id113584_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass114260 __method-table114261)
        (let ((__id114262
               (let ((__slot114263
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114260 'id))))
                 (if __slot114263
                     __slot114263
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113583_ _id113584_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113583_
               _id113584_
               __id114262
               __klass114260
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
      (lambda (_self113456_ _id113457_ _slot113458_ _checked?113459_)
        (##structure-set! _self113456_ _id113457_ '1 gxc#!type::t '#f)
        (##structure-set! _self113456_ _slot113458_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self113456_
         _checked?113459_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass114264 __method-table114265)
        (let ((__id114266
               (let ((__slot114269
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114264 'id))))
                 (if __slot114269
                     __slot114269
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?114267
               (let ((__slot114270
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114264 'checked?))))
                 (if __slot114270
                     __slot114270
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot114268
               (let ((__slot114271
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114264 'slot))))
                 (if __slot114271
                     __slot114271
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self113456_ _id113457_ _slot113458_ _checked?113459_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113456_
               _id113457_
               __id114266
               __klass114264
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113456_
               _slot113458_
               __slot114268
               __klass114264
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113456_
               _checked?113459_
               __checked?114267
               __klass114264
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
      (lambda (_self113329_ _id113330_ _slot113331_ _checked?113332_)
        (##structure-set! _self113329_ _id113330_ '1 gxc#!type::t '#f)
        (##structure-set! _self113329_ _slot113331_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self113329_
         _checked?113332_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
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
              (__checked?114275
               (let ((__slot114278
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114272 'checked?))))
                 (if __slot114278
                     __slot114278
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot114276
               (let ((__slot114279
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114272 'slot))))
                 (if __slot114279
                     __slot114279
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self113329_ _id113330_ _slot113331_ _checked?113332_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113329_
               _id113330_
               __id114274
               __klass114272
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113329_
               _slot113331_
               __slot114276
               __klass114272
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113329_
               _checked?113332_
               __checked?114275
               __klass114272
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
      (lambda (_self113173_
               _id113174_
               _arity113175_
               _dispatch113176_
               _inline113177_
               _typedecl113178_)
        (if (let ((__tmp114402
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113173_))))
              (declare (not safe))
              (##fx< '5 __tmp114402))
            (begin
              (let ((__tmp114397
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113173_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113173_
                 _id113174_
                 '1
                 __tmp114397
                 '#f))
              (let ((__tmp114398
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113173_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113173_
                 _arity113175_
                 '2
                 __tmp114398
                 '#f))
              (let ((__tmp114399
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113173_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113173_
                 _dispatch113176_
                 '3
                 __tmp114399
                 '#f))
              (let ((__tmp114400
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113173_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113173_
                 _inline113177_
                 '4
                 __tmp114400
                 '#f))
              (let ((__tmp114401
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113173_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113173_
                 _typedecl113178_
                 '5
                 __tmp114401
                 '#f)))
            (let ((__tmp114396
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113173_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113173_
                     '5
                     __tmp114396)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self113183_ _id113184_ _arity113185_ _dispatch113186_)
        (let* ((_inline113188_ '#f) (_typedecl113190_ '#f))
          (if (let ((__tmp114409
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113183_))))
                (declare (not safe))
                (##fx< '5 __tmp114409))
              (begin
                (let ((__tmp114404
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113183_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113183_
                   _id113184_
                   '1
                   __tmp114404
                   '#f))
                (let ((__tmp114405
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113183_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113183_
                   _arity113185_
                   '2
                   __tmp114405
                   '#f))
                (let ((__tmp114406
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113183_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113183_
                   _dispatch113186_
                   '3
                   __tmp114406
                   '#f))
                (let ((__tmp114407
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113183_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113183_
                   _inline113188_
                   '4
                   __tmp114407
                   '#f))
                (let ((__tmp114408
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113183_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113183_
                   _typedecl113190_
                   '5
                   __tmp114408
                   '#f)))
              (let ((__tmp114403
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113183_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113183_
                       '5
                       __tmp114403))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self113192_
               _id113193_
               _arity113194_
               _dispatch113195_
               _inline113196_)
        (let ((_typedecl113198_ '#f))
          (if (let ((__tmp114416
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113192_))))
                (declare (not safe))
                (##fx< '5 __tmp114416))
              (begin
                (let ((__tmp114411
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113192_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113192_
                   _id113193_
                   '1
                   __tmp114411
                   '#f))
                (let ((__tmp114412
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113192_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113192_
                   _arity113194_
                   '2
                   __tmp114412
                   '#f))
                (let ((__tmp114413
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113192_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113192_
                   _dispatch113195_
                   '3
                   __tmp114413
                   '#f))
                (let ((__tmp114414
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113192_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113192_
                   _inline113196_
                   '4
                   __tmp114414
                   '#f))
                (let ((__tmp114415
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113192_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113192_
                   _typedecl113198_
                   '5
                   __tmp114415
                   '#f)))
              (let ((__tmp114410
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113192_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113192_
                       '5
                       __tmp114410))))))
    (define gxc#!lambda:::init!
      (lambda _g114418_
        (let ((_g114417_ (let () (declare (not safe)) (##length _g114418_))))
          (cond ((let () (declare (not safe)) (##fx= _g114417_ 4))
                 (apply (lambda (_self113183_
                                 _id113184_
                                 _arity113185_
                                 _dispatch113186_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self113183_
                             _id113184_
                             _arity113185_
                             _dispatch113186_)))
                        _g114418_))
                ((let () (declare (not safe)) (##fx= _g114417_ 5))
                 (apply (lambda (_self113192_
                                 _id113193_
                                 _arity113194_
                                 _dispatch113195_
                                 _inline113196_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self113192_
                             _id113193_
                             _arity113194_
                             _dispatch113195_
                             _inline113196_)))
                        _g114418_))
                ((let () (declare (not safe)) (##fx= _g114417_ 6))
                 (apply (lambda (_self113200_
                                 _id113201_
                                 _arity113202_
                                 _dispatch113203_
                                 _inline113204_
                                 _typedecl113205_)
                          (if (let ((__tmp114425
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self113200_))))
                                (declare (not safe))
                                (##fx< '5 __tmp114425))
                              (begin
                                (let ((__tmp114420
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113200_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113200_
                                   _id113201_
                                   '1
                                   __tmp114420
                                   '#f))
                                (let ((__tmp114421
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113200_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113200_
                                   _arity113202_
                                   '2
                                   __tmp114421
                                   '#f))
                                (let ((__tmp114422
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113200_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113200_
                                   _dispatch113203_
                                   '3
                                   __tmp114422
                                   '#f))
                                (let ((__tmp114423
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113200_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113200_
                                   _inline113204_
                                   '4
                                   __tmp114423
                                   '#f))
                                (let ((__tmp114424
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113200_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113200_
                                   _typedecl113205_
                                   '5
                                   __tmp114424
                                   '#f)))
                              (let ((__tmp114419
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self113200_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self113200_
                                       '5
                                       __tmp114419))))
                        _g114418_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g114418_))))))
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
      (lambda (_self112925_ . _args112926_)
        (apply struct-instance-init! _self112925_ _args112926_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type112800_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112800_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type112800_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass112793_)
        (let ((_$e112795_
               (##structure-ref _klass112793_ '10 gxc#!class::t '#f)))
          (if _$e112795_
              _$e112795_
              (let ((_tab112798_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass112793_
                 _tab112798_
                 '10
                 gxc#!class::t
                 '#f)
                _tab112798_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass112784_ _method112785_)
        (let ((_tab112786112788_
               (##structure-ref _klass112784_ '10 gxc#!class::t '#f)))
          (if _tab112786112788_
              (let ((_tab112791_ _tab112786112788_))
                (declare (not safe))
                (hash-get _tab112791_ _method112785_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type112781_ _method112782_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112781_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type112781_ _method112782_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym112765_ _type112766_ _local?112767_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112766_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym112765_
                     _type112766_)))
        (let ((__tmp114426
               (let () (declare (not safe)) (struct->list _type112766_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym112765_ '" " __tmp114426))
        (let ((__tmp114427
               (if _local?112767_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp114427 _sym112765_ _type112766_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym112772_ _type112773_)
        (let ((_local?112775_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym112772_
           _type112773_
           _local?112775_))))
    (define gxc#optimizer-declare-type!
      (lambda _g114429_
        (let ((_g114428_ (let () (declare (not safe)) (##length _g114429_))))
          (cond ((let () (declare (not safe)) (##fx= _g114428_ 2))
                 (apply (lambda (_sym112772_ _type112773_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym112772_
                             _type112773_)))
                        _g114429_))
                ((let () (declare (not safe)) (##fx= _g114428_ 3))
                 (apply (lambda (_sym112777_ _type112778_ _local?112779_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym112777_
                             _type112778_
                             _local?112779_)))
                        _g114429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g114429_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym112751_ _local?112752_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym112751_))
        (let ((__tmp114430
               (if _local?112752_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp114430 _sym112751_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym112757_)
        (let ((_local?112759_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym112757_ _local?112759_))))
    (define gxc#optimizer-clear-type!
      (lambda _g114432_
        (let ((_g114431_ (let () (declare (not safe)) (##length _g114432_))))
          (cond ((let () (declare (not safe)) (##fx= _g114431_ 1))
                 (apply (lambda (_sym112757_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym112757_)))
                        _g114432_))
                ((let () (declare (not safe)) (##fx= _g114431_ 2))
                 (apply (lambda (_sym112761_ _local?112762_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym112761_
                             _local?112762_)))
                        _g114432_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g114432_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t112719_ _method112720_ _sym112721_ _rebind?112722_)
        (let* ((_type112724_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t112719_)))
               (_$e112726_
                (let () (declare (not safe)) (gxc#!type-vtab _type112724_))))
          (if _$e112726_
              ((lambda (_vtab112729_)
                 (let ((_$e112731_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab112729_ _method112720_))))
                   (if _$e112731_
                       ((lambda (_existing112734_)
                          (if _rebind?112722_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t112719_
                                   '" "
                                   _method112720_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab112729_
                                   _method112720_
                                   _sym112721_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing112734_ _sym112721_))
                                  '#!void
                                  (let ((__tmp114437
                                         (let ((__tmp114438
                                                (let ((__tmp114439
                                                       (let ((__tmp114440
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym112721_ '()))))
                 (declare (not safe))
                 (cons _method112720_ __tmp114440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t112719_
                                                        __tmp114439))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp114438))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp114437
                                     _method112720_)))))
                        _$e112731_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t112719_
                            '" "
                            _method112720_
                            '" => "
                            _sym112721_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab112729_
                            _method112720_
                            _sym112721_))))))
               _$e112726_)
              (if (let () (declare (not safe)) (not _type112724_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t112719_))
                  (let ((__tmp114433
                         (let ((__tmp114434
                                (let ((__tmp114435
                                       (let ((__tmp114436
                                              (let ()
                                                (declare (not safe))
                                                (cons _method112720_ '()))))
                                         (declare (not safe))
                                         (cons _sym112721_ __tmp114436))))
                                  (declare (not safe))
                                  (cons _type-t112719_ __tmp114435))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp114434))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp114433
                     _type112724_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t112739_ _method112740_ _sym112741_)
        (let ((_rebind?112743_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t112739_
           _method112740_
           _sym112741_
           _rebind?112743_))))
    (define gxc#optimizer-declare-method!
      (lambda _g114442_
        (let ((_g114441_ (let () (declare (not safe)) (##length _g114442_))))
          (cond ((let () (declare (not safe)) (##fx= _g114441_ 3))
                 (apply (lambda (_type-t112739_ _method112740_ _sym112741_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t112739_
                             _method112740_
                             _sym112741_)))
                        _g114442_))
                ((let () (declare (not safe)) (##fx= _g114441_ 4))
                 (apply (lambda (_type-t112745_
                                 _method112746_
                                 _sym112747_
                                 _rebind?112748_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t112745_
                             _method112746_
                             _sym112747_
                             _rebind?112748_)))
                        _g114442_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g114442_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym112707_)
        (let ((_$e112715_
               (let ((_ht112708112710_ (gxc#current-compile-local-type)))
                 (if _ht112708112710_
                     (let ((_ht112713_ _ht112708112710_))
                       (declare (not safe))
                       (hash-get _ht112713_ _sym112707_))
                     '#f))))
          (if _$e112715_
              _$e112715_
              (let ((__tmp114443
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp114443 _sym112707_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym112699_)
        (let ((_type112700112702_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym112699_))))
          (if _type112700112702_
              (let ((_type112705_ _type112700112702_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type112705_ 'gxc#!alias::t))
                    (let ((__tmp114444
                           (##structure-ref _type112705_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp114444))
                    _type112705_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where112691_ _klass-id112692_)
        (let ((_$e112694_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id112692_))))
          (if _$e112694_
              ((lambda (_klass112697_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass112697_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where112691_
                        _klass-id112692_
                        _klass112697_)))
                 _klass112697_)
               _$e112694_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where112691_
                 _klass-id112692_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t112688_ _method112689_)
        (let ((__tmp114445
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t112688_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp114445 _method112689_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym112686_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym112686_))
        (let ((__tmp114446
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp114446 _sym112686_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym112684_)
        (let ((__tmp114447
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp114447 _sym112684_))))
    (define gxc#identifier-symbol
      (lambda (_stx112682_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx112682_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx112682_))
            (let () (declare (not safe)) (gx#stx-e _stx112682_)))))))
