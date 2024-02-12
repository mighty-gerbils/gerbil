(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707773929)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp220251 (list))
            (__tmp220249
             (let ((__tmp220250
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220250 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp220251
         '(type ssxi methods)
         __tmp220249
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args215624_
        (apply make-instance gxc#optimizer-info::t _$args215624_)))
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
      (lambda (_self215622_)
        (if (let ((__tmp220258
                   (let ()
                     (declare (not safe))
                     (##structure-length _self215622_))))
              (declare (not safe))
              (##fx< '3 __tmp220258))
            (begin
              (let ((__tmp220253
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220252
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215622_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215622_
                 __tmp220253
                 '1
                 __tmp220252
                 '#f))
              (let ((__tmp220255
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220254
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215622_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215622_
                 __tmp220255
                 '2
                 __tmp220254
                 '#f))
              (let ((__tmp220257
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220256
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215622_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215622_
                 __tmp220257
                 '3
                 __tmp220256
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self215622_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self215622_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp220261 (list))
            (__tmp220259
             (let ((__tmp220260
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220260 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp220261
         '(id)
         __tmp220259
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args215497_ (apply make-instance gxc#!type::t _$args215497_)))
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
      (let ((__tmp220264 (list gxc#!type::t))
            (__tmp220262
             (let ((__tmp220263
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220263 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp220264
         '()
         __tmp220262
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args215494_ (apply make-instance gxc#!alias::t _$args215494_)))
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
      (let ((__tmp220267 (list gxc#!type::t))
            (__tmp220265
             (let ((__tmp220266
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220266 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp220267
         '()
         __tmp220265
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args215491_
        (apply make-instance gxc#!procedure::t _$args215491_)))
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
      (let ((__tmp220270 (list gxc#!type::t))
            (__tmp220268
             (let ((__tmp220269
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220269 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp220270
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 methods)
         __tmp220268
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args215488_ (apply make-instance gxc#!class::t _$args215488_)))
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
      (let ((__tmp220273 (list gxc#!procedure::t))
            (__tmp220271
             (let ((__tmp220272
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220272 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp220273
         '()
         __tmp220271
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args215485_
        (apply make-instance gxc#!predicate::t _$args215485_)))
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
      (let ((__tmp220276 (list gxc#!procedure::t))
            (__tmp220274
             (let ((__tmp220275
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220275 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp220276
         '()
         __tmp220274
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args215482_
        (apply make-instance gxc#!constructor::t _$args215482_)))
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
      (let ((__tmp220279 (list gxc#!procedure::t))
            (__tmp220277
             (let ((__tmp220278
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220278 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp220279
         '(slot checked?)
         __tmp220277
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args215479_
        (apply make-instance gxc#!accessor::t _$args215479_)))
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
      (let ((__tmp220282 (list gxc#!procedure::t))
            (__tmp220280
             (let ((__tmp220281
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220281 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp220282
         '(slot checked?)
         __tmp220280
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args215476_
        (apply make-instance gxc#!mutator::t _$args215476_)))
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
      (let ((__tmp220285 (list gxc#!procedure::t))
            (__tmp220283
             (let ((__tmp220284
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220284 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp220285
         '(arity dispatch inline inline-typedecl)
         __tmp220283
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args215473_
        (apply make-instance gxc#!lambda::t _$args215473_)))
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
      (let ((__tmp220288 (list gxc#!procedure::t))
            (__tmp220286
             (let ((__tmp220287
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220287 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp220288
         '(clauses)
         __tmp220286
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args215470_
        (apply make-instance gxc#!case-lambda::t _$args215470_)))
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
      (let ((__tmp220291 (list gxc#!procedure::t))
            (__tmp220289
             (let ((__tmp220290
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220290 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp220291
         '(table dispatch)
         __tmp220289
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args215467_
        (apply make-instance gxc#!kw-lambda::t _$args215467_)))
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
      (let ((__tmp220294 (list gxc#!procedure::t))
            (__tmp220292
             (let ((__tmp220293
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220293 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp220294
         '(keys main)
         __tmp220292
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args215464_
        (apply make-instance gxc#!kw-lambda-primary::t _$args215464_)))
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
      (let ((__tmp220295 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp220295
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args215461_
        (apply make-instance gxc#!primitive::t _$args215461_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp220296 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp220296
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args215458_
        (apply make-instance gxc#!primitive-lambda::t _$args215458_)))
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
      (let ((__tmp220297 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp220297
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args215455_
        (apply make-instance gxc#!primitive-case-lambda::t _$args215455_)))
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
      (lambda (_self215339_
               _id215340_
               _super215341_
               _slots215342_
               _ctor-method215343_
               _struct?215344_
               _final?215345_)
        (let _lp215347_ ((_rest215349_ _super215341_))
          (let* ((_rest215350215358_ _rest215349_)
                 (_else215352215366_ (lambda () '#!void))
                 (_K215354215372_
                  (lambda (_rest215369_ _super-id215370_)
                    (if (##structure-ref
                         (let ((__tmp220300
                                (let ((__tmp220301
                                       (let ()
                                         (declare (not safe))
                                         (cons _id215340_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp220301))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp220300
                            _super-id215370_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp220298
                               (let ((__tmp220299
                                      (let ()
                                        (declare (not safe))
                                        (cons _id215340_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp220299))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp220298
                           _super-id215370_))
                        '#!void)
                    (let () (declare (not safe)) (_lp215347_ _rest215369_)))))
            (if (let () (declare (not safe)) (##pair? _rest215350215358_))
                (let ((_hd215355215375_
                       (let ()
                         (declare (not safe))
                         (##car _rest215350215358_)))
                      (_tl215356215377_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest215350215358_))))
                  (let* ((_super-id215380_ _hd215355215375_)
                         (_rest215382_ _tl215356215377_))
                    (declare (not safe))
                    (_K215354215372_ _rest215382_ _super-id215380_)))
                '#!void)))
        (let* ((_ctor-method215432_
                (let ((_$e215384_ _ctor-method215343_))
                  (if _$e215384_
                      _$e215384_
                      (let _lp215387_ ((_rest215389_ _super215341_)
                                       (_method215390_ '#f))
                        (let* ((_rest215391215399_ _rest215389_)
                               (_else215393215407_ (lambda () _method215390_))
                               (_K215395215420_
                                (lambda (_rest215410_ _super-id215411_)
                                  (let* ((_klass215413_
                                          (let ((__tmp220302
                                                 (let ((__tmp220303
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id215340_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp220303))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp220302
                                             _super-id215411_)))
                                         (_$e215415_
                                          (##structure-ref
                                           _klass215413_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e215415_
                                        ((lambda (_ctor-method215418_)
                                           (if _method215390_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method215418_
                                                          _method215390_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp215387_
                                                      _rest215410_
                                                      _ctor-method215418_))
                                                   (let ((__tmp220304
                                                          (let ((__tmp220305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id215340_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp220305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp220304
                                                      _method215390_
                                                      _ctor-method215418_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp215387_
                                                  _rest215410_
                                                  _ctor-method215418_))))
                                         _$e215415_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp215387_
                                           _rest215410_
                                           _method215390_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest215391215399_))
                              (let ((_hd215396215423_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest215391215399_)))
                                    (_tl215397215425_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest215391215399_))))
                                (let* ((_super-id215428_ _hd215396215423_)
                                       (_rest215430_ _tl215397215425_))
                                  (declare (not safe))
                                  (_K215395215420_
                                   _rest215430_
                                   _super-id215428_)))
                              (let ()
                                (declare (not safe))
                                (_else215393215407_))))))))
               (_g220306_
                (let ((__tmp220311
                       (lambda (_klass-id215434_)
                         (let ((__tmp220312
                                (##structure-ref
                                 (let ((__tmp220313
                                        (let ((__tmp220314
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id215340_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp220314))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp220313
                                    _klass-id215434_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id215434_ __tmp220312))))
                      (__tmp220308
                       (lambda (_klass-id215436_)
                         (##structure-ref
                          (let ((__tmp220309
                                 (let ((__tmp220310
                                        (let ()
                                          (declare (not safe))
                                          (cons _id215340_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp220310))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp220309
                             _klass-id215436_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp220311
                   __tmp220308
                   eq?
                   identity
                   '()
                   _super215341_))))
          (begin
            (let ((_g220307_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g220306_)
                         (##vector-length _g220306_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g220307_ 2)))
                  (error "Context expects 2 values" _g220307_)))
            (let ((_precedence-list215438_
                   (let () (declare (not safe)) (##vector-ref _g220306_ 0)))
                  (_base-struct215439_
                   (let () (declare (not safe)) (##vector-ref _g220306_ 1))))
              (let ((_fields215441_
                     (let ((__tmp220315
                            (let ((__tmp220316
                                   (let ()
                                     (declare (not safe))
                                     (cons _id215340_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp220316))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp220315
                        _base-struct215439_
                        _precedence-list215438_
                        _slots215342_))))
                (##structure-set! _self215339_ _id215340_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self215339_
                 _super215341_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215339_
                 _precedence-list215438_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215339_
                 _slots215342_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215339_
                 _fields215441_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215339_
                 _ctor-method215432_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215339_
                 _struct?215344_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215339_
                 _final?215345_
                 '8
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self215444_
               _id215445_
               _super215446_
               _precedence-list215447_
               _slots215448_
               _fields215449_
               _constructor215450_
               _struct?215451_
               _final?215452_
               _methods215453_)
        (##structure-set! _self215444_ _id215445_ '1 gxc#!type::t '#f)
        (##structure-set! _self215444_ _super215446_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self215444_
         _precedence-list215447_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self215444_ _slots215448_ '4 gxc#!class::t '#f)
        (##structure-set! _self215444_ _fields215449_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self215444_
         _constructor215450_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self215444_ _struct?215451_ '7 gxc#!class::t '#f)
        (##structure-set! _self215444_ _final?215452_ '8 gxc#!class::t '#f)
        (if _methods215453_
            (##structure-set!
             _self215444_
             (let ()
               (declare (not safe))
               (list->table _methods215453_ 'test: eq?))
             '9
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g220318_
        (let ((_g220317_ (let () (declare (not safe)) (##length _g220318_))))
          (cond ((let () (declare (not safe)) (##fx= _g220317_ 7))
                 (apply (lambda (_self215339_
                                 _id215340_
                                 _super215341_
                                 _slots215342_
                                 _ctor-method215343_
                                 _struct?215344_
                                 _final?215345_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self215339_
                             _id215340_
                             _super215341_
                             _slots215342_
                             _ctor-method215343_
                             _struct?215344_
                             _final?215345_)))
                        _g220318_))
                ((let () (declare (not safe)) (##fx= _g220317_ 10))
                 (apply (lambda (_self215444_
                                 _id215445_
                                 _super215446_
                                 _precedence-list215447_
                                 _slots215448_
                                 _fields215449_
                                 _constructor215450_
                                 _struct?215451_
                                 _final?215452_
                                 _methods215453_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self215444_
                             _id215445_
                             _super215446_
                             _precedence-list215447_
                             _slots215448_
                             _fields215449_
                             _constructor215450_
                             _struct?215451_
                             _final?215452_
                             _methods215453_)))
                        _g220318_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g220318_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t220194)
        (let ((__struct?220195
               (let ((__tmp220204
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220194 'struct?))))
                 (if __tmp220204
                     __tmp220204
                     (error '"Unknown slot" 'struct?))))
              (__fields220196
               (let ((__tmp220205
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220194 'fields))))
                 (if __tmp220205 __tmp220205 (error '"Unknown slot" 'fields))))
              (__slots220197
               (let ((__tmp220206
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220194 'slots))))
                 (if __tmp220206 __tmp220206 (error '"Unknown slot" 'slots))))
              (__methods220198
               (let ((__tmp220207
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220194 'methods))))
                 (if __tmp220207
                     __tmp220207
                     (error '"Unknown slot" 'methods))))
              (__precedence-list220199
               (let ((__tmp220208
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220194 'precedence-list))))
                 (if __tmp220208
                     __tmp220208
                     (error '"Unknown slot" 'precedence-list))))
              (__id220200
               (let ((__tmp220209
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220194 'id))))
                 (if __tmp220209 __tmp220209 (error '"Unknown slot" 'id))))
              (__super220201
               (let ((__tmp220210
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220194 'super))))
                 (if __tmp220210 __tmp220210 (error '"Unknown slot" 'super))))
              (__constructor220202
               (let ((__tmp220211
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220194 'constructor))))
                 (if __tmp220211
                     __tmp220211
                     (error '"Unknown slot" 'constructor))))
              (__final?220203
               (let ((__tmp220212
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220194 'final?))))
                 (if __tmp220212
                     __tmp220212
                     (error '"Unknown slot" 'final?)))))
          (lambda _g220320_
            (let ((_g220319_
                   (let () (declare (not safe)) (##length _g220320_))))
              (cond ((let () (declare (not safe)) (##fx= _g220319_ 7))
                     (apply (lambda (_self215339_
                                     _id215340_
                                     _super215341_
                                     _slots215342_
                                     _ctor-method215343_
                                     _struct?215344_
                                     _final?215345_)
                              (let _lp215347_ ((_rest215349_ _super215341_))
                                (let* ((_rest215350215358_ _rest215349_)
                                       (_else215352215366_ (lambda () '#!void))
                                       (_K215354215372_
                                        (lambda (_rest215369_ _super-id215370_)
                                          (if (##structure-ref
                                               (let ((__tmp220323
                                                      (let ((__tmp220324
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id215340_ '()))))
                (declare (not safe))
                (cons '!class __tmp220324))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp220323
                                                  _super-id215370_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp220321
                                                     (let ((__tmp220322
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id215340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp220322))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp220321
                                                 _super-id215370_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp215347_ _rest215369_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest215350215358_))
                                      (let ((_hd215355215375_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest215350215358_)))
                                            (_tl215356215377_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest215350215358_))))
                                        (let* ((_super-id215380_
                                                _hd215355215375_)
                                               (_rest215382_ _tl215356215377_))
                                          (declare (not safe))
                                          (_K215354215372_
                                           _rest215382_
                                           _super-id215380_)))
                                      '#!void)))
                              (let* ((_ctor-method215432_
                                      (let ((_$e215384_ _ctor-method215343_))
                                        (if _$e215384_
                                            _$e215384_
                                            (let _lp215387_ ((_rest215389_
                                                              _super215341_)
                                                             (_method215390_
                                                              '#f))
                                              (let* ((_rest215391215399_
                                                      _rest215389_)
                                                     (_else215393215407_
                                                      (lambda ()
                                                        _method215390_))
                                                     (_K215395215420_
                                                      (lambda (_rest215410_
                                                               _super-id215411_)
                                                        (let* ((_klass215413_
                                                                (let ((__tmp220325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp220326
                                      (let ()
                                        (declare (not safe))
                                        (cons _id215340_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp220326))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp220325
                           _super-id215411_)))
                       (_$e215415_
                        (##structure-ref _klass215413_ '6 gxc#!class::t '#f)))
                  (if _$e215415_
                      ((lambda (_ctor-method215418_)
                         (if _method215390_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method215418_ _method215390_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp215387_
                                    _rest215410_
                                    _ctor-method215418_))
                                 (let ((__tmp220327
                                        (let ((__tmp220328
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id215340_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp220328))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp220327
                                    _method215390_
                                    _ctor-method215418_)))
                             (let ()
                               (declare (not safe))
                               (_lp215387_ _rest215410_ _ctor-method215418_))))
                       _$e215415_)
                      (let ()
                        (declare (not safe))
                        (_lp215387_ _rest215410_ _method215390_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest215391215399_))
                                                    (let ((_hd215396215423_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest215391215399_)))
                                                          (_tl215397215425_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest215391215399_))))
                                                      (let* ((_super-id215428_
                                                              _hd215396215423_)
                                                             (_rest215430_
                                                              _tl215397215425_))
                                                        (declare (not safe))
                                                        (_K215395215420_
                                                         _rest215430_
                                                         _super-id215428_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else215393215407_))))))))
                                     (_g220329_
                                      (let ((__tmp220334
                                             (lambda (_klass-id215434_)
                                               (let ((__tmp220335
                                                      (##structure-ref
                                                       (let ((__tmp220336
                                                              (let ((__tmp220337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id215340_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp220337))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp220336 _klass-id215434_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id215434_
                                                       __tmp220335))))
                                            (__tmp220331
                                             (lambda (_klass-id215436_)
                                               (##structure-ref
                                                (let ((__tmp220332
                                                       (let ((__tmp220333
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id215340_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp220333))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp220332
                                                   _klass-id215436_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp220334
                                         __tmp220331
                                         eq?
                                         identity
                                         '()
                                         _super215341_))))
                                (begin
                                  (let ((_g220330_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g220329_)
                                               (##vector-length _g220329_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g220330_ 2)))
                                        (error "Context expects 2 values"
                                               _g220330_)))
                                  (let ((_precedence-list215438_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g220329_ 0)))
                                        (_base-struct215439_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g220329_ 1))))
                                    (let ((_fields215441_
                                           (let ((__tmp220338
                                                  (let ((__tmp220339
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id215340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp220339))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp220338
                                              _base-struct215439_
                                              _precedence-list215438_
                                              _slots215342_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215339_
                                         _id215340_
                                         __id220200
                                         __t220194
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215339_
                                         _super215341_
                                         __super220201
                                         __t220194
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215339_
                                         _precedence-list215438_
                                         __precedence-list220199
                                         __t220194
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215339_
                                         _slots215342_
                                         __slots220197
                                         __t220194
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215339_
                                         _fields215441_
                                         __fields220196
                                         __t220194
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215339_
                                         _ctor-method215432_
                                         __constructor220202
                                         __t220194
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215339_
                                         _struct?215344_
                                         __struct?220195
                                         __t220194
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215339_
                                         _final?215345_
                                         __final?220203
                                         __t220194
                                         '#f)))))))
                            _g220320_))
                    ((let () (declare (not safe)) (##fx= _g220319_ 10))
                     (apply (lambda (_self215444_
                                     _id215445_
                                     _super215446_
                                     _precedence-list215447_
                                     _slots215448_
                                     _fields215449_
                                     _constructor215450_
                                     _struct?215451_
                                     _final?215452_
                                     _methods215453_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215444_
                                 _id215445_
                                 __id220200
                                 __t220194
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215444_
                                 _super215446_
                                 __super220201
                                 __t220194
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215444_
                                 _precedence-list215447_
                                 __precedence-list220199
                                 __t220194
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215444_
                                 _slots215448_
                                 __slots220197
                                 __t220194
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215444_
                                 _fields215449_
                                 __fields220196
                                 __t220194
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215444_
                                 _constructor215450_
                                 __constructor220202
                                 __t220194
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215444_
                                 _struct?215451_
                                 __struct?220195
                                 __t220194
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215444_
                                 _final?215452_
                                 __final?220203
                                 __t220194
                                 '#f))
                              (if _methods215453_
                                  (let ((__tmp220340
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods215453_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self215444_
                                     __tmp220340
                                     __methods220198
                                     __t220194
                                     '#f))
                                  '#!void))
                            _g220320_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g220320_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where215191_
               _base-struct215192_
               _precedence-list215193_
               _direct-slots215194_)
        (let* ((_base-fields215196_
                (if _base-struct215192_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where215191_
                        _base-struct215192_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields215198_ (reverse _base-fields215196_))
               (_seen-slots215206_
                (let ((_tab215200_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g215201215203_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab215200_ _g215201215203_ '#t)))
                   _base-fields215196_)
                  _tab215200_))
               (_process-slot215210_
                (lambda (_slot215208_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots215206_ _slot215208_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots215206_ _slot215208_ '#t))
                        (set! _r-fields215198_
                              (let ()
                                (declare (not safe))
                                (cons _slot215208_ _r-fields215198_))))))))
          (for-each
           (lambda (_mixin215213_)
             (let ((_klass215215_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where215191_
                       _mixin215213_))))
               (if (##structure-ref _klass215215_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot215210_
                    (##structure-ref _klass215215_ '5 gxc#!class::t '#f)))))
           _precedence-list215193_)
          (for-each _process-slot215210_ _direct-slots215194_)
          (reverse _r-fields215198_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass215150_ _slot215151_)
        (let _lp215153_ ((_rest215155_
                          (##structure-ref _klass215150_ '5 gxc#!class::t '#f))
                         (_offset215156_ '1))
          (let* ((_rest215157215165_ _rest215155_)
                 (_else215159215173_
                  (lambda ()
                    (let ((__tmp220342
                           (##structure-ref _klass215150_ '1 gxc#!type::t '#f))
                          (__tmp220341
                           (##structure-ref
                            _klass215150_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp220342
                       __tmp220341
                       _slot215151_))))
                 (_K215161215179_
                  (lambda (_rest215176_ _s215177_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s215177_ _slot215151_))
                        _offset215156_
                        (let ((__tmp220343
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset215156_ '1))))
                          (declare (not safe))
                          (_lp215153_ _rest215176_ __tmp220343))))))
            (if (let () (declare (not safe)) (##pair? _rest215157215165_))
                (let ((_hd215162215182_
                       (let ()
                         (declare (not safe))
                         (##car _rest215157215165_)))
                      (_tl215163215184_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest215157215165_))))
                  (let* ((_s215187_ _hd215162215182_)
                         (_rest215189_ _tl215163215184_))
                    (declare (not safe))
                    (_K215161215179_ _rest215189_ _s215187_)))
                (let () (declare (not safe)) (_else215159215173_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass215108_ _slot215109_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass215108_ _slot215109_))
            _klass215108_
            (let _lp215111_ ((_rest215113_
                              (##structure-ref
                               _klass215108_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest215114215122_ _rest215113_)
                     (_else215116215130_ (lambda () '#f))
                     (_K215118215138_
                      (lambda (_rest215133_ _super215134_)
                        (let ((_super-class215136_
                               (let ((__tmp220344
                                      (let ((__tmp220345
                                             (let ((__tmp220347
                                                    (##structure-ref
                                                     _klass215108_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp220346
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot215109_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp220347
                                                     __tmp220346))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp220345))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp220344
                                  _super215134_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class215136_
                                 _slot215109_))
                              _super-class215136_
                              (let ()
                                (declare (not safe))
                                (_lp215111_ _rest215133_)))))))
                (if (let () (declare (not safe)) (##pair? _rest215114215122_))
                    (let ((_hd215119215141_
                           (let ()
                             (declare (not safe))
                             (##car _rest215114215122_)))
                          (_tl215120215143_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest215114215122_))))
                      (let* ((_super215146_ _hd215119215141_)
                             (_rest215148_ _tl215120215143_))
                        (declare (not safe))
                        (_K215118215138_ _rest215148_ _super215146_)))
                    (let () (declare (not safe)) (_else215116215130_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass215105_ _slot215106_)
        (if (##structure-ref _klass215105_ '7 gxc#!class::t '#f)
            (memq _slot215106_
                  (##structure-ref _klass215105_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self215102_ _id215103_)
        (##structure-set! _self215102_ _id215103_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t220213)
        (let ((__id220214
               (let ((__tmp220215
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220213 'id))))
                 (if __tmp220215 __tmp220215 (error '"Unknown slot" 'id)))))
          (lambda (_self215102_ _id215103_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215102_
               _id215103_
               __id220214
               __t220213
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
      (lambda (_self214977_ _id214978_)
        (##structure-set! _self214977_ _id214978_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t220216)
        (let ((__id220217
               (let ((__tmp220218
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220216 'id))))
                 (if __tmp220218 __tmp220218 (error '"Unknown slot" 'id)))))
          (lambda (_self214977_ _id214978_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214977_
               _id214978_
               __id220217
               __t220216
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
      (lambda (_self214850_ _id214851_ _slot214852_ _checked?214853_)
        (##structure-set! _self214850_ _id214851_ '1 gxc#!type::t '#f)
        (##structure-set! _self214850_ _slot214852_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self214850_
         _checked?214853_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t220219)
        (let ((__checked?220220
               (let ((__tmp220223
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220219 'checked?))))
                 (if __tmp220223
                     __tmp220223
                     (error '"Unknown slot" 'checked?))))
              (__id220221
               (let ((__tmp220224
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220219 'id))))
                 (if __tmp220224 __tmp220224 (error '"Unknown slot" 'id))))
              (__slot220222
               (let ((__tmp220225
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220219 'slot))))
                 (if __tmp220225 __tmp220225 (error '"Unknown slot" 'slot)))))
          (lambda (_self214850_ _id214851_ _slot214852_ _checked?214853_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214850_
               _id214851_
               __id220221
               __t220219
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214850_
               _slot214852_
               __slot220222
               __t220219
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214850_
               _checked?214853_
               __checked?220220
               __t220219
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
      (lambda (_self214723_ _id214724_ _slot214725_ _checked?214726_)
        (##structure-set! _self214723_ _id214724_ '1 gxc#!type::t '#f)
        (##structure-set! _self214723_ _slot214725_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self214723_
         _checked?214726_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t220226)
        (let ((__checked?220227
               (let ((__tmp220230
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220226 'checked?))))
                 (if __tmp220230
                     __tmp220230
                     (error '"Unknown slot" 'checked?))))
              (__id220228
               (let ((__tmp220231
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220226 'id))))
                 (if __tmp220231 __tmp220231 (error '"Unknown slot" 'id))))
              (__slot220229
               (let ((__tmp220232
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220226 'slot))))
                 (if __tmp220232 __tmp220232 (error '"Unknown slot" 'slot)))))
          (lambda (_self214723_ _id214724_ _slot214725_ _checked?214726_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214723_
               _id214724_
               __id220228
               __t220226
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214723_
               _slot214725_
               __slot220229
               __t220226
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214723_
               _checked?214726_
               __checked?220227
               __t220226
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
      (lambda (_self214567_
               _id214568_
               _arity214569_
               _dispatch214570_
               _inline214571_
               _typedecl214572_)
        (if (let ((__tmp220353
                   (let ()
                     (declare (not safe))
                     (##structure-length _self214567_))))
              (declare (not safe))
              (##fx< '5 __tmp220353))
            (begin
              (let ((__tmp220348
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214567_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214567_
                 _id214568_
                 '1
                 __tmp220348
                 '#f))
              (let ((__tmp220349
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214567_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214567_
                 _arity214569_
                 '2
                 __tmp220349
                 '#f))
              (let ((__tmp220350
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214567_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214567_
                 _dispatch214570_
                 '3
                 __tmp220350
                 '#f))
              (let ((__tmp220351
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214567_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214567_
                 _inline214571_
                 '4
                 __tmp220351
                 '#f))
              (let ((__tmp220352
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214567_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214567_
                 _typedecl214572_
                 '5
                 __tmp220352
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self214567_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self214567_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self214577_ _id214578_ _arity214579_ _dispatch214580_)
        (let* ((_inline214582_ '#f) (_typedecl214584_ '#f))
          (if (let ((__tmp220359
                     (let ()
                       (declare (not safe))
                       (##structure-length _self214577_))))
                (declare (not safe))
                (##fx< '5 __tmp220359))
              (begin
                (let ((__tmp220354
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214577_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214577_
                   _id214578_
                   '1
                   __tmp220354
                   '#f))
                (let ((__tmp220355
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214577_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214577_
                   _arity214579_
                   '2
                   __tmp220355
                   '#f))
                (let ((__tmp220356
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214577_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214577_
                   _dispatch214580_
                   '3
                   __tmp220356
                   '#f))
                (let ((__tmp220357
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214577_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214577_
                   _inline214582_
                   '4
                   __tmp220357
                   '#f))
                (let ((__tmp220358
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214577_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214577_
                   _typedecl214584_
                   '5
                   __tmp220358
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self214577_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self214577_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self214586_
               _id214587_
               _arity214588_
               _dispatch214589_
               _inline214590_)
        (let ((_typedecl214592_ '#f))
          (if (let ((__tmp220365
                     (let ()
                       (declare (not safe))
                       (##structure-length _self214586_))))
                (declare (not safe))
                (##fx< '5 __tmp220365))
              (begin
                (let ((__tmp220360
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214586_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214586_
                   _id214587_
                   '1
                   __tmp220360
                   '#f))
                (let ((__tmp220361
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214586_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214586_
                   _arity214588_
                   '2
                   __tmp220361
                   '#f))
                (let ((__tmp220362
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214586_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214586_
                   _dispatch214589_
                   '3
                   __tmp220362
                   '#f))
                (let ((__tmp220363
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214586_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214586_
                   _inline214590_
                   '4
                   __tmp220363
                   '#f))
                (let ((__tmp220364
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214586_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214586_
                   _typedecl214592_
                   '5
                   __tmp220364
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self214586_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self214586_)))))))
    (define gxc#!lambda:::init!
      (lambda _g220367_
        (let ((_g220366_ (let () (declare (not safe)) (##length _g220367_))))
          (cond ((let () (declare (not safe)) (##fx= _g220366_ 4))
                 (apply (lambda (_self214577_
                                 _id214578_
                                 _arity214579_
                                 _dispatch214580_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self214577_
                             _id214578_
                             _arity214579_
                             _dispatch214580_)))
                        _g220367_))
                ((let () (declare (not safe)) (##fx= _g220366_ 5))
                 (apply (lambda (_self214586_
                                 _id214587_
                                 _arity214588_
                                 _dispatch214589_
                                 _inline214590_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self214586_
                             _id214587_
                             _arity214588_
                             _dispatch214589_
                             _inline214590_)))
                        _g220367_))
                ((let () (declare (not safe)) (##fx= _g220366_ 6))
                 (apply (lambda (_self214594_
                                 _id214595_
                                 _arity214596_
                                 _dispatch214597_
                                 _inline214598_
                                 _typedecl214599_)
                          (if (let ((__tmp220373
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self214594_))))
                                (declare (not safe))
                                (##fx< '5 __tmp220373))
                              (begin
                                (let ((__tmp220368
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214594_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214594_
                                   _id214595_
                                   '1
                                   __tmp220368
                                   '#f))
                                (let ((__tmp220369
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214594_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214594_
                                   _arity214596_
                                   '2
                                   __tmp220369
                                   '#f))
                                (let ((__tmp220370
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214594_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214594_
                                   _dispatch214597_
                                   '3
                                   __tmp220370
                                   '#f))
                                (let ((__tmp220371
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214594_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214594_
                                   _inline214598_
                                   '4
                                   __tmp220371
                                   '#f))
                                (let ((__tmp220372
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214594_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214594_
                                   _typedecl214599_
                                   '5
                                   __tmp220372
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self214594_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self214594_)))))
                        _g220367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g220367_))))))
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
      (lambda (_self214319_ . _args214320_)
        (apply struct-instance-init! _self214319_ _args214320_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type214194_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type214194_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type214194_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass214187_)
        (let ((_$e214189_
               (##structure-ref _klass214187_ '9 gxc#!class::t '#f)))
          (if _$e214189_
              _$e214189_
              (let ((_tab214192_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass214187_
                 _tab214192_
                 '9
                 gxc#!class::t
                 '#f)
                _tab214192_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass214178_ _method214179_)
        (let ((_tab214180214182_
               (##structure-ref _klass214178_ '9 gxc#!class::t '#f)))
          (if _tab214180214182_
              (let ((_tab214185_ _tab214180214182_))
                (declare (not safe))
                (table-ref _tab214185_ _method214179_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type214175_ _method214176_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type214175_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type214175_ _method214176_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym214159_ _type214160_ _local?214161_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type214160_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym214159_
                   _type214160_))
        (let ((__tmp220374
               (let () (declare (not safe)) (struct->list _type214160_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym214159_ '" " __tmp220374))
        (let ((__tmp220375
               (if _local?214161_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp220375 _sym214159_ _type214160_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym214166_ _type214167_)
        (let ((_local?214169_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym214166_
           _type214167_
           _local?214169_))))
    (define gxc#optimizer-declare-type!
      (lambda _g220377_
        (let ((_g220376_ (let () (declare (not safe)) (##length _g220377_))))
          (cond ((let () (declare (not safe)) (##fx= _g220376_ 2))
                 (apply (lambda (_sym214166_ _type214167_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym214166_
                             _type214167_)))
                        _g220377_))
                ((let () (declare (not safe)) (##fx= _g220376_ 3))
                 (apply (lambda (_sym214171_ _type214172_ _local?214173_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym214171_
                             _type214172_
                             _local?214173_)))
                        _g220377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g220377_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym214145_ _local?214146_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym214145_))
        (let ((__tmp220378
               (if _local?214146_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp220378 _sym214145_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym214151_)
        (let ((_local?214153_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym214151_ _local?214153_))))
    (define gxc#optimizer-clear-type!
      (lambda _g220380_
        (let ((_g220379_ (let () (declare (not safe)) (##length _g220380_))))
          (cond ((let () (declare (not safe)) (##fx= _g220379_ 1))
                 (apply (lambda (_sym214151_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym214151_)))
                        _g220380_))
                ((let () (declare (not safe)) (##fx= _g220379_ 2))
                 (apply (lambda (_sym214155_ _local?214156_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym214155_
                             _local?214156_)))
                        _g220380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g220380_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t214118_ _method214119_ _sym214120_ _rebind?214121_)
        (let* ((_type214123_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t214118_)))
               (_$e214125_
                (let () (declare (not safe)) (gxc#!type-vtab _type214123_))))
          (if _$e214125_
              ((lambda (_vtab214128_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab214128_ _method214119_))
                     (if _rebind?214121_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t214118_
                              '" "
                              _method214119_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab214128_
                              _method214119_
                              _sym214120_)))
                         (let ((__tmp220385
                                (let ((__tmp220386
                                       (let ((__tmp220387
                                              (let ((__tmp220388
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym214120_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method214119_
                                                      __tmp220388))))
                                         (declare (not safe))
                                         (cons _type-t214118_ __tmp220387))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp220386))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp220385
                            _method214119_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t214118_
                          '" "
                          _method214119_
                          '" => "
                          _sym214120_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab214128_
                          _method214119_
                          _sym214120_)))))
               _$e214125_)
              (if (let () (declare (not safe)) (not _type214123_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t214118_))
                  (let ((__tmp220381
                         (let ((__tmp220382
                                (let ((__tmp220383
                                       (let ((__tmp220384
                                              (let ()
                                                (declare (not safe))
                                                (cons _method214119_ '()))))
                                         (declare (not safe))
                                         (cons _sym214120_ __tmp220384))))
                                  (declare (not safe))
                                  (cons _type-t214118_ __tmp220383))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp220382))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp220381
                     _type214123_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t214133_ _method214134_ _sym214135_)
        (let ((_rebind?214137_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t214133_
           _method214134_
           _sym214135_
           _rebind?214137_))))
    (define gxc#optimizer-declare-method!
      (lambda _g220390_
        (let ((_g220389_ (let () (declare (not safe)) (##length _g220390_))))
          (cond ((let () (declare (not safe)) (##fx= _g220389_ 3))
                 (apply (lambda (_type-t214133_ _method214134_ _sym214135_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t214133_
                             _method214134_
                             _sym214135_)))
                        _g220390_))
                ((let () (declare (not safe)) (##fx= _g220389_ 4))
                 (apply (lambda (_type-t214139_
                                 _method214140_
                                 _sym214141_
                                 _rebind?214142_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t214139_
                             _method214140_
                             _sym214141_
                             _rebind?214142_)))
                        _g220390_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g220390_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym214106_)
        (let ((_$e214114_
               (let ((_ht214107214109_ (gxc#current-compile-local-type)))
                 (if _ht214107214109_
                     (let ((_ht214112_ _ht214107214109_))
                       (declare (not safe))
                       (table-ref _ht214112_ _sym214106_ '#f))
                     '#f))))
          (if _$e214114_
              _$e214114_
              (let ((__tmp220391
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp220391 _sym214106_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym214098_)
        (let ((_type214099214101_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym214098_))))
          (if _type214099214101_
              (let ((_type214104_ _type214099214101_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type214104_ 'gxc#!alias::t))
                    (let ((__tmp220392
                           (##structure-ref _type214104_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp220392))
                    _type214104_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where214090_ _klass-id214091_)
        (let ((_$e214093_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id214091_))))
          (if _$e214093_
              ((lambda (_klass214096_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass214096_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where214090_
                        _klass-id214091_
                        _klass214096_)))
                 _klass214096_)
               _$e214093_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where214090_
                 _klass-id214091_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t214087_ _method214088_)
        (let ((__tmp220393
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t214087_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp220393 _method214088_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym214085_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym214085_))
        (let ((__tmp220394
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp220394 _sym214085_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym214083_)
        (let ((__tmp220395
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp220395 _sym214083_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx214081_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx214081_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx214081_))
            (let () (declare (not safe)) (gx#stx-e _stx214081_)))))))
