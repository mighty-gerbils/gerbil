(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1709229971)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp114293 (list))
            (__tmp114291
             (let ((__tmp114292
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114292 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp114293
         '(type ssxi methods)
         __tmp114291
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args114227_
        (apply make-instance gxc#optimizer-info::t _$args114227_)))
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
      (lambda (_self114225_)
        (if (let ((__tmp114301
                   (let ()
                     (declare (not safe))
                     (##structure-length _self114225_))))
              (declare (not safe))
              (##fx< '3 __tmp114301))
            (begin
              (let ((__tmp114296
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114295
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114225_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114225_
                 __tmp114296
                 '1
                 __tmp114295
                 '#f))
              (let ((__tmp114298
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114297
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114225_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114225_
                 __tmp114298
                 '2
                 __tmp114297
                 '#f))
              (let ((__tmp114300
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114299
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114225_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114225_
                 __tmp114300
                 '3
                 __tmp114299
                 '#f)))
            (let ((__tmp114294
                   (let ()
                     (declare (not safe))
                     (##vector-length _self114225_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self114225_
                     '3
                     __tmp114294)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp114304 (list))
            (__tmp114302
             (let ((__tmp114303
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114303 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp114304
         '(id)
         __tmp114302
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args114100_ (apply make-instance gxc#!type::t _$args114100_)))
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
      (let ((__tmp114307 (list gxc#!type::t))
            (__tmp114305
             (let ((__tmp114306
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114306 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp114307
         '()
         __tmp114305
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args114097_ (apply make-instance gxc#!alias::t _$args114097_)))
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
      (let ((__tmp114310 (list gxc#!type::t))
            (__tmp114308
             (let ((__tmp114309
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114309 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp114310
         '()
         __tmp114308
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args114094_
        (apply make-instance gxc#!procedure::t _$args114094_)))
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
      (let ((__tmp114313 (list gxc#!type::t))
            (__tmp114311
             (let ((__tmp114312
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114312 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp114313
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp114311
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args114091_ (apply make-instance gxc#!class::t _$args114091_)))
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
      (let ((__tmp114316 (list gxc#!procedure::t))
            (__tmp114314
             (let ((__tmp114315
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114315 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp114316
         '()
         __tmp114314
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args114088_
        (apply make-instance gxc#!predicate::t _$args114088_)))
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
      (let ((__tmp114319 (list gxc#!procedure::t))
            (__tmp114317
             (let ((__tmp114318
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114318 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp114319
         '()
         __tmp114317
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args114085_
        (apply make-instance gxc#!constructor::t _$args114085_)))
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
      (let ((__tmp114322 (list gxc#!procedure::t))
            (__tmp114320
             (let ((__tmp114321
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114321 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp114322
         '(slot checked?)
         __tmp114320
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args114082_
        (apply make-instance gxc#!accessor::t _$args114082_)))
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
      (let ((__tmp114325 (list gxc#!procedure::t))
            (__tmp114323
             (let ((__tmp114324
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114324 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp114325
         '(slot checked?)
         __tmp114323
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args114079_
        (apply make-instance gxc#!mutator::t _$args114079_)))
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
      (let ((__tmp114328 (list gxc#!procedure::t))
            (__tmp114326
             (let ((__tmp114327
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114327 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp114328
         '(arity dispatch inline inline-typedecl)
         __tmp114326
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args114076_
        (apply make-instance gxc#!lambda::t _$args114076_)))
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
      (let ((__tmp114331 (list gxc#!procedure::t))
            (__tmp114329
             (let ((__tmp114330
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114330 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp114331
         '(clauses)
         __tmp114329
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args114073_
        (apply make-instance gxc#!case-lambda::t _$args114073_)))
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
      (let ((__tmp114334 (list gxc#!procedure::t))
            (__tmp114332
             (let ((__tmp114333
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114333 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp114334
         '(table dispatch)
         __tmp114332
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args114070_
        (apply make-instance gxc#!kw-lambda::t _$args114070_)))
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
      (let ((__tmp114337 (list gxc#!procedure::t))
            (__tmp114335
             (let ((__tmp114336
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114336 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp114337
         '(keys main)
         __tmp114335
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args114067_
        (apply make-instance gxc#!kw-lambda-primary::t _$args114067_)))
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
      (let ((__tmp114338 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp114338
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args114064_
        (apply make-instance gxc#!primitive::t _$args114064_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp114339 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp114339
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args114061_
        (apply make-instance gxc#!primitive-lambda::t _$args114061_)))
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
      (let ((__tmp114340 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp114340
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args114058_
        (apply make-instance gxc#!primitive-case-lambda::t _$args114058_)))
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
      (lambda (_self113940_
               _id113941_
               _super113942_
               _slots113943_
               _ctor-method113944_
               _struct?113945_
               _final?113946_
               _metaclass113947_)
        (let _lp113949_ ((_rest113951_ _super113942_))
          (let* ((_rest113952113960_ _rest113951_)
                 (_else113954113968_ (lambda () '#!void))
                 (_K113956113974_
                  (lambda (_rest113971_ _super-id113972_)
                    (if (##structure-ref
                         (let ((__tmp114343
                                (let ((__tmp114344
                                       (let ()
                                         (declare (not safe))
                                         (cons _id113941_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp114344))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp114343
                            _super-id113972_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp114341
                               (let ((__tmp114342
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113941_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114342))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp114341
                           _super-id113972_))
                        '#!void)
                    (let () (declare (not safe)) (_lp113949_ _rest113971_)))))
            (if (let () (declare (not safe)) (##pair? _rest113952113960_))
                (let ((_hd113957113977_
                       (let ()
                         (declare (not safe))
                         (##car _rest113952113960_)))
                      (_tl113958113979_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113952113960_))))
                  (let* ((_super-id113982_ _hd113957113977_)
                         (_rest113984_ _tl113958113979_))
                    (declare (not safe))
                    (_K113956113974_ _rest113984_ _super-id113982_)))
                '#!void)))
        (let* ((_ctor-method114034_
                (let ((_$e113986_ _ctor-method113944_))
                  (if _$e113986_
                      _$e113986_
                      (let _lp113989_ ((_rest113991_ _super113942_)
                                       (_method113992_ '#f))
                        (let* ((_rest113993114001_ _rest113991_)
                               (_else113995114009_ (lambda () _method113992_))
                               (_K113997114022_
                                (lambda (_rest114012_ _super-id114013_)
                                  (let* ((_klass114015_
                                          (let ((__tmp114345
                                                 (let ((__tmp114346
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id113941_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp114346))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp114345
                                             _super-id114013_)))
                                         (_$e114017_
                                          (##structure-ref
                                           _klass114015_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e114017_
                                        ((lambda (_ctor-method114020_)
                                           (if _method113992_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method114020_
                                                          _method113992_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp113989_
                                                      _rest114012_
                                                      _ctor-method114020_))
                                                   (let ((__tmp114347
                                                          (let ((__tmp114348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id113941_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp114348))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp114347
                                                      _method113992_
                                                      _ctor-method114020_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp113989_
                                                  _rest114012_
                                                  _ctor-method114020_))))
                                         _$e114017_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp113989_
                                           _rest114012_
                                           _method113992_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest113993114001_))
                              (let ((_hd113998114025_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest113993114001_)))
                                    (_tl113999114027_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest113993114001_))))
                                (let* ((_super-id114030_ _hd113998114025_)
                                       (_rest114032_ _tl113999114027_))
                                  (declare (not safe))
                                  (_K113997114022_
                                   _rest114032_
                                   _super-id114030_)))
                              (let ()
                                (declare (not safe))
                                (_else113995114009_))))))))
               (_g114349_
                (let ((__tmp114354
                       (lambda (_klass-id114036_)
                         (let ((__tmp114355
                                (##structure-ref
                                 (let ((__tmp114356
                                        (let ((__tmp114357
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113941_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114357))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp114356
                                    _klass-id114036_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id114036_ __tmp114355))))
                      (__tmp114351
                       (lambda (_klass-id114038_)
                         (##structure-ref
                          (let ((__tmp114352
                                 (let ((__tmp114353
                                        (let ()
                                          (declare (not safe))
                                          (cons _id113941_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp114353))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp114352
                             _klass-id114038_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super113942_
                   'get-precedence-list:
                   __tmp114354
                   'struct:
                   __tmp114351
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g114350_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g114349_)
                         (##vector-length _g114349_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g114350_ 2)))
                  (error "Context expects 2 values" _g114350_)))
            (let ((_precedence-list114040_
                   (let () (declare (not safe)) (##vector-ref _g114349_ 0)))
                  (_base-struct114041_
                   (let () (declare (not safe)) (##vector-ref _g114349_ 1))))
              (let ((_fields114043_
                     (let ((__tmp114358
                            (let ((__tmp114359
                                   (let ()
                                     (declare (not safe))
                                     (cons _id113941_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp114359))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp114358
                        _base-struct114041_
                        _precedence-list114040_
                        _slots113943_))))
                (##structure-set! _self113940_ _id113941_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self113940_
                 _super113942_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113940_
                 _precedence-list114040_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113940_
                 _slots113943_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113940_
                 _fields114043_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113940_
                 _ctor-method114034_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113940_
                 _struct?113945_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113940_
                 _final?113946_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113940_
                 _metaclass113947_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self114046_
               _id114047_
               _super114048_
               _precedence-list114049_
               _slots114050_
               _fields114051_
               _constructor114052_
               _struct?114053_
               _final?114054_
               _metaclass114055_
               _methods114056_)
        (##structure-set! _self114046_ _id114047_ '1 gxc#!type::t '#f)
        (##structure-set! _self114046_ _super114048_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self114046_
         _precedence-list114049_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self114046_ _slots114050_ '4 gxc#!class::t '#f)
        (##structure-set! _self114046_ _fields114051_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self114046_
         _constructor114052_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self114046_ _struct?114053_ '7 gxc#!class::t '#f)
        (##structure-set! _self114046_ _final?114054_ '8 gxc#!class::t '#f)
        (##structure-set! _self114046_ _metaclass114055_ '9 gxc#!class::t '#f)
        (if _methods114056_
            (##structure-set!
             _self114046_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods114056_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g114361_
        (let ((_g114360_ (let () (declare (not safe)) (##length _g114361_))))
          (cond ((let () (declare (not safe)) (##fx= _g114360_ 8))
                 (apply (lambda (_self113940_
                                 _id113941_
                                 _super113942_
                                 _slots113943_
                                 _ctor-method113944_
                                 _struct?113945_
                                 _final?113946_
                                 _metaclass113947_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self113940_
                             _id113941_
                             _super113942_
                             _slots113943_
                             _ctor-method113944_
                             _struct?113945_
                             _final?113946_
                             _metaclass113947_)))
                        _g114361_))
                ((let () (declare (not safe)) (##fx= _g114360_ 11))
                 (apply (lambda (_self114046_
                                 _id114047_
                                 _super114048_
                                 _precedence-list114049_
                                 _slots114050_
                                 _fields114051_
                                 _constructor114052_
                                 _struct?114053_
                                 _final?114054_
                                 _metaclass114055_
                                 _methods114056_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self114046_
                             _id114047_
                             _super114048_
                             _precedence-list114049_
                             _slots114050_
                             _fields114051_
                             _constructor114052_
                             _struct?114053_
                             _final?114054_
                             _metaclass114055_
                             _methods114056_)))
                        _g114361_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g114361_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass114229 __method-table114230)
        (let ((__constructor114231
               (let ((__slot114241
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114229 'constructor))))
                 (if __slot114241
                     __slot114241
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__super114232
               (let ((__slot114242
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114229 'super))))
                 (if __slot114242
                     __slot114242
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__struct?114233
               (let ((__slot114243
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114229 'struct?))))
                 (if __slot114243
                     __slot114243
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__precedence-list114234
               (let ((__slot114244
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114229 'precedence-list))))
                 (if __slot114244
                     __slot114244
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__fields114235
               (let ((__slot114245
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114229 'fields))))
                 (if __slot114245
                     __slot114245
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__methods114236
               (let ((__slot114246
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114229 'methods))))
                 (if __slot114246
                     __slot114246
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__metaclass114237
               (let ((__slot114247
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114229 'metaclass))))
                 (if __slot114247
                     __slot114247
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__slots114238
               (let ((__slot114248
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114229 'slots))))
                 (if __slot114248
                     __slot114248
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__final?114239
               (let ((__slot114249
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114229 'final?))))
                 (if __slot114249
                     __slot114249
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__id114240
               (let ((__slot114250
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114229 'id))))
                 (if __slot114250
                     __slot114250
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda _g114363_
            (let ((_g114362_
                   (let () (declare (not safe)) (##length _g114363_))))
              (cond ((let () (declare (not safe)) (##fx= _g114362_ 8))
                     (apply (lambda (_self113940_
                                     _id113941_
                                     _super113942_
                                     _slots113943_
                                     _ctor-method113944_
                                     _struct?113945_
                                     _final?113946_
                                     _metaclass113947_)
                              (let _lp113949_ ((_rest113951_ _super113942_))
                                (let* ((_rest113952113960_ _rest113951_)
                                       (_else113954113968_ (lambda () '#!void))
                                       (_K113956113974_
                                        (lambda (_rest113971_ _super-id113972_)
                                          (if (##structure-ref
                                               (let ((__tmp114366
                                                      (let ((__tmp114367
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id113941_ '()))))
                (declare (not safe))
                (cons '!class __tmp114367))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp114366
                                                  _super-id113972_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp114364
                                                     (let ((__tmp114365
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id113941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp114365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp114364
                                                 _super-id113972_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp113949_ _rest113971_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest113952113960_))
                                      (let ((_hd113957113977_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest113952113960_)))
                                            (_tl113958113979_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest113952113960_))))
                                        (let* ((_super-id113982_
                                                _hd113957113977_)
                                               (_rest113984_ _tl113958113979_))
                                          (declare (not safe))
                                          (_K113956113974_
                                           _rest113984_
                                           _super-id113982_)))
                                      '#!void)))
                              (let* ((_ctor-method114034_
                                      (let ((_$e113986_ _ctor-method113944_))
                                        (if _$e113986_
                                            _$e113986_
                                            (let _lp113989_ ((_rest113991_
                                                              _super113942_)
                                                             (_method113992_
                                                              '#f))
                                              (let* ((_rest113993114001_
                                                      _rest113991_)
                                                     (_else113995114009_
                                                      (lambda ()
                                                        _method113992_))
                                                     (_K113997114022_
                                                      (lambda (_rest114012_
                                                               _super-id114013_)
                                                        (let* ((_klass114015_
                                                                (let ((__tmp114368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114369
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113941_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114369))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp114368
                           _super-id114013_)))
                       (_$e114017_
                        (##structure-ref _klass114015_ '6 gxc#!class::t '#f)))
                  (if _$e114017_
                      ((lambda (_ctor-method114020_)
                         (if _method113992_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method114020_ _method113992_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp113989_
                                    _rest114012_
                                    _ctor-method114020_))
                                 (let ((__tmp114370
                                        (let ((__tmp114371
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113941_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114371))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp114370
                                    _method113992_
                                    _ctor-method114020_)))
                             (let ()
                               (declare (not safe))
                               (_lp113989_ _rest114012_ _ctor-method114020_))))
                       _$e114017_)
                      (let ()
                        (declare (not safe))
                        (_lp113989_ _rest114012_ _method113992_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest113993114001_))
                                                    (let ((_hd113998114025_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest113993114001_)))
                                                          (_tl113999114027_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest113993114001_))))
                                                      (let* ((_super-id114030_
                                                              _hd113998114025_)
                                                             (_rest114032_
                                                              _tl113999114027_))
                                                        (declare (not safe))
                                                        (_K113997114022_
                                                         _rest114032_
                                                         _super-id114030_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else113995114009_))))))))
                                     (_g114372_
                                      (let ((__tmp114377
                                             (lambda (_klass-id114036_)
                                               (let ((__tmp114378
                                                      (##structure-ref
                                                       (let ((__tmp114379
                                                              (let ((__tmp114380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id113941_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp114380))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp114379 _klass-id114036_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id114036_
                                                       __tmp114378))))
                                            (__tmp114374
                                             (lambda (_klass-id114038_)
                                               (##structure-ref
                                                (let ((__tmp114375
                                                       (let ((__tmp114376
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id113941_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp114376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp114375
                                                   _klass-id114038_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super113942_
                                         'get-precedence-list:
                                         __tmp114377
                                         'struct:
                                         __tmp114374
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g114373_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g114372_)
                                               (##vector-length _g114372_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g114373_ 2)))
                                        (error "Context expects 2 values"
                                               _g114373_)))
                                  (let ((_precedence-list114040_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114372_ 0)))
                                        (_base-struct114041_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114372_ 1))))
                                    (let ((_fields114043_
                                           (let ((__tmp114381
                                                  (let ((__tmp114382
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id113941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp114382))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp114381
                                              _base-struct114041_
                                              _precedence-list114040_
                                              _slots113943_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113940_
                                         _id113941_
                                         __id114240
                                         __klass114229
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113940_
                                         _super113942_
                                         __super114232
                                         __klass114229
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113940_
                                         _precedence-list114040_
                                         __precedence-list114234
                                         __klass114229
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113940_
                                         _slots113943_
                                         __slots114238
                                         __klass114229
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113940_
                                         _fields114043_
                                         __fields114235
                                         __klass114229
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113940_
                                         _ctor-method114034_
                                         __constructor114231
                                         __klass114229
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113940_
                                         _struct?113945_
                                         __struct?114233
                                         __klass114229
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113940_
                                         _final?113946_
                                         __final?114239
                                         __klass114229
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113940_
                                         _metaclass113947_
                                         __metaclass114237
                                         __klass114229
                                         '#f)))))))
                            _g114363_))
                    ((let () (declare (not safe)) (##fx= _g114362_ 11))
                     (apply (lambda (_self114046_
                                     _id114047_
                                     _super114048_
                                     _precedence-list114049_
                                     _slots114050_
                                     _fields114051_
                                     _constructor114052_
                                     _struct?114053_
                                     _final?114054_
                                     _metaclass114055_
                                     _methods114056_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114046_
                                 _id114047_
                                 __id114240
                                 __klass114229
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114046_
                                 _super114048_
                                 __super114232
                                 __klass114229
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114046_
                                 _precedence-list114049_
                                 __precedence-list114234
                                 __klass114229
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114046_
                                 _slots114050_
                                 __slots114238
                                 __klass114229
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114046_
                                 _fields114051_
                                 __fields114235
                                 __klass114229
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114046_
                                 _constructor114052_
                                 __constructor114231
                                 __klass114229
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114046_
                                 _struct?114053_
                                 __struct?114233
                                 __klass114229
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114046_
                                 _final?114054_
                                 __final?114239
                                 __klass114229
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114046_
                                 _metaclass114055_
                                 __metaclass114237
                                 __klass114229
                                 '#f))
                              (if _methods114056_
                                  (let ((__tmp114383
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods114056_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self114046_
                                     __tmp114383
                                     __methods114236
                                     __klass114229
                                     '#f))
                                  '#!void))
                            _g114363_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g114363_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where113792_
               _base-struct113793_
               _precedence-list113794_
               _direct-slots113795_)
        (let* ((_base-fields113797_
                (if _base-struct113793_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where113792_
                        _base-struct113793_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields113799_ (reverse _base-fields113797_))
               (_seen-slots113807_
                (let ((_tab113801_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g113802113804_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab113801_ _g113802113804_ '#t)))
                   _base-fields113797_)
                  _tab113801_))
               (_process-slot113811_
                (lambda (_slot113809_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots113807_ _slot113809_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots113807_ _slot113809_ '#t))
                        (set! _r-fields113799_
                              (let ()
                                (declare (not safe))
                                (cons _slot113809_ _r-fields113799_))))))))
          (for-each
           (lambda (_mixin113814_)
             (let ((_klass113816_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where113792_
                       _mixin113814_))))
               (if (##structure-ref _klass113816_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot113811_
                    (##structure-ref _klass113816_ '5 gxc#!class::t '#f)))))
           _precedence-list113794_)
          (for-each _process-slot113811_ _direct-slots113795_)
          (reverse _r-fields113799_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass113751_ _slot113752_)
        (let _lp113754_ ((_rest113756_
                          (##structure-ref _klass113751_ '5 gxc#!class::t '#f))
                         (_offset113757_ '1))
          (let* ((_rest113758113766_ _rest113756_)
                 (_else113760113774_
                  (lambda ()
                    (let ((__tmp114385
                           (##structure-ref _klass113751_ '1 gxc#!type::t '#f))
                          (__tmp114384
                           (##structure-ref
                            _klass113751_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp114385
                       __tmp114384
                       _slot113752_))))
                 (_K113762113780_
                  (lambda (_rest113777_ _s113778_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s113778_ _slot113752_))
                        _offset113757_
                        (let ((__tmp114386
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset113757_ '1))))
                          (declare (not safe))
                          (_lp113754_ _rest113777_ __tmp114386))))))
            (if (let () (declare (not safe)) (##pair? _rest113758113766_))
                (let ((_hd113763113783_
                       (let ()
                         (declare (not safe))
                         (##car _rest113758113766_)))
                      (_tl113764113785_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113758113766_))))
                  (let* ((_s113788_ _hd113763113783_)
                         (_rest113790_ _tl113764113785_))
                    (declare (not safe))
                    (_K113762113780_ _rest113790_ _s113788_)))
                (let () (declare (not safe)) (_else113760113774_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass113709_ _slot113710_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass113709_ _slot113710_))
            _klass113709_
            (let _lp113712_ ((_rest113714_
                              (##structure-ref
                               _klass113709_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest113715113723_ _rest113714_)
                     (_else113717113731_ (lambda () '#f))
                     (_K113719113739_
                      (lambda (_rest113734_ _super113735_)
                        (let ((_super-class113737_
                               (let ((__tmp114387
                                      (let ((__tmp114388
                                             (let ((__tmp114390
                                                    (##structure-ref
                                                     _klass113709_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp114389
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot113710_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp114390
                                                     __tmp114389))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp114388))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp114387
                                  _super113735_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class113737_
                                 _slot113710_))
                              _super-class113737_
                              (let ()
                                (declare (not safe))
                                (_lp113712_ _rest113734_)))))))
                (if (let () (declare (not safe)) (##pair? _rest113715113723_))
                    (let ((_hd113720113742_
                           (let ()
                             (declare (not safe))
                             (##car _rest113715113723_)))
                          (_tl113721113744_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest113715113723_))))
                      (let* ((_super113747_ _hd113720113742_)
                             (_rest113749_ _tl113721113744_))
                        (declare (not safe))
                        (_K113719113739_ _rest113749_ _super113747_)))
                    (let () (declare (not safe)) (_else113717113731_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass113706_ _slot113707_)
        (if (##structure-ref _klass113706_ '7 gxc#!class::t '#f)
            (memq _slot113707_
                  (##structure-ref _klass113706_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self113703_ _id113704_)
        (##structure-set! _self113703_ _id113704_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass114251 __method-table114252)
        (let ((__id114253
               (let ((__slot114254
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114251 'id))))
                 (if __slot114254
                     __slot114254
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113703_ _id113704_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113703_
               _id113704_
               __id114253
               __klass114251
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
      (lambda (_self113578_ _id113579_)
        (##structure-set! _self113578_ _id113579_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass114255 __method-table114256)
        (let ((__id114257
               (let ((__slot114258
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114255 'id))))
                 (if __slot114258
                     __slot114258
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113578_ _id113579_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113578_
               _id113579_
               __id114257
               __klass114255
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
      (lambda (_self113451_ _id113452_ _slot113453_ _checked?113454_)
        (##structure-set! _self113451_ _id113452_ '1 gxc#!type::t '#f)
        (##structure-set! _self113451_ _slot113453_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self113451_
         _checked?113454_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass114259 __method-table114260)
        (let ((__checked?114261
               (let ((__slot114264
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114259 'checked?))))
                 (if __slot114264
                     __slot114264
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot114262
               (let ((__slot114265
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114259 'slot))))
                 (if __slot114265
                     __slot114265
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id114263
               (let ((__slot114266
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114259 'id))))
                 (if __slot114266
                     __slot114266
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113451_ _id113452_ _slot113453_ _checked?113454_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113451_
               _id113452_
               __id114263
               __klass114259
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113451_
               _slot113453_
               __slot114262
               __klass114259
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113451_
               _checked?113454_
               __checked?114261
               __klass114259
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
      (lambda (_self113324_ _id113325_ _slot113326_ _checked?113327_)
        (##structure-set! _self113324_ _id113325_ '1 gxc#!type::t '#f)
        (##structure-set! _self113324_ _slot113326_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self113324_
         _checked?113327_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass114267 __method-table114268)
        (let ((__checked?114269
               (let ((__slot114272
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114267 'checked?))))
                 (if __slot114272
                     __slot114272
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot114270
               (let ((__slot114273
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114267 'slot))))
                 (if __slot114273
                     __slot114273
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id114271
               (let ((__slot114274
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114267 'id))))
                 (if __slot114274
                     __slot114274
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113324_ _id113325_ _slot113326_ _checked?113327_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113324_
               _id113325_
               __id114271
               __klass114267
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113324_
               _slot113326_
               __slot114270
               __klass114267
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113324_
               _checked?113327_
               __checked?114269
               __klass114267
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
      (lambda (_self113168_
               _id113169_
               _arity113170_
               _dispatch113171_
               _inline113172_
               _typedecl113173_)
        (if (let ((__tmp114397
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113168_))))
              (declare (not safe))
              (##fx< '5 __tmp114397))
            (begin
              (let ((__tmp114392
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113168_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113168_
                 _id113169_
                 '1
                 __tmp114392
                 '#f))
              (let ((__tmp114393
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113168_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113168_
                 _arity113170_
                 '2
                 __tmp114393
                 '#f))
              (let ((__tmp114394
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113168_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113168_
                 _dispatch113171_
                 '3
                 __tmp114394
                 '#f))
              (let ((__tmp114395
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113168_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113168_
                 _inline113172_
                 '4
                 __tmp114395
                 '#f))
              (let ((__tmp114396
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113168_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113168_
                 _typedecl113173_
                 '5
                 __tmp114396
                 '#f)))
            (let ((__tmp114391
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113168_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113168_
                     '5
                     __tmp114391)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self113178_ _id113179_ _arity113180_ _dispatch113181_)
        (let* ((_inline113183_ '#f) (_typedecl113185_ '#f))
          (if (let ((__tmp114404
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113178_))))
                (declare (not safe))
                (##fx< '5 __tmp114404))
              (begin
                (let ((__tmp114399
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113178_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113178_
                   _id113179_
                   '1
                   __tmp114399
                   '#f))
                (let ((__tmp114400
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113178_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113178_
                   _arity113180_
                   '2
                   __tmp114400
                   '#f))
                (let ((__tmp114401
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113178_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113178_
                   _dispatch113181_
                   '3
                   __tmp114401
                   '#f))
                (let ((__tmp114402
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113178_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113178_
                   _inline113183_
                   '4
                   __tmp114402
                   '#f))
                (let ((__tmp114403
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113178_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113178_
                   _typedecl113185_
                   '5
                   __tmp114403
                   '#f)))
              (let ((__tmp114398
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113178_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113178_
                       '5
                       __tmp114398))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self113187_
               _id113188_
               _arity113189_
               _dispatch113190_
               _inline113191_)
        (let ((_typedecl113193_ '#f))
          (if (let ((__tmp114411
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113187_))))
                (declare (not safe))
                (##fx< '5 __tmp114411))
              (begin
                (let ((__tmp114406
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113187_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113187_
                   _id113188_
                   '1
                   __tmp114406
                   '#f))
                (let ((__tmp114407
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113187_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113187_
                   _arity113189_
                   '2
                   __tmp114407
                   '#f))
                (let ((__tmp114408
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113187_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113187_
                   _dispatch113190_
                   '3
                   __tmp114408
                   '#f))
                (let ((__tmp114409
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113187_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113187_
                   _inline113191_
                   '4
                   __tmp114409
                   '#f))
                (let ((__tmp114410
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113187_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113187_
                   _typedecl113193_
                   '5
                   __tmp114410
                   '#f)))
              (let ((__tmp114405
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113187_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113187_
                       '5
                       __tmp114405))))))
    (define gxc#!lambda:::init!
      (lambda _g114413_
        (let ((_g114412_ (let () (declare (not safe)) (##length _g114413_))))
          (cond ((let () (declare (not safe)) (##fx= _g114412_ 4))
                 (apply (lambda (_self113178_
                                 _id113179_
                                 _arity113180_
                                 _dispatch113181_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self113178_
                             _id113179_
                             _arity113180_
                             _dispatch113181_)))
                        _g114413_))
                ((let () (declare (not safe)) (##fx= _g114412_ 5))
                 (apply (lambda (_self113187_
                                 _id113188_
                                 _arity113189_
                                 _dispatch113190_
                                 _inline113191_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self113187_
                             _id113188_
                             _arity113189_
                             _dispatch113190_
                             _inline113191_)))
                        _g114413_))
                ((let () (declare (not safe)) (##fx= _g114412_ 6))
                 (apply (lambda (_self113195_
                                 _id113196_
                                 _arity113197_
                                 _dispatch113198_
                                 _inline113199_
                                 _typedecl113200_)
                          (if (let ((__tmp114420
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self113195_))))
                                (declare (not safe))
                                (##fx< '5 __tmp114420))
                              (begin
                                (let ((__tmp114415
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113195_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113195_
                                   _id113196_
                                   '1
                                   __tmp114415
                                   '#f))
                                (let ((__tmp114416
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113195_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113195_
                                   _arity113197_
                                   '2
                                   __tmp114416
                                   '#f))
                                (let ((__tmp114417
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113195_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113195_
                                   _dispatch113198_
                                   '3
                                   __tmp114417
                                   '#f))
                                (let ((__tmp114418
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113195_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113195_
                                   _inline113199_
                                   '4
                                   __tmp114418
                                   '#f))
                                (let ((__tmp114419
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113195_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113195_
                                   _typedecl113200_
                                   '5
                                   __tmp114419
                                   '#f)))
                              (let ((__tmp114414
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self113195_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self113195_
                                       '5
                                       __tmp114414))))
                        _g114413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g114413_))))))
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
      (lambda (_self112920_ . _args112921_)
        (apply struct-instance-init! _self112920_ _args112921_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type112795_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112795_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type112795_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass112788_)
        (let ((_$e112790_
               (##structure-ref _klass112788_ '10 gxc#!class::t '#f)))
          (if _$e112790_
              _$e112790_
              (let ((_tab112793_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass112788_
                 _tab112793_
                 '10
                 gxc#!class::t
                 '#f)
                _tab112793_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass112779_ _method112780_)
        (let ((_tab112781112783_
               (##structure-ref _klass112779_ '10 gxc#!class::t '#f)))
          (if _tab112781112783_
              (let ((_tab112786_ _tab112781112783_))
                (declare (not safe))
                (hash-get _tab112786_ _method112780_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type112776_ _method112777_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112776_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type112776_ _method112777_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym112760_ _type112761_ _local?112762_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112761_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym112760_
                     _type112761_)))
        (let ((__tmp114421
               (let () (declare (not safe)) (struct->list _type112761_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym112760_ '" " __tmp114421))
        (let ((__tmp114422
               (if _local?112762_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp114422 _sym112760_ _type112761_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym112767_ _type112768_)
        (let ((_local?112770_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym112767_
           _type112768_
           _local?112770_))))
    (define gxc#optimizer-declare-type!
      (lambda _g114424_
        (let ((_g114423_ (let () (declare (not safe)) (##length _g114424_))))
          (cond ((let () (declare (not safe)) (##fx= _g114423_ 2))
                 (apply (lambda (_sym112767_ _type112768_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym112767_
                             _type112768_)))
                        _g114424_))
                ((let () (declare (not safe)) (##fx= _g114423_ 3))
                 (apply (lambda (_sym112772_ _type112773_ _local?112774_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym112772_
                             _type112773_
                             _local?112774_)))
                        _g114424_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g114424_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym112746_ _local?112747_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym112746_))
        (let ((__tmp114425
               (if _local?112747_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp114425 _sym112746_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym112752_)
        (let ((_local?112754_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym112752_ _local?112754_))))
    (define gxc#optimizer-clear-type!
      (lambda _g114427_
        (let ((_g114426_ (let () (declare (not safe)) (##length _g114427_))))
          (cond ((let () (declare (not safe)) (##fx= _g114426_ 1))
                 (apply (lambda (_sym112752_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym112752_)))
                        _g114427_))
                ((let () (declare (not safe)) (##fx= _g114426_ 2))
                 (apply (lambda (_sym112756_ _local?112757_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym112756_
                             _local?112757_)))
                        _g114427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g114427_))))))
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
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab112729_ _method112720_))
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
                         (let ((__tmp114432
                                (let ((__tmp114433
                                       (let ((__tmp114434
                                              (let ((__tmp114435
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym112721_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method112720_
                                                      __tmp114435))))
                                         (declare (not safe))
                                         (cons _type-t112719_ __tmp114434))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp114433))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp114432
                            _method112720_)))
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
                          _sym112721_)))))
               _$e112726_)
              (if (let () (declare (not safe)) (not _type112724_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t112719_))
                  (let ((__tmp114428
                         (let ((__tmp114429
                                (let ((__tmp114430
                                       (let ((__tmp114431
                                              (let ()
                                                (declare (not safe))
                                                (cons _method112720_ '()))))
                                         (declare (not safe))
                                         (cons _sym112721_ __tmp114431))))
                                  (declare (not safe))
                                  (cons _type-t112719_ __tmp114430))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp114429))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp114428
                     _type112724_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t112734_ _method112735_ _sym112736_)
        (let ((_rebind?112738_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t112734_
           _method112735_
           _sym112736_
           _rebind?112738_))))
    (define gxc#optimizer-declare-method!
      (lambda _g114437_
        (let ((_g114436_ (let () (declare (not safe)) (##length _g114437_))))
          (cond ((let () (declare (not safe)) (##fx= _g114436_ 3))
                 (apply (lambda (_type-t112734_ _method112735_ _sym112736_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t112734_
                             _method112735_
                             _sym112736_)))
                        _g114437_))
                ((let () (declare (not safe)) (##fx= _g114436_ 4))
                 (apply (lambda (_type-t112740_
                                 _method112741_
                                 _sym112742_
                                 _rebind?112743_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t112740_
                             _method112741_
                             _sym112742_
                             _rebind?112743_)))
                        _g114437_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g114437_))))))
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
              (let ((__tmp114438
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp114438 _sym112707_))))))
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
                    (let ((__tmp114439
                           (##structure-ref _type112705_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp114439))
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
        (let ((__tmp114440
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t112688_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp114440 _method112689_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym112686_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym112686_))
        (let ((__tmp114441
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp114441 _sym112686_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym112684_)
        (let ((__tmp114442
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp114442 _sym112684_))))
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
