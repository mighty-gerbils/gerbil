(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707660404)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp217317 (list))
            (__tmp217315
             (let ((__tmp217316
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217316 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp217317
         '(type ssxi methods)
         __tmp217315
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args212790_
        (apply make-instance gxc#optimizer-info::t _$args212790_)))
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
      (lambda (_self212788_)
        (if (let ((__tmp217324
                   (let ()
                     (declare (not safe))
                     (##structure-length _self212788_))))
              (declare (not safe))
              (##fx< '3 __tmp217324))
            (begin
              (let ((__tmp217319
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217318
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212788_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212788_
                 __tmp217319
                 '1
                 __tmp217318
                 '#f))
              (let ((__tmp217321
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217320
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212788_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212788_
                 __tmp217321
                 '2
                 __tmp217320
                 '#f))
              (let ((__tmp217323
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217322
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212788_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212788_
                 __tmp217323
                 '3
                 __tmp217322
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self212788_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self212788_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp217327 (list))
            (__tmp217325
             (let ((__tmp217326
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217326 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp217327
         '(id)
         __tmp217325
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args212663_ (apply make-instance gxc#!type::t _$args212663_)))
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
      (let ((__tmp217330 (list gxc#!type::t))
            (__tmp217328
             (let ((__tmp217329
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217329 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp217330
         '()
         __tmp217328
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args212660_ (apply make-instance gxc#!alias::t _$args212660_)))
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
      (let ((__tmp217333 (list gxc#!type::t))
            (__tmp217331
             (let ((__tmp217332
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217332 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp217333
         '()
         __tmp217331
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args212657_
        (apply make-instance gxc#!procedure::t _$args212657_)))
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
      (let ((__tmp217336 (list gxc#!type::t))
            (__tmp217334
             (let ((__tmp217335
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217335 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp217336
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 methods)
         __tmp217334
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args212654_ (apply make-instance gxc#!class::t _$args212654_)))
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
    (define gxc#&!class-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'methods)))
    (define gxc#&!class-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'id)))
    (define gxc#!predicate::t
      (let ((__tmp217339 (list gxc#!procedure::t))
            (__tmp217337
             (let ((__tmp217338
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217338 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp217339
         '()
         __tmp217337
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args212651_
        (apply make-instance gxc#!predicate::t _$args212651_)))
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
      (let ((__tmp217342 (list gxc#!procedure::t))
            (__tmp217340
             (let ((__tmp217341
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217341 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp217342
         '()
         __tmp217340
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args212648_
        (apply make-instance gxc#!constructor::t _$args212648_)))
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
      (let ((__tmp217345 (list gxc#!procedure::t))
            (__tmp217343
             (let ((__tmp217344
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217344 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp217345
         '(slot checked?)
         __tmp217343
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args212645_
        (apply make-instance gxc#!accessor::t _$args212645_)))
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
      (let ((__tmp217348 (list gxc#!procedure::t))
            (__tmp217346
             (let ((__tmp217347
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217347 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp217348
         '(slot checked?)
         __tmp217346
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args212642_
        (apply make-instance gxc#!mutator::t _$args212642_)))
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
      (let ((__tmp217351 (list gxc#!procedure::t))
            (__tmp217349
             (let ((__tmp217350
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217350 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp217351
         '(arity dispatch inline inline-typedecl)
         __tmp217349
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args212639_
        (apply make-instance gxc#!lambda::t _$args212639_)))
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
      (let ((__tmp217354 (list gxc#!procedure::t))
            (__tmp217352
             (let ((__tmp217353
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217353 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp217354
         '(clauses)
         __tmp217352
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args212636_
        (apply make-instance gxc#!case-lambda::t _$args212636_)))
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
      (let ((__tmp217357 (list gxc#!procedure::t))
            (__tmp217355
             (let ((__tmp217356
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217356 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp217357
         '(table dispatch)
         __tmp217355
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args212633_
        (apply make-instance gxc#!kw-lambda::t _$args212633_)))
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
      (let ((__tmp217360 (list gxc#!procedure::t))
            (__tmp217358
             (let ((__tmp217359
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217359 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp217360
         '(keys main)
         __tmp217358
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args212630_
        (apply make-instance gxc#!kw-lambda-primary::t _$args212630_)))
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
      (let ((__tmp217361 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp217361
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args212627_
        (apply make-instance gxc#!primitive::t _$args212627_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp217362 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp217362
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args212624_
        (apply make-instance gxc#!primitive-lambda::t _$args212624_)))
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
      (let ((__tmp217363 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp217363
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args212621_
        (apply make-instance gxc#!primitive-case-lambda::t _$args212621_)))
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
      (lambda (_self212501_
               _id212502_
               _super212503_
               _slots212504_
               _ctor-method212505_
               _struct?212506_
               _final?212507_)
        (let _lp212509_ ((_rest212511_ _super212503_))
          (let* ((_rest212512212520_ _rest212511_)
                 (_else212514212528_ (lambda () '#!void))
                 (_K212516212534_
                  (lambda (_rest212531_ _super-id212532_)
                    (if (##structure-ref
                         (let ((__tmp217366
                                (let ((__tmp217367
                                       (let ()
                                         (declare (not safe))
                                         (cons _id212502_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp217367))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp217366
                            _super-id212532_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp217364
                               (let ((__tmp217365
                                      (let ()
                                        (declare (not safe))
                                        (cons _id212502_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp217365))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp217364
                           _super-id212532_))
                        '#!void)
                    (let () (declare (not safe)) (_lp212509_ _rest212531_)))))
            (if (let () (declare (not safe)) (##pair? _rest212512212520_))
                (let ((_hd212517212537_
                       (let ()
                         (declare (not safe))
                         (##car _rest212512212520_)))
                      (_tl212518212539_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest212512212520_))))
                  (let* ((_super-id212542_ _hd212517212537_)
                         (_rest212544_ _tl212518212539_))
                    (declare (not safe))
                    (_K212516212534_ _rest212544_ _super-id212542_)))
                '#!void)))
        (let* ((_ctor-method212594_
                (let ((_$e212546_ _ctor-method212505_))
                  (if _$e212546_
                      _$e212546_
                      (let _lp212549_ ((_rest212551_ _super212503_)
                                       (_method212552_ '#f))
                        (let* ((_rest212553212561_ _rest212551_)
                               (_else212555212569_ (lambda () _method212552_))
                               (_K212557212582_
                                (lambda (_rest212572_ _super-id212573_)
                                  (let* ((_klass212575_
                                          (let ((__tmp217368
                                                 (let ((__tmp217369
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id212502_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp217369))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp217368
                                             _super-id212573_)))
                                         (_$e212577_
                                          (##structure-ref
                                           _klass212575_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e212577_
                                        ((lambda (_ctor-method212580_)
                                           (if _method212552_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method212580_
                                                          _method212552_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp212549_
                                                      _rest212572_
                                                      _ctor-method212580_))
                                                   (let ((__tmp217370
                                                          (let ((__tmp217371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id212502_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp217371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp217370
                                                      _method212552_
                                                      _ctor-method212580_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp212549_
                                                  _rest212572_
                                                  _ctor-method212580_))))
                                         _$e212577_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp212549_
                                           _rest212572_
                                           _method212552_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest212553212561_))
                              (let ((_hd212558212585_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest212553212561_)))
                                    (_tl212559212587_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest212553212561_))))
                                (let* ((_super-id212590_ _hd212558212585_)
                                       (_rest212592_ _tl212559212587_))
                                  (declare (not safe))
                                  (_K212557212582_
                                   _rest212592_
                                   _super-id212590_)))
                              (let ()
                                (declare (not safe))
                                (_else212555212569_))))))))
               (_g217372_
                (let ((__tmp217377
                       (lambda (_klass-id212596_)
                         (let ((__tmp217378
                                (##structure-ref
                                 (let ((__tmp217379
                                        (let ((__tmp217380
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id212502_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp217380))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp217379
                                    _klass-id212596_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id212596_ __tmp217378))))
                      (__tmp217374
                       (lambda (_klass-id212598_)
                         (##structure-ref
                          (let ((__tmp217375
                                 (let ((__tmp217376
                                        (let ()
                                          (declare (not safe))
                                          (cons _id212502_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp217376))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp217375
                             _klass-id212598_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp217377
                   __tmp217374
                   eq?
                   identity
                   '()
                   _super212503_))))
          (begin
            (let ((_g217373_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g217372_)
                         (##vector-length _g217372_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g217373_ 2)))
                  (error "Context expects 2 values" _g217373_)))
            (let ((_precedence-list212600_
                   (let () (declare (not safe)) (##vector-ref _g217372_ 0)))
                  (_super-struct212601_
                   (let () (declare (not safe)) (##vector-ref _g217372_ 1))))
              (let ((_fields212607_
                     (let* ((_base-struct212605_
                             (let ((__tmp217381
                                    (lambda (_klass-id212603_)
                                      (##structure-ref
                                       (let ((__tmp217382
                                              (let ((__tmp217383
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _id212502_ '()))))
                                                (declare (not safe))
                                                (cons '!class __tmp217383))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-class
                                          __tmp217382
                                          _klass-id212603_))
                                       '7
                                       gxc#!class::t
                                       '#f))))
                               (declare (not safe))
                               (find __tmp217381 _precedence-list212600_)))
                            (__tmp217384
                             (let ((__tmp217385
                                    (let ()
                                      (declare (not safe))
                                      (cons _id212502_ '()))))
                               (declare (not safe))
                               (cons '!class __tmp217385))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp217384
                        _base-struct212605_
                        _precedence-list212600_
                        _slots212504_))))
                (##structure-set! _self212501_ _id212502_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self212501_
                 _super212503_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212501_
                 _precedence-list212600_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212501_
                 _slots212504_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212501_
                 _fields212607_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212501_
                 _ctor-method212594_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212501_
                 _struct?212506_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212501_
                 _final?212507_
                 '8
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self212610_
               _id212611_
               _super212612_
               _precedence-list212613_
               _slots212614_
               _fields212615_
               _constructor212616_
               _struct?212617_
               _final?212618_
               _methods212619_)
        (##structure-set! _self212610_ _id212611_ '1 gxc#!type::t '#f)
        (##structure-set! _self212610_ _super212612_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self212610_
         _precedence-list212613_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self212610_ _slots212614_ '4 gxc#!class::t '#f)
        (##structure-set! _self212610_ _fields212615_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self212610_
         _constructor212616_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self212610_ _struct?212617_ '7 gxc#!class::t '#f)
        (##structure-set! _self212610_ _final?212618_ '8 gxc#!class::t '#f)
        (if _methods212619_
            (##structure-set!
             _self212610_
             (let ()
               (declare (not safe))
               (list->table _methods212619_ 'test: eq?))
             '9
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g217387_
        (let ((_g217386_ (let () (declare (not safe)) (##length _g217387_))))
          (cond ((let () (declare (not safe)) (##fx= _g217386_ 7))
                 (apply (lambda (_self212501_
                                 _id212502_
                                 _super212503_
                                 _slots212504_
                                 _ctor-method212505_
                                 _struct?212506_
                                 _final?212507_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self212501_
                             _id212502_
                             _super212503_
                             _slots212504_
                             _ctor-method212505_
                             _struct?212506_
                             _final?212507_)))
                        _g217387_))
                ((let () (declare (not safe)) (##fx= _g217386_ 10))
                 (apply (lambda (_self212610_
                                 _id212611_
                                 _super212612_
                                 _precedence-list212613_
                                 _slots212614_
                                 _fields212615_
                                 _constructor212616_
                                 _struct?212617_
                                 _final?212618_
                                 _methods212619_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self212610_
                             _id212611_
                             _super212612_
                             _precedence-list212613_
                             _slots212614_
                             _fields212615_
                             _constructor212616_
                             _struct?212617_
                             _final?212618_
                             _methods212619_)))
                        _g217387_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g217387_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t217260)
        (let ((__id217261
               (let ((__tmp217270
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217260 'id))))
                 (if __tmp217270 __tmp217270 (error '"Unknown slot" 'id))))
              (__methods217262
               (let ((__tmp217271
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217260 'methods))))
                 (if __tmp217271
                     __tmp217271
                     (error '"Unknown slot" 'methods))))
              (__fields217263
               (let ((__tmp217272
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217260 'fields))))
                 (if __tmp217272 __tmp217272 (error '"Unknown slot" 'fields))))
              (__struct?217264
               (let ((__tmp217273
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217260 'struct?))))
                 (if __tmp217273
                     __tmp217273
                     (error '"Unknown slot" 'struct?))))
              (__slots217265
               (let ((__tmp217274
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217260 'slots))))
                 (if __tmp217274 __tmp217274 (error '"Unknown slot" 'slots))))
              (__final?217266
               (let ((__tmp217275
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217260 'final?))))
                 (if __tmp217275 __tmp217275 (error '"Unknown slot" 'final?))))
              (__super217267
               (let ((__tmp217276
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217260 'super))))
                 (if __tmp217276 __tmp217276 (error '"Unknown slot" 'super))))
              (__constructor217268
               (let ((__tmp217277
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217260 'constructor))))
                 (if __tmp217277
                     __tmp217277
                     (error '"Unknown slot" 'constructor))))
              (__precedence-list217269
               (let ((__tmp217278
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217260 'precedence-list))))
                 (if __tmp217278
                     __tmp217278
                     (error '"Unknown slot" 'precedence-list)))))
          (lambda _g217389_
            (let ((_g217388_
                   (let () (declare (not safe)) (##length _g217389_))))
              (cond ((let () (declare (not safe)) (##fx= _g217388_ 7))
                     (apply (lambda (_self212501_
                                     _id212502_
                                     _super212503_
                                     _slots212504_
                                     _ctor-method212505_
                                     _struct?212506_
                                     _final?212507_)
                              (let _lp212509_ ((_rest212511_ _super212503_))
                                (let* ((_rest212512212520_ _rest212511_)
                                       (_else212514212528_ (lambda () '#!void))
                                       (_K212516212534_
                                        (lambda (_rest212531_ _super-id212532_)
                                          (if (##structure-ref
                                               (let ((__tmp217392
                                                      (let ((__tmp217393
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id212502_ '()))))
                (declare (not safe))
                (cons '!class __tmp217393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp217392
                                                  _super-id212532_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp217390
                                                     (let ((__tmp217391
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id212502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp217391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp217390
                                                 _super-id212532_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp212509_ _rest212531_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest212512212520_))
                                      (let ((_hd212517212537_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest212512212520_)))
                                            (_tl212518212539_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest212512212520_))))
                                        (let* ((_super-id212542_
                                                _hd212517212537_)
                                               (_rest212544_ _tl212518212539_))
                                          (declare (not safe))
                                          (_K212516212534_
                                           _rest212544_
                                           _super-id212542_)))
                                      '#!void)))
                              (let* ((_ctor-method212594_
                                      (let ((_$e212546_ _ctor-method212505_))
                                        (if _$e212546_
                                            _$e212546_
                                            (let _lp212549_ ((_rest212551_
                                                              _super212503_)
                                                             (_method212552_
                                                              '#f))
                                              (let* ((_rest212553212561_
                                                      _rest212551_)
                                                     (_else212555212569_
                                                      (lambda ()
                                                        _method212552_))
                                                     (_K212557212582_
                                                      (lambda (_rest212572_
                                                               _super-id212573_)
                                                        (let* ((_klass212575_
                                                                (let ((__tmp217394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp217395
                                      (let ()
                                        (declare (not safe))
                                        (cons _id212502_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp217395))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp217394
                           _super-id212573_)))
                       (_$e212577_
                        (##structure-ref _klass212575_ '6 gxc#!class::t '#f)))
                  (if _$e212577_
                      ((lambda (_ctor-method212580_)
                         (if _method212552_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method212580_ _method212552_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp212549_
                                    _rest212572_
                                    _ctor-method212580_))
                                 (let ((__tmp217396
                                        (let ((__tmp217397
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id212502_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp217397))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp217396
                                    _method212552_
                                    _ctor-method212580_)))
                             (let ()
                               (declare (not safe))
                               (_lp212549_ _rest212572_ _ctor-method212580_))))
                       _$e212577_)
                      (let ()
                        (declare (not safe))
                        (_lp212549_ _rest212572_ _method212552_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest212553212561_))
                                                    (let ((_hd212558212585_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest212553212561_)))
                                                          (_tl212559212587_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest212553212561_))))
                                                      (let* ((_super-id212590_
                                                              _hd212558212585_)
                                                             (_rest212592_
                                                              _tl212559212587_))
                                                        (declare (not safe))
                                                        (_K212557212582_
                                                         _rest212592_
                                                         _super-id212590_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else212555212569_))))))))
                                     (_g217398_
                                      (let ((__tmp217403
                                             (lambda (_klass-id212596_)
                                               (let ((__tmp217404
                                                      (##structure-ref
                                                       (let ((__tmp217405
                                                              (let ((__tmp217406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id212502_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp217406))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp217405 _klass-id212596_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id212596_
                                                       __tmp217404))))
                                            (__tmp217400
                                             (lambda (_klass-id212598_)
                                               (##structure-ref
                                                (let ((__tmp217401
                                                       (let ((__tmp217402
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id212502_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp217402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp217401
                                                   _klass-id212598_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp217403
                                         __tmp217400
                                         eq?
                                         identity
                                         '()
                                         _super212503_))))
                                (begin
                                  (let ((_g217399_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217398_)
                                               (##vector-length _g217398_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217399_ 2)))
                                        (error "Context expects 2 values"
                                               _g217399_)))
                                  (let ((_precedence-list212600_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g217398_ 0)))
                                        (_super-struct212601_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g217398_ 1))))
                                    (let ((_fields212607_
                                           (let* ((_base-struct212605_
                                                   (let ((__tmp217407
                                                          (lambda (_klass-id212603_)
                                                            (##structure-ref
                                                             (let ((__tmp217408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp217409
                                   (let ()
                                     (declare (not safe))
                                     (cons _id212502_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp217409))))
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        __tmp217408
                        _klass-id212603_))
                     '7
                     gxc#!class::t
                     '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (find __tmp217407
                                                           _precedence-list212600_)))
                                                  (__tmp217410
                                                   (let ((__tmp217411
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _id212502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '!class
                                                           __tmp217411))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp217410
                                              _base-struct212605_
                                              _precedence-list212600_
                                              _slots212504_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212501_
                                         _id212502_
                                         __id217261
                                         __t217260
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212501_
                                         _super212503_
                                         __super217267
                                         __t217260
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212501_
                                         _precedence-list212600_
                                         __precedence-list217269
                                         __t217260
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212501_
                                         _slots212504_
                                         __slots217265
                                         __t217260
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212501_
                                         _fields212607_
                                         __fields217263
                                         __t217260
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212501_
                                         _ctor-method212594_
                                         __constructor217268
                                         __t217260
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212501_
                                         _struct?212506_
                                         __struct?217264
                                         __t217260
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212501_
                                         _final?212507_
                                         __final?217266
                                         __t217260
                                         '#f)))))))
                            _g217389_))
                    ((let () (declare (not safe)) (##fx= _g217388_ 10))
                     (apply (lambda (_self212610_
                                     _id212611_
                                     _super212612_
                                     _precedence-list212613_
                                     _slots212614_
                                     _fields212615_
                                     _constructor212616_
                                     _struct?212617_
                                     _final?212618_
                                     _methods212619_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212610_
                                 _id212611_
                                 __id217261
                                 __t217260
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212610_
                                 _super212612_
                                 __super217267
                                 __t217260
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212610_
                                 _precedence-list212613_
                                 __precedence-list217269
                                 __t217260
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212610_
                                 _slots212614_
                                 __slots217265
                                 __t217260
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212610_
                                 _fields212615_
                                 __fields217263
                                 __t217260
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212610_
                                 _constructor212616_
                                 __constructor217268
                                 __t217260
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212610_
                                 _struct?212617_
                                 __struct?217264
                                 __t217260
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212610_
                                 _final?212618_
                                 __final?217266
                                 __t217260
                                 '#f))
                              (if _methods212619_
                                  (let ((__tmp217412
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods212619_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self212610_
                                     __tmp217412
                                     __methods217262
                                     __t217260
                                     '#f))
                                  '#!void))
                            _g217389_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g217389_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where212353_
               _base-struct212354_
               _precedence-list212355_
               _direct-slots212356_)
        (let* ((_base-fields212358_
                (if _base-struct212354_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where212353_
                        _base-struct212354_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields212360_ (reverse _base-fields212358_))
               (_seen-slots212368_
                (let ((_tab212362_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g212363212365_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab212362_ _g212363212365_ '#t)))
                   _base-fields212358_)
                  _tab212362_))
               (_process-slot212372_
                (lambda (_slot212370_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots212368_ _slot212370_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots212368_ _slot212370_ '#t))
                        (set! _r-fields212360_
                              (let ()
                                (declare (not safe))
                                (cons _slot212370_ _r-fields212360_))))))))
          (for-each
           (lambda (_mixin212375_)
             (let ((_klass212377_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where212353_
                       _mixin212375_))))
               (if (##structure-ref _klass212377_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot212372_
                    (##structure-ref _klass212377_ '5 gxc#!class::t '#f)))))
           _precedence-list212355_)
          (for-each _process-slot212372_ _direct-slots212356_)
          (reverse _r-fields212360_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass212312_ _slot212313_)
        (let _lp212315_ ((_rest212317_
                          (##structure-ref _klass212312_ '5 gxc#!class::t '#f))
                         (_offset212318_ '1))
          (let* ((_rest212319212327_ _rest212317_)
                 (_else212321212335_
                  (lambda ()
                    (let ((__tmp217414
                           (##structure-ref _klass212312_ '1 gxc#!type::t '#f))
                          (__tmp217413
                           (##structure-ref
                            _klass212312_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp217414
                       __tmp217413
                       _slot212313_))))
                 (_K212323212341_
                  (lambda (_rest212338_ _s212339_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s212339_ _slot212313_))
                        _offset212318_
                        (let ((__tmp217415
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset212318_ '1))))
                          (declare (not safe))
                          (_lp212315_ _rest212338_ __tmp217415))))))
            (if (let () (declare (not safe)) (##pair? _rest212319212327_))
                (let ((_hd212324212344_
                       (let ()
                         (declare (not safe))
                         (##car _rest212319212327_)))
                      (_tl212325212346_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest212319212327_))))
                  (let* ((_s212349_ _hd212324212344_)
                         (_rest212351_ _tl212325212346_))
                    (declare (not safe))
                    (_K212323212341_ _rest212351_ _s212349_)))
                (let () (declare (not safe)) (_else212321212335_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass212270_ _slot212271_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass212270_ _slot212271_))
            _klass212270_
            (let _lp212273_ ((_rest212275_
                              (##structure-ref
                               _klass212270_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest212276212284_ _rest212275_)
                     (_else212278212292_ (lambda () '#f))
                     (_K212280212300_
                      (lambda (_rest212295_ _super212296_)
                        (let ((_super-class212298_
                               (let ((__tmp217416
                                      (let ((__tmp217417
                                             (let ((__tmp217419
                                                    (##structure-ref
                                                     _klass212270_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp217418
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot212271_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp217419
                                                     __tmp217418))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp217417))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp217416
                                  _super212296_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class212298_
                                 _slot212271_))
                              _super-class212298_
                              (let ()
                                (declare (not safe))
                                (_lp212273_ _rest212295_)))))))
                (if (let () (declare (not safe)) (##pair? _rest212276212284_))
                    (let ((_hd212281212303_
                           (let ()
                             (declare (not safe))
                             (##car _rest212276212284_)))
                          (_tl212282212305_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest212276212284_))))
                      (let* ((_super212308_ _hd212281212303_)
                             (_rest212310_ _tl212282212305_))
                        (declare (not safe))
                        (_K212280212300_ _rest212310_ _super212308_)))
                    (let () (declare (not safe)) (_else212278212292_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass212267_ _slot212268_)
        (if (##structure-ref _klass212267_ '7 gxc#!class::t '#f)
            (memq _slot212268_
                  (##structure-ref _klass212267_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self212264_ _id212265_)
        (##structure-set! _self212264_ _id212265_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t217279)
        (let ((__id217280
               (let ((__tmp217281
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217279 'id))))
                 (if __tmp217281 __tmp217281 (error '"Unknown slot" 'id)))))
          (lambda (_self212264_ _id212265_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212264_
               _id212265_
               __id217280
               __t217279
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
      (lambda (_self212139_ _id212140_)
        (##structure-set! _self212139_ _id212140_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t217282)
        (let ((__id217283
               (let ((__tmp217284
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217282 'id))))
                 (if __tmp217284 __tmp217284 (error '"Unknown slot" 'id)))))
          (lambda (_self212139_ _id212140_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212139_
               _id212140_
               __id217283
               __t217282
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
      (lambda (_self212012_ _id212013_ _slot212014_ _checked?212015_)
        (##structure-set! _self212012_ _id212013_ '1 gxc#!type::t '#f)
        (##structure-set! _self212012_ _slot212014_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self212012_
         _checked?212015_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t217285)
        (let ((__id217286
               (let ((__tmp217289
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217285 'id))))
                 (if __tmp217289 __tmp217289 (error '"Unknown slot" 'id))))
              (__checked?217287
               (let ((__tmp217290
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217285 'checked?))))
                 (if __tmp217290
                     __tmp217290
                     (error '"Unknown slot" 'checked?))))
              (__slot217288
               (let ((__tmp217291
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217285 'slot))))
                 (if __tmp217291 __tmp217291 (error '"Unknown slot" 'slot)))))
          (lambda (_self212012_ _id212013_ _slot212014_ _checked?212015_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212012_
               _id212013_
               __id217286
               __t217285
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212012_
               _slot212014_
               __slot217288
               __t217285
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212012_
               _checked?212015_
               __checked?217287
               __t217285
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
      (lambda (_self211885_ _id211886_ _slot211887_ _checked?211888_)
        (##structure-set! _self211885_ _id211886_ '1 gxc#!type::t '#f)
        (##structure-set! _self211885_ _slot211887_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self211885_
         _checked?211888_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t217292)
        (let ((__id217293
               (let ((__tmp217296
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217292 'id))))
                 (if __tmp217296 __tmp217296 (error '"Unknown slot" 'id))))
              (__checked?217294
               (let ((__tmp217297
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217292 'checked?))))
                 (if __tmp217297
                     __tmp217297
                     (error '"Unknown slot" 'checked?))))
              (__slot217295
               (let ((__tmp217298
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217292 'slot))))
                 (if __tmp217298 __tmp217298 (error '"Unknown slot" 'slot)))))
          (lambda (_self211885_ _id211886_ _slot211887_ _checked?211888_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self211885_
               _id211886_
               __id217293
               __t217292
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self211885_
               _slot211887_
               __slot217295
               __t217292
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self211885_
               _checked?211888_
               __checked?217294
               __t217292
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
      (lambda (_self211729_
               _id211730_
               _arity211731_
               _dispatch211732_
               _inline211733_
               _typedecl211734_)
        (if (let ((__tmp217425
                   (let ()
                     (declare (not safe))
                     (##structure-length _self211729_))))
              (declare (not safe))
              (##fx< '5 __tmp217425))
            (begin
              (let ((__tmp217420
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211729_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211729_
                 _id211730_
                 '1
                 __tmp217420
                 '#f))
              (let ((__tmp217421
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211729_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211729_
                 _arity211731_
                 '2
                 __tmp217421
                 '#f))
              (let ((__tmp217422
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211729_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211729_
                 _dispatch211732_
                 '3
                 __tmp217422
                 '#f))
              (let ((__tmp217423
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211729_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211729_
                 _inline211733_
                 '4
                 __tmp217423
                 '#f))
              (let ((__tmp217424
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211729_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211729_
                 _typedecl211734_
                 '5
                 __tmp217424
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self211729_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self211729_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self211739_ _id211740_ _arity211741_ _dispatch211742_)
        (let* ((_inline211744_ '#f) (_typedecl211746_ '#f))
          (if (let ((__tmp217431
                     (let ()
                       (declare (not safe))
                       (##structure-length _self211739_))))
                (declare (not safe))
                (##fx< '5 __tmp217431))
              (begin
                (let ((__tmp217426
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211739_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211739_
                   _id211740_
                   '1
                   __tmp217426
                   '#f))
                (let ((__tmp217427
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211739_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211739_
                   _arity211741_
                   '2
                   __tmp217427
                   '#f))
                (let ((__tmp217428
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211739_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211739_
                   _dispatch211742_
                   '3
                   __tmp217428
                   '#f))
                (let ((__tmp217429
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211739_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211739_
                   _inline211744_
                   '4
                   __tmp217429
                   '#f))
                (let ((__tmp217430
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211739_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211739_
                   _typedecl211746_
                   '5
                   __tmp217430
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self211739_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self211739_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self211748_
               _id211749_
               _arity211750_
               _dispatch211751_
               _inline211752_)
        (let ((_typedecl211754_ '#f))
          (if (let ((__tmp217437
                     (let ()
                       (declare (not safe))
                       (##structure-length _self211748_))))
                (declare (not safe))
                (##fx< '5 __tmp217437))
              (begin
                (let ((__tmp217432
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211748_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211748_
                   _id211749_
                   '1
                   __tmp217432
                   '#f))
                (let ((__tmp217433
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211748_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211748_
                   _arity211750_
                   '2
                   __tmp217433
                   '#f))
                (let ((__tmp217434
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211748_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211748_
                   _dispatch211751_
                   '3
                   __tmp217434
                   '#f))
                (let ((__tmp217435
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211748_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211748_
                   _inline211752_
                   '4
                   __tmp217435
                   '#f))
                (let ((__tmp217436
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211748_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211748_
                   _typedecl211754_
                   '5
                   __tmp217436
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self211748_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self211748_)))))))
    (define gxc#!lambda:::init!
      (lambda _g217439_
        (let ((_g217438_ (let () (declare (not safe)) (##length _g217439_))))
          (cond ((let () (declare (not safe)) (##fx= _g217438_ 4))
                 (apply (lambda (_self211739_
                                 _id211740_
                                 _arity211741_
                                 _dispatch211742_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self211739_
                             _id211740_
                             _arity211741_
                             _dispatch211742_)))
                        _g217439_))
                ((let () (declare (not safe)) (##fx= _g217438_ 5))
                 (apply (lambda (_self211748_
                                 _id211749_
                                 _arity211750_
                                 _dispatch211751_
                                 _inline211752_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self211748_
                             _id211749_
                             _arity211750_
                             _dispatch211751_
                             _inline211752_)))
                        _g217439_))
                ((let () (declare (not safe)) (##fx= _g217438_ 6))
                 (apply (lambda (_self211756_
                                 _id211757_
                                 _arity211758_
                                 _dispatch211759_
                                 _inline211760_
                                 _typedecl211761_)
                          (if (let ((__tmp217445
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self211756_))))
                                (declare (not safe))
                                (##fx< '5 __tmp217445))
                              (begin
                                (let ((__tmp217440
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self211756_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self211756_
                                   _id211757_
                                   '1
                                   __tmp217440
                                   '#f))
                                (let ((__tmp217441
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self211756_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self211756_
                                   _arity211758_
                                   '2
                                   __tmp217441
                                   '#f))
                                (let ((__tmp217442
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self211756_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self211756_
                                   _dispatch211759_
                                   '3
                                   __tmp217442
                                   '#f))
                                (let ((__tmp217443
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self211756_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self211756_
                                   _inline211760_
                                   '4
                                   __tmp217443
                                   '#f))
                                (let ((__tmp217444
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self211756_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self211756_
                                   _typedecl211761_
                                   '5
                                   __tmp217444
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self211756_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self211756_)))))
                        _g217439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g217439_))))))
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
      (lambda (_self211481_ . _args211482_)
        (apply struct-instance-init! _self211481_ _args211482_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type211356_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211356_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type211356_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass211349_)
        (let ((_$e211351_
               (##structure-ref _klass211349_ '9 gxc#!class::t '#f)))
          (if _$e211351_
              _$e211351_
              (let ((_tab211354_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass211349_
                 _tab211354_
                 '9
                 gxc#!class::t
                 '#f)
                _tab211354_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass211340_ _method211341_)
        (let ((_tab211342211344_
               (##structure-ref _klass211340_ '9 gxc#!class::t '#f)))
          (if _tab211342211344_
              (let ((_tab211347_ _tab211342211344_))
                (declare (not safe))
                (table-ref _tab211347_ _method211341_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type211337_ _method211338_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211337_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type211337_ _method211338_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym211321_ _type211322_ _local?211323_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211322_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym211321_
                   _type211322_))
        (let ((__tmp217446
               (let () (declare (not safe)) (struct->list _type211322_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym211321_ '" " __tmp217446))
        (let ((__tmp217447
               (if _local?211323_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp217447 _sym211321_ _type211322_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym211328_ _type211329_)
        (let ((_local?211331_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym211328_
           _type211329_
           _local?211331_))))
    (define gxc#optimizer-declare-type!
      (lambda _g217449_
        (let ((_g217448_ (let () (declare (not safe)) (##length _g217449_))))
          (cond ((let () (declare (not safe)) (##fx= _g217448_ 2))
                 (apply (lambda (_sym211328_ _type211329_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym211328_
                             _type211329_)))
                        _g217449_))
                ((let () (declare (not safe)) (##fx= _g217448_ 3))
                 (apply (lambda (_sym211333_ _type211334_ _local?211335_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym211333_
                             _type211334_
                             _local?211335_)))
                        _g217449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g217449_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym211307_ _local?211308_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym211307_))
        (let ((__tmp217450
               (if _local?211308_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp217450 _sym211307_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym211313_)
        (let ((_local?211315_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym211313_ _local?211315_))))
    (define gxc#optimizer-clear-type!
      (lambda _g217452_
        (let ((_g217451_ (let () (declare (not safe)) (##length _g217452_))))
          (cond ((let () (declare (not safe)) (##fx= _g217451_ 1))
                 (apply (lambda (_sym211313_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym211313_)))
                        _g217452_))
                ((let () (declare (not safe)) (##fx= _g217451_ 2))
                 (apply (lambda (_sym211317_ _local?211318_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym211317_
                             _local?211318_)))
                        _g217452_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g217452_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t211280_ _method211281_ _sym211282_ _rebind?211283_)
        (let* ((_type211285_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t211280_)))
               (_$e211287_
                (let () (declare (not safe)) (gxc#!type-vtab _type211285_))))
          (if _$e211287_
              ((lambda (_vtab211290_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab211290_ _method211281_))
                     (if _rebind?211283_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t211280_
                              '" "
                              _method211281_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab211290_
                              _method211281_
                              _sym211282_)))
                         (let ((__tmp217457
                                (let ((__tmp217458
                                       (let ((__tmp217459
                                              (let ((__tmp217460
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym211282_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method211281_
                                                      __tmp217460))))
                                         (declare (not safe))
                                         (cons _type-t211280_ __tmp217459))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp217458))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp217457
                            _method211281_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t211280_
                          '" "
                          _method211281_
                          '" => "
                          _sym211282_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab211290_
                          _method211281_
                          _sym211282_)))))
               _$e211287_)
              (if (let () (declare (not safe)) (not _type211285_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t211280_))
                  (let ((__tmp217453
                         (let ((__tmp217454
                                (let ((__tmp217455
                                       (let ((__tmp217456
                                              (let ()
                                                (declare (not safe))
                                                (cons _method211281_ '()))))
                                         (declare (not safe))
                                         (cons _sym211282_ __tmp217456))))
                                  (declare (not safe))
                                  (cons _type-t211280_ __tmp217455))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp217454))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp217453
                     _type211285_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t211295_ _method211296_ _sym211297_)
        (let ((_rebind?211299_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t211295_
           _method211296_
           _sym211297_
           _rebind?211299_))))
    (define gxc#optimizer-declare-method!
      (lambda _g217462_
        (let ((_g217461_ (let () (declare (not safe)) (##length _g217462_))))
          (cond ((let () (declare (not safe)) (##fx= _g217461_ 3))
                 (apply (lambda (_type-t211295_ _method211296_ _sym211297_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t211295_
                             _method211296_
                             _sym211297_)))
                        _g217462_))
                ((let () (declare (not safe)) (##fx= _g217461_ 4))
                 (apply (lambda (_type-t211301_
                                 _method211302_
                                 _sym211303_
                                 _rebind?211304_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t211301_
                             _method211302_
                             _sym211303_
                             _rebind?211304_)))
                        _g217462_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g217462_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym211268_)
        (let ((_$e211276_
               (let ((_ht211269211271_ (gxc#current-compile-local-type)))
                 (if _ht211269211271_
                     (let ((_ht211274_ _ht211269211271_))
                       (declare (not safe))
                       (table-ref _ht211274_ _sym211268_ '#f))
                     '#f))))
          (if _$e211276_
              _$e211276_
              (let ((__tmp217463
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp217463 _sym211268_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym211260_)
        (let ((_type211261211263_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym211260_))))
          (if _type211261211263_
              (let ((_type211266_ _type211261211263_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type211266_ 'gxc#!alias::t))
                    (let ((__tmp217464
                           (##structure-ref _type211266_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp217464))
                    _type211266_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where211252_ _klass-id211253_)
        (let ((_$e211255_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id211253_))))
          (if _$e211255_
              ((lambda (_klass211258_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass211258_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where211252_
                        _klass-id211253_
                        _klass211258_)))
                 _klass211258_)
               _$e211255_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where211252_
                 _klass-id211253_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t211249_ _method211250_)
        (let ((__tmp217465
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t211249_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp217465 _method211250_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym211247_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym211247_))
        (let ((__tmp217466
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp217466 _sym211247_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym211245_)
        (let ((__tmp217467
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp217467 _sym211245_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx211243_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx211243_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx211243_))
            (let () (declare (not safe)) (gx#stx-e _stx211243_)))))))
