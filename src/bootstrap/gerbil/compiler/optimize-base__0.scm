(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708418155)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp113302 (list))
            (__tmp113300
             (let ((__tmp113301
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113301 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp113302
         '(type ssxi methods)
         __tmp113300
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args113241_
        (apply make-instance gxc#optimizer-info::t _$args113241_)))
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
      (lambda (_self113239_)
        (if (let ((__tmp113310
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113239_))))
              (declare (not safe))
              (##fx< '3 __tmp113310))
            (begin
              (let ((__tmp113305
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113304
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113239_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113239_
                 __tmp113305
                 '1
                 __tmp113304
                 '#f))
              (let ((__tmp113307
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113306
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113239_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113239_
                 __tmp113307
                 '2
                 __tmp113306
                 '#f))
              (let ((__tmp113309
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113308
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113239_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113239_
                 __tmp113309
                 '3
                 __tmp113308
                 '#f)))
            (let ((__tmp113303
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113239_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113239_
                     '3
                     __tmp113303)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp113313 (list))
            (__tmp113311
             (let ((__tmp113312
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113312 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp113313
         '(id)
         __tmp113311
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args113114_ (apply make-instance gxc#!type::t _$args113114_)))
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
      (let ((__tmp113316 (list gxc#!type::t))
            (__tmp113314
             (let ((__tmp113315
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113315 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp113316
         '()
         __tmp113314
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args113111_ (apply make-instance gxc#!alias::t _$args113111_)))
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
      (let ((__tmp113319 (list gxc#!type::t))
            (__tmp113317
             (let ((__tmp113318
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113318 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp113319
         '()
         __tmp113317
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args113108_
        (apply make-instance gxc#!procedure::t _$args113108_)))
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
      (let ((__tmp113322 (list gxc#!type::t))
            (__tmp113320
             (let ((__tmp113321
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113321 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp113322
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp113320
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args113105_ (apply make-instance gxc#!class::t _$args113105_)))
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
      (let ((__tmp113325 (list gxc#!procedure::t))
            (__tmp113323
             (let ((__tmp113324
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113324 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp113325
         '()
         __tmp113323
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args113102_
        (apply make-instance gxc#!predicate::t _$args113102_)))
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
      (let ((__tmp113328 (list gxc#!procedure::t))
            (__tmp113326
             (let ((__tmp113327
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113327 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp113328
         '()
         __tmp113326
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args113099_
        (apply make-instance gxc#!constructor::t _$args113099_)))
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
      (let ((__tmp113331 (list gxc#!procedure::t))
            (__tmp113329
             (let ((__tmp113330
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113330 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp113331
         '(slot checked?)
         __tmp113329
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args113096_
        (apply make-instance gxc#!accessor::t _$args113096_)))
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
      (let ((__tmp113334 (list gxc#!procedure::t))
            (__tmp113332
             (let ((__tmp113333
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113333 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp113334
         '(slot checked?)
         __tmp113332
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args113093_
        (apply make-instance gxc#!mutator::t _$args113093_)))
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
      (let ((__tmp113337 (list gxc#!procedure::t))
            (__tmp113335
             (let ((__tmp113336
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113336 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp113337
         '(arity dispatch inline inline-typedecl)
         __tmp113335
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args113090_
        (apply make-instance gxc#!lambda::t _$args113090_)))
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
      (let ((__tmp113340 (list gxc#!procedure::t))
            (__tmp113338
             (let ((__tmp113339
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113339 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp113340
         '(clauses)
         __tmp113338
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args113087_
        (apply make-instance gxc#!case-lambda::t _$args113087_)))
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
      (let ((__tmp113343 (list gxc#!procedure::t))
            (__tmp113341
             (let ((__tmp113342
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113342 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp113343
         '(table dispatch)
         __tmp113341
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args113084_
        (apply make-instance gxc#!kw-lambda::t _$args113084_)))
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
      (let ((__tmp113346 (list gxc#!procedure::t))
            (__tmp113344
             (let ((__tmp113345
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113345 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp113346
         '(keys main)
         __tmp113344
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args113081_
        (apply make-instance gxc#!kw-lambda-primary::t _$args113081_)))
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
      (let ((__tmp113347 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp113347
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args113078_
        (apply make-instance gxc#!primitive::t _$args113078_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp113348 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp113348
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args113075_
        (apply make-instance gxc#!primitive-lambda::t _$args113075_)))
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
      (let ((__tmp113349 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp113349
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args113072_
        (apply make-instance gxc#!primitive-case-lambda::t _$args113072_)))
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
      (lambda (_self112954_
               _id112955_
               _super112956_
               _slots112957_
               _ctor-method112958_
               _struct?112959_
               _final?112960_
               _metaclass112961_)
        (let _lp112963_ ((_rest112965_ _super112956_))
          (let* ((_rest112966112974_ _rest112965_)
                 (_else112968112982_ (lambda () '#!void))
                 (_K112970112988_
                  (lambda (_rest112985_ _super-id112986_)
                    (if (##structure-ref
                         (let ((__tmp113352
                                (let ((__tmp113353
                                       (let ()
                                         (declare (not safe))
                                         (cons _id112955_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp113353))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp113352
                            _super-id112986_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp113350
                               (let ((__tmp113351
                                      (let ()
                                        (declare (not safe))
                                        (cons _id112955_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp113351))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp113350
                           _super-id112986_))
                        '#!void)
                    (let () (declare (not safe)) (_lp112963_ _rest112985_)))))
            (if (let () (declare (not safe)) (##pair? _rest112966112974_))
                (let ((_hd112971112991_
                       (let ()
                         (declare (not safe))
                         (##car _rest112966112974_)))
                      (_tl112972112993_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest112966112974_))))
                  (let* ((_super-id112996_ _hd112971112991_)
                         (_rest112998_ _tl112972112993_))
                    (declare (not safe))
                    (_K112970112988_ _rest112998_ _super-id112996_)))
                '#!void)))
        (let* ((_ctor-method113048_
                (let ((_$e113000_ _ctor-method112958_))
                  (if _$e113000_
                      _$e113000_
                      (let _lp113003_ ((_rest113005_ _super112956_)
                                       (_method113006_ '#f))
                        (let* ((_rest113007113015_ _rest113005_)
                               (_else113009113023_ (lambda () _method113006_))
                               (_K113011113036_
                                (lambda (_rest113026_ _super-id113027_)
                                  (let* ((_klass113029_
                                          (let ((__tmp113354
                                                 (let ((__tmp113355
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id112955_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp113355))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp113354
                                             _super-id113027_)))
                                         (_$e113031_
                                          (##structure-ref
                                           _klass113029_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e113031_
                                        ((lambda (_ctor-method113034_)
                                           (if _method113006_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method113034_
                                                          _method113006_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp113003_
                                                      _rest113026_
                                                      _ctor-method113034_))
                                                   (let ((__tmp113356
                                                          (let ((__tmp113357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id112955_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp113357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp113356
                                                      _method113006_
                                                      _ctor-method113034_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp113003_
                                                  _rest113026_
                                                  _ctor-method113034_))))
                                         _$e113031_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp113003_
                                           _rest113026_
                                           _method113006_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest113007113015_))
                              (let ((_hd113012113039_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest113007113015_)))
                                    (_tl113013113041_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest113007113015_))))
                                (let* ((_super-id113044_ _hd113012113039_)
                                       (_rest113046_ _tl113013113041_))
                                  (declare (not safe))
                                  (_K113011113036_
                                   _rest113046_
                                   _super-id113044_)))
                              (let ()
                                (declare (not safe))
                                (_else113009113023_))))))))
               (_g113358_
                (let ((__tmp113363
                       (lambda (_klass-id113050_)
                         (let ((__tmp113364
                                (##structure-ref
                                 (let ((__tmp113365
                                        (let ((__tmp113366
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id112955_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp113366))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp113365
                                    _klass-id113050_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id113050_ __tmp113364))))
                      (__tmp113360
                       (lambda (_klass-id113052_)
                         (##structure-ref
                          (let ((__tmp113361
                                 (let ((__tmp113362
                                        (let ()
                                          (declare (not safe))
                                          (cons _id112955_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp113362))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp113361
                             _klass-id113052_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super112956_
                   'get-precedence-list:
                   __tmp113363
                   'struct:
                   __tmp113360
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g113359_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g113358_)
                         (##vector-length _g113358_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g113359_ 2)))
                  (error "Context expects 2 values" _g113359_)))
            (let ((_precedence-list113054_
                   (let () (declare (not safe)) (##vector-ref _g113358_ 0)))
                  (_base-struct113055_
                   (let () (declare (not safe)) (##vector-ref _g113358_ 1))))
              (let ((_fields113057_
                     (let ((__tmp113367
                            (let ((__tmp113368
                                   (let ()
                                     (declare (not safe))
                                     (cons _id112955_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp113368))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp113367
                        _base-struct113055_
                        _precedence-list113054_
                        _slots112957_))))
                (##structure-set! _self112954_ _id112955_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self112954_
                 _super112956_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112954_
                 _precedence-list113054_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112954_
                 _slots112957_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112954_
                 _fields113057_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112954_
                 _ctor-method113048_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112954_
                 _struct?112959_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112954_
                 _final?112960_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112954_
                 _metaclass112961_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self113060_
               _id113061_
               _super113062_
               _precedence-list113063_
               _slots113064_
               _fields113065_
               _constructor113066_
               _struct?113067_
               _final?113068_
               _metaclass113069_
               _methods113070_)
        (##structure-set! _self113060_ _id113061_ '1 gxc#!type::t '#f)
        (##structure-set! _self113060_ _super113062_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self113060_
         _precedence-list113063_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self113060_ _slots113064_ '4 gxc#!class::t '#f)
        (##structure-set! _self113060_ _fields113065_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self113060_
         _constructor113066_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self113060_ _struct?113067_ '7 gxc#!class::t '#f)
        (##structure-set! _self113060_ _final?113068_ '8 gxc#!class::t '#f)
        (##structure-set! _self113060_ _metaclass113069_ '9 gxc#!class::t '#f)
        (if _methods113070_
            (##structure-set!
             _self113060_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods113070_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g113370_
        (let ((_g113369_ (let () (declare (not safe)) (##length _g113370_))))
          (cond ((let () (declare (not safe)) (##fx= _g113369_ 8))
                 (apply (lambda (_self112954_
                                 _id112955_
                                 _super112956_
                                 _slots112957_
                                 _ctor-method112958_
                                 _struct?112959_
                                 _final?112960_
                                 _metaclass112961_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self112954_
                             _id112955_
                             _super112956_
                             _slots112957_
                             _ctor-method112958_
                             _struct?112959_
                             _final?112960_
                             _metaclass112961_)))
                        _g113370_))
                ((let () (declare (not safe)) (##fx= _g113369_ 11))
                 (apply (lambda (_self113060_
                                 _id113061_
                                 _super113062_
                                 _precedence-list113063_
                                 _slots113064_
                                 _fields113065_
                                 _constructor113066_
                                 _struct?113067_
                                 _final?113068_
                                 _metaclass113069_
                                 _methods113070_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self113060_
                             _id113061_
                             _super113062_
                             _precedence-list113063_
                             _slots113064_
                             _fields113065_
                             _constructor113066_
                             _struct?113067_
                             _final?113068_
                             _metaclass113069_
                             _methods113070_)))
                        _g113370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g113370_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t113243)
        (let ((__fields113244
               (let ((__tmp113254
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113243 'fields))))
                 (if __tmp113254
                     __tmp113254
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__final?113245
               (let ((__tmp113255
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113243 'final?))))
                 (if __tmp113255
                     __tmp113255
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__methods113246
               (let ((__tmp113256
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113243 'methods))))
                 (if __tmp113256
                     __tmp113256
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__super113247
               (let ((__tmp113257
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113243 'super))))
                 (if __tmp113257
                     __tmp113257
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__metaclass113248
               (let ((__tmp113258
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113243 'metaclass))))
                 (if __tmp113258
                     __tmp113258
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__constructor113249
               (let ((__tmp113259
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113243 'constructor))))
                 (if __tmp113259
                     __tmp113259
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__struct?113250
               (let ((__tmp113260
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113243 'struct?))))
                 (if __tmp113260
                     __tmp113260
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__precedence-list113251
               (let ((__tmp113261
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113243 'precedence-list))))
                 (if __tmp113261
                     __tmp113261
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__slots113252
               (let ((__tmp113262
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113243 'slots))))
                 (if __tmp113262
                     __tmp113262
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__id113253
               (let ((__tmp113263
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113243 'id))))
                 (if __tmp113263
                     __tmp113263
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda _g113372_
            (let ((_g113371_
                   (let () (declare (not safe)) (##length _g113372_))))
              (cond ((let () (declare (not safe)) (##fx= _g113371_ 8))
                     (apply (lambda (_self112954_
                                     _id112955_
                                     _super112956_
                                     _slots112957_
                                     _ctor-method112958_
                                     _struct?112959_
                                     _final?112960_
                                     _metaclass112961_)
                              (let _lp112963_ ((_rest112965_ _super112956_))
                                (let* ((_rest112966112974_ _rest112965_)
                                       (_else112968112982_ (lambda () '#!void))
                                       (_K112970112988_
                                        (lambda (_rest112985_ _super-id112986_)
                                          (if (##structure-ref
                                               (let ((__tmp113375
                                                      (let ((__tmp113376
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id112955_ '()))))
                (declare (not safe))
                (cons '!class __tmp113376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp113375
                                                  _super-id112986_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp113373
                                                     (let ((__tmp113374
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id112955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp113374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp113373
                                                 _super-id112986_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp112963_ _rest112985_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest112966112974_))
                                      (let ((_hd112971112991_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest112966112974_)))
                                            (_tl112972112993_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest112966112974_))))
                                        (let* ((_super-id112996_
                                                _hd112971112991_)
                                               (_rest112998_ _tl112972112993_))
                                          (declare (not safe))
                                          (_K112970112988_
                                           _rest112998_
                                           _super-id112996_)))
                                      '#!void)))
                              (let* ((_ctor-method113048_
                                      (let ((_$e113000_ _ctor-method112958_))
                                        (if _$e113000_
                                            _$e113000_
                                            (let _lp113003_ ((_rest113005_
                                                              _super112956_)
                                                             (_method113006_
                                                              '#f))
                                              (let* ((_rest113007113015_
                                                      _rest113005_)
                                                     (_else113009113023_
                                                      (lambda ()
                                                        _method113006_))
                                                     (_K113011113036_
                                                      (lambda (_rest113026_
                                                               _super-id113027_)
                                                        (let* ((_klass113029_
                                                                (let ((__tmp113377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113378
                                      (let ()
                                        (declare (not safe))
                                        (cons _id112955_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp113378))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp113377
                           _super-id113027_)))
                       (_$e113031_
                        (##structure-ref _klass113029_ '6 gxc#!class::t '#f)))
                  (if _$e113031_
                      ((lambda (_ctor-method113034_)
                         (if _method113006_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method113034_ _method113006_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp113003_
                                    _rest113026_
                                    _ctor-method113034_))
                                 (let ((__tmp113379
                                        (let ((__tmp113380
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id112955_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp113380))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp113379
                                    _method113006_
                                    _ctor-method113034_)))
                             (let ()
                               (declare (not safe))
                               (_lp113003_ _rest113026_ _ctor-method113034_))))
                       _$e113031_)
                      (let ()
                        (declare (not safe))
                        (_lp113003_ _rest113026_ _method113006_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest113007113015_))
                                                    (let ((_hd113012113039_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest113007113015_)))
                                                          (_tl113013113041_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest113007113015_))))
                                                      (let* ((_super-id113044_
                                                              _hd113012113039_)
                                                             (_rest113046_
                                                              _tl113013113041_))
                                                        (declare (not safe))
                                                        (_K113011113036_
                                                         _rest113046_
                                                         _super-id113044_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else113009113023_))))))))
                                     (_g113381_
                                      (let ((__tmp113386
                                             (lambda (_klass-id113050_)
                                               (let ((__tmp113387
                                                      (##structure-ref
                                                       (let ((__tmp113388
                                                              (let ((__tmp113389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id112955_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp113389))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp113388 _klass-id113050_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id113050_
                                                       __tmp113387))))
                                            (__tmp113383
                                             (lambda (_klass-id113052_)
                                               (##structure-ref
                                                (let ((__tmp113384
                                                       (let ((__tmp113385
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id112955_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp113385))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp113384
                                                   _klass-id113052_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super112956_
                                         'get-precedence-list:
                                         __tmp113386
                                         'struct:
                                         __tmp113383
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g113382_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g113381_)
                                               (##vector-length _g113381_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g113382_ 2)))
                                        (error "Context expects 2 values"
                                               _g113382_)))
                                  (let ((_precedence-list113054_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113381_ 0)))
                                        (_base-struct113055_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113381_ 1))))
                                    (let ((_fields113057_
                                           (let ((__tmp113390
                                                  (let ((__tmp113391
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id112955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp113391))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp113390
                                              _base-struct113055_
                                              _precedence-list113054_
                                              _slots112957_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112954_
                                         _id112955_
                                         __id113253
                                         __t113243
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112954_
                                         _super112956_
                                         __super113247
                                         __t113243
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112954_
                                         _precedence-list113054_
                                         __precedence-list113251
                                         __t113243
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112954_
                                         _slots112957_
                                         __slots113252
                                         __t113243
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112954_
                                         _fields113057_
                                         __fields113244
                                         __t113243
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112954_
                                         _ctor-method113048_
                                         __constructor113249
                                         __t113243
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112954_
                                         _struct?112959_
                                         __struct?113250
                                         __t113243
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112954_
                                         _final?112960_
                                         __final?113245
                                         __t113243
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112954_
                                         _metaclass112961_
                                         __metaclass113248
                                         __t113243
                                         '#f)))))))
                            _g113372_))
                    ((let () (declare (not safe)) (##fx= _g113371_ 11))
                     (apply (lambda (_self113060_
                                     _id113061_
                                     _super113062_
                                     _precedence-list113063_
                                     _slots113064_
                                     _fields113065_
                                     _constructor113066_
                                     _struct?113067_
                                     _final?113068_
                                     _metaclass113069_
                                     _methods113070_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113060_
                                 _id113061_
                                 __id113253
                                 __t113243
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113060_
                                 _super113062_
                                 __super113247
                                 __t113243
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113060_
                                 _precedence-list113063_
                                 __precedence-list113251
                                 __t113243
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113060_
                                 _slots113064_
                                 __slots113252
                                 __t113243
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113060_
                                 _fields113065_
                                 __fields113244
                                 __t113243
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113060_
                                 _constructor113066_
                                 __constructor113249
                                 __t113243
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113060_
                                 _struct?113067_
                                 __struct?113250
                                 __t113243
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113060_
                                 _final?113068_
                                 __final?113245
                                 __t113243
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113060_
                                 _metaclass113069_
                                 __metaclass113248
                                 __t113243
                                 '#f))
                              (if _methods113070_
                                  (let ((__tmp113392
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods113070_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self113060_
                                     __tmp113392
                                     __methods113246
                                     __t113243
                                     '#f))
                                  '#!void))
                            _g113372_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g113372_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where112806_
               _base-struct112807_
               _precedence-list112808_
               _direct-slots112809_)
        (let* ((_base-fields112811_
                (if _base-struct112807_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where112806_
                        _base-struct112807_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields112813_ (reverse _base-fields112811_))
               (_seen-slots112821_
                (let ((_tab112815_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g112816112818_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab112815_ _g112816112818_ '#t)))
                   _base-fields112811_)
                  _tab112815_))
               (_process-slot112825_
                (lambda (_slot112823_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots112821_ _slot112823_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots112821_ _slot112823_ '#t))
                        (set! _r-fields112813_
                              (let ()
                                (declare (not safe))
                                (cons _slot112823_ _r-fields112813_))))))))
          (for-each
           (lambda (_mixin112828_)
             (let ((_klass112830_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where112806_
                       _mixin112828_))))
               (if (##structure-ref _klass112830_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot112825_
                    (##structure-ref _klass112830_ '5 gxc#!class::t '#f)))))
           _precedence-list112808_)
          (for-each _process-slot112825_ _direct-slots112809_)
          (reverse _r-fields112813_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass112765_ _slot112766_)
        (let _lp112768_ ((_rest112770_
                          (##structure-ref _klass112765_ '5 gxc#!class::t '#f))
                         (_offset112771_ '1))
          (let* ((_rest112772112780_ _rest112770_)
                 (_else112774112788_
                  (lambda ()
                    (let ((__tmp113394
                           (##structure-ref _klass112765_ '1 gxc#!type::t '#f))
                          (__tmp113393
                           (##structure-ref
                            _klass112765_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp113394
                       __tmp113393
                       _slot112766_))))
                 (_K112776112794_
                  (lambda (_rest112791_ _s112792_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s112792_ _slot112766_))
                        _offset112771_
                        (let ((__tmp113395
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset112771_ '1))))
                          (declare (not safe))
                          (_lp112768_ _rest112791_ __tmp113395))))))
            (if (let () (declare (not safe)) (##pair? _rest112772112780_))
                (let ((_hd112777112797_
                       (let ()
                         (declare (not safe))
                         (##car _rest112772112780_)))
                      (_tl112778112799_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest112772112780_))))
                  (let* ((_s112802_ _hd112777112797_)
                         (_rest112804_ _tl112778112799_))
                    (declare (not safe))
                    (_K112776112794_ _rest112804_ _s112802_)))
                (let () (declare (not safe)) (_else112774112788_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass112723_ _slot112724_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass112723_ _slot112724_))
            _klass112723_
            (let _lp112726_ ((_rest112728_
                              (##structure-ref
                               _klass112723_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest112729112737_ _rest112728_)
                     (_else112731112745_ (lambda () '#f))
                     (_K112733112753_
                      (lambda (_rest112748_ _super112749_)
                        (let ((_super-class112751_
                               (let ((__tmp113396
                                      (let ((__tmp113397
                                             (let ((__tmp113399
                                                    (##structure-ref
                                                     _klass112723_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp113398
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot112724_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp113399
                                                     __tmp113398))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp113397))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp113396
                                  _super112749_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class112751_
                                 _slot112724_))
                              _super-class112751_
                              (let ()
                                (declare (not safe))
                                (_lp112726_ _rest112748_)))))))
                (if (let () (declare (not safe)) (##pair? _rest112729112737_))
                    (let ((_hd112734112756_
                           (let ()
                             (declare (not safe))
                             (##car _rest112729112737_)))
                          (_tl112735112758_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest112729112737_))))
                      (let* ((_super112761_ _hd112734112756_)
                             (_rest112763_ _tl112735112758_))
                        (declare (not safe))
                        (_K112733112753_ _rest112763_ _super112761_)))
                    (let () (declare (not safe)) (_else112731112745_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass112720_ _slot112721_)
        (if (##structure-ref _klass112720_ '7 gxc#!class::t '#f)
            (memq _slot112721_
                  (##structure-ref _klass112720_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self112717_ _id112718_)
        (##structure-set! _self112717_ _id112718_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t113264)
        (let ((__id113265
               (let ((__tmp113266
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113264 'id))))
                 (if __tmp113266
                     __tmp113266
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self112717_ _id112718_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112717_
               _id112718_
               __id113265
               __t113264
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
      (lambda (_self112592_ _id112593_)
        (##structure-set! _self112592_ _id112593_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t113267)
        (let ((__id113268
               (let ((__tmp113269
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113267 'id))))
                 (if __tmp113269
                     __tmp113269
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self112592_ _id112593_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112592_
               _id112593_
               __id113268
               __t113267
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
      (lambda (_self112465_ _id112466_ _slot112467_ _checked?112468_)
        (##structure-set! _self112465_ _id112466_ '1 gxc#!type::t '#f)
        (##structure-set! _self112465_ _slot112467_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self112465_
         _checked?112468_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t113270)
        (let ((__checked?113271
               (let ((__tmp113274
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113270 'checked?))))
                 (if __tmp113274
                     __tmp113274
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot113272
               (let ((__tmp113275
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113270 'slot))))
                 (if __tmp113275
                     __tmp113275
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id113273
               (let ((__tmp113276
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113270 'id))))
                 (if __tmp113276
                     __tmp113276
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self112465_ _id112466_ _slot112467_ _checked?112468_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112465_
               _id112466_
               __id113273
               __t113270
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112465_
               _slot112467_
               __slot113272
               __t113270
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112465_
               _checked?112468_
               __checked?113271
               __t113270
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
      (lambda (_self112338_ _id112339_ _slot112340_ _checked?112341_)
        (##structure-set! _self112338_ _id112339_ '1 gxc#!type::t '#f)
        (##structure-set! _self112338_ _slot112340_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self112338_
         _checked?112341_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t113277)
        (let ((__checked?113278
               (let ((__tmp113281
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113277 'checked?))))
                 (if __tmp113281
                     __tmp113281
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot113279
               (let ((__tmp113282
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113277 'slot))))
                 (if __tmp113282
                     __tmp113282
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id113280
               (let ((__tmp113283
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113277 'id))))
                 (if __tmp113283
                     __tmp113283
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self112338_ _id112339_ _slot112340_ _checked?112341_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112338_
               _id112339_
               __id113280
               __t113277
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112338_
               _slot112340_
               __slot113279
               __t113277
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112338_
               _checked?112341_
               __checked?113278
               __t113277
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
      (lambda (_self112182_
               _id112183_
               _arity112184_
               _dispatch112185_
               _inline112186_
               _typedecl112187_)
        (if (let ((__tmp113406
                   (let ()
                     (declare (not safe))
                     (##structure-length _self112182_))))
              (declare (not safe))
              (##fx< '5 __tmp113406))
            (begin
              (let ((__tmp113401
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112182_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112182_
                 _id112183_
                 '1
                 __tmp113401
                 '#f))
              (let ((__tmp113402
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112182_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112182_
                 _arity112184_
                 '2
                 __tmp113402
                 '#f))
              (let ((__tmp113403
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112182_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112182_
                 _dispatch112185_
                 '3
                 __tmp113403
                 '#f))
              (let ((__tmp113404
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112182_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112182_
                 _inline112186_
                 '4
                 __tmp113404
                 '#f))
              (let ((__tmp113405
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112182_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112182_
                 _typedecl112187_
                 '5
                 __tmp113405
                 '#f)))
            (let ((__tmp113400
                   (let ()
                     (declare (not safe))
                     (##vector-length _self112182_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self112182_
                     '5
                     __tmp113400)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self112192_ _id112193_ _arity112194_ _dispatch112195_)
        (let* ((_inline112197_ '#f) (_typedecl112199_ '#f))
          (if (let ((__tmp113413
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112192_))))
                (declare (not safe))
                (##fx< '5 __tmp113413))
              (begin
                (let ((__tmp113408
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112192_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112192_
                   _id112193_
                   '1
                   __tmp113408
                   '#f))
                (let ((__tmp113409
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112192_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112192_
                   _arity112194_
                   '2
                   __tmp113409
                   '#f))
                (let ((__tmp113410
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112192_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112192_
                   _dispatch112195_
                   '3
                   __tmp113410
                   '#f))
                (let ((__tmp113411
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112192_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112192_
                   _inline112197_
                   '4
                   __tmp113411
                   '#f))
                (let ((__tmp113412
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112192_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112192_
                   _typedecl112199_
                   '5
                   __tmp113412
                   '#f)))
              (let ((__tmp113407
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112192_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112192_
                       '5
                       __tmp113407))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self112201_
               _id112202_
               _arity112203_
               _dispatch112204_
               _inline112205_)
        (let ((_typedecl112207_ '#f))
          (if (let ((__tmp113420
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112201_))))
                (declare (not safe))
                (##fx< '5 __tmp113420))
              (begin
                (let ((__tmp113415
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112201_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112201_
                   _id112202_
                   '1
                   __tmp113415
                   '#f))
                (let ((__tmp113416
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112201_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112201_
                   _arity112203_
                   '2
                   __tmp113416
                   '#f))
                (let ((__tmp113417
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112201_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112201_
                   _dispatch112204_
                   '3
                   __tmp113417
                   '#f))
                (let ((__tmp113418
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112201_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112201_
                   _inline112205_
                   '4
                   __tmp113418
                   '#f))
                (let ((__tmp113419
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112201_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112201_
                   _typedecl112207_
                   '5
                   __tmp113419
                   '#f)))
              (let ((__tmp113414
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112201_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112201_
                       '5
                       __tmp113414))))))
    (define gxc#!lambda:::init!
      (lambda _g113422_
        (let ((_g113421_ (let () (declare (not safe)) (##length _g113422_))))
          (cond ((let () (declare (not safe)) (##fx= _g113421_ 4))
                 (apply (lambda (_self112192_
                                 _id112193_
                                 _arity112194_
                                 _dispatch112195_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self112192_
                             _id112193_
                             _arity112194_
                             _dispatch112195_)))
                        _g113422_))
                ((let () (declare (not safe)) (##fx= _g113421_ 5))
                 (apply (lambda (_self112201_
                                 _id112202_
                                 _arity112203_
                                 _dispatch112204_
                                 _inline112205_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self112201_
                             _id112202_
                             _arity112203_
                             _dispatch112204_
                             _inline112205_)))
                        _g113422_))
                ((let () (declare (not safe)) (##fx= _g113421_ 6))
                 (apply (lambda (_self112209_
                                 _id112210_
                                 _arity112211_
                                 _dispatch112212_
                                 _inline112213_
                                 _typedecl112214_)
                          (if (let ((__tmp113429
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self112209_))))
                                (declare (not safe))
                                (##fx< '5 __tmp113429))
                              (begin
                                (let ((__tmp113424
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112209_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112209_
                                   _id112210_
                                   '1
                                   __tmp113424
                                   '#f))
                                (let ((__tmp113425
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112209_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112209_
                                   _arity112211_
                                   '2
                                   __tmp113425
                                   '#f))
                                (let ((__tmp113426
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112209_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112209_
                                   _dispatch112212_
                                   '3
                                   __tmp113426
                                   '#f))
                                (let ((__tmp113427
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112209_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112209_
                                   _inline112213_
                                   '4
                                   __tmp113427
                                   '#f))
                                (let ((__tmp113428
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112209_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112209_
                                   _typedecl112214_
                                   '5
                                   __tmp113428
                                   '#f)))
                              (let ((__tmp113423
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self112209_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self112209_
                                       '5
                                       __tmp113423))))
                        _g113422_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g113422_))))))
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
      (lambda (_self111934_ . _args111935_)
        (apply struct-instance-init! _self111934_ _args111935_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type111809_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111809_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type111809_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass111802_)
        (let ((_$e111804_
               (##structure-ref _klass111802_ '10 gxc#!class::t '#f)))
          (if _$e111804_
              _$e111804_
              (let ((_tab111807_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass111802_
                 _tab111807_
                 '10
                 gxc#!class::t
                 '#f)
                _tab111807_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass111793_ _method111794_)
        (let ((_tab111795111797_
               (##structure-ref _klass111793_ '10 gxc#!class::t '#f)))
          (if _tab111795111797_
              (let ((_tab111800_ _tab111795111797_))
                (declare (not safe))
                (hash-get _tab111800_ _method111794_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type111790_ _method111791_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111790_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type111790_ _method111791_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym111774_ _type111775_ _local?111776_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111775_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym111774_
                     _type111775_)))
        (let ((__tmp113430
               (let () (declare (not safe)) (struct->list _type111775_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym111774_ '" " __tmp113430))
        (let ((__tmp113431
               (if _local?111776_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp113431 _sym111774_ _type111775_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym111781_ _type111782_)
        (let ((_local?111784_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym111781_
           _type111782_
           _local?111784_))))
    (define gxc#optimizer-declare-type!
      (lambda _g113433_
        (let ((_g113432_ (let () (declare (not safe)) (##length _g113433_))))
          (cond ((let () (declare (not safe)) (##fx= _g113432_ 2))
                 (apply (lambda (_sym111781_ _type111782_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym111781_
                             _type111782_)))
                        _g113433_))
                ((let () (declare (not safe)) (##fx= _g113432_ 3))
                 (apply (lambda (_sym111786_ _type111787_ _local?111788_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym111786_
                             _type111787_
                             _local?111788_)))
                        _g113433_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g113433_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym111760_ _local?111761_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym111760_))
        (let ((__tmp113434
               (if _local?111761_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp113434 _sym111760_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym111766_)
        (let ((_local?111768_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym111766_ _local?111768_))))
    (define gxc#optimizer-clear-type!
      (lambda _g113436_
        (let ((_g113435_ (let () (declare (not safe)) (##length _g113436_))))
          (cond ((let () (declare (not safe)) (##fx= _g113435_ 1))
                 (apply (lambda (_sym111766_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym111766_)))
                        _g113436_))
                ((let () (declare (not safe)) (##fx= _g113435_ 2))
                 (apply (lambda (_sym111770_ _local?111771_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym111770_
                             _local?111771_)))
                        _g113436_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g113436_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t111733_ _method111734_ _sym111735_ _rebind?111736_)
        (let* ((_type111738_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t111733_)))
               (_$e111740_
                (let () (declare (not safe)) (gxc#!type-vtab _type111738_))))
          (if _$e111740_
              ((lambda (_vtab111743_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab111743_ _method111734_))
                     (if _rebind?111736_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t111733_
                              '" "
                              _method111734_))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              _vtab111743_
                              _method111734_
                              _sym111735_)))
                         (let ((__tmp113441
                                (let ((__tmp113442
                                       (let ((__tmp113443
                                              (let ((__tmp113444
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym111735_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method111734_
                                                      __tmp113444))))
                                         (declare (not safe))
                                         (cons _type-t111733_ __tmp113443))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp113442))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp113441
                            _method111734_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t111733_
                          '" "
                          _method111734_
                          '" => "
                          _sym111735_))
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _vtab111743_
                          _method111734_
                          _sym111735_)))))
               _$e111740_)
              (if (let () (declare (not safe)) (not _type111738_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t111733_))
                  (let ((__tmp113437
                         (let ((__tmp113438
                                (let ((__tmp113439
                                       (let ((__tmp113440
                                              (let ()
                                                (declare (not safe))
                                                (cons _method111734_ '()))))
                                         (declare (not safe))
                                         (cons _sym111735_ __tmp113440))))
                                  (declare (not safe))
                                  (cons _type-t111733_ __tmp113439))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp113438))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp113437
                     _type111738_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t111748_ _method111749_ _sym111750_)
        (let ((_rebind?111752_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t111748_
           _method111749_
           _sym111750_
           _rebind?111752_))))
    (define gxc#optimizer-declare-method!
      (lambda _g113446_
        (let ((_g113445_ (let () (declare (not safe)) (##length _g113446_))))
          (cond ((let () (declare (not safe)) (##fx= _g113445_ 3))
                 (apply (lambda (_type-t111748_ _method111749_ _sym111750_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t111748_
                             _method111749_
                             _sym111750_)))
                        _g113446_))
                ((let () (declare (not safe)) (##fx= _g113445_ 4))
                 (apply (lambda (_type-t111754_
                                 _method111755_
                                 _sym111756_
                                 _rebind?111757_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t111754_
                             _method111755_
                             _sym111756_
                             _rebind?111757_)))
                        _g113446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g113446_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym111721_)
        (let ((_$e111729_
               (let ((_ht111722111724_ (gxc#current-compile-local-type)))
                 (if _ht111722111724_
                     (let ((_ht111727_ _ht111722111724_))
                       (declare (not safe))
                       (hash-get _ht111727_ _sym111721_))
                     '#f))))
          (if _$e111729_
              _$e111729_
              (let ((__tmp113447
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp113447 _sym111721_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym111713_)
        (let ((_type111714111716_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym111713_))))
          (if _type111714111716_
              (let ((_type111719_ _type111714111716_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type111719_ 'gxc#!alias::t))
                    (let ((__tmp113448
                           (##structure-ref _type111719_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp113448))
                    _type111719_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where111705_ _klass-id111706_)
        (let ((_$e111708_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id111706_))))
          (if _$e111708_
              ((lambda (_klass111711_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass111711_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where111705_
                        _klass-id111706_
                        _klass111711_)))
                 _klass111711_)
               _$e111708_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where111705_
                 _klass-id111706_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t111702_ _method111703_)
        (let ((__tmp113449
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t111702_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp113449 _method111703_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym111700_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym111700_))
        (let ((__tmp113450
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp113450 _sym111700_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym111698_)
        (let ((__tmp113451
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp113451 _sym111698_))))
    (define gxc#identifier-symbol
      (lambda (_stx111696_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx111696_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx111696_))
            (let () (declare (not safe)) (gx#stx-e _stx111696_)))))))
