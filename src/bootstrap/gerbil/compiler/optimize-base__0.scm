(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707384297)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp210268
             (let ((__tmp210269
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210269 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#optimizer-info::t
         'optimizer-info
         '#f
         '(type ssxi methods)
         __tmp210268
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args205999_
        (apply make-struct-instance gxc#optimizer-info::t _$args205999_)))
    (define gxc#optimizer-info-type
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#optimizer-info::t 'type)))
    (define gxc#optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#optimizer-info::t 'ssxi)))
    (define gxc#optimizer-info-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#optimizer-info::t 'methods)))
    (define gxc#optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#optimizer-info::t 'type)))
    (define gxc#optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#optimizer-info::t 'ssxi)))
    (define gxc#optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#optimizer-info::t 'methods)))
    (define gxc#&optimizer-info-type
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#optimizer-info::t 'type)))
    (define gxc#&optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#optimizer-info::t 'ssxi)))
    (define gxc#&optimizer-info-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#optimizer-info::t 'methods)))
    (define gxc#&optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#optimizer-info::t 'type)))
    (define gxc#&optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#optimizer-info::t 'ssxi)))
    (define gxc#&optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#optimizer-info::t 'methods)))
    (define gxc#optimizer-info:::init!
      (lambda (_self205997_)
        (if (let ((__tmp210276
                   (let ()
                     (declare (not safe))
                     (##structure-length _self205997_))))
              (declare (not safe))
              (##fx< '3 __tmp210276))
            (begin
              (let ((__tmp210271
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp210270
                     (let ()
                       (declare (not safe))
                       (##structure-type _self205997_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self205997_
                 __tmp210271
                 '1
                 __tmp210270
                 '#f))
              (let ((__tmp210273
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp210272
                     (let ()
                       (declare (not safe))
                       (##structure-type _self205997_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self205997_
                 __tmp210273
                 '2
                 __tmp210272
                 '#f))
              (let ((__tmp210275
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp210274
                     (let ()
                       (declare (not safe))
                       (##structure-type _self205997_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self205997_
                 __tmp210275
                 '3
                 __tmp210274
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self205997_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self205997_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp210277
             (let ((__tmp210278
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210278 '()))))
        (declare (not safe))
        (make-struct-type* 'gxc#!type::t '!type '#f '(id) __tmp210277 '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-struct-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args205872_
        (apply make-struct-instance gxc#!type::t _$args205872_)))
    (define gxc#!type-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!type::t 'id)))
    (define gxc#!type-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!type::t 'id)))
    (define gxc#&!type-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!type::t 'id)))
    (define gxc#&!type-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!type::t 'id)))
    (define gxc#!alias::t
      (let ((__tmp210279
             (let ((__tmp210280
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210280 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!alias::t
         '!alias
         gxc#!type::t
         '()
         __tmp210279
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-struct-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args205869_
        (apply make-struct-instance gxc#!alias::t _$args205869_)))
    (define gxc#!alias-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!alias::t 'id)))
    (define gxc#!alias-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!alias::t 'id)))
    (define gxc#&!alias-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!alias::t 'id)))
    (define gxc#&!alias-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!alias::t 'id)))
    (define gxc#!procedure::t
      (let ((__tmp210281
             (let ((__tmp210282
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210282 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!procedure::t
         '!procedure
         gxc#!type::t
         '()
         __tmp210281
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-struct-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args205866_
        (apply make-struct-instance gxc#!procedure::t _$args205866_)))
    (define gxc#!procedure-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!procedure::t 'id)))
    (define gxc#!procedure-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!procedure::t 'id)))
    (define gxc#&!procedure-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!procedure::t 'id)))
    (define gxc#&!procedure-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!procedure::t 'id)))
    (define gxc#!class::t
      (let ((__tmp210283
             (let ((__tmp210284
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210284 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!class::t
         '!class
         gxc#!type::t
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 methods)
         __tmp210283
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args205863_
        (apply make-struct-instance gxc#!class::t _$args205863_)))
    (define gxc#!class-super
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'super)))
    (define gxc#!class-precedence-list
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'precedence-list)))
    (define gxc#!class-slots
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'slots)))
    (define gxc#!class-fields
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'fields)))
    (define gxc#!class-constructor
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'constructor)))
    (define gxc#!class-struct?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'struct?)))
    (define gxc#!class-final?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'final?)))
    (define gxc#!class-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'methods)))
    (define gxc#!class-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'id)))
    (define gxc#!class-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'super)))
    (define gxc#!class-precedence-list-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'precedence-list)))
    (define gxc#!class-slots-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'slots)))
    (define gxc#!class-fields-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'fields)))
    (define gxc#!class-constructor-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'constructor)))
    (define gxc#!class-struct?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'struct?)))
    (define gxc#!class-final?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'final?)))
    (define gxc#!class-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'methods)))
    (define gxc#!class-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'id)))
    (define gxc#&!class-super
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'super)))
    (define gxc#&!class-precedence-list
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'precedence-list)))
    (define gxc#&!class-slots
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'slots)))
    (define gxc#&!class-fields
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'fields)))
    (define gxc#&!class-constructor
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'constructor)))
    (define gxc#&!class-struct?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'struct?)))
    (define gxc#&!class-final?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'final?)))
    (define gxc#&!class-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'methods)))
    (define gxc#&!class-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'id)))
    (define gxc#&!class-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'super)))
    (define gxc#&!class-precedence-list-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'precedence-list)))
    (define gxc#&!class-slots-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'slots)))
    (define gxc#&!class-fields-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'fields)))
    (define gxc#&!class-constructor-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'constructor)))
    (define gxc#&!class-struct?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'struct?)))
    (define gxc#&!class-final?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'final?)))
    (define gxc#&!class-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'methods)))
    (define gxc#&!class-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'id)))
    (define gxc#!predicate::t
      (let ((__tmp210285
             (let ((__tmp210286
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210286 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!predicate::t
         '!predicate
         gxc#!procedure::t
         '()
         __tmp210285
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-struct-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args205860_
        (apply make-struct-instance gxc#!predicate::t _$args205860_)))
    (define gxc#!predicate-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!predicate::t 'id)))
    (define gxc#!predicate-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!predicate::t 'id)))
    (define gxc#&!predicate-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!predicate::t 'id)))
    (define gxc#&!predicate-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!predicate::t 'id)))
    (define gxc#!constructor::t
      (let ((__tmp210287
             (let ((__tmp210288
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210288 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!constructor::t
         '!constructor
         gxc#!procedure::t
         '()
         __tmp210287
         '#f)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args205857_
        (apply make-struct-instance gxc#!constructor::t _$args205857_)))
    (define gxc#!constructor-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!constructor::t 'id)))
    (define gxc#!constructor-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!constructor::t 'id)))
    (define gxc#&!constructor-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!constructor::t 'id)))
    (define gxc#&!constructor-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!constructor::t 'id)))
    (define gxc#!accessor::t
      (let ((__tmp210289
             (let ((__tmp210290
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210290 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!accessor::t
         '!accessor
         gxc#!procedure::t
         '(slot checked?)
         __tmp210289
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-struct-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args205854_
        (apply make-struct-instance gxc#!accessor::t _$args205854_)))
    (define gxc#!accessor-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!accessor::t 'slot)))
    (define gxc#!accessor-checked?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!accessor::t 'checked?)))
    (define gxc#!accessor-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!accessor::t 'id)))
    (define gxc#!accessor-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!accessor::t 'slot)))
    (define gxc#!accessor-checked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!accessor::t 'checked?)))
    (define gxc#!accessor-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!accessor::t 'id)))
    (define gxc#&!accessor-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!accessor::t 'slot)))
    (define gxc#&!accessor-checked?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!accessor::t 'checked?)))
    (define gxc#&!accessor-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!accessor::t 'id)))
    (define gxc#&!accessor-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!accessor::t 'slot)))
    (define gxc#&!accessor-checked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!accessor::t 'checked?)))
    (define gxc#&!accessor-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!accessor::t 'id)))
    (define gxc#!mutator::t
      (let ((__tmp210291
             (let ((__tmp210292
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210292 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!mutator::t
         '!mutator
         gxc#!procedure::t
         '(slot checked?)
         __tmp210291
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-struct-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args205851_
        (apply make-struct-instance gxc#!mutator::t _$args205851_)))
    (define gxc#!mutator-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!mutator::t 'slot)))
    (define gxc#!mutator-checked?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!mutator::t 'checked?)))
    (define gxc#!mutator-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!mutator::t 'id)))
    (define gxc#!mutator-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!mutator::t 'slot)))
    (define gxc#!mutator-checked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!mutator::t 'checked?)))
    (define gxc#!mutator-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!mutator::t 'id)))
    (define gxc#&!mutator-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!mutator::t 'slot)))
    (define gxc#&!mutator-checked?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!mutator::t 'checked?)))
    (define gxc#&!mutator-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!mutator::t 'id)))
    (define gxc#&!mutator-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!mutator::t 'slot)))
    (define gxc#&!mutator-checked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!mutator::t 'checked?)))
    (define gxc#&!mutator-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!mutator::t 'id)))
    (define gxc#!lambda::t
      (let ((__tmp210293
             (let ((__tmp210294
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210294 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!lambda::t
         '!lambda
         gxc#!procedure::t
         '(arity dispatch inline inline-typedecl)
         __tmp210293
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args205848_
        (apply make-struct-instance gxc#!lambda::t _$args205848_)))
    (define gxc#!lambda-arity
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!lambda::t 'arity)))
    (define gxc#!lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!lambda::t 'dispatch)))
    (define gxc#!lambda-inline
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!lambda::t 'inline)))
    (define gxc#!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!lambda::t 'inline-typedecl)))
    (define gxc#!lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!lambda::t 'id)))
    (define gxc#!lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!lambda::t 'arity)))
    (define gxc#!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!lambda::t 'dispatch)))
    (define gxc#!lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!lambda::t 'inline)))
    (define gxc#!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!lambda::t 'inline-typedecl)))
    (define gxc#!lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!lambda::t 'id)))
    (define gxc#&!lambda-arity
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!lambda::t 'arity)))
    (define gxc#&!lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!lambda::t 'dispatch)))
    (define gxc#&!lambda-inline
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!lambda::t 'inline)))
    (define gxc#&!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!lambda::t 'inline-typedecl)))
    (define gxc#&!lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!lambda::t 'id)))
    (define gxc#&!lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!lambda::t 'arity)))
    (define gxc#&!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!lambda::t 'dispatch)))
    (define gxc#&!lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!lambda::t 'inline)))
    (define gxc#&!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!lambda::t 'inline-typedecl)))
    (define gxc#&!lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!lambda::t 'id)))
    (define gxc#!case-lambda::t
      (let ((__tmp210295
             (let ((__tmp210296
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210296 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!case-lambda::t
         '!case-lambda
         gxc#!procedure::t
         '(clauses)
         __tmp210295
         '#f)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args205845_
        (apply make-struct-instance gxc#!case-lambda::t _$args205845_)))
    (define gxc#!case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!case-lambda::t 'clauses)))
    (define gxc#!case-lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!case-lambda::t 'id)))
    (define gxc#!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!case-lambda::t 'clauses)))
    (define gxc#!case-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!case-lambda::t 'id)))
    (define gxc#&!case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!case-lambda::t 'clauses)))
    (define gxc#&!case-lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!case-lambda::t 'id)))
    (define gxc#&!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!case-lambda::t 'clauses)))
    (define gxc#&!case-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!case-lambda::t 'id)))
    (define gxc#!kw-lambda::t
      (let ((__tmp210297
             (let ((__tmp210298
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210298 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!kw-lambda::t
         '!kw-lambda
         gxc#!procedure::t
         '(table dispatch)
         __tmp210297
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args205842_
        (apply make-struct-instance gxc#!kw-lambda::t _$args205842_)))
    (define gxc#!kw-lambda-table
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda::t 'table)))
    (define gxc#!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda::t 'dispatch)))
    (define gxc#!kw-lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda::t 'id)))
    (define gxc#!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda::t 'table)))
    (define gxc#!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda::t 'dispatch)))
    (define gxc#!kw-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda::t 'id)))
    (define gxc#&!kw-lambda-table
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda::t 'table)))
    (define gxc#&!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda::t 'dispatch)))
    (define gxc#&!kw-lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda::t 'id)))
    (define gxc#&!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda::t 'table)))
    (define gxc#&!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda::t 'dispatch)))
    (define gxc#&!kw-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda::t 'id)))
    (define gxc#!kw-lambda-primary::t
      (let ((__tmp210299
             (let ((__tmp210300
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210300 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         gxc#!procedure::t
         '(keys main)
         __tmp210299
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args205839_
        (apply make-struct-instance gxc#!kw-lambda-primary::t _$args205839_)))
    (define gxc#!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda-primary::t 'main)))
    (define gxc#!kw-lambda-primary-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda-primary::t 'id)))
    (define gxc#!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda-primary::t 'main)))
    (define gxc#!kw-lambda-primary-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda-primary::t 'id)))
    (define gxc#&!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#&!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'main)))
    (define gxc#&!kw-lambda-primary-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'id)))
    (define gxc#&!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#&!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'main)))
    (define gxc#&!kw-lambda-primary-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'id)))
    (define gxc#!primitive::t
      (let ((__tmp210301 (list)))
        (declare (not safe))
        (make-class-type*
         'gxc#!primitive::t
         '!primitive
         __tmp210301
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args205836_
        (apply make-class-instance gxc#!primitive::t _$args205836_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp210302 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type*
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp210302
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args205833_
        (apply make-class-instance gxc#!primitive-lambda::t _$args205833_)))
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
      (let ((__tmp210303 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type*
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp210303
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args205830_
        (apply make-class-instance
               gxc#!primitive-case-lambda::t
               _$args205830_)))
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
      (lambda (_self205671_
               _id205672_
               _super205673_
               _slots205674_
               _ctor-method205675_
               _struct?205676_
               _final?205677_)
        (let _lp205679_ ((_rest205681_ _super205673_))
          (let* ((_rest205682205690_ _rest205681_)
                 (_else205684205698_ (lambda () '#!void))
                 (_K205686205704_
                  (lambda (_rest205701_ _super-id205702_)
                    (if (##structure-ref
                         (let ((__tmp210306
                                (let ((__tmp210307
                                       (let ()
                                         (declare (not safe))
                                         (cons _id205672_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp210307))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp210306
                            _super-id205702_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp210304
                               (let ((__tmp210305
                                      (let ()
                                        (declare (not safe))
                                        (cons _id205672_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp210305))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp210304
                           _super-id205702_))
                        '#!void)
                    (let () (declare (not safe)) (_lp205679_ _rest205701_)))))
            (if (let () (declare (not safe)) (##pair? _rest205682205690_))
                (let ((_hd205687205707_
                       (let ()
                         (declare (not safe))
                         (##car _rest205682205690_)))
                      (_tl205688205709_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest205682205690_))))
                  (let* ((_super-id205712_ _hd205687205707_)
                         (_rest205714_ _tl205688205709_))
                    (declare (not safe))
                    (_K205686205704_ _rest205714_ _super-id205712_)))
                '#!void)))
        (if _struct?205676_
            (let* ((_super205715205725_ _super205673_)
                   (_else205718205733_
                    (lambda ()
                      (let ((__tmp210308
                             (let ((__tmp210309
                                    (let ()
                                      (declare (not safe))
                                      (cons _id205672_ '()))))
                               (declare (not safe))
                               (cons '!class __tmp210309))))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"bad class; struct can only extend a single struct"
                         __tmp210308
                         _super205673_)))))
              (let ((_K205723205755_ (lambda () '#!void))
                    (_K205720205741_
                     (lambda (_super-id205737_)
                       (let ((_klass205739_
                              (let ((__tmp210310
                                     (let ((__tmp210311
                                            (let ()
                                              (declare (not safe))
                                              (cons _id205672_ '()))))
                                       (declare (not safe))
                                       (cons '!class __tmp210311))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-class
                                 __tmp210310
                                 _super-id205737_))))
                         (if (##structure-ref
                              _klass205739_
                              '7
                              gxc#!class::t
                              '#f)
                             '#!void
                             (let ((__tmp210312
                                    (let ((__tmp210313
                                           (let ()
                                             (declare (not safe))
                                             (cons _id205672_ '()))))
                                      (declare (not safe))
                                      (cons '!class __tmp210313))))
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"bad class; struct extending non struct"
                                __tmp210312
                                _super-id205737_)))))))
                (let ((_try-match205717205751_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _super205715205725_))
                             (let ((_tl205722205746_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _super205715205725_)))
                                   (_hd205721205744_
                                    (let ()
                                      (declare (not safe))
                                      (##car _super205715205725_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _tl205722205746_))
                                   (let ((_super-id205749_ _hd205721205744_))
                                     (declare (not safe))
                                     (_K205720205741_ _super-id205749_))
                                   (let ()
                                     (declare (not safe))
                                     (_else205718205733_))))
                             (let ()
                               (declare (not safe))
                               (_else205718205733_))))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _super205715205725_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (_try-match205717205751_))))))
            '#!void)
        (let* ((_ctor-method205806_
                (let ((_$e205758_ _ctor-method205675_))
                  (if _$e205758_
                      _$e205758_
                      (let _lp205761_ ((_rest205763_ _super205673_)
                                       (_method205764_ '#f))
                        (let* ((_rest205765205773_ _rest205763_)
                               (_else205767205781_ (lambda () _method205764_))
                               (_K205769205794_
                                (lambda (_rest205784_ _super-id205785_)
                                  (let* ((_klass205787_
                                          (let ((__tmp210314
                                                 (let ((__tmp210315
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id205672_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp210315))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp210314
                                             _super-id205785_)))
                                         (_$e205789_
                                          (##structure-ref
                                           _klass205787_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e205789_
                                        ((lambda (_ctor-method205792_)
                                           (if _method205764_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method205792_
                                                          _method205764_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp205761_
                                                      _rest205784_
                                                      _ctor-method205792_))
                                                   (let ((__tmp210316
                                                          (let ((__tmp210317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id205672_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp210317))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp210316
                                                      _method205764_
                                                      _ctor-method205792_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp205761_
                                                  _rest205784_
                                                  _ctor-method205792_))))
                                         _$e205789_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp205761_
                                           _rest205784_
                                           _method205764_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest205765205773_))
                              (let ((_hd205770205797_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest205765205773_)))
                                    (_tl205771205799_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest205765205773_))))
                                (let* ((_super-id205802_ _hd205770205797_)
                                       (_rest205804_ _tl205771205799_))
                                  (declare (not safe))
                                  (_K205769205794_
                                   _rest205804_
                                   _super-id205802_)))
                              (let ()
                                (declare (not safe))
                                (_else205767205781_))))))))
               (_precedence-list205810_
                (let ((__tmp210318
                       (lambda (_klass-id205808_)
                         (let ((__tmp210319
                                (##structure-ref
                                 (let ((__tmp210320
                                        (let ((__tmp210321
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id205672_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp210321))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp210320
                                    _klass-id205808_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id205808_ __tmp210319)))))
                  (declare (not safe))
                  (c3-linearize__%
                   '()
                   _super205673_
                   __tmp210318
                   eq?
                   identity)))
               (_fields205816_
                (let* ((_base-struct205814_
                        (let ((__tmp210322
                               (lambda (_klass-id205812_)
                                 (##structure-ref
                                  (let ((__tmp210323
                                         (let ((__tmp210324
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id205672_ '()))))
                                           (declare (not safe))
                                           (cons '!class __tmp210324))))
                                    (declare (not safe))
                                    (gxc#optimizer-resolve-class
                                     __tmp210323
                                     _klass-id205812_))
                                  '7
                                  gxc#!class::t
                                  '#f))))
                          (declare (not safe))
                          (find __tmp210322 _precedence-list205810_)))
                       (__tmp210325
                        (let ((__tmp210326
                               (let ()
                                 (declare (not safe))
                                 (cons _id205672_ '()))))
                          (declare (not safe))
                          (cons '!class __tmp210326))))
                  (declare (not safe))
                  (gxc#compute-class-fields
                   __tmp210325
                   _base-struct205814_
                   _precedence-list205810_
                   _slots205674_))))
          (##structure-set! _self205671_ _id205672_ '1 gxc#!type::t '#f)
          (##structure-set! _self205671_ _super205673_ '2 gxc#!class::t '#f)
          (##structure-set!
           _self205671_
           _precedence-list205810_
           '3
           gxc#!class::t
           '#f)
          (##structure-set! _self205671_ _slots205674_ '4 gxc#!class::t '#f)
          (##structure-set! _self205671_ _fields205816_ '5 gxc#!class::t '#f)
          (##structure-set!
           _self205671_
           _ctor-method205806_
           '6
           gxc#!class::t
           '#f)
          (##structure-set! _self205671_ _struct?205676_ '7 gxc#!class::t '#f)
          (##structure-set!
           _self205671_
           _final?205677_
           '8
           gxc#!class::t
           '#f))))
    (define gxc#!class:::init!__1
      (lambda (_self205819_
               _id205820_
               _super205821_
               _precedence-list205822_
               _slots205823_
               _fields205824_
               _constructor205825_
               _struct?205826_
               _final?205827_
               _methods205828_)
        (##structure-set! _self205819_ _id205820_ '1 gxc#!type::t '#f)
        (##structure-set! _self205819_ _super205821_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self205819_
         _precedence-list205822_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self205819_ _slots205823_ '4 gxc#!class::t '#f)
        (##structure-set! _self205819_ _fields205824_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self205819_
         _constructor205825_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self205819_ _struct?205826_ '7 gxc#!class::t '#f)
        (##structure-set! _self205819_ _final?205827_ '8 gxc#!class::t '#f)
        (if _methods205828_
            (##structure-set!
             _self205819_
             (let ()
               (declare (not safe))
               (list->table _methods205828_ 'test: eq?))
             '9
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g210328_
        (let ((_g210327_ (let () (declare (not safe)) (##length _g210328_))))
          (cond ((let () (declare (not safe)) (##fx= _g210327_ 7))
                 (apply (lambda (_self205671_
                                 _id205672_
                                 _super205673_
                                 _slots205674_
                                 _ctor-method205675_
                                 _struct?205676_
                                 _final?205677_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self205671_
                             _id205672_
                             _super205673_
                             _slots205674_
                             _ctor-method205675_
                             _struct?205676_
                             _final?205677_)))
                        _g210328_))
                ((let () (declare (not safe)) (##fx= _g210327_ 10))
                 (apply (lambda (_self205819_
                                 _id205820_
                                 _super205821_
                                 _precedence-list205822_
                                 _slots205823_
                                 _fields205824_
                                 _constructor205825_
                                 _struct?205826_
                                 _final?205827_
                                 _methods205828_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self205819_
                             _id205820_
                             _super205821_
                             _precedence-list205822_
                             _slots205823_
                             _fields205824_
                             _constructor205825_
                             _struct?205826_
                             _final?205827_
                             _methods205828_)))
                        _g210328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g210328_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t210195)
        (let ((__precedence-list210196
               (let ((__tmp210205
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210195 'precedence-list))))
                 (if __tmp210205
                     __tmp210205
                     (error '"Unknown slot" 'precedence-list))))
              (__methods210197
               (let ((__tmp210206
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210195 'methods))))
                 (if __tmp210206
                     __tmp210206
                     (error '"Unknown slot" 'methods))))
              (__constructor210198
               (let ((__tmp210207
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210195 'constructor))))
                 (if __tmp210207
                     __tmp210207
                     (error '"Unknown slot" 'constructor))))
              (__super210199
               (let ((__tmp210208
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210195 'super))))
                 (if __tmp210208 __tmp210208 (error '"Unknown slot" 'super))))
              (__slots210200
               (let ((__tmp210209
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210195 'slots))))
                 (if __tmp210209 __tmp210209 (error '"Unknown slot" 'slots))))
              (__fields210201
               (let ((__tmp210210
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210195 'fields))))
                 (if __tmp210210 __tmp210210 (error '"Unknown slot" 'fields))))
              (__struct?210202
               (let ((__tmp210211
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210195 'struct?))))
                 (if __tmp210211
                     __tmp210211
                     (error '"Unknown slot" 'struct?))))
              (__final?210203
               (let ((__tmp210212
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210195 'final?))))
                 (if __tmp210212 __tmp210212 (error '"Unknown slot" 'final?))))
              (__id210204
               (let ((__tmp210213
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210195 'id))))
                 (if __tmp210213 __tmp210213 (error '"Unknown slot" 'id)))))
          (lambda _g210330_
            (let ((_g210329_
                   (let () (declare (not safe)) (##length _g210330_))))
              (cond ((let () (declare (not safe)) (##fx= _g210329_ 7))
                     (apply (lambda (_self205671_
                                     _id205672_
                                     _super205673_
                                     _slots205674_
                                     _ctor-method205675_
                                     _struct?205676_
                                     _final?205677_)
                              (let _lp205679_ ((_rest205681_ _super205673_))
                                (let* ((_rest205682205690_ _rest205681_)
                                       (_else205684205698_ (lambda () '#!void))
                                       (_K205686205704_
                                        (lambda (_rest205701_ _super-id205702_)
                                          (if (##structure-ref
                                               (let ((__tmp210333
                                                      (let ((__tmp210334
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id205672_ '()))))
                (declare (not safe))
                (cons '!class __tmp210334))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp210333
                                                  _super-id205702_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp210331
                                                     (let ((__tmp210332
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id205672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp210332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp210331
                                                 _super-id205702_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp205679_ _rest205701_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest205682205690_))
                                      (let ((_hd205687205707_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest205682205690_)))
                                            (_tl205688205709_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest205682205690_))))
                                        (let* ((_super-id205712_
                                                _hd205687205707_)
                                               (_rest205714_ _tl205688205709_))
                                          (declare (not safe))
                                          (_K205686205704_
                                           _rest205714_
                                           _super-id205712_)))
                                      '#!void)))
                              (if _struct?205676_
                                  (let* ((_super205715205725_ _super205673_)
                                         (_else205718205733_
                                          (lambda ()
                                            (let ((__tmp210335
                                                   (let ((__tmp210336
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _id205672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '!class
                                                           __tmp210336))))
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"bad class; struct can only extend a single struct"
                                               __tmp210335
                                               _super205673_)))))
                                    (let ((_K205723205755_ (lambda () '#!void))
                                          (_K205720205741_
                                           (lambda (_super-id205737_)
                                             (let ((_klass205739_
                                                    (let ((__tmp210337
                                                           (let ((__tmp210338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id205672_ '()))))
                     (declare (not safe))
                     (cons '!class __tmp210338))))
              (declare (not safe))
              (gxc#optimizer-resolve-class __tmp210337 _super-id205737_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-ref
                                                    _klass205739_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   '#!void
                                                   (let ((__tmp210339
                                                          (let ((__tmp210340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id205672_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp210340))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"bad class; struct extending non struct"
                                                      __tmp210339
                                                      _super-id205737_)))))))
                                      (let ((_try-match205717205751_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _super205715205725_))
                                                   (let ((_tl205722205746_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _super205715205725_)))
                                                         (_hd205721205744_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _super205715205725_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##null? _tl205722205746_))
                                                         (let ((_super-id205749_
                                                                _hd205721205744_))
                                                           (declare (not safe))
                                                           (_K205720205741_
                                                            _super-id205749_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (_else205718205733_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_else205718205733_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _super205715205725_))
                                            '#!void
                                            (let ()
                                              (declare (not safe))
                                              (_try-match205717205751_))))))
                                  '#!void)
                              (let* ((_ctor-method205806_
                                      (let ((_$e205758_ _ctor-method205675_))
                                        (if _$e205758_
                                            _$e205758_
                                            (let _lp205761_ ((_rest205763_
                                                              _super205673_)
                                                             (_method205764_
                                                              '#f))
                                              (let* ((_rest205765205773_
                                                      _rest205763_)
                                                     (_else205767205781_
                                                      (lambda ()
                                                        _method205764_))
                                                     (_K205769205794_
                                                      (lambda (_rest205784_
                                                               _super-id205785_)
                                                        (let* ((_klass205787_
                                                                (let ((__tmp210341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp210342
                                      (let ()
                                        (declare (not safe))
                                        (cons _id205672_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp210342))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp210341
                           _super-id205785_)))
                       (_$e205789_
                        (##structure-ref _klass205787_ '6 gxc#!class::t '#f)))
                  (if _$e205789_
                      ((lambda (_ctor-method205792_)
                         (if _method205764_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method205792_ _method205764_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp205761_
                                    _rest205784_
                                    _ctor-method205792_))
                                 (let ((__tmp210343
                                        (let ((__tmp210344
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id205672_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp210344))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp210343
                                    _method205764_
                                    _ctor-method205792_)))
                             (let ()
                               (declare (not safe))
                               (_lp205761_ _rest205784_ _ctor-method205792_))))
                       _$e205789_)
                      (let ()
                        (declare (not safe))
                        (_lp205761_ _rest205784_ _method205764_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest205765205773_))
                                                    (let ((_hd205770205797_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest205765205773_)))
                                                          (_tl205771205799_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest205765205773_))))
                                                      (let* ((_super-id205802_
                                                              _hd205770205797_)
                                                             (_rest205804_
                                                              _tl205771205799_))
                                                        (declare (not safe))
                                                        (_K205769205794_
                                                         _rest205804_
                                                         _super-id205802_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else205767205781_))))))))
                                     (_precedence-list205810_
                                      (let ((__tmp210345
                                             (lambda (_klass-id205808_)
                                               (let ((__tmp210346
                                                      (##structure-ref
                                                       (let ((__tmp210347
                                                              (let ((__tmp210348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id205672_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp210348))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp210347 _klass-id205808_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id205808_
                                                       __tmp210346)))))
                                        (declare (not safe))
                                        (c3-linearize__%
                                         '()
                                         _super205673_
                                         __tmp210345
                                         eq?
                                         identity)))
                                     (_fields205816_
                                      (let* ((_base-struct205814_
                                              (let ((__tmp210349
                                                     (lambda (_klass-id205812_)
                                                       (##structure-ref
                                                        (let ((__tmp210350
                                                               (let ((__tmp210351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _id205672_ '()))))
                         (declare (not safe))
                         (cons '!class __tmp210351))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class __tmp210350 _klass-id205812_))
                '7
                gxc#!class::t
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (find __tmp210349
                                                      _precedence-list205810_)))
                                             (__tmp210352
                                              (let ((__tmp210353
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _id205672_ '()))))
                                                (declare (not safe))
                                                (cons '!class __tmp210353))))
                                        (declare (not safe))
                                        (gxc#compute-class-fields
                                         __tmp210352
                                         _base-struct205814_
                                         _precedence-list205810_
                                         _slots205674_))))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205671_
                                   _id205672_
                                   __id210204
                                   __t210195
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205671_
                                   _super205673_
                                   __super210199
                                   __t210195
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205671_
                                   _precedence-list205810_
                                   __precedence-list210196
                                   __t210195
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205671_
                                   _slots205674_
                                   __slots210200
                                   __t210195
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205671_
                                   _fields205816_
                                   __fields210201
                                   __t210195
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205671_
                                   _ctor-method205806_
                                   __constructor210198
                                   __t210195
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205671_
                                   _struct?205676_
                                   __struct?210202
                                   __t210195
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205671_
                                   _final?205677_
                                   __final?210203
                                   __t210195
                                   '#f))))
                            _g210330_))
                    ((let () (declare (not safe)) (##fx= _g210329_ 10))
                     (apply (lambda (_self205819_
                                     _id205820_
                                     _super205821_
                                     _precedence-list205822_
                                     _slots205823_
                                     _fields205824_
                                     _constructor205825_
                                     _struct?205826_
                                     _final?205827_
                                     _methods205828_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205819_
                                 _id205820_
                                 __id210204
                                 __t210195
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205819_
                                 _super205821_
                                 __super210199
                                 __t210195
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205819_
                                 _precedence-list205822_
                                 __precedence-list210196
                                 __t210195
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205819_
                                 _slots205823_
                                 __slots210200
                                 __t210195
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205819_
                                 _fields205824_
                                 __fields210201
                                 __t210195
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205819_
                                 _constructor205825_
                                 __constructor210198
                                 __t210195
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205819_
                                 _struct?205826_
                                 __struct?210202
                                 __t210195
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205819_
                                 _final?205827_
                                 __final?210203
                                 __t210195
                                 '#f))
                              (if _methods205828_
                                  (let ((__tmp210354
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods205828_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self205819_
                                     __tmp210354
                                     __methods210197
                                     __t210195
                                     '#f))
                                  '#!void))
                            _g210330_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g210330_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where205523_
               _base-struct205524_
               _precedence-list205525_
               _direct-slots205526_)
        (let* ((_base-fields205528_
                (if _base-struct205524_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where205523_
                        _base-struct205524_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields205530_ (reverse _base-fields205528_))
               (_seen-slots205538_
                (let ((_tab205532_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g205533205535_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab205532_ _g205533205535_ '#t)))
                   _base-fields205528_)
                  _tab205532_))
               (_process-slot205542_
                (lambda (_slot205540_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots205538_ _slot205540_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots205538_ _slot205540_ '#t))
                        (set! _r-fields205530_
                              (let ()
                                (declare (not safe))
                                (cons _slot205540_ _r-fields205530_))))))))
          (for-each
           (lambda (_mixin205545_)
             (let ((_klass205547_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where205523_
                       _mixin205545_))))
               (if (##structure-ref _klass205547_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot205542_
                    (##structure-ref _klass205547_ '5 gxc#!class::t '#f)))))
           _precedence-list205525_)
          (for-each _process-slot205542_ _direct-slots205526_)
          (reverse _r-fields205530_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass205482_ _slot205483_)
        (let _lp205485_ ((_rest205487_
                          (##structure-ref _klass205482_ '5 gxc#!class::t '#f))
                         (_offset205488_ '1))
          (let* ((_rest205489205497_ _rest205487_)
                 (_else205491205505_
                  (lambda ()
                    (let ((__tmp210356
                           (##structure-ref _klass205482_ '1 gxc#!type::t '#f))
                          (__tmp210355
                           (##structure-ref
                            _klass205482_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp210356
                       __tmp210355
                       _slot205483_))))
                 (_K205493205511_
                  (lambda (_rest205508_ _s205509_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s205509_ _slot205483_))
                        _offset205488_
                        (let ((__tmp210357
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset205488_ '1))))
                          (declare (not safe))
                          (_lp205485_ _rest205508_ __tmp210357))))))
            (if (let () (declare (not safe)) (##pair? _rest205489205497_))
                (let ((_hd205494205514_
                       (let ()
                         (declare (not safe))
                         (##car _rest205489205497_)))
                      (_tl205495205516_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest205489205497_))))
                  (let* ((_s205519_ _hd205494205514_)
                         (_rest205521_ _tl205495205516_))
                    (declare (not safe))
                    (_K205493205511_ _rest205521_ _s205519_)))
                (let () (declare (not safe)) (_else205491205505_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass205440_ _slot205441_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass205440_ _slot205441_))
            _klass205440_
            (let _lp205443_ ((_rest205445_
                              (##structure-ref
                               _klass205440_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest205446205454_ _rest205445_)
                     (_else205448205462_ (lambda () '#f))
                     (_K205450205470_
                      (lambda (_rest205465_ _super205466_)
                        (let ((_super-class205468_
                               (let ((__tmp210358
                                      (let ((__tmp210359
                                             (let ((__tmp210361
                                                    (##structure-ref
                                                     _klass205440_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp210360
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot205441_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp210361
                                                     __tmp210360))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp210359))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp210358
                                  _super205466_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class205468_
                                 _slot205441_))
                              _super-class205468_
                              (let ()
                                (declare (not safe))
                                (_lp205443_ _rest205465_)))))))
                (if (let () (declare (not safe)) (##pair? _rest205446205454_))
                    (let ((_hd205451205473_
                           (let ()
                             (declare (not safe))
                             (##car _rest205446205454_)))
                          (_tl205452205475_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest205446205454_))))
                      (let* ((_super205478_ _hd205451205473_)
                             (_rest205480_ _tl205452205475_))
                        (declare (not safe))
                        (_K205450205470_ _rest205480_ _super205478_)))
                    (let () (declare (not safe)) (_else205448205462_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass205437_ _slot205438_)
        (if (##structure-ref _klass205437_ '7 gxc#!class::t '#f)
            (memq _slot205438_
                  (##structure-ref _klass205437_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self205434_ _id205435_)
        (##structure-set! _self205434_ _id205435_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t210214)
        (let ((__id210215
               (let ((__tmp210216
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210214 'id))))
                 (if __tmp210216 __tmp210216 (error '"Unknown slot" 'id)))))
          (lambda (_self205434_ _id205435_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205434_
               _id205435_
               __id210215
               __t210214
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
      (lambda (_self205309_ _id205310_)
        (##structure-set! _self205309_ _id205310_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t210217)
        (let ((__id210218
               (let ((__tmp210219
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210217 'id))))
                 (if __tmp210219 __tmp210219 (error '"Unknown slot" 'id)))))
          (lambda (_self205309_ _id205310_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205309_
               _id205310_
               __id210218
               __t210217
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
      (lambda (_self205182_ _id205183_ _slot205184_ _checked?205185_)
        (##structure-set! _self205182_ _id205183_ '1 gxc#!type::t '#f)
        (##structure-set! _self205182_ _slot205184_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self205182_
         _checked?205185_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t210220)
        (let ((__slot210221
               (let ((__tmp210224
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210220 'slot))))
                 (if __tmp210224 __tmp210224 (error '"Unknown slot" 'slot))))
              (__checked?210222
               (let ((__tmp210225
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210220 'checked?))))
                 (if __tmp210225
                     __tmp210225
                     (error '"Unknown slot" 'checked?))))
              (__id210223
               (let ((__tmp210226
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210220 'id))))
                 (if __tmp210226 __tmp210226 (error '"Unknown slot" 'id)))))
          (lambda (_self205182_ _id205183_ _slot205184_ _checked?205185_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205182_
               _id205183_
               __id210223
               __t210220
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205182_
               _slot205184_
               __slot210221
               __t210220
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205182_
               _checked?205185_
               __checked?210222
               __t210220
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
      (lambda (_self205055_ _id205056_ _slot205057_ _checked?205058_)
        (##structure-set! _self205055_ _id205056_ '1 gxc#!type::t '#f)
        (##structure-set! _self205055_ _slot205057_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self205055_
         _checked?205058_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t210227)
        (let ((__slot210228
               (let ((__tmp210231
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210227 'slot))))
                 (if __tmp210231 __tmp210231 (error '"Unknown slot" 'slot))))
              (__checked?210229
               (let ((__tmp210232
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210227 'checked?))))
                 (if __tmp210232
                     __tmp210232
                     (error '"Unknown slot" 'checked?))))
              (__id210230
               (let ((__tmp210233
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210227 'id))))
                 (if __tmp210233 __tmp210233 (error '"Unknown slot" 'id)))))
          (lambda (_self205055_ _id205056_ _slot205057_ _checked?205058_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205055_
               _id205056_
               __id210230
               __t210227
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205055_
               _slot205057_
               __slot210228
               __t210227
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205055_
               _checked?205058_
               __checked?210229
               __t210227
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
      (lambda (_self204899_
               _id204900_
               _arity204901_
               _dispatch204902_
               _inline204903_
               _typedecl204904_)
        (if (let ((__tmp210367
                   (let ()
                     (declare (not safe))
                     (##structure-length _self204899_))))
              (declare (not safe))
              (##fx< '5 __tmp210367))
            (begin
              (let ((__tmp210362
                     (let ()
                       (declare (not safe))
                       (##structure-type _self204899_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self204899_
                 _id204900_
                 '1
                 __tmp210362
                 '#f))
              (let ((__tmp210363
                     (let ()
                       (declare (not safe))
                       (##structure-type _self204899_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self204899_
                 _arity204901_
                 '2
                 __tmp210363
                 '#f))
              (let ((__tmp210364
                     (let ()
                       (declare (not safe))
                       (##structure-type _self204899_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self204899_
                 _dispatch204902_
                 '3
                 __tmp210364
                 '#f))
              (let ((__tmp210365
                     (let ()
                       (declare (not safe))
                       (##structure-type _self204899_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self204899_
                 _inline204903_
                 '4
                 __tmp210365
                 '#f))
              (let ((__tmp210366
                     (let ()
                       (declare (not safe))
                       (##structure-type _self204899_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self204899_
                 _typedecl204904_
                 '5
                 __tmp210366
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self204899_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self204899_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self204909_ _id204910_ _arity204911_ _dispatch204912_)
        (let* ((_inline204914_ '#f) (_typedecl204916_ '#f))
          (if (let ((__tmp210373
                     (let ()
                       (declare (not safe))
                       (##structure-length _self204909_))))
                (declare (not safe))
                (##fx< '5 __tmp210373))
              (begin
                (let ((__tmp210368
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204909_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204909_
                   _id204910_
                   '1
                   __tmp210368
                   '#f))
                (let ((__tmp210369
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204909_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204909_
                   _arity204911_
                   '2
                   __tmp210369
                   '#f))
                (let ((__tmp210370
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204909_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204909_
                   _dispatch204912_
                   '3
                   __tmp210370
                   '#f))
                (let ((__tmp210371
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204909_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204909_
                   _inline204914_
                   '4
                   __tmp210371
                   '#f))
                (let ((__tmp210372
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204909_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204909_
                   _typedecl204916_
                   '5
                   __tmp210372
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self204909_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self204909_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self204918_
               _id204919_
               _arity204920_
               _dispatch204921_
               _inline204922_)
        (let ((_typedecl204924_ '#f))
          (if (let ((__tmp210379
                     (let ()
                       (declare (not safe))
                       (##structure-length _self204918_))))
                (declare (not safe))
                (##fx< '5 __tmp210379))
              (begin
                (let ((__tmp210374
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204918_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204918_
                   _id204919_
                   '1
                   __tmp210374
                   '#f))
                (let ((__tmp210375
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204918_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204918_
                   _arity204920_
                   '2
                   __tmp210375
                   '#f))
                (let ((__tmp210376
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204918_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204918_
                   _dispatch204921_
                   '3
                   __tmp210376
                   '#f))
                (let ((__tmp210377
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204918_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204918_
                   _inline204922_
                   '4
                   __tmp210377
                   '#f))
                (let ((__tmp210378
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204918_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204918_
                   _typedecl204924_
                   '5
                   __tmp210378
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self204918_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self204918_)))))))
    (define gxc#!lambda:::init!
      (lambda _g210381_
        (let ((_g210380_ (let () (declare (not safe)) (##length _g210381_))))
          (cond ((let () (declare (not safe)) (##fx= _g210380_ 4))
                 (apply (lambda (_self204909_
                                 _id204910_
                                 _arity204911_
                                 _dispatch204912_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self204909_
                             _id204910_
                             _arity204911_
                             _dispatch204912_)))
                        _g210381_))
                ((let () (declare (not safe)) (##fx= _g210380_ 5))
                 (apply (lambda (_self204918_
                                 _id204919_
                                 _arity204920_
                                 _dispatch204921_
                                 _inline204922_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self204918_
                             _id204919_
                             _arity204920_
                             _dispatch204921_
                             _inline204922_)))
                        _g210381_))
                ((let () (declare (not safe)) (##fx= _g210380_ 6))
                 (apply (lambda (_self204926_
                                 _id204927_
                                 _arity204928_
                                 _dispatch204929_
                                 _inline204930_
                                 _typedecl204931_)
                          (if (let ((__tmp210387
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self204926_))))
                                (declare (not safe))
                                (##fx< '5 __tmp210387))
                              (begin
                                (let ((__tmp210382
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self204926_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self204926_
                                   _id204927_
                                   '1
                                   __tmp210382
                                   '#f))
                                (let ((__tmp210383
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self204926_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self204926_
                                   _arity204928_
                                   '2
                                   __tmp210383
                                   '#f))
                                (let ((__tmp210384
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self204926_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self204926_
                                   _dispatch204929_
                                   '3
                                   __tmp210384
                                   '#f))
                                (let ((__tmp210385
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self204926_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self204926_
                                   _inline204930_
                                   '4
                                   __tmp210385
                                   '#f))
                                (let ((__tmp210386
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self204926_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self204926_
                                   _typedecl204931_
                                   '5
                                   __tmp210386
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self204926_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self204926_)))))
                        _g210381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g210381_))))))
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
      (lambda (_self204651_ . _args204652_)
        (apply struct-instance-init! _self204651_ _args204652_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type204526_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type204526_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type204526_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass204519_)
        (let ((_$e204521_
               (##structure-ref _klass204519_ '9 gxc#!class::t '#f)))
          (if _$e204521_
              _$e204521_
              (let ((_tab204524_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass204519_
                 _tab204524_
                 '9
                 gxc#!class::t
                 '#f)
                _tab204524_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass204510_ _method204511_)
        (let ((_tab204512204514_
               (##structure-ref _klass204510_ '9 gxc#!class::t '#f)))
          (if _tab204512204514_
              (let ((_tab204517_ _tab204512204514_))
                (declare (not safe))
                (table-ref _tab204517_ _method204511_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type204507_ _method204508_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type204507_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type204507_ _method204508_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym204491_ _type204492_ _local?204493_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type204492_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym204491_
                   _type204492_))
        (let ((__tmp210388
               (let () (declare (not safe)) (struct->list _type204492_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym204491_ '" " __tmp210388))
        (let ((__tmp210389
               (if _local?204493_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp210389 _sym204491_ _type204492_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym204498_ _type204499_)
        (let ((_local?204501_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym204498_
           _type204499_
           _local?204501_))))
    (define gxc#optimizer-declare-type!
      (lambda _g210391_
        (let ((_g210390_ (let () (declare (not safe)) (##length _g210391_))))
          (cond ((let () (declare (not safe)) (##fx= _g210390_ 2))
                 (apply (lambda (_sym204498_ _type204499_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym204498_
                             _type204499_)))
                        _g210391_))
                ((let () (declare (not safe)) (##fx= _g210390_ 3))
                 (apply (lambda (_sym204503_ _type204504_ _local?204505_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym204503_
                             _type204504_
                             _local?204505_)))
                        _g210391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g210391_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym204477_ _local?204478_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym204477_))
        (let ((__tmp210392
               (if _local?204478_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp210392 _sym204477_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym204483_)
        (let ((_local?204485_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym204483_ _local?204485_))))
    (define gxc#optimizer-clear-type!
      (lambda _g210394_
        (let ((_g210393_ (let () (declare (not safe)) (##length _g210394_))))
          (cond ((let () (declare (not safe)) (##fx= _g210393_ 1))
                 (apply (lambda (_sym204483_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym204483_)))
                        _g210394_))
                ((let () (declare (not safe)) (##fx= _g210393_ 2))
                 (apply (lambda (_sym204487_ _local?204488_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym204487_
                             _local?204488_)))
                        _g210394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g210394_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t204450_ _method204451_ _sym204452_ _rebind?204453_)
        (let* ((_type204455_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t204450_)))
               (_$e204457_
                (let () (declare (not safe)) (gxc#!type-vtab _type204455_))))
          (if _$e204457_
              ((lambda (_vtab204460_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab204460_ _method204451_))
                     (if _rebind?204453_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t204450_
                              '" "
                              _method204451_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab204460_
                              _method204451_
                              _sym204452_)))
                         (let ((__tmp210399
                                (let ((__tmp210400
                                       (let ((__tmp210401
                                              (let ((__tmp210402
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym204452_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method204451_
                                                      __tmp210402))))
                                         (declare (not safe))
                                         (cons _type-t204450_ __tmp210401))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp210400))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp210399
                            _method204451_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t204450_
                          '" "
                          _method204451_
                          '" => "
                          _sym204452_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab204460_
                          _method204451_
                          _sym204452_)))))
               _$e204457_)
              (if (let () (declare (not safe)) (not _type204455_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t204450_))
                  (let ((__tmp210395
                         (let ((__tmp210396
                                (let ((__tmp210397
                                       (let ((__tmp210398
                                              (let ()
                                                (declare (not safe))
                                                (cons _method204451_ '()))))
                                         (declare (not safe))
                                         (cons _sym204452_ __tmp210398))))
                                  (declare (not safe))
                                  (cons _type-t204450_ __tmp210397))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp210396))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp210395
                     _type204455_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t204465_ _method204466_ _sym204467_)
        (let ((_rebind?204469_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t204465_
           _method204466_
           _sym204467_
           _rebind?204469_))))
    (define gxc#optimizer-declare-method!
      (lambda _g210404_
        (let ((_g210403_ (let () (declare (not safe)) (##length _g210404_))))
          (cond ((let () (declare (not safe)) (##fx= _g210403_ 3))
                 (apply (lambda (_type-t204465_ _method204466_ _sym204467_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t204465_
                             _method204466_
                             _sym204467_)))
                        _g210404_))
                ((let () (declare (not safe)) (##fx= _g210403_ 4))
                 (apply (lambda (_type-t204471_
                                 _method204472_
                                 _sym204473_
                                 _rebind?204474_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t204471_
                             _method204472_
                             _sym204473_
                             _rebind?204474_)))
                        _g210404_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g210404_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym204438_)
        (let ((_$e204446_
               (let ((_ht204439204441_ (gxc#current-compile-local-type)))
                 (if _ht204439204441_
                     (let ((_ht204444_ _ht204439204441_))
                       (declare (not safe))
                       (table-ref _ht204444_ _sym204438_ '#f))
                     '#f))))
          (if _$e204446_
              _$e204446_
              (let ((__tmp210405
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp210405 _sym204438_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym204430_)
        (let ((_type204431204433_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym204430_))))
          (if _type204431204433_
              (let ((_type204436_ _type204431204433_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type204436_ 'gxc#!alias::t))
                    (let ((__tmp210406
                           (##structure-ref _type204436_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp210406))
                    _type204436_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where204422_ _klass-id204423_)
        (let ((_$e204425_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id204423_))))
          (if _$e204425_
              ((lambda (_klass204428_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass204428_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where204422_
                        _klass-id204423_
                        _klass204428_)))
                 _klass204428_)
               _$e204425_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where204422_
                 _klass-id204423_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t204419_ _method204420_)
        (let ((__tmp210407
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t204419_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp210407 _method204420_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym204417_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym204417_))
        (let ((__tmp210408
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp210408 _sym204417_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym204415_)
        (let ((__tmp210409
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp210409 _sym204415_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx204413_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx204413_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx204413_))
            (let () (declare (not safe)) (gx#stx-e _stx204413_)))))))
