(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1709128372)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp114296 (list))
            (__tmp114294
             (let ((__tmp114295
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114295 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp114296
         '(type ssxi methods)
         __tmp114294
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args114230_
        (apply make-instance gxc#optimizer-info::t _$args114230_)))
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
      (lambda (_self114228_)
        (if (let ((__tmp114304
                   (let ()
                     (declare (not safe))
                     (##structure-length _self114228_))))
              (declare (not safe))
              (##fx< '3 __tmp114304))
            (begin
              (let ((__tmp114299
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114298
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114228_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114228_
                 __tmp114299
                 '1
                 __tmp114298
                 '#f))
              (let ((__tmp114301
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114300
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114228_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114228_
                 __tmp114301
                 '2
                 __tmp114300
                 '#f))
              (let ((__tmp114303
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114302
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114228_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114228_
                 __tmp114303
                 '3
                 __tmp114302
                 '#f)))
            (let ((__tmp114297
                   (let ()
                     (declare (not safe))
                     (##vector-length _self114228_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self114228_
                     '3
                     __tmp114297)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp114307 (list))
            (__tmp114305
             (let ((__tmp114306
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114306 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp114307
         '(id)
         __tmp114305
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args114103_ (apply make-instance gxc#!type::t _$args114103_)))
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
      (let ((__tmp114310 (list gxc#!type::t))
            (__tmp114308
             (let ((__tmp114309
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114309 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp114310
         '()
         __tmp114308
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args114100_ (apply make-instance gxc#!alias::t _$args114100_)))
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
      (let ((__tmp114313 (list gxc#!type::t))
            (__tmp114311
             (let ((__tmp114312
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114312 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp114313
         '()
         __tmp114311
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args114097_
        (apply make-instance gxc#!procedure::t _$args114097_)))
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
      (let ((__tmp114316 (list gxc#!type::t))
            (__tmp114314
             (let ((__tmp114315
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114315 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp114316
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp114314
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args114094_ (apply make-instance gxc#!class::t _$args114094_)))
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
      (let ((__tmp114319 (list gxc#!procedure::t))
            (__tmp114317
             (let ((__tmp114318
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114318 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp114319
         '()
         __tmp114317
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args114091_
        (apply make-instance gxc#!predicate::t _$args114091_)))
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
      (let ((__tmp114322 (list gxc#!procedure::t))
            (__tmp114320
             (let ((__tmp114321
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114321 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp114322
         '()
         __tmp114320
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args114088_
        (apply make-instance gxc#!constructor::t _$args114088_)))
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
      (let ((__tmp114325 (list gxc#!procedure::t))
            (__tmp114323
             (let ((__tmp114324
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114324 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp114325
         '(slot checked?)
         __tmp114323
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args114085_
        (apply make-instance gxc#!accessor::t _$args114085_)))
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
      (let ((__tmp114328 (list gxc#!procedure::t))
            (__tmp114326
             (let ((__tmp114327
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114327 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp114328
         '(slot checked?)
         __tmp114326
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args114082_
        (apply make-instance gxc#!mutator::t _$args114082_)))
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
      (let ((__tmp114331 (list gxc#!procedure::t))
            (__tmp114329
             (let ((__tmp114330
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114330 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp114331
         '(arity dispatch inline inline-typedecl)
         __tmp114329
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args114079_
        (apply make-instance gxc#!lambda::t _$args114079_)))
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
      (let ((__tmp114334 (list gxc#!procedure::t))
            (__tmp114332
             (let ((__tmp114333
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114333 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp114334
         '(clauses)
         __tmp114332
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args114076_
        (apply make-instance gxc#!case-lambda::t _$args114076_)))
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
      (let ((__tmp114337 (list gxc#!procedure::t))
            (__tmp114335
             (let ((__tmp114336
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114336 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp114337
         '(table dispatch)
         __tmp114335
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args114073_
        (apply make-instance gxc#!kw-lambda::t _$args114073_)))
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
      (let ((__tmp114340 (list gxc#!procedure::t))
            (__tmp114338
             (let ((__tmp114339
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114339 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp114340
         '(keys main)
         __tmp114338
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args114070_
        (apply make-instance gxc#!kw-lambda-primary::t _$args114070_)))
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
      (let ((__tmp114341 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp114341
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args114067_
        (apply make-instance gxc#!primitive::t _$args114067_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp114342 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp114342
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args114064_
        (apply make-instance gxc#!primitive-lambda::t _$args114064_)))
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
      (let ((__tmp114343 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp114343
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args114061_
        (apply make-instance gxc#!primitive-case-lambda::t _$args114061_)))
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
      (lambda (_self113943_
               _id113944_
               _super113945_
               _slots113946_
               _ctor-method113947_
               _struct?113948_
               _final?113949_
               _metaclass113950_)
        (let _lp113952_ ((_rest113954_ _super113945_))
          (let* ((_rest113955113963_ _rest113954_)
                 (_else113957113971_ (lambda () '#!void))
                 (_K113959113977_
                  (lambda (_rest113974_ _super-id113975_)
                    (if (##structure-ref
                         (let ((__tmp114346
                                (let ((__tmp114347
                                       (let ()
                                         (declare (not safe))
                                         (cons _id113944_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp114347))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp114346
                            _super-id113975_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp114344
                               (let ((__tmp114345
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113944_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114345))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp114344
                           _super-id113975_))
                        '#!void)
                    (let () (declare (not safe)) (_lp113952_ _rest113974_)))))
            (if (let () (declare (not safe)) (##pair? _rest113955113963_))
                (let ((_hd113960113980_
                       (let ()
                         (declare (not safe))
                         (##car _rest113955113963_)))
                      (_tl113961113982_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113955113963_))))
                  (let* ((_super-id113985_ _hd113960113980_)
                         (_rest113987_ _tl113961113982_))
                    (declare (not safe))
                    (_K113959113977_ _rest113987_ _super-id113985_)))
                '#!void)))
        (let* ((_ctor-method114037_
                (let ((_$e113989_ _ctor-method113947_))
                  (if _$e113989_
                      _$e113989_
                      (let _lp113992_ ((_rest113994_ _super113945_)
                                       (_method113995_ '#f))
                        (let* ((_rest113996114004_ _rest113994_)
                               (_else113998114012_ (lambda () _method113995_))
                               (_K114000114025_
                                (lambda (_rest114015_ _super-id114016_)
                                  (let* ((_klass114018_
                                          (let ((__tmp114348
                                                 (let ((__tmp114349
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id113944_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp114349))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp114348
                                             _super-id114016_)))
                                         (_$e114020_
                                          (##structure-ref
                                           _klass114018_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e114020_
                                        ((lambda (_ctor-method114023_)
                                           (if _method113995_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method114023_
                                                          _method113995_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp113992_
                                                      _rest114015_
                                                      _ctor-method114023_))
                                                   (let ((__tmp114350
                                                          (let ((__tmp114351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id113944_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp114351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp114350
                                                      _method113995_
                                                      _ctor-method114023_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp113992_
                                                  _rest114015_
                                                  _ctor-method114023_))))
                                         _$e114020_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp113992_
                                           _rest114015_
                                           _method113995_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest113996114004_))
                              (let ((_hd114001114028_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest113996114004_)))
                                    (_tl114002114030_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest113996114004_))))
                                (let* ((_super-id114033_ _hd114001114028_)
                                       (_rest114035_ _tl114002114030_))
                                  (declare (not safe))
                                  (_K114000114025_
                                   _rest114035_
                                   _super-id114033_)))
                              (let ()
                                (declare (not safe))
                                (_else113998114012_))))))))
               (_g114352_
                (let ((__tmp114357
                       (lambda (_klass-id114039_)
                         (let ((__tmp114358
                                (##structure-ref
                                 (let ((__tmp114359
                                        (let ((__tmp114360
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113944_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114360))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp114359
                                    _klass-id114039_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id114039_ __tmp114358))))
                      (__tmp114354
                       (lambda (_klass-id114041_)
                         (##structure-ref
                          (let ((__tmp114355
                                 (let ((__tmp114356
                                        (let ()
                                          (declare (not safe))
                                          (cons _id113944_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp114356))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp114355
                             _klass-id114041_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super113945_
                   'get-precedence-list:
                   __tmp114357
                   'struct:
                   __tmp114354
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g114353_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g114352_)
                         (##vector-length _g114352_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g114353_ 2)))
                  (error "Context expects 2 values" _g114353_)))
            (let ((_precedence-list114043_
                   (let () (declare (not safe)) (##vector-ref _g114352_ 0)))
                  (_base-struct114044_
                   (let () (declare (not safe)) (##vector-ref _g114352_ 1))))
              (let ((_fields114046_
                     (let ((__tmp114361
                            (let ((__tmp114362
                                   (let ()
                                     (declare (not safe))
                                     (cons _id113944_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp114362))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp114361
                        _base-struct114044_
                        _precedence-list114043_
                        _slots113946_))))
                (##structure-set! _self113943_ _id113944_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self113943_
                 _super113945_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113943_
                 _precedence-list114043_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113943_
                 _slots113946_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113943_
                 _fields114046_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113943_
                 _ctor-method114037_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113943_
                 _struct?113948_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113943_
                 _final?113949_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113943_
                 _metaclass113950_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self114049_
               _id114050_
               _super114051_
               _precedence-list114052_
               _slots114053_
               _fields114054_
               _constructor114055_
               _struct?114056_
               _final?114057_
               _metaclass114058_
               _methods114059_)
        (##structure-set! _self114049_ _id114050_ '1 gxc#!type::t '#f)
        (##structure-set! _self114049_ _super114051_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self114049_
         _precedence-list114052_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self114049_ _slots114053_ '4 gxc#!class::t '#f)
        (##structure-set! _self114049_ _fields114054_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self114049_
         _constructor114055_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self114049_ _struct?114056_ '7 gxc#!class::t '#f)
        (##structure-set! _self114049_ _final?114057_ '8 gxc#!class::t '#f)
        (##structure-set! _self114049_ _metaclass114058_ '9 gxc#!class::t '#f)
        (if _methods114059_
            (##structure-set!
             _self114049_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods114059_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g114364_
        (let ((_g114363_ (let () (declare (not safe)) (##length _g114364_))))
          (cond ((let () (declare (not safe)) (##fx= _g114363_ 8))
                 (apply (lambda (_self113943_
                                 _id113944_
                                 _super113945_
                                 _slots113946_
                                 _ctor-method113947_
                                 _struct?113948_
                                 _final?113949_
                                 _metaclass113950_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self113943_
                             _id113944_
                             _super113945_
                             _slots113946_
                             _ctor-method113947_
                             _struct?113948_
                             _final?113949_
                             _metaclass113950_)))
                        _g114364_))
                ((let () (declare (not safe)) (##fx= _g114363_ 11))
                 (apply (lambda (_self114049_
                                 _id114050_
                                 _super114051_
                                 _precedence-list114052_
                                 _slots114053_
                                 _fields114054_
                                 _constructor114055_
                                 _struct?114056_
                                 _final?114057_
                                 _metaclass114058_
                                 _methods114059_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self114049_
                             _id114050_
                             _super114051_
                             _precedence-list114052_
                             _slots114053_
                             _fields114054_
                             _constructor114055_
                             _struct?114056_
                             _final?114057_
                             _metaclass114058_
                             _methods114059_)))
                        _g114364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g114364_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass114232 __method-table114233)
        (let ((__slots114234
               (let ((__slot114244
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114232 'slots))))
                 (if __slot114244
                     __slot114244
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__id114235
               (let ((__slot114245
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114232 'id))))
                 (if __slot114245
                     __slot114245
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__constructor114236
               (let ((__slot114246
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114232 'constructor))))
                 (if __slot114246
                     __slot114246
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__struct?114237
               (let ((__slot114247
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114232 'struct?))))
                 (if __slot114247
                     __slot114247
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__precedence-list114238
               (let ((__slot114248
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114232 'precedence-list))))
                 (if __slot114248
                     __slot114248
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__super114239
               (let ((__slot114249
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114232 'super))))
                 (if __slot114249
                     __slot114249
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__metaclass114240
               (let ((__slot114250
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114232 'metaclass))))
                 (if __slot114250
                     __slot114250
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__fields114241
               (let ((__slot114251
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114232 'fields))))
                 (if __slot114251
                     __slot114251
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__methods114242
               (let ((__slot114252
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114232 'methods))))
                 (if __slot114252
                     __slot114252
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__final?114243
               (let ((__slot114253
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114232 'final?))))
                 (if __slot114253
                     __slot114253
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?))))))
          (lambda _g114366_
            (let ((_g114365_
                   (let () (declare (not safe)) (##length _g114366_))))
              (cond ((let () (declare (not safe)) (##fx= _g114365_ 8))
                     (apply (lambda (_self113943_
                                     _id113944_
                                     _super113945_
                                     _slots113946_
                                     _ctor-method113947_
                                     _struct?113948_
                                     _final?113949_
                                     _metaclass113950_)
                              (let _lp113952_ ((_rest113954_ _super113945_))
                                (let* ((_rest113955113963_ _rest113954_)
                                       (_else113957113971_ (lambda () '#!void))
                                       (_K113959113977_
                                        (lambda (_rest113974_ _super-id113975_)
                                          (if (##structure-ref
                                               (let ((__tmp114369
                                                      (let ((__tmp114370
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id113944_ '()))))
                (declare (not safe))
                (cons '!class __tmp114370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp114369
                                                  _super-id113975_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp114367
                                                     (let ((__tmp114368
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id113944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp114368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp114367
                                                 _super-id113975_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp113952_ _rest113974_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest113955113963_))
                                      (let ((_hd113960113980_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest113955113963_)))
                                            (_tl113961113982_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest113955113963_))))
                                        (let* ((_super-id113985_
                                                _hd113960113980_)
                                               (_rest113987_ _tl113961113982_))
                                          (declare (not safe))
                                          (_K113959113977_
                                           _rest113987_
                                           _super-id113985_)))
                                      '#!void)))
                              (let* ((_ctor-method114037_
                                      (let ((_$e113989_ _ctor-method113947_))
                                        (if _$e113989_
                                            _$e113989_
                                            (let _lp113992_ ((_rest113994_
                                                              _super113945_)
                                                             (_method113995_
                                                              '#f))
                                              (let* ((_rest113996114004_
                                                      _rest113994_)
                                                     (_else113998114012_
                                                      (lambda ()
                                                        _method113995_))
                                                     (_K114000114025_
                                                      (lambda (_rest114015_
                                                               _super-id114016_)
                                                        (let* ((_klass114018_
                                                                (let ((__tmp114371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114372
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113944_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114372))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp114371
                           _super-id114016_)))
                       (_$e114020_
                        (##structure-ref _klass114018_ '6 gxc#!class::t '#f)))
                  (if _$e114020_
                      ((lambda (_ctor-method114023_)
                         (if _method113995_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method114023_ _method113995_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp113992_
                                    _rest114015_
                                    _ctor-method114023_))
                                 (let ((__tmp114373
                                        (let ((__tmp114374
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113944_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114374))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp114373
                                    _method113995_
                                    _ctor-method114023_)))
                             (let ()
                               (declare (not safe))
                               (_lp113992_ _rest114015_ _ctor-method114023_))))
                       _$e114020_)
                      (let ()
                        (declare (not safe))
                        (_lp113992_ _rest114015_ _method113995_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest113996114004_))
                                                    (let ((_hd114001114028_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest113996114004_)))
                                                          (_tl114002114030_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest113996114004_))))
                                                      (let* ((_super-id114033_
                                                              _hd114001114028_)
                                                             (_rest114035_
                                                              _tl114002114030_))
                                                        (declare (not safe))
                                                        (_K114000114025_
                                                         _rest114035_
                                                         _super-id114033_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else113998114012_))))))))
                                     (_g114375_
                                      (let ((__tmp114380
                                             (lambda (_klass-id114039_)
                                               (let ((__tmp114381
                                                      (##structure-ref
                                                       (let ((__tmp114382
                                                              (let ((__tmp114383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id113944_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp114383))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp114382 _klass-id114039_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id114039_
                                                       __tmp114381))))
                                            (__tmp114377
                                             (lambda (_klass-id114041_)
                                               (##structure-ref
                                                (let ((__tmp114378
                                                       (let ((__tmp114379
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id113944_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp114379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp114378
                                                   _klass-id114041_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super113945_
                                         'get-precedence-list:
                                         __tmp114380
                                         'struct:
                                         __tmp114377
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g114376_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g114375_)
                                               (##vector-length _g114375_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g114376_ 2)))
                                        (error "Context expects 2 values"
                                               _g114376_)))
                                  (let ((_precedence-list114043_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114375_ 0)))
                                        (_base-struct114044_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114375_ 1))))
                                    (let ((_fields114046_
                                           (let ((__tmp114384
                                                  (let ((__tmp114385
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id113944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp114385))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp114384
                                              _base-struct114044_
                                              _precedence-list114043_
                                              _slots113946_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113943_
                                         _id113944_
                                         __id114235
                                         __klass114232
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113943_
                                         _super113945_
                                         __super114239
                                         __klass114232
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113943_
                                         _precedence-list114043_
                                         __precedence-list114238
                                         __klass114232
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113943_
                                         _slots113946_
                                         __slots114234
                                         __klass114232
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113943_
                                         _fields114046_
                                         __fields114241
                                         __klass114232
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113943_
                                         _ctor-method114037_
                                         __constructor114236
                                         __klass114232
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113943_
                                         _struct?113948_
                                         __struct?114237
                                         __klass114232
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113943_
                                         _final?113949_
                                         __final?114243
                                         __klass114232
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113943_
                                         _metaclass113950_
                                         __metaclass114240
                                         __klass114232
                                         '#f)))))))
                            _g114366_))
                    ((let () (declare (not safe)) (##fx= _g114365_ 11))
                     (apply (lambda (_self114049_
                                     _id114050_
                                     _super114051_
                                     _precedence-list114052_
                                     _slots114053_
                                     _fields114054_
                                     _constructor114055_
                                     _struct?114056_
                                     _final?114057_
                                     _metaclass114058_
                                     _methods114059_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114049_
                                 _id114050_
                                 __id114235
                                 __klass114232
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114049_
                                 _super114051_
                                 __super114239
                                 __klass114232
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114049_
                                 _precedence-list114052_
                                 __precedence-list114238
                                 __klass114232
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114049_
                                 _slots114053_
                                 __slots114234
                                 __klass114232
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114049_
                                 _fields114054_
                                 __fields114241
                                 __klass114232
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114049_
                                 _constructor114055_
                                 __constructor114236
                                 __klass114232
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114049_
                                 _struct?114056_
                                 __struct?114237
                                 __klass114232
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114049_
                                 _final?114057_
                                 __final?114243
                                 __klass114232
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114049_
                                 _metaclass114058_
                                 __metaclass114240
                                 __klass114232
                                 '#f))
                              (if _methods114059_
                                  (let ((__tmp114386
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods114059_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self114049_
                                     __tmp114386
                                     __methods114242
                                     __klass114232
                                     '#f))
                                  '#!void))
                            _g114366_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g114366_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where113795_
               _base-struct113796_
               _precedence-list113797_
               _direct-slots113798_)
        (let* ((_base-fields113800_
                (if _base-struct113796_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where113795_
                        _base-struct113796_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields113802_ (reverse _base-fields113800_))
               (_seen-slots113810_
                (let ((_tab113804_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g113805113807_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab113804_ _g113805113807_ '#t)))
                   _base-fields113800_)
                  _tab113804_))
               (_process-slot113814_
                (lambda (_slot113812_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots113810_ _slot113812_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots113810_ _slot113812_ '#t))
                        (set! _r-fields113802_
                              (let ()
                                (declare (not safe))
                                (cons _slot113812_ _r-fields113802_))))))))
          (for-each
           (lambda (_mixin113817_)
             (let ((_klass113819_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where113795_
                       _mixin113817_))))
               (if (##structure-ref _klass113819_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot113814_
                    (##structure-ref _klass113819_ '5 gxc#!class::t '#f)))))
           _precedence-list113797_)
          (for-each _process-slot113814_ _direct-slots113798_)
          (reverse _r-fields113802_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass113754_ _slot113755_)
        (let _lp113757_ ((_rest113759_
                          (##structure-ref _klass113754_ '5 gxc#!class::t '#f))
                         (_offset113760_ '1))
          (let* ((_rest113761113769_ _rest113759_)
                 (_else113763113777_
                  (lambda ()
                    (let ((__tmp114388
                           (##structure-ref _klass113754_ '1 gxc#!type::t '#f))
                          (__tmp114387
                           (##structure-ref
                            _klass113754_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp114388
                       __tmp114387
                       _slot113755_))))
                 (_K113765113783_
                  (lambda (_rest113780_ _s113781_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s113781_ _slot113755_))
                        _offset113760_
                        (let ((__tmp114389
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset113760_ '1))))
                          (declare (not safe))
                          (_lp113757_ _rest113780_ __tmp114389))))))
            (if (let () (declare (not safe)) (##pair? _rest113761113769_))
                (let ((_hd113766113786_
                       (let ()
                         (declare (not safe))
                         (##car _rest113761113769_)))
                      (_tl113767113788_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113761113769_))))
                  (let* ((_s113791_ _hd113766113786_)
                         (_rest113793_ _tl113767113788_))
                    (declare (not safe))
                    (_K113765113783_ _rest113793_ _s113791_)))
                (let () (declare (not safe)) (_else113763113777_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass113712_ _slot113713_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass113712_ _slot113713_))
            _klass113712_
            (let _lp113715_ ((_rest113717_
                              (##structure-ref
                               _klass113712_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest113718113726_ _rest113717_)
                     (_else113720113734_ (lambda () '#f))
                     (_K113722113742_
                      (lambda (_rest113737_ _super113738_)
                        (let ((_super-class113740_
                               (let ((__tmp114390
                                      (let ((__tmp114391
                                             (let ((__tmp114393
                                                    (##structure-ref
                                                     _klass113712_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp114392
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot113713_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp114393
                                                     __tmp114392))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp114391))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp114390
                                  _super113738_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class113740_
                                 _slot113713_))
                              _super-class113740_
                              (let ()
                                (declare (not safe))
                                (_lp113715_ _rest113737_)))))))
                (if (let () (declare (not safe)) (##pair? _rest113718113726_))
                    (let ((_hd113723113745_
                           (let ()
                             (declare (not safe))
                             (##car _rest113718113726_)))
                          (_tl113724113747_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest113718113726_))))
                      (let* ((_super113750_ _hd113723113745_)
                             (_rest113752_ _tl113724113747_))
                        (declare (not safe))
                        (_K113722113742_ _rest113752_ _super113750_)))
                    (let () (declare (not safe)) (_else113720113734_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass113709_ _slot113710_)
        (if (##structure-ref _klass113709_ '7 gxc#!class::t '#f)
            (memq _slot113710_
                  (##structure-ref _klass113709_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self113706_ _id113707_)
        (##structure-set! _self113706_ _id113707_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass114254 __method-table114255)
        (let ((__id114256
               (let ((__slot114257
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114254 'id))))
                 (if __slot114257
                     __slot114257
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113706_ _id113707_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113706_
               _id113707_
               __id114256
               __klass114254
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
      (lambda (_self113581_ _id113582_)
        (##structure-set! _self113581_ _id113582_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass114258 __method-table114259)
        (let ((__id114260
               (let ((__slot114261
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114258 'id))))
                 (if __slot114261
                     __slot114261
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113581_ _id113582_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113581_
               _id113582_
               __id114260
               __klass114258
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
      (lambda (_self113454_ _id113455_ _slot113456_ _checked?113457_)
        (##structure-set! _self113454_ _id113455_ '1 gxc#!type::t '#f)
        (##structure-set! _self113454_ _slot113456_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self113454_
         _checked?113457_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass114262 __method-table114263)
        (let ((__slot114264
               (let ((__slot114267
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114262 'slot))))
                 (if __slot114267
                     __slot114267
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id114265
               (let ((__slot114268
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114262 'id))))
                 (if __slot114268
                     __slot114268
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?114266
               (let ((__slot114269
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114262 'checked?))))
                 (if __slot114269
                     __slot114269
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self113454_ _id113455_ _slot113456_ _checked?113457_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113454_
               _id113455_
               __id114265
               __klass114262
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113454_
               _slot113456_
               __slot114264
               __klass114262
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113454_
               _checked?113457_
               __checked?114266
               __klass114262
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
      (lambda (_self113327_ _id113328_ _slot113329_ _checked?113330_)
        (##structure-set! _self113327_ _id113328_ '1 gxc#!type::t '#f)
        (##structure-set! _self113327_ _slot113329_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self113327_
         _checked?113330_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass114270 __method-table114271)
        (let ((__id114272
               (let ((__slot114275
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114270 'id))))
                 (if __slot114275
                     __slot114275
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot114273
               (let ((__slot114276
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114270 'slot))))
                 (if __slot114276
                     __slot114276
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?114274
               (let ((__slot114277
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114270 'checked?))))
                 (if __slot114277
                     __slot114277
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self113327_ _id113328_ _slot113329_ _checked?113330_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113327_
               _id113328_
               __id114272
               __klass114270
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113327_
               _slot113329_
               __slot114273
               __klass114270
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113327_
               _checked?113330_
               __checked?114274
               __klass114270
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
      (lambda (_self113171_
               _id113172_
               _arity113173_
               _dispatch113174_
               _inline113175_
               _typedecl113176_)
        (if (let ((__tmp114400
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113171_))))
              (declare (not safe))
              (##fx< '5 __tmp114400))
            (begin
              (let ((__tmp114395
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113171_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113171_
                 _id113172_
                 '1
                 __tmp114395
                 '#f))
              (let ((__tmp114396
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113171_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113171_
                 _arity113173_
                 '2
                 __tmp114396
                 '#f))
              (let ((__tmp114397
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113171_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113171_
                 _dispatch113174_
                 '3
                 __tmp114397
                 '#f))
              (let ((__tmp114398
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113171_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113171_
                 _inline113175_
                 '4
                 __tmp114398
                 '#f))
              (let ((__tmp114399
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113171_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113171_
                 _typedecl113176_
                 '5
                 __tmp114399
                 '#f)))
            (let ((__tmp114394
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113171_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113171_
                     '5
                     __tmp114394)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self113181_ _id113182_ _arity113183_ _dispatch113184_)
        (let* ((_inline113186_ '#f) (_typedecl113188_ '#f))
          (if (let ((__tmp114407
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113181_))))
                (declare (not safe))
                (##fx< '5 __tmp114407))
              (begin
                (let ((__tmp114402
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113181_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113181_
                   _id113182_
                   '1
                   __tmp114402
                   '#f))
                (let ((__tmp114403
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113181_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113181_
                   _arity113183_
                   '2
                   __tmp114403
                   '#f))
                (let ((__tmp114404
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113181_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113181_
                   _dispatch113184_
                   '3
                   __tmp114404
                   '#f))
                (let ((__tmp114405
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113181_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113181_
                   _inline113186_
                   '4
                   __tmp114405
                   '#f))
                (let ((__tmp114406
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113181_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113181_
                   _typedecl113188_
                   '5
                   __tmp114406
                   '#f)))
              (let ((__tmp114401
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113181_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113181_
                       '5
                       __tmp114401))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self113190_
               _id113191_
               _arity113192_
               _dispatch113193_
               _inline113194_)
        (let ((_typedecl113196_ '#f))
          (if (let ((__tmp114414
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113190_))))
                (declare (not safe))
                (##fx< '5 __tmp114414))
              (begin
                (let ((__tmp114409
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113190_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113190_
                   _id113191_
                   '1
                   __tmp114409
                   '#f))
                (let ((__tmp114410
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113190_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113190_
                   _arity113192_
                   '2
                   __tmp114410
                   '#f))
                (let ((__tmp114411
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113190_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113190_
                   _dispatch113193_
                   '3
                   __tmp114411
                   '#f))
                (let ((__tmp114412
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113190_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113190_
                   _inline113194_
                   '4
                   __tmp114412
                   '#f))
                (let ((__tmp114413
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113190_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113190_
                   _typedecl113196_
                   '5
                   __tmp114413
                   '#f)))
              (let ((__tmp114408
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113190_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113190_
                       '5
                       __tmp114408))))))
    (define gxc#!lambda:::init!
      (lambda _g114416_
        (let ((_g114415_ (let () (declare (not safe)) (##length _g114416_))))
          (cond ((let () (declare (not safe)) (##fx= _g114415_ 4))
                 (apply (lambda (_self113181_
                                 _id113182_
                                 _arity113183_
                                 _dispatch113184_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self113181_
                             _id113182_
                             _arity113183_
                             _dispatch113184_)))
                        _g114416_))
                ((let () (declare (not safe)) (##fx= _g114415_ 5))
                 (apply (lambda (_self113190_
                                 _id113191_
                                 _arity113192_
                                 _dispatch113193_
                                 _inline113194_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self113190_
                             _id113191_
                             _arity113192_
                             _dispatch113193_
                             _inline113194_)))
                        _g114416_))
                ((let () (declare (not safe)) (##fx= _g114415_ 6))
                 (apply (lambda (_self113198_
                                 _id113199_
                                 _arity113200_
                                 _dispatch113201_
                                 _inline113202_
                                 _typedecl113203_)
                          (if (let ((__tmp114423
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self113198_))))
                                (declare (not safe))
                                (##fx< '5 __tmp114423))
                              (begin
                                (let ((__tmp114418
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113198_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113198_
                                   _id113199_
                                   '1
                                   __tmp114418
                                   '#f))
                                (let ((__tmp114419
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113198_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113198_
                                   _arity113200_
                                   '2
                                   __tmp114419
                                   '#f))
                                (let ((__tmp114420
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113198_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113198_
                                   _dispatch113201_
                                   '3
                                   __tmp114420
                                   '#f))
                                (let ((__tmp114421
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113198_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113198_
                                   _inline113202_
                                   '4
                                   __tmp114421
                                   '#f))
                                (let ((__tmp114422
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113198_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113198_
                                   _typedecl113203_
                                   '5
                                   __tmp114422
                                   '#f)))
                              (let ((__tmp114417
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self113198_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self113198_
                                       '5
                                       __tmp114417))))
                        _g114416_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g114416_))))))
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
      (lambda (_self112923_ . _args112924_)
        (apply struct-instance-init! _self112923_ _args112924_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type112798_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112798_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type112798_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass112791_)
        (let ((_$e112793_
               (##structure-ref _klass112791_ '10 gxc#!class::t '#f)))
          (if _$e112793_
              _$e112793_
              (let ((_tab112796_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass112791_
                 _tab112796_
                 '10
                 gxc#!class::t
                 '#f)
                _tab112796_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass112782_ _method112783_)
        (let ((_tab112784112786_
               (##structure-ref _klass112782_ '10 gxc#!class::t '#f)))
          (if _tab112784112786_
              (let ((_tab112789_ _tab112784112786_))
                (declare (not safe))
                (hash-get _tab112789_ _method112783_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type112779_ _method112780_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112779_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type112779_ _method112780_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym112763_ _type112764_ _local?112765_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112764_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym112763_
                     _type112764_)))
        (let ((__tmp114424
               (let () (declare (not safe)) (struct->list _type112764_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym112763_ '" " __tmp114424))
        (let ((__tmp114425
               (if _local?112765_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp114425 _sym112763_ _type112764_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym112770_ _type112771_)
        (let ((_local?112773_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym112770_
           _type112771_
           _local?112773_))))
    (define gxc#optimizer-declare-type!
      (lambda _g114427_
        (let ((_g114426_ (let () (declare (not safe)) (##length _g114427_))))
          (cond ((let () (declare (not safe)) (##fx= _g114426_ 2))
                 (apply (lambda (_sym112770_ _type112771_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym112770_
                             _type112771_)))
                        _g114427_))
                ((let () (declare (not safe)) (##fx= _g114426_ 3))
                 (apply (lambda (_sym112775_ _type112776_ _local?112777_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym112775_
                             _type112776_
                             _local?112777_)))
                        _g114427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g114427_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym112749_ _local?112750_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym112749_))
        (let ((__tmp114428
               (if _local?112750_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp114428 _sym112749_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym112755_)
        (let ((_local?112757_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym112755_ _local?112757_))))
    (define gxc#optimizer-clear-type!
      (lambda _g114430_
        (let ((_g114429_ (let () (declare (not safe)) (##length _g114430_))))
          (cond ((let () (declare (not safe)) (##fx= _g114429_ 1))
                 (apply (lambda (_sym112755_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym112755_)))
                        _g114430_))
                ((let () (declare (not safe)) (##fx= _g114429_ 2))
                 (apply (lambda (_sym112759_ _local?112760_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym112759_
                             _local?112760_)))
                        _g114430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g114430_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t112722_ _method112723_ _sym112724_ _rebind?112725_)
        (let* ((_type112727_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t112722_)))
               (_$e112729_
                (let () (declare (not safe)) (gxc#!type-vtab _type112727_))))
          (if _$e112729_
              ((lambda (_vtab112732_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab112732_ _method112723_))
                     (if _rebind?112725_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t112722_
                              '" "
                              _method112723_))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              _vtab112732_
                              _method112723_
                              _sym112724_)))
                         (let ((__tmp114435
                                (let ((__tmp114436
                                       (let ((__tmp114437
                                              (let ((__tmp114438
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym112724_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method112723_
                                                      __tmp114438))))
                                         (declare (not safe))
                                         (cons _type-t112722_ __tmp114437))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp114436))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp114435
                            _method112723_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t112722_
                          '" "
                          _method112723_
                          '" => "
                          _sym112724_))
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _vtab112732_
                          _method112723_
                          _sym112724_)))))
               _$e112729_)
              (if (let () (declare (not safe)) (not _type112727_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t112722_))
                  (let ((__tmp114431
                         (let ((__tmp114432
                                (let ((__tmp114433
                                       (let ((__tmp114434
                                              (let ()
                                                (declare (not safe))
                                                (cons _method112723_ '()))))
                                         (declare (not safe))
                                         (cons _sym112724_ __tmp114434))))
                                  (declare (not safe))
                                  (cons _type-t112722_ __tmp114433))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp114432))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp114431
                     _type112727_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t112737_ _method112738_ _sym112739_)
        (let ((_rebind?112741_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t112737_
           _method112738_
           _sym112739_
           _rebind?112741_))))
    (define gxc#optimizer-declare-method!
      (lambda _g114440_
        (let ((_g114439_ (let () (declare (not safe)) (##length _g114440_))))
          (cond ((let () (declare (not safe)) (##fx= _g114439_ 3))
                 (apply (lambda (_type-t112737_ _method112738_ _sym112739_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t112737_
                             _method112738_
                             _sym112739_)))
                        _g114440_))
                ((let () (declare (not safe)) (##fx= _g114439_ 4))
                 (apply (lambda (_type-t112743_
                                 _method112744_
                                 _sym112745_
                                 _rebind?112746_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t112743_
                             _method112744_
                             _sym112745_
                             _rebind?112746_)))
                        _g114440_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g114440_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym112710_)
        (let ((_$e112718_
               (let ((_ht112711112713_ (gxc#current-compile-local-type)))
                 (if _ht112711112713_
                     (let ((_ht112716_ _ht112711112713_))
                       (declare (not safe))
                       (hash-get _ht112716_ _sym112710_))
                     '#f))))
          (if _$e112718_
              _$e112718_
              (let ((__tmp114441
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp114441 _sym112710_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym112702_)
        (let ((_type112703112705_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym112702_))))
          (if _type112703112705_
              (let ((_type112708_ _type112703112705_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type112708_ 'gxc#!alias::t))
                    (let ((__tmp114442
                           (##structure-ref _type112708_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp114442))
                    _type112708_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where112694_ _klass-id112695_)
        (let ((_$e112697_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id112695_))))
          (if _$e112697_
              ((lambda (_klass112700_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass112700_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where112694_
                        _klass-id112695_
                        _klass112700_)))
                 _klass112700_)
               _$e112697_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where112694_
                 _klass-id112695_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t112691_ _method112692_)
        (let ((__tmp114443
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t112691_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp114443 _method112692_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym112689_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym112689_))
        (let ((__tmp114444
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp114444 _sym112689_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym112687_)
        (let ((__tmp114445
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp114445 _sym112687_))))
    (define gxc#identifier-symbol
      (lambda (_stx112685_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx112685_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx112685_))
            (let () (declare (not safe)) (gx#stx-e _stx112685_)))))))
