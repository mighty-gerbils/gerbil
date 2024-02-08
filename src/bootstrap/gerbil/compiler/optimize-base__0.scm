(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707415538)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp210288
             (let ((__tmp210289
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210289 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#optimizer-info::t
         'optimizer-info
         '#f
         '(type ssxi methods)
         __tmp210288
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args206019_
        (apply make-struct-instance gxc#optimizer-info::t _$args206019_)))
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
      (lambda (_self206017_)
        (if (let ((__tmp210296
                   (let ()
                     (declare (not safe))
                     (##structure-length _self206017_))))
              (declare (not safe))
              (##fx< '3 __tmp210296))
            (begin
              (let ((__tmp210291
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp210290
                     (let ()
                       (declare (not safe))
                       (##structure-type _self206017_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self206017_
                 __tmp210291
                 '1
                 __tmp210290
                 '#f))
              (let ((__tmp210293
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp210292
                     (let ()
                       (declare (not safe))
                       (##structure-type _self206017_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self206017_
                 __tmp210293
                 '2
                 __tmp210292
                 '#f))
              (let ((__tmp210295
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp210294
                     (let ()
                       (declare (not safe))
                       (##structure-type _self206017_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self206017_
                 __tmp210295
                 '3
                 __tmp210294
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self206017_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self206017_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp210297
             (let ((__tmp210298
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210298 '()))))
        (declare (not safe))
        (make-struct-type* 'gxc#!type::t '!type '#f '(id) __tmp210297 '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-struct-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args205892_
        (apply make-struct-instance gxc#!type::t _$args205892_)))
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
      (let ((__tmp210299
             (let ((__tmp210300
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210300 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!alias::t
         '!alias
         gxc#!type::t
         '()
         __tmp210299
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-struct-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args205889_
        (apply make-struct-instance gxc#!alias::t _$args205889_)))
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
      (let ((__tmp210301
             (let ((__tmp210302
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210302 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!procedure::t
         '!procedure
         gxc#!type::t
         '()
         __tmp210301
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-struct-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args205886_
        (apply make-struct-instance gxc#!procedure::t _$args205886_)))
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
      (let ((__tmp210303
             (let ((__tmp210304
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210304 '()))))
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
         __tmp210303
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args205883_
        (apply make-struct-instance gxc#!class::t _$args205883_)))
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
      (let ((__tmp210305
             (let ((__tmp210306
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210306 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!predicate::t
         '!predicate
         gxc#!procedure::t
         '()
         __tmp210305
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-struct-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args205880_
        (apply make-struct-instance gxc#!predicate::t _$args205880_)))
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
      (let ((__tmp210307
             (let ((__tmp210308
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210308 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!constructor::t
         '!constructor
         gxc#!procedure::t
         '()
         __tmp210307
         '#f)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args205877_
        (apply make-struct-instance gxc#!constructor::t _$args205877_)))
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
      (let ((__tmp210309
             (let ((__tmp210310
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210310 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!accessor::t
         '!accessor
         gxc#!procedure::t
         '(slot checked?)
         __tmp210309
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-struct-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args205874_
        (apply make-struct-instance gxc#!accessor::t _$args205874_)))
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
      (let ((__tmp210311
             (let ((__tmp210312
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210312 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!mutator::t
         '!mutator
         gxc#!procedure::t
         '(slot checked?)
         __tmp210311
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-struct-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args205871_
        (apply make-struct-instance gxc#!mutator::t _$args205871_)))
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
      (let ((__tmp210313
             (let ((__tmp210314
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210314 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!lambda::t
         '!lambda
         gxc#!procedure::t
         '(arity dispatch inline inline-typedecl)
         __tmp210313
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args205868_
        (apply make-struct-instance gxc#!lambda::t _$args205868_)))
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
      (let ((__tmp210315
             (let ((__tmp210316
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210316 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!case-lambda::t
         '!case-lambda
         gxc#!procedure::t
         '(clauses)
         __tmp210315
         '#f)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args205865_
        (apply make-struct-instance gxc#!case-lambda::t _$args205865_)))
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
      (let ((__tmp210317
             (let ((__tmp210318
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210318 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!kw-lambda::t
         '!kw-lambda
         gxc#!procedure::t
         '(table dispatch)
         __tmp210317
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args205862_
        (apply make-struct-instance gxc#!kw-lambda::t _$args205862_)))
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
      (let ((__tmp210319
             (let ((__tmp210320
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210320 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         gxc#!procedure::t
         '(keys main)
         __tmp210319
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args205859_
        (apply make-struct-instance gxc#!kw-lambda-primary::t _$args205859_)))
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
      (let ((__tmp210321 (list)))
        (declare (not safe))
        (make-class-type*
         'gxc#!primitive::t
         '!primitive
         __tmp210321
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args205856_
        (apply make-class-instance gxc#!primitive::t _$args205856_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp210322 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type*
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp210322
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args205853_
        (apply make-class-instance gxc#!primitive-lambda::t _$args205853_)))
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
      (let ((__tmp210323 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type*
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp210323
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args205850_
        (apply make-class-instance
               gxc#!primitive-case-lambda::t
               _$args205850_)))
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
      (lambda (_self205691_
               _id205692_
               _super205693_
               _slots205694_
               _ctor-method205695_
               _struct?205696_
               _final?205697_)
        (let _lp205699_ ((_rest205701_ _super205693_))
          (let* ((_rest205702205710_ _rest205701_)
                 (_else205704205718_ (lambda () '#!void))
                 (_K205706205724_
                  (lambda (_rest205721_ _super-id205722_)
                    (if (##structure-ref
                         (let ((__tmp210326
                                (let ((__tmp210327
                                       (let ()
                                         (declare (not safe))
                                         (cons _id205692_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp210327))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp210326
                            _super-id205722_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp210324
                               (let ((__tmp210325
                                      (let ()
                                        (declare (not safe))
                                        (cons _id205692_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp210325))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp210324
                           _super-id205722_))
                        '#!void)
                    (let () (declare (not safe)) (_lp205699_ _rest205721_)))))
            (if (let () (declare (not safe)) (##pair? _rest205702205710_))
                (let ((_hd205707205727_
                       (let ()
                         (declare (not safe))
                         (##car _rest205702205710_)))
                      (_tl205708205729_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest205702205710_))))
                  (let* ((_super-id205732_ _hd205707205727_)
                         (_rest205734_ _tl205708205729_))
                    (declare (not safe))
                    (_K205706205724_ _rest205734_ _super-id205732_)))
                '#!void)))
        (if _struct?205696_
            (let* ((_super205735205745_ _super205693_)
                   (_else205738205753_
                    (lambda ()
                      (let ((__tmp210328
                             (let ((__tmp210329
                                    (let ()
                                      (declare (not safe))
                                      (cons _id205692_ '()))))
                               (declare (not safe))
                               (cons '!class __tmp210329))))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"bad class; struct can only extend a single struct"
                         __tmp210328
                         _super205693_)))))
              (let ((_K205743205775_ (lambda () '#!void))
                    (_K205740205761_
                     (lambda (_super-id205757_)
                       (let ((_klass205759_
                              (let ((__tmp210330
                                     (let ((__tmp210331
                                            (let ()
                                              (declare (not safe))
                                              (cons _id205692_ '()))))
                                       (declare (not safe))
                                       (cons '!class __tmp210331))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-class
                                 __tmp210330
                                 _super-id205757_))))
                         (if (##structure-ref
                              _klass205759_
                              '7
                              gxc#!class::t
                              '#f)
                             '#!void
                             (let ((__tmp210332
                                    (let ((__tmp210333
                                           (let ()
                                             (declare (not safe))
                                             (cons _id205692_ '()))))
                                      (declare (not safe))
                                      (cons '!class __tmp210333))))
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"bad class; struct extending non struct"
                                __tmp210332
                                _super-id205757_)))))))
                (let ((_try-match205737205771_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _super205735205745_))
                             (let ((_tl205742205766_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _super205735205745_)))
                                   (_hd205741205764_
                                    (let ()
                                      (declare (not safe))
                                      (##car _super205735205745_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _tl205742205766_))
                                   (let ((_super-id205769_ _hd205741205764_))
                                     (declare (not safe))
                                     (_K205740205761_ _super-id205769_))
                                   (let ()
                                     (declare (not safe))
                                     (_else205738205753_))))
                             (let ()
                               (declare (not safe))
                               (_else205738205753_))))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _super205735205745_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (_try-match205737205771_))))))
            '#!void)
        (let* ((_ctor-method205826_
                (let ((_$e205778_ _ctor-method205695_))
                  (if _$e205778_
                      _$e205778_
                      (let _lp205781_ ((_rest205783_ _super205693_)
                                       (_method205784_ '#f))
                        (let* ((_rest205785205793_ _rest205783_)
                               (_else205787205801_ (lambda () _method205784_))
                               (_K205789205814_
                                (lambda (_rest205804_ _super-id205805_)
                                  (let* ((_klass205807_
                                          (let ((__tmp210334
                                                 (let ((__tmp210335
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id205692_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp210335))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp210334
                                             _super-id205805_)))
                                         (_$e205809_
                                          (##structure-ref
                                           _klass205807_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e205809_
                                        ((lambda (_ctor-method205812_)
                                           (if _method205784_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method205812_
                                                          _method205784_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp205781_
                                                      _rest205804_
                                                      _ctor-method205812_))
                                                   (let ((__tmp210336
                                                          (let ((__tmp210337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id205692_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp210337))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp210336
                                                      _method205784_
                                                      _ctor-method205812_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp205781_
                                                  _rest205804_
                                                  _ctor-method205812_))))
                                         _$e205809_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp205781_
                                           _rest205804_
                                           _method205784_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest205785205793_))
                              (let ((_hd205790205817_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest205785205793_)))
                                    (_tl205791205819_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest205785205793_))))
                                (let* ((_super-id205822_ _hd205790205817_)
                                       (_rest205824_ _tl205791205819_))
                                  (declare (not safe))
                                  (_K205789205814_
                                   _rest205824_
                                   _super-id205822_)))
                              (let ()
                                (declare (not safe))
                                (_else205787205801_))))))))
               (_precedence-list205830_
                (let ((__tmp210338
                       (lambda (_klass-id205828_)
                         (let ((__tmp210339
                                (##structure-ref
                                 (let ((__tmp210340
                                        (let ((__tmp210341
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id205692_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp210341))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp210340
                                    _klass-id205828_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id205828_ __tmp210339)))))
                  (declare (not safe))
                  (c3-linearize__%
                   '()
                   _super205693_
                   __tmp210338
                   eq?
                   identity)))
               (_fields205836_
                (let* ((_base-struct205834_
                        (let ((__tmp210342
                               (lambda (_klass-id205832_)
                                 (##structure-ref
                                  (let ((__tmp210343
                                         (let ((__tmp210344
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id205692_ '()))))
                                           (declare (not safe))
                                           (cons '!class __tmp210344))))
                                    (declare (not safe))
                                    (gxc#optimizer-resolve-class
                                     __tmp210343
                                     _klass-id205832_))
                                  '7
                                  gxc#!class::t
                                  '#f))))
                          (declare (not safe))
                          (find __tmp210342 _precedence-list205830_)))
                       (__tmp210345
                        (let ((__tmp210346
                               (let ()
                                 (declare (not safe))
                                 (cons _id205692_ '()))))
                          (declare (not safe))
                          (cons '!class __tmp210346))))
                  (declare (not safe))
                  (gxc#compute-class-fields
                   __tmp210345
                   _base-struct205834_
                   _precedence-list205830_
                   _slots205694_))))
          (##structure-set! _self205691_ _id205692_ '1 gxc#!type::t '#f)
          (##structure-set! _self205691_ _super205693_ '2 gxc#!class::t '#f)
          (##structure-set!
           _self205691_
           _precedence-list205830_
           '3
           gxc#!class::t
           '#f)
          (##structure-set! _self205691_ _slots205694_ '4 gxc#!class::t '#f)
          (##structure-set! _self205691_ _fields205836_ '5 gxc#!class::t '#f)
          (##structure-set!
           _self205691_
           _ctor-method205826_
           '6
           gxc#!class::t
           '#f)
          (##structure-set! _self205691_ _struct?205696_ '7 gxc#!class::t '#f)
          (##structure-set!
           _self205691_
           _final?205697_
           '8
           gxc#!class::t
           '#f))))
    (define gxc#!class:::init!__1
      (lambda (_self205839_
               _id205840_
               _super205841_
               _precedence-list205842_
               _slots205843_
               _fields205844_
               _constructor205845_
               _struct?205846_
               _final?205847_
               _methods205848_)
        (##structure-set! _self205839_ _id205840_ '1 gxc#!type::t '#f)
        (##structure-set! _self205839_ _super205841_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self205839_
         _precedence-list205842_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self205839_ _slots205843_ '4 gxc#!class::t '#f)
        (##structure-set! _self205839_ _fields205844_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self205839_
         _constructor205845_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self205839_ _struct?205846_ '7 gxc#!class::t '#f)
        (##structure-set! _self205839_ _final?205847_ '8 gxc#!class::t '#f)
        (if _methods205848_
            (##structure-set!
             _self205839_
             (let ()
               (declare (not safe))
               (list->table _methods205848_ 'test: eq?))
             '9
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g210348_
        (let ((_g210347_ (let () (declare (not safe)) (##length _g210348_))))
          (cond ((let () (declare (not safe)) (##fx= _g210347_ 7))
                 (apply (lambda (_self205691_
                                 _id205692_
                                 _super205693_
                                 _slots205694_
                                 _ctor-method205695_
                                 _struct?205696_
                                 _final?205697_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self205691_
                             _id205692_
                             _super205693_
                             _slots205694_
                             _ctor-method205695_
                             _struct?205696_
                             _final?205697_)))
                        _g210348_))
                ((let () (declare (not safe)) (##fx= _g210347_ 10))
                 (apply (lambda (_self205839_
                                 _id205840_
                                 _super205841_
                                 _precedence-list205842_
                                 _slots205843_
                                 _fields205844_
                                 _constructor205845_
                                 _struct?205846_
                                 _final?205847_
                                 _methods205848_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self205839_
                             _id205840_
                             _super205841_
                             _precedence-list205842_
                             _slots205843_
                             _fields205844_
                             _constructor205845_
                             _struct?205846_
                             _final?205847_
                             _methods205848_)))
                        _g210348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g210348_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t210215)
        (let ((__id210216
               (let ((__tmp210225
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210215 'id))))
                 (if __tmp210225 __tmp210225 (error '"Unknown slot" 'id))))
              (__precedence-list210217
               (let ((__tmp210226
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210215 'precedence-list))))
                 (if __tmp210226
                     __tmp210226
                     (error '"Unknown slot" 'precedence-list))))
              (__struct?210218
               (let ((__tmp210227
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210215 'struct?))))
                 (if __tmp210227
                     __tmp210227
                     (error '"Unknown slot" 'struct?))))
              (__methods210219
               (let ((__tmp210228
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210215 'methods))))
                 (if __tmp210228
                     __tmp210228
                     (error '"Unknown slot" 'methods))))
              (__super210220
               (let ((__tmp210229
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210215 'super))))
                 (if __tmp210229 __tmp210229 (error '"Unknown slot" 'super))))
              (__fields210221
               (let ((__tmp210230
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210215 'fields))))
                 (if __tmp210230 __tmp210230 (error '"Unknown slot" 'fields))))
              (__constructor210222
               (let ((__tmp210231
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210215 'constructor))))
                 (if __tmp210231
                     __tmp210231
                     (error '"Unknown slot" 'constructor))))
              (__slots210223
               (let ((__tmp210232
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210215 'slots))))
                 (if __tmp210232 __tmp210232 (error '"Unknown slot" 'slots))))
              (__final?210224
               (let ((__tmp210233
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210215 'final?))))
                 (if __tmp210233
                     __tmp210233
                     (error '"Unknown slot" 'final?)))))
          (lambda _g210350_
            (let ((_g210349_
                   (let () (declare (not safe)) (##length _g210350_))))
              (cond ((let () (declare (not safe)) (##fx= _g210349_ 7))
                     (apply (lambda (_self205691_
                                     _id205692_
                                     _super205693_
                                     _slots205694_
                                     _ctor-method205695_
                                     _struct?205696_
                                     _final?205697_)
                              (let _lp205699_ ((_rest205701_ _super205693_))
                                (let* ((_rest205702205710_ _rest205701_)
                                       (_else205704205718_ (lambda () '#!void))
                                       (_K205706205724_
                                        (lambda (_rest205721_ _super-id205722_)
                                          (if (##structure-ref
                                               (let ((__tmp210353
                                                      (let ((__tmp210354
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id205692_ '()))))
                (declare (not safe))
                (cons '!class __tmp210354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp210353
                                                  _super-id205722_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp210351
                                                     (let ((__tmp210352
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id205692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp210352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp210351
                                                 _super-id205722_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp205699_ _rest205721_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest205702205710_))
                                      (let ((_hd205707205727_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest205702205710_)))
                                            (_tl205708205729_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest205702205710_))))
                                        (let* ((_super-id205732_
                                                _hd205707205727_)
                                               (_rest205734_ _tl205708205729_))
                                          (declare (not safe))
                                          (_K205706205724_
                                           _rest205734_
                                           _super-id205732_)))
                                      '#!void)))
                              (if _struct?205696_
                                  (let* ((_super205735205745_ _super205693_)
                                         (_else205738205753_
                                          (lambda ()
                                            (let ((__tmp210355
                                                   (let ((__tmp210356
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _id205692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '!class
                                                           __tmp210356))))
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"bad class; struct can only extend a single struct"
                                               __tmp210355
                                               _super205693_)))))
                                    (let ((_K205743205775_ (lambda () '#!void))
                                          (_K205740205761_
                                           (lambda (_super-id205757_)
                                             (let ((_klass205759_
                                                    (let ((__tmp210357
                                                           (let ((__tmp210358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id205692_ '()))))
                     (declare (not safe))
                     (cons '!class __tmp210358))))
              (declare (not safe))
              (gxc#optimizer-resolve-class __tmp210357 _super-id205757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-ref
                                                    _klass205759_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   '#!void
                                                   (let ((__tmp210359
                                                          (let ((__tmp210360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id205692_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp210360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"bad class; struct extending non struct"
                                                      __tmp210359
                                                      _super-id205757_)))))))
                                      (let ((_try-match205737205771_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _super205735205745_))
                                                   (let ((_tl205742205766_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _super205735205745_)))
                                                         (_hd205741205764_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _super205735205745_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##null? _tl205742205766_))
                                                         (let ((_super-id205769_
                                                                _hd205741205764_))
                                                           (declare (not safe))
                                                           (_K205740205761_
                                                            _super-id205769_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (_else205738205753_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_else205738205753_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _super205735205745_))
                                            '#!void
                                            (let ()
                                              (declare (not safe))
                                              (_try-match205737205771_))))))
                                  '#!void)
                              (let* ((_ctor-method205826_
                                      (let ((_$e205778_ _ctor-method205695_))
                                        (if _$e205778_
                                            _$e205778_
                                            (let _lp205781_ ((_rest205783_
                                                              _super205693_)
                                                             (_method205784_
                                                              '#f))
                                              (let* ((_rest205785205793_
                                                      _rest205783_)
                                                     (_else205787205801_
                                                      (lambda ()
                                                        _method205784_))
                                                     (_K205789205814_
                                                      (lambda (_rest205804_
                                                               _super-id205805_)
                                                        (let* ((_klass205807_
                                                                (let ((__tmp210361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp210362
                                      (let ()
                                        (declare (not safe))
                                        (cons _id205692_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp210362))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp210361
                           _super-id205805_)))
                       (_$e205809_
                        (##structure-ref _klass205807_ '6 gxc#!class::t '#f)))
                  (if _$e205809_
                      ((lambda (_ctor-method205812_)
                         (if _method205784_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method205812_ _method205784_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp205781_
                                    _rest205804_
                                    _ctor-method205812_))
                                 (let ((__tmp210363
                                        (let ((__tmp210364
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id205692_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp210364))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp210363
                                    _method205784_
                                    _ctor-method205812_)))
                             (let ()
                               (declare (not safe))
                               (_lp205781_ _rest205804_ _ctor-method205812_))))
                       _$e205809_)
                      (let ()
                        (declare (not safe))
                        (_lp205781_ _rest205804_ _method205784_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest205785205793_))
                                                    (let ((_hd205790205817_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest205785205793_)))
                                                          (_tl205791205819_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest205785205793_))))
                                                      (let* ((_super-id205822_
                                                              _hd205790205817_)
                                                             (_rest205824_
                                                              _tl205791205819_))
                                                        (declare (not safe))
                                                        (_K205789205814_
                                                         _rest205824_
                                                         _super-id205822_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else205787205801_))))))))
                                     (_precedence-list205830_
                                      (let ((__tmp210365
                                             (lambda (_klass-id205828_)
                                               (let ((__tmp210366
                                                      (##structure-ref
                                                       (let ((__tmp210367
                                                              (let ((__tmp210368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id205692_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp210368))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp210367 _klass-id205828_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id205828_
                                                       __tmp210366)))))
                                        (declare (not safe))
                                        (c3-linearize__%
                                         '()
                                         _super205693_
                                         __tmp210365
                                         eq?
                                         identity)))
                                     (_fields205836_
                                      (let* ((_base-struct205834_
                                              (let ((__tmp210369
                                                     (lambda (_klass-id205832_)
                                                       (##structure-ref
                                                        (let ((__tmp210370
                                                               (let ((__tmp210371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _id205692_ '()))))
                         (declare (not safe))
                         (cons '!class __tmp210371))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class __tmp210370 _klass-id205832_))
                '7
                gxc#!class::t
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (find __tmp210369
                                                      _precedence-list205830_)))
                                             (__tmp210372
                                              (let ((__tmp210373
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _id205692_ '()))))
                                                (declare (not safe))
                                                (cons '!class __tmp210373))))
                                        (declare (not safe))
                                        (gxc#compute-class-fields
                                         __tmp210372
                                         _base-struct205834_
                                         _precedence-list205830_
                                         _slots205694_))))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205691_
                                   _id205692_
                                   __id210216
                                   __t210215
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205691_
                                   _super205693_
                                   __super210220
                                   __t210215
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205691_
                                   _precedence-list205830_
                                   __precedence-list210217
                                   __t210215
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205691_
                                   _slots205694_
                                   __slots210223
                                   __t210215
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205691_
                                   _fields205836_
                                   __fields210221
                                   __t210215
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205691_
                                   _ctor-method205826_
                                   __constructor210222
                                   __t210215
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205691_
                                   _struct?205696_
                                   __struct?210218
                                   __t210215
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205691_
                                   _final?205697_
                                   __final?210224
                                   __t210215
                                   '#f))))
                            _g210350_))
                    ((let () (declare (not safe)) (##fx= _g210349_ 10))
                     (apply (lambda (_self205839_
                                     _id205840_
                                     _super205841_
                                     _precedence-list205842_
                                     _slots205843_
                                     _fields205844_
                                     _constructor205845_
                                     _struct?205846_
                                     _final?205847_
                                     _methods205848_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205839_
                                 _id205840_
                                 __id210216
                                 __t210215
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205839_
                                 _super205841_
                                 __super210220
                                 __t210215
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205839_
                                 _precedence-list205842_
                                 __precedence-list210217
                                 __t210215
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205839_
                                 _slots205843_
                                 __slots210223
                                 __t210215
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205839_
                                 _fields205844_
                                 __fields210221
                                 __t210215
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205839_
                                 _constructor205845_
                                 __constructor210222
                                 __t210215
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205839_
                                 _struct?205846_
                                 __struct?210218
                                 __t210215
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205839_
                                 _final?205847_
                                 __final?210224
                                 __t210215
                                 '#f))
                              (if _methods205848_
                                  (let ((__tmp210374
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods205848_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self205839_
                                     __tmp210374
                                     __methods210219
                                     __t210215
                                     '#f))
                                  '#!void))
                            _g210350_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g210350_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where205543_
               _base-struct205544_
               _precedence-list205545_
               _direct-slots205546_)
        (let* ((_base-fields205548_
                (if _base-struct205544_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where205543_
                        _base-struct205544_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields205550_ (reverse _base-fields205548_))
               (_seen-slots205558_
                (let ((_tab205552_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g205553205555_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab205552_ _g205553205555_ '#t)))
                   _base-fields205548_)
                  _tab205552_))
               (_process-slot205562_
                (lambda (_slot205560_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots205558_ _slot205560_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots205558_ _slot205560_ '#t))
                        (set! _r-fields205550_
                              (let ()
                                (declare (not safe))
                                (cons _slot205560_ _r-fields205550_))))))))
          (for-each
           (lambda (_mixin205565_)
             (let ((_klass205567_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where205543_
                       _mixin205565_))))
               (if (##structure-ref _klass205567_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot205562_
                    (##structure-ref _klass205567_ '5 gxc#!class::t '#f)))))
           _precedence-list205545_)
          (for-each _process-slot205562_ _direct-slots205546_)
          (reverse _r-fields205550_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass205502_ _slot205503_)
        (let _lp205505_ ((_rest205507_
                          (##structure-ref _klass205502_ '5 gxc#!class::t '#f))
                         (_offset205508_ '1))
          (let* ((_rest205509205517_ _rest205507_)
                 (_else205511205525_
                  (lambda ()
                    (let ((__tmp210376
                           (##structure-ref _klass205502_ '1 gxc#!type::t '#f))
                          (__tmp210375
                           (##structure-ref
                            _klass205502_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp210376
                       __tmp210375
                       _slot205503_))))
                 (_K205513205531_
                  (lambda (_rest205528_ _s205529_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s205529_ _slot205503_))
                        _offset205508_
                        (let ((__tmp210377
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset205508_ '1))))
                          (declare (not safe))
                          (_lp205505_ _rest205528_ __tmp210377))))))
            (if (let () (declare (not safe)) (##pair? _rest205509205517_))
                (let ((_hd205514205534_
                       (let ()
                         (declare (not safe))
                         (##car _rest205509205517_)))
                      (_tl205515205536_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest205509205517_))))
                  (let* ((_s205539_ _hd205514205534_)
                         (_rest205541_ _tl205515205536_))
                    (declare (not safe))
                    (_K205513205531_ _rest205541_ _s205539_)))
                (let () (declare (not safe)) (_else205511205525_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass205460_ _slot205461_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass205460_ _slot205461_))
            _klass205460_
            (let _lp205463_ ((_rest205465_
                              (##structure-ref
                               _klass205460_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest205466205474_ _rest205465_)
                     (_else205468205482_ (lambda () '#f))
                     (_K205470205490_
                      (lambda (_rest205485_ _super205486_)
                        (let ((_super-class205488_
                               (let ((__tmp210378
                                      (let ((__tmp210379
                                             (let ((__tmp210381
                                                    (##structure-ref
                                                     _klass205460_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp210380
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot205461_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp210381
                                                     __tmp210380))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp210379))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp210378
                                  _super205486_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class205488_
                                 _slot205461_))
                              _super-class205488_
                              (let ()
                                (declare (not safe))
                                (_lp205463_ _rest205485_)))))))
                (if (let () (declare (not safe)) (##pair? _rest205466205474_))
                    (let ((_hd205471205493_
                           (let ()
                             (declare (not safe))
                             (##car _rest205466205474_)))
                          (_tl205472205495_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest205466205474_))))
                      (let* ((_super205498_ _hd205471205493_)
                             (_rest205500_ _tl205472205495_))
                        (declare (not safe))
                        (_K205470205490_ _rest205500_ _super205498_)))
                    (let () (declare (not safe)) (_else205468205482_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass205457_ _slot205458_)
        (if (##structure-ref _klass205457_ '7 gxc#!class::t '#f)
            (memq _slot205458_
                  (##structure-ref _klass205457_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self205454_ _id205455_)
        (##structure-set! _self205454_ _id205455_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t210234)
        (let ((__id210235
               (let ((__tmp210236
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210234 'id))))
                 (if __tmp210236 __tmp210236 (error '"Unknown slot" 'id)))))
          (lambda (_self205454_ _id205455_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205454_
               _id205455_
               __id210235
               __t210234
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
      (lambda (_self205329_ _id205330_)
        (##structure-set! _self205329_ _id205330_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t210237)
        (let ((__id210238
               (let ((__tmp210239
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210237 'id))))
                 (if __tmp210239 __tmp210239 (error '"Unknown slot" 'id)))))
          (lambda (_self205329_ _id205330_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205329_
               _id205330_
               __id210238
               __t210237
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
      (lambda (_self205202_ _id205203_ _slot205204_ _checked?205205_)
        (##structure-set! _self205202_ _id205203_ '1 gxc#!type::t '#f)
        (##structure-set! _self205202_ _slot205204_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self205202_
         _checked?205205_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t210240)
        (let ((__checked?210241
               (let ((__tmp210244
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210240 'checked?))))
                 (if __tmp210244
                     __tmp210244
                     (error '"Unknown slot" 'checked?))))
              (__slot210242
               (let ((__tmp210245
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210240 'slot))))
                 (if __tmp210245 __tmp210245 (error '"Unknown slot" 'slot))))
              (__id210243
               (let ((__tmp210246
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210240 'id))))
                 (if __tmp210246 __tmp210246 (error '"Unknown slot" 'id)))))
          (lambda (_self205202_ _id205203_ _slot205204_ _checked?205205_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205202_
               _id205203_
               __id210243
               __t210240
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205202_
               _slot205204_
               __slot210242
               __t210240
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205202_
               _checked?205205_
               __checked?210241
               __t210240
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
      (lambda (_self205075_ _id205076_ _slot205077_ _checked?205078_)
        (##structure-set! _self205075_ _id205076_ '1 gxc#!type::t '#f)
        (##structure-set! _self205075_ _slot205077_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self205075_
         _checked?205078_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t210247)
        (let ((__checked?210248
               (let ((__tmp210251
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210247 'checked?))))
                 (if __tmp210251
                     __tmp210251
                     (error '"Unknown slot" 'checked?))))
              (__slot210249
               (let ((__tmp210252
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210247 'slot))))
                 (if __tmp210252 __tmp210252 (error '"Unknown slot" 'slot))))
              (__id210250
               (let ((__tmp210253
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210247 'id))))
                 (if __tmp210253 __tmp210253 (error '"Unknown slot" 'id)))))
          (lambda (_self205075_ _id205076_ _slot205077_ _checked?205078_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205075_
               _id205076_
               __id210250
               __t210247
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205075_
               _slot205077_
               __slot210249
               __t210247
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205075_
               _checked?205078_
               __checked?210248
               __t210247
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
      (lambda (_self204919_
               _id204920_
               _arity204921_
               _dispatch204922_
               _inline204923_
               _typedecl204924_)
        (if (let ((__tmp210387
                   (let ()
                     (declare (not safe))
                     (##structure-length _self204919_))))
              (declare (not safe))
              (##fx< '5 __tmp210387))
            (begin
              (let ((__tmp210382
                     (let ()
                       (declare (not safe))
                       (##structure-type _self204919_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self204919_
                 _id204920_
                 '1
                 __tmp210382
                 '#f))
              (let ((__tmp210383
                     (let ()
                       (declare (not safe))
                       (##structure-type _self204919_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self204919_
                 _arity204921_
                 '2
                 __tmp210383
                 '#f))
              (let ((__tmp210384
                     (let ()
                       (declare (not safe))
                       (##structure-type _self204919_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self204919_
                 _dispatch204922_
                 '3
                 __tmp210384
                 '#f))
              (let ((__tmp210385
                     (let ()
                       (declare (not safe))
                       (##structure-type _self204919_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self204919_
                 _inline204923_
                 '4
                 __tmp210385
                 '#f))
              (let ((__tmp210386
                     (let ()
                       (declare (not safe))
                       (##structure-type _self204919_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self204919_
                 _typedecl204924_
                 '5
                 __tmp210386
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self204919_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self204919_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self204929_ _id204930_ _arity204931_ _dispatch204932_)
        (let* ((_inline204934_ '#f) (_typedecl204936_ '#f))
          (if (let ((__tmp210393
                     (let ()
                       (declare (not safe))
                       (##structure-length _self204929_))))
                (declare (not safe))
                (##fx< '5 __tmp210393))
              (begin
                (let ((__tmp210388
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204929_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204929_
                   _id204930_
                   '1
                   __tmp210388
                   '#f))
                (let ((__tmp210389
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204929_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204929_
                   _arity204931_
                   '2
                   __tmp210389
                   '#f))
                (let ((__tmp210390
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204929_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204929_
                   _dispatch204932_
                   '3
                   __tmp210390
                   '#f))
                (let ((__tmp210391
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204929_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204929_
                   _inline204934_
                   '4
                   __tmp210391
                   '#f))
                (let ((__tmp210392
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204929_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204929_
                   _typedecl204936_
                   '5
                   __tmp210392
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self204929_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self204929_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self204938_
               _id204939_
               _arity204940_
               _dispatch204941_
               _inline204942_)
        (let ((_typedecl204944_ '#f))
          (if (let ((__tmp210399
                     (let ()
                       (declare (not safe))
                       (##structure-length _self204938_))))
                (declare (not safe))
                (##fx< '5 __tmp210399))
              (begin
                (let ((__tmp210394
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204938_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204938_
                   _id204939_
                   '1
                   __tmp210394
                   '#f))
                (let ((__tmp210395
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204938_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204938_
                   _arity204940_
                   '2
                   __tmp210395
                   '#f))
                (let ((__tmp210396
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204938_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204938_
                   _dispatch204941_
                   '3
                   __tmp210396
                   '#f))
                (let ((__tmp210397
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204938_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204938_
                   _inline204942_
                   '4
                   __tmp210397
                   '#f))
                (let ((__tmp210398
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204938_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204938_
                   _typedecl204944_
                   '5
                   __tmp210398
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self204938_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self204938_)))))))
    (define gxc#!lambda:::init!
      (lambda _g210401_
        (let ((_g210400_ (let () (declare (not safe)) (##length _g210401_))))
          (cond ((let () (declare (not safe)) (##fx= _g210400_ 4))
                 (apply (lambda (_self204929_
                                 _id204930_
                                 _arity204931_
                                 _dispatch204932_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self204929_
                             _id204930_
                             _arity204931_
                             _dispatch204932_)))
                        _g210401_))
                ((let () (declare (not safe)) (##fx= _g210400_ 5))
                 (apply (lambda (_self204938_
                                 _id204939_
                                 _arity204940_
                                 _dispatch204941_
                                 _inline204942_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self204938_
                             _id204939_
                             _arity204940_
                             _dispatch204941_
                             _inline204942_)))
                        _g210401_))
                ((let () (declare (not safe)) (##fx= _g210400_ 6))
                 (apply (lambda (_self204946_
                                 _id204947_
                                 _arity204948_
                                 _dispatch204949_
                                 _inline204950_
                                 _typedecl204951_)
                          (if (let ((__tmp210407
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self204946_))))
                                (declare (not safe))
                                (##fx< '5 __tmp210407))
                              (begin
                                (let ((__tmp210402
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self204946_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self204946_
                                   _id204947_
                                   '1
                                   __tmp210402
                                   '#f))
                                (let ((__tmp210403
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self204946_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self204946_
                                   _arity204948_
                                   '2
                                   __tmp210403
                                   '#f))
                                (let ((__tmp210404
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self204946_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self204946_
                                   _dispatch204949_
                                   '3
                                   __tmp210404
                                   '#f))
                                (let ((__tmp210405
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self204946_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self204946_
                                   _inline204950_
                                   '4
                                   __tmp210405
                                   '#f))
                                (let ((__tmp210406
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self204946_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self204946_
                                   _typedecl204951_
                                   '5
                                   __tmp210406
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self204946_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self204946_)))))
                        _g210401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g210401_))))))
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
      (lambda (_self204671_ . _args204672_)
        (apply struct-instance-init! _self204671_ _args204672_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type204546_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type204546_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type204546_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass204539_)
        (let ((_$e204541_
               (##structure-ref _klass204539_ '9 gxc#!class::t '#f)))
          (if _$e204541_
              _$e204541_
              (let ((_tab204544_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass204539_
                 _tab204544_
                 '9
                 gxc#!class::t
                 '#f)
                _tab204544_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass204530_ _method204531_)
        (let ((_tab204532204534_
               (##structure-ref _klass204530_ '9 gxc#!class::t '#f)))
          (if _tab204532204534_
              (let ((_tab204537_ _tab204532204534_))
                (declare (not safe))
                (table-ref _tab204537_ _method204531_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type204527_ _method204528_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type204527_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type204527_ _method204528_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym204511_ _type204512_ _local?204513_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type204512_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym204511_
                   _type204512_))
        (let ((__tmp210408
               (let () (declare (not safe)) (struct->list _type204512_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym204511_ '" " __tmp210408))
        (let ((__tmp210409
               (if _local?204513_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp210409 _sym204511_ _type204512_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym204518_ _type204519_)
        (let ((_local?204521_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym204518_
           _type204519_
           _local?204521_))))
    (define gxc#optimizer-declare-type!
      (lambda _g210411_
        (let ((_g210410_ (let () (declare (not safe)) (##length _g210411_))))
          (cond ((let () (declare (not safe)) (##fx= _g210410_ 2))
                 (apply (lambda (_sym204518_ _type204519_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym204518_
                             _type204519_)))
                        _g210411_))
                ((let () (declare (not safe)) (##fx= _g210410_ 3))
                 (apply (lambda (_sym204523_ _type204524_ _local?204525_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym204523_
                             _type204524_
                             _local?204525_)))
                        _g210411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g210411_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym204497_ _local?204498_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym204497_))
        (let ((__tmp210412
               (if _local?204498_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp210412 _sym204497_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym204503_)
        (let ((_local?204505_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym204503_ _local?204505_))))
    (define gxc#optimizer-clear-type!
      (lambda _g210414_
        (let ((_g210413_ (let () (declare (not safe)) (##length _g210414_))))
          (cond ((let () (declare (not safe)) (##fx= _g210413_ 1))
                 (apply (lambda (_sym204503_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym204503_)))
                        _g210414_))
                ((let () (declare (not safe)) (##fx= _g210413_ 2))
                 (apply (lambda (_sym204507_ _local?204508_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym204507_
                             _local?204508_)))
                        _g210414_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g210414_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t204470_ _method204471_ _sym204472_ _rebind?204473_)
        (let* ((_type204475_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t204470_)))
               (_$e204477_
                (let () (declare (not safe)) (gxc#!type-vtab _type204475_))))
          (if _$e204477_
              ((lambda (_vtab204480_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab204480_ _method204471_))
                     (if _rebind?204473_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t204470_
                              '" "
                              _method204471_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab204480_
                              _method204471_
                              _sym204472_)))
                         (let ((__tmp210419
                                (let ((__tmp210420
                                       (let ((__tmp210421
                                              (let ((__tmp210422
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym204472_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method204471_
                                                      __tmp210422))))
                                         (declare (not safe))
                                         (cons _type-t204470_ __tmp210421))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp210420))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp210419
                            _method204471_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t204470_
                          '" "
                          _method204471_
                          '" => "
                          _sym204472_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab204480_
                          _method204471_
                          _sym204472_)))))
               _$e204477_)
              (if (let () (declare (not safe)) (not _type204475_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t204470_))
                  (let ((__tmp210415
                         (let ((__tmp210416
                                (let ((__tmp210417
                                       (let ((__tmp210418
                                              (let ()
                                                (declare (not safe))
                                                (cons _method204471_ '()))))
                                         (declare (not safe))
                                         (cons _sym204472_ __tmp210418))))
                                  (declare (not safe))
                                  (cons _type-t204470_ __tmp210417))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp210416))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp210415
                     _type204475_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t204485_ _method204486_ _sym204487_)
        (let ((_rebind?204489_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t204485_
           _method204486_
           _sym204487_
           _rebind?204489_))))
    (define gxc#optimizer-declare-method!
      (lambda _g210424_
        (let ((_g210423_ (let () (declare (not safe)) (##length _g210424_))))
          (cond ((let () (declare (not safe)) (##fx= _g210423_ 3))
                 (apply (lambda (_type-t204485_ _method204486_ _sym204487_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t204485_
                             _method204486_
                             _sym204487_)))
                        _g210424_))
                ((let () (declare (not safe)) (##fx= _g210423_ 4))
                 (apply (lambda (_type-t204491_
                                 _method204492_
                                 _sym204493_
                                 _rebind?204494_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t204491_
                             _method204492_
                             _sym204493_
                             _rebind?204494_)))
                        _g210424_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g210424_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym204458_)
        (let ((_$e204466_
               (let ((_ht204459204461_ (gxc#current-compile-local-type)))
                 (if _ht204459204461_
                     (let ((_ht204464_ _ht204459204461_))
                       (declare (not safe))
                       (table-ref _ht204464_ _sym204458_ '#f))
                     '#f))))
          (if _$e204466_
              _$e204466_
              (let ((__tmp210425
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp210425 _sym204458_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym204450_)
        (let ((_type204451204453_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym204450_))))
          (if _type204451204453_
              (let ((_type204456_ _type204451204453_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type204456_ 'gxc#!alias::t))
                    (let ((__tmp210426
                           (##structure-ref _type204456_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp210426))
                    _type204456_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where204442_ _klass-id204443_)
        (let ((_$e204445_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id204443_))))
          (if _$e204445_
              ((lambda (_klass204448_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass204448_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where204442_
                        _klass-id204443_
                        _klass204448_)))
                 _klass204448_)
               _$e204445_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where204442_
                 _klass-id204443_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t204439_ _method204440_)
        (let ((__tmp210427
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t204439_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp210427 _method204440_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym204437_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym204437_))
        (let ((__tmp210428
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp210428 _sym204437_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym204435_)
        (let ((__tmp210429
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp210429 _sym204435_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx204433_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx204433_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx204433_))
            (let () (declare (not safe)) (gx#stx-e _stx204433_)))))))
