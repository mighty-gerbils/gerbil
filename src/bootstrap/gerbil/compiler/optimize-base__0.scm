(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707555984)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp210218
             (let ((__tmp210219
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210219 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#optimizer-info::t
         'optimizer-info
         '#f
         '(type ssxi methods)
         __tmp210218
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args205949_
        (apply make-struct-instance gxc#optimizer-info::t _$args205949_)))
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
      (lambda (_self205947_)
        (if (let ((__tmp210226
                   (let ()
                     (declare (not safe))
                     (##structure-length _self205947_))))
              (declare (not safe))
              (##fx< '3 __tmp210226))
            (begin
              (let ((__tmp210221
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp210220
                     (let ()
                       (declare (not safe))
                       (##structure-type _self205947_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self205947_
                 __tmp210221
                 '1
                 __tmp210220
                 '#f))
              (let ((__tmp210223
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp210222
                     (let ()
                       (declare (not safe))
                       (##structure-type _self205947_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self205947_
                 __tmp210223
                 '2
                 __tmp210222
                 '#f))
              (let ((__tmp210225
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp210224
                     (let ()
                       (declare (not safe))
                       (##structure-type _self205947_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self205947_
                 __tmp210225
                 '3
                 __tmp210224
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self205947_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self205947_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp210227
             (let ((__tmp210228
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210228 '()))))
        (declare (not safe))
        (make-struct-type 'gxc#!type::t '!type '#f '(id) __tmp210227 '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-struct-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args205822_
        (apply make-struct-instance gxc#!type::t _$args205822_)))
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
      (let ((__tmp210229
             (let ((__tmp210230
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210230 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!alias::t
         '!alias
         gxc#!type::t
         '()
         __tmp210229
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-struct-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args205819_
        (apply make-struct-instance gxc#!alias::t _$args205819_)))
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
      (let ((__tmp210231
             (let ((__tmp210232
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210232 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!procedure::t
         '!procedure
         gxc#!type::t
         '()
         __tmp210231
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-struct-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args205816_
        (apply make-struct-instance gxc#!procedure::t _$args205816_)))
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
      (let ((__tmp210233
             (let ((__tmp210234
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210234 '()))))
        (declare (not safe))
        (make-struct-type
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
         __tmp210233
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args205813_
        (apply make-struct-instance gxc#!class::t _$args205813_)))
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
      (let ((__tmp210235
             (let ((__tmp210236
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210236 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!predicate::t
         '!predicate
         gxc#!procedure::t
         '()
         __tmp210235
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-struct-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args205810_
        (apply make-struct-instance gxc#!predicate::t _$args205810_)))
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
      (let ((__tmp210237
             (let ((__tmp210238
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210238 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!constructor::t
         '!constructor
         gxc#!procedure::t
         '()
         __tmp210237
         '#f)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args205807_
        (apply make-struct-instance gxc#!constructor::t _$args205807_)))
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
      (let ((__tmp210239
             (let ((__tmp210240
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210240 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!accessor::t
         '!accessor
         gxc#!procedure::t
         '(slot checked?)
         __tmp210239
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-struct-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args205804_
        (apply make-struct-instance gxc#!accessor::t _$args205804_)))
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
      (let ((__tmp210241
             (let ((__tmp210242
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210242 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!mutator::t
         '!mutator
         gxc#!procedure::t
         '(slot checked?)
         __tmp210241
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-struct-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args205801_
        (apply make-struct-instance gxc#!mutator::t _$args205801_)))
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
      (let ((__tmp210243
             (let ((__tmp210244
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210244 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!lambda::t
         '!lambda
         gxc#!procedure::t
         '(arity dispatch inline inline-typedecl)
         __tmp210243
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args205798_
        (apply make-struct-instance gxc#!lambda::t _$args205798_)))
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
      (let ((__tmp210245
             (let ((__tmp210246
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210246 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!case-lambda::t
         '!case-lambda
         gxc#!procedure::t
         '(clauses)
         __tmp210245
         '#f)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args205795_
        (apply make-struct-instance gxc#!case-lambda::t _$args205795_)))
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
      (let ((__tmp210247
             (let ((__tmp210248
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210248 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         gxc#!procedure::t
         '(table dispatch)
         __tmp210247
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args205792_
        (apply make-struct-instance gxc#!kw-lambda::t _$args205792_)))
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
      (let ((__tmp210249
             (let ((__tmp210250
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210250 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         gxc#!procedure::t
         '(keys main)
         __tmp210249
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args205789_
        (apply make-struct-instance gxc#!kw-lambda-primary::t _$args205789_)))
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
      (let ((__tmp210251 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp210251
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args205786_
        (apply make-class-instance gxc#!primitive::t _$args205786_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp210252 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp210252
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args205783_
        (apply make-class-instance gxc#!primitive-lambda::t _$args205783_)))
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
      (let ((__tmp210253 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp210253
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args205780_
        (apply make-class-instance
               gxc#!primitive-case-lambda::t
               _$args205780_)))
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
      (lambda (_self205621_
               _id205622_
               _super205623_
               _slots205624_
               _ctor-method205625_
               _struct?205626_
               _final?205627_)
        (let _lp205629_ ((_rest205631_ _super205623_))
          (let* ((_rest205632205640_ _rest205631_)
                 (_else205634205648_ (lambda () '#!void))
                 (_K205636205654_
                  (lambda (_rest205651_ _super-id205652_)
                    (if (##structure-ref
                         (let ((__tmp210256
                                (let ((__tmp210257
                                       (let ()
                                         (declare (not safe))
                                         (cons _id205622_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp210257))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp210256
                            _super-id205652_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp210254
                               (let ((__tmp210255
                                      (let ()
                                        (declare (not safe))
                                        (cons _id205622_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp210255))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp210254
                           _super-id205652_))
                        '#!void)
                    (let () (declare (not safe)) (_lp205629_ _rest205651_)))))
            (if (let () (declare (not safe)) (##pair? _rest205632205640_))
                (let ((_hd205637205657_
                       (let ()
                         (declare (not safe))
                         (##car _rest205632205640_)))
                      (_tl205638205659_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest205632205640_))))
                  (let* ((_super-id205662_ _hd205637205657_)
                         (_rest205664_ _tl205638205659_))
                    (declare (not safe))
                    (_K205636205654_ _rest205664_ _super-id205662_)))
                '#!void)))
        (if _struct?205626_
            (let* ((_super205665205675_ _super205623_)
                   (_else205668205683_
                    (lambda ()
                      (let ((__tmp210258
                             (let ((__tmp210259
                                    (let ()
                                      (declare (not safe))
                                      (cons _id205622_ '()))))
                               (declare (not safe))
                               (cons '!class __tmp210259))))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"bad class; struct can only extend a single struct"
                         __tmp210258
                         _super205623_)))))
              (let ((_K205673205705_ (lambda () '#!void))
                    (_K205670205691_
                     (lambda (_super-id205687_)
                       (let ((_klass205689_
                              (let ((__tmp210260
                                     (let ((__tmp210261
                                            (let ()
                                              (declare (not safe))
                                              (cons _id205622_ '()))))
                                       (declare (not safe))
                                       (cons '!class __tmp210261))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-class
                                 __tmp210260
                                 _super-id205687_))))
                         (if (##structure-ref
                              _klass205689_
                              '7
                              gxc#!class::t
                              '#f)
                             '#!void
                             (let ((__tmp210262
                                    (let ((__tmp210263
                                           (let ()
                                             (declare (not safe))
                                             (cons _id205622_ '()))))
                                      (declare (not safe))
                                      (cons '!class __tmp210263))))
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"bad class; struct extending non struct"
                                __tmp210262
                                _super-id205687_)))))))
                (let ((_try-match205667205701_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _super205665205675_))
                             (let ((_tl205672205696_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _super205665205675_)))
                                   (_hd205671205694_
                                    (let ()
                                      (declare (not safe))
                                      (##car _super205665205675_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _tl205672205696_))
                                   (let ((_super-id205699_ _hd205671205694_))
                                     (declare (not safe))
                                     (_K205670205691_ _super-id205699_))
                                   (let ()
                                     (declare (not safe))
                                     (_else205668205683_))))
                             (let ()
                               (declare (not safe))
                               (_else205668205683_))))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _super205665205675_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (_try-match205667205701_))))))
            '#!void)
        (let* ((_ctor-method205756_
                (let ((_$e205708_ _ctor-method205625_))
                  (if _$e205708_
                      _$e205708_
                      (let _lp205711_ ((_rest205713_ _super205623_)
                                       (_method205714_ '#f))
                        (let* ((_rest205715205723_ _rest205713_)
                               (_else205717205731_ (lambda () _method205714_))
                               (_K205719205744_
                                (lambda (_rest205734_ _super-id205735_)
                                  (let* ((_klass205737_
                                          (let ((__tmp210264
                                                 (let ((__tmp210265
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id205622_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp210265))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp210264
                                             _super-id205735_)))
                                         (_$e205739_
                                          (##structure-ref
                                           _klass205737_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e205739_
                                        ((lambda (_ctor-method205742_)
                                           (if _method205714_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method205742_
                                                          _method205714_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp205711_
                                                      _rest205734_
                                                      _ctor-method205742_))
                                                   (let ((__tmp210266
                                                          (let ((__tmp210267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id205622_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp210267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp210266
                                                      _method205714_
                                                      _ctor-method205742_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp205711_
                                                  _rest205734_
                                                  _ctor-method205742_))))
                                         _$e205739_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp205711_
                                           _rest205734_
                                           _method205714_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest205715205723_))
                              (let ((_hd205720205747_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest205715205723_)))
                                    (_tl205721205749_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest205715205723_))))
                                (let* ((_super-id205752_ _hd205720205747_)
                                       (_rest205754_ _tl205721205749_))
                                  (declare (not safe))
                                  (_K205719205744_
                                   _rest205754_
                                   _super-id205752_)))
                              (let ()
                                (declare (not safe))
                                (_else205717205731_))))))))
               (_precedence-list205760_
                (let ((__tmp210268
                       (lambda (_klass-id205758_)
                         (let ((__tmp210269
                                (##structure-ref
                                 (let ((__tmp210270
                                        (let ((__tmp210271
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id205622_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp210271))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp210270
                                    _klass-id205758_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id205758_ __tmp210269)))))
                  (declare (not safe))
                  (c3-linearize__%
                   '()
                   _super205623_
                   __tmp210268
                   eq?
                   identity)))
               (_fields205766_
                (let* ((_base-struct205764_
                        (let ((__tmp210272
                               (lambda (_klass-id205762_)
                                 (##structure-ref
                                  (let ((__tmp210273
                                         (let ((__tmp210274
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id205622_ '()))))
                                           (declare (not safe))
                                           (cons '!class __tmp210274))))
                                    (declare (not safe))
                                    (gxc#optimizer-resolve-class
                                     __tmp210273
                                     _klass-id205762_))
                                  '7
                                  gxc#!class::t
                                  '#f))))
                          (declare (not safe))
                          (find __tmp210272 _precedence-list205760_)))
                       (__tmp210275
                        (let ((__tmp210276
                               (let ()
                                 (declare (not safe))
                                 (cons _id205622_ '()))))
                          (declare (not safe))
                          (cons '!class __tmp210276))))
                  (declare (not safe))
                  (gxc#compute-class-fields
                   __tmp210275
                   _base-struct205764_
                   _precedence-list205760_
                   _slots205624_))))
          (##structure-set! _self205621_ _id205622_ '1 gxc#!type::t '#f)
          (##structure-set! _self205621_ _super205623_ '2 gxc#!class::t '#f)
          (##structure-set!
           _self205621_
           _precedence-list205760_
           '3
           gxc#!class::t
           '#f)
          (##structure-set! _self205621_ _slots205624_ '4 gxc#!class::t '#f)
          (##structure-set! _self205621_ _fields205766_ '5 gxc#!class::t '#f)
          (##structure-set!
           _self205621_
           _ctor-method205756_
           '6
           gxc#!class::t
           '#f)
          (##structure-set! _self205621_ _struct?205626_ '7 gxc#!class::t '#f)
          (##structure-set!
           _self205621_
           _final?205627_
           '8
           gxc#!class::t
           '#f))))
    (define gxc#!class:::init!__1
      (lambda (_self205769_
               _id205770_
               _super205771_
               _precedence-list205772_
               _slots205773_
               _fields205774_
               _constructor205775_
               _struct?205776_
               _final?205777_
               _methods205778_)
        (##structure-set! _self205769_ _id205770_ '1 gxc#!type::t '#f)
        (##structure-set! _self205769_ _super205771_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self205769_
         _precedence-list205772_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self205769_ _slots205773_ '4 gxc#!class::t '#f)
        (##structure-set! _self205769_ _fields205774_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self205769_
         _constructor205775_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self205769_ _struct?205776_ '7 gxc#!class::t '#f)
        (##structure-set! _self205769_ _final?205777_ '8 gxc#!class::t '#f)
        (if _methods205778_
            (##structure-set!
             _self205769_
             (let ()
               (declare (not safe))
               (list->table _methods205778_ 'test: eq?))
             '9
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g210278_
        (let ((_g210277_ (let () (declare (not safe)) (##length _g210278_))))
          (cond ((let () (declare (not safe)) (##fx= _g210277_ 7))
                 (apply (lambda (_self205621_
                                 _id205622_
                                 _super205623_
                                 _slots205624_
                                 _ctor-method205625_
                                 _struct?205626_
                                 _final?205627_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self205621_
                             _id205622_
                             _super205623_
                             _slots205624_
                             _ctor-method205625_
                             _struct?205626_
                             _final?205627_)))
                        _g210278_))
                ((let () (declare (not safe)) (##fx= _g210277_ 10))
                 (apply (lambda (_self205769_
                                 _id205770_
                                 _super205771_
                                 _precedence-list205772_
                                 _slots205773_
                                 _fields205774_
                                 _constructor205775_
                                 _struct?205776_
                                 _final?205777_
                                 _methods205778_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self205769_
                             _id205770_
                             _super205771_
                             _precedence-list205772_
                             _slots205773_
                             _fields205774_
                             _constructor205775_
                             _struct?205776_
                             _final?205777_
                             _methods205778_)))
                        _g210278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g210278_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t210145)
        (let ((__fields210146
               (let ((__tmp210155
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210145 'fields))))
                 (if __tmp210155 __tmp210155 (error '"Unknown slot" 'fields))))
              (__struct?210147
               (let ((__tmp210156
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210145 'struct?))))
                 (if __tmp210156
                     __tmp210156
                     (error '"Unknown slot" 'struct?))))
              (__methods210148
               (let ((__tmp210157
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210145 'methods))))
                 (if __tmp210157
                     __tmp210157
                     (error '"Unknown slot" 'methods))))
              (__precedence-list210149
               (let ((__tmp210158
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210145 'precedence-list))))
                 (if __tmp210158
                     __tmp210158
                     (error '"Unknown slot" 'precedence-list))))
              (__final?210150
               (let ((__tmp210159
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210145 'final?))))
                 (if __tmp210159 __tmp210159 (error '"Unknown slot" 'final?))))
              (__slots210151
               (let ((__tmp210160
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210145 'slots))))
                 (if __tmp210160 __tmp210160 (error '"Unknown slot" 'slots))))
              (__id210152
               (let ((__tmp210161
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210145 'id))))
                 (if __tmp210161 __tmp210161 (error '"Unknown slot" 'id))))
              (__constructor210153
               (let ((__tmp210162
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210145 'constructor))))
                 (if __tmp210162
                     __tmp210162
                     (error '"Unknown slot" 'constructor))))
              (__super210154
               (let ((__tmp210163
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210145 'super))))
                 (if __tmp210163 __tmp210163 (error '"Unknown slot" 'super)))))
          (lambda _g210280_
            (let ((_g210279_
                   (let () (declare (not safe)) (##length _g210280_))))
              (cond ((let () (declare (not safe)) (##fx= _g210279_ 7))
                     (apply (lambda (_self205621_
                                     _id205622_
                                     _super205623_
                                     _slots205624_
                                     _ctor-method205625_
                                     _struct?205626_
                                     _final?205627_)
                              (let _lp205629_ ((_rest205631_ _super205623_))
                                (let* ((_rest205632205640_ _rest205631_)
                                       (_else205634205648_ (lambda () '#!void))
                                       (_K205636205654_
                                        (lambda (_rest205651_ _super-id205652_)
                                          (if (##structure-ref
                                               (let ((__tmp210283
                                                      (let ((__tmp210284
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id205622_ '()))))
                (declare (not safe))
                (cons '!class __tmp210284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp210283
                                                  _super-id205652_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp210281
                                                     (let ((__tmp210282
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id205622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp210282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp210281
                                                 _super-id205652_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp205629_ _rest205651_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest205632205640_))
                                      (let ((_hd205637205657_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest205632205640_)))
                                            (_tl205638205659_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest205632205640_))))
                                        (let* ((_super-id205662_
                                                _hd205637205657_)
                                               (_rest205664_ _tl205638205659_))
                                          (declare (not safe))
                                          (_K205636205654_
                                           _rest205664_
                                           _super-id205662_)))
                                      '#!void)))
                              (if _struct?205626_
                                  (let* ((_super205665205675_ _super205623_)
                                         (_else205668205683_
                                          (lambda ()
                                            (let ((__tmp210285
                                                   (let ((__tmp210286
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _id205622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '!class
                                                           __tmp210286))))
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"bad class; struct can only extend a single struct"
                                               __tmp210285
                                               _super205623_)))))
                                    (let ((_K205673205705_ (lambda () '#!void))
                                          (_K205670205691_
                                           (lambda (_super-id205687_)
                                             (let ((_klass205689_
                                                    (let ((__tmp210287
                                                           (let ((__tmp210288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id205622_ '()))))
                     (declare (not safe))
                     (cons '!class __tmp210288))))
              (declare (not safe))
              (gxc#optimizer-resolve-class __tmp210287 _super-id205687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-ref
                                                    _klass205689_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   '#!void
                                                   (let ((__tmp210289
                                                          (let ((__tmp210290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id205622_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp210290))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"bad class; struct extending non struct"
                                                      __tmp210289
                                                      _super-id205687_)))))))
                                      (let ((_try-match205667205701_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _super205665205675_))
                                                   (let ((_tl205672205696_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _super205665205675_)))
                                                         (_hd205671205694_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _super205665205675_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##null? _tl205672205696_))
                                                         (let ((_super-id205699_
                                                                _hd205671205694_))
                                                           (declare (not safe))
                                                           (_K205670205691_
                                                            _super-id205699_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (_else205668205683_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_else205668205683_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _super205665205675_))
                                            '#!void
                                            (let ()
                                              (declare (not safe))
                                              (_try-match205667205701_))))))
                                  '#!void)
                              (let* ((_ctor-method205756_
                                      (let ((_$e205708_ _ctor-method205625_))
                                        (if _$e205708_
                                            _$e205708_
                                            (let _lp205711_ ((_rest205713_
                                                              _super205623_)
                                                             (_method205714_
                                                              '#f))
                                              (let* ((_rest205715205723_
                                                      _rest205713_)
                                                     (_else205717205731_
                                                      (lambda ()
                                                        _method205714_))
                                                     (_K205719205744_
                                                      (lambda (_rest205734_
                                                               _super-id205735_)
                                                        (let* ((_klass205737_
                                                                (let ((__tmp210291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp210292
                                      (let ()
                                        (declare (not safe))
                                        (cons _id205622_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp210292))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp210291
                           _super-id205735_)))
                       (_$e205739_
                        (##structure-ref _klass205737_ '6 gxc#!class::t '#f)))
                  (if _$e205739_
                      ((lambda (_ctor-method205742_)
                         (if _method205714_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method205742_ _method205714_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp205711_
                                    _rest205734_
                                    _ctor-method205742_))
                                 (let ((__tmp210293
                                        (let ((__tmp210294
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id205622_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp210294))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp210293
                                    _method205714_
                                    _ctor-method205742_)))
                             (let ()
                               (declare (not safe))
                               (_lp205711_ _rest205734_ _ctor-method205742_))))
                       _$e205739_)
                      (let ()
                        (declare (not safe))
                        (_lp205711_ _rest205734_ _method205714_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest205715205723_))
                                                    (let ((_hd205720205747_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest205715205723_)))
                                                          (_tl205721205749_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest205715205723_))))
                                                      (let* ((_super-id205752_
                                                              _hd205720205747_)
                                                             (_rest205754_
                                                              _tl205721205749_))
                                                        (declare (not safe))
                                                        (_K205719205744_
                                                         _rest205754_
                                                         _super-id205752_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else205717205731_))))))))
                                     (_precedence-list205760_
                                      (let ((__tmp210295
                                             (lambda (_klass-id205758_)
                                               (let ((__tmp210296
                                                      (##structure-ref
                                                       (let ((__tmp210297
                                                              (let ((__tmp210298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id205622_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp210298))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp210297 _klass-id205758_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id205758_
                                                       __tmp210296)))))
                                        (declare (not safe))
                                        (c3-linearize__%
                                         '()
                                         _super205623_
                                         __tmp210295
                                         eq?
                                         identity)))
                                     (_fields205766_
                                      (let* ((_base-struct205764_
                                              (let ((__tmp210299
                                                     (lambda (_klass-id205762_)
                                                       (##structure-ref
                                                        (let ((__tmp210300
                                                               (let ((__tmp210301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _id205622_ '()))))
                         (declare (not safe))
                         (cons '!class __tmp210301))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class __tmp210300 _klass-id205762_))
                '7
                gxc#!class::t
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (find __tmp210299
                                                      _precedence-list205760_)))
                                             (__tmp210302
                                              (let ((__tmp210303
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _id205622_ '()))))
                                                (declare (not safe))
                                                (cons '!class __tmp210303))))
                                        (declare (not safe))
                                        (gxc#compute-class-fields
                                         __tmp210302
                                         _base-struct205764_
                                         _precedence-list205760_
                                         _slots205624_))))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205621_
                                   _id205622_
                                   __id210152
                                   __t210145
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205621_
                                   _super205623_
                                   __super210154
                                   __t210145
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205621_
                                   _precedence-list205760_
                                   __precedence-list210149
                                   __t210145
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205621_
                                   _slots205624_
                                   __slots210151
                                   __t210145
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205621_
                                   _fields205766_
                                   __fields210146
                                   __t210145
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205621_
                                   _ctor-method205756_
                                   __constructor210153
                                   __t210145
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205621_
                                   _struct?205626_
                                   __struct?210147
                                   __t210145
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205621_
                                   _final?205627_
                                   __final?210150
                                   __t210145
                                   '#f))))
                            _g210280_))
                    ((let () (declare (not safe)) (##fx= _g210279_ 10))
                     (apply (lambda (_self205769_
                                     _id205770_
                                     _super205771_
                                     _precedence-list205772_
                                     _slots205773_
                                     _fields205774_
                                     _constructor205775_
                                     _struct?205776_
                                     _final?205777_
                                     _methods205778_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205769_
                                 _id205770_
                                 __id210152
                                 __t210145
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205769_
                                 _super205771_
                                 __super210154
                                 __t210145
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205769_
                                 _precedence-list205772_
                                 __precedence-list210149
                                 __t210145
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205769_
                                 _slots205773_
                                 __slots210151
                                 __t210145
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205769_
                                 _fields205774_
                                 __fields210146
                                 __t210145
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205769_
                                 _constructor205775_
                                 __constructor210153
                                 __t210145
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205769_
                                 _struct?205776_
                                 __struct?210147
                                 __t210145
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self205769_
                                 _final?205777_
                                 __final?210150
                                 __t210145
                                 '#f))
                              (if _methods205778_
                                  (let ((__tmp210304
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods205778_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self205769_
                                     __tmp210304
                                     __methods210148
                                     __t210145
                                     '#f))
                                  '#!void))
                            _g210280_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g210280_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where205473_
               _base-struct205474_
               _precedence-list205475_
               _direct-slots205476_)
        (let* ((_base-fields205478_
                (if _base-struct205474_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where205473_
                        _base-struct205474_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields205480_ (reverse _base-fields205478_))
               (_seen-slots205488_
                (let ((_tab205482_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g205483205485_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab205482_ _g205483205485_ '#t)))
                   _base-fields205478_)
                  _tab205482_))
               (_process-slot205492_
                (lambda (_slot205490_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots205488_ _slot205490_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots205488_ _slot205490_ '#t))
                        (set! _r-fields205480_
                              (let ()
                                (declare (not safe))
                                (cons _slot205490_ _r-fields205480_))))))))
          (for-each
           (lambda (_mixin205495_)
             (let ((_klass205497_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where205473_
                       _mixin205495_))))
               (if (##structure-ref _klass205497_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot205492_
                    (##structure-ref _klass205497_ '5 gxc#!class::t '#f)))))
           _precedence-list205475_)
          (for-each _process-slot205492_ _direct-slots205476_)
          (reverse _r-fields205480_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass205432_ _slot205433_)
        (let _lp205435_ ((_rest205437_
                          (##structure-ref _klass205432_ '5 gxc#!class::t '#f))
                         (_offset205438_ '1))
          (let* ((_rest205439205447_ _rest205437_)
                 (_else205441205455_
                  (lambda ()
                    (let ((__tmp210306
                           (##structure-ref _klass205432_ '1 gxc#!type::t '#f))
                          (__tmp210305
                           (##structure-ref
                            _klass205432_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp210306
                       __tmp210305
                       _slot205433_))))
                 (_K205443205461_
                  (lambda (_rest205458_ _s205459_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s205459_ _slot205433_))
                        _offset205438_
                        (let ((__tmp210307
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset205438_ '1))))
                          (declare (not safe))
                          (_lp205435_ _rest205458_ __tmp210307))))))
            (if (let () (declare (not safe)) (##pair? _rest205439205447_))
                (let ((_hd205444205464_
                       (let ()
                         (declare (not safe))
                         (##car _rest205439205447_)))
                      (_tl205445205466_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest205439205447_))))
                  (let* ((_s205469_ _hd205444205464_)
                         (_rest205471_ _tl205445205466_))
                    (declare (not safe))
                    (_K205443205461_ _rest205471_ _s205469_)))
                (let () (declare (not safe)) (_else205441205455_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass205390_ _slot205391_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass205390_ _slot205391_))
            _klass205390_
            (let _lp205393_ ((_rest205395_
                              (##structure-ref
                               _klass205390_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest205396205404_ _rest205395_)
                     (_else205398205412_ (lambda () '#f))
                     (_K205400205420_
                      (lambda (_rest205415_ _super205416_)
                        (let ((_super-class205418_
                               (let ((__tmp210308
                                      (let ((__tmp210309
                                             (let ((__tmp210311
                                                    (##structure-ref
                                                     _klass205390_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp210310
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot205391_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp210311
                                                     __tmp210310))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp210309))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp210308
                                  _super205416_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class205418_
                                 _slot205391_))
                              _super-class205418_
                              (let ()
                                (declare (not safe))
                                (_lp205393_ _rest205415_)))))))
                (if (let () (declare (not safe)) (##pair? _rest205396205404_))
                    (let ((_hd205401205423_
                           (let ()
                             (declare (not safe))
                             (##car _rest205396205404_)))
                          (_tl205402205425_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest205396205404_))))
                      (let* ((_super205428_ _hd205401205423_)
                             (_rest205430_ _tl205402205425_))
                        (declare (not safe))
                        (_K205400205420_ _rest205430_ _super205428_)))
                    (let () (declare (not safe)) (_else205398205412_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass205387_ _slot205388_)
        (if (##structure-ref _klass205387_ '7 gxc#!class::t '#f)
            (memq _slot205388_
                  (##structure-ref _klass205387_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self205384_ _id205385_)
        (##structure-set! _self205384_ _id205385_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t210164)
        (let ((__id210165
               (let ((__tmp210166
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210164 'id))))
                 (if __tmp210166 __tmp210166 (error '"Unknown slot" 'id)))))
          (lambda (_self205384_ _id205385_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205384_
               _id205385_
               __id210165
               __t210164
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
      (lambda (_self205259_ _id205260_)
        (##structure-set! _self205259_ _id205260_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t210167)
        (let ((__id210168
               (let ((__tmp210169
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210167 'id))))
                 (if __tmp210169 __tmp210169 (error '"Unknown slot" 'id)))))
          (lambda (_self205259_ _id205260_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205259_
               _id205260_
               __id210168
               __t210167
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
      (lambda (_self205132_ _id205133_ _slot205134_ _checked?205135_)
        (##structure-set! _self205132_ _id205133_ '1 gxc#!type::t '#f)
        (##structure-set! _self205132_ _slot205134_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self205132_
         _checked?205135_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t210170)
        (let ((__slot210171
               (let ((__tmp210174
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210170 'slot))))
                 (if __tmp210174 __tmp210174 (error '"Unknown slot" 'slot))))
              (__checked?210172
               (let ((__tmp210175
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210170 'checked?))))
                 (if __tmp210175
                     __tmp210175
                     (error '"Unknown slot" 'checked?))))
              (__id210173
               (let ((__tmp210176
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210170 'id))))
                 (if __tmp210176 __tmp210176 (error '"Unknown slot" 'id)))))
          (lambda (_self205132_ _id205133_ _slot205134_ _checked?205135_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205132_
               _id205133_
               __id210173
               __t210170
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205132_
               _slot205134_
               __slot210171
               __t210170
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205132_
               _checked?205135_
               __checked?210172
               __t210170
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
      (lambda (_self205005_ _id205006_ _slot205007_ _checked?205008_)
        (##structure-set! _self205005_ _id205006_ '1 gxc#!type::t '#f)
        (##structure-set! _self205005_ _slot205007_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self205005_
         _checked?205008_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t210177)
        (let ((__slot210178
               (let ((__tmp210181
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210177 'slot))))
                 (if __tmp210181 __tmp210181 (error '"Unknown slot" 'slot))))
              (__checked?210179
               (let ((__tmp210182
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210177 'checked?))))
                 (if __tmp210182
                     __tmp210182
                     (error '"Unknown slot" 'checked?))))
              (__id210180
               (let ((__tmp210183
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t210177 'id))))
                 (if __tmp210183 __tmp210183 (error '"Unknown slot" 'id)))))
          (lambda (_self205005_ _id205006_ _slot205007_ _checked?205008_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205005_
               _id205006_
               __id210180
               __t210177
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205005_
               _slot205007_
               __slot210178
               __t210177
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205005_
               _checked?205008_
               __checked?210179
               __t210177
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
      (lambda (_self204849_
               _id204850_
               _arity204851_
               _dispatch204852_
               _inline204853_
               _typedecl204854_)
        (if (let ((__tmp210317
                   (let ()
                     (declare (not safe))
                     (##structure-length _self204849_))))
              (declare (not safe))
              (##fx< '5 __tmp210317))
            (begin
              (let ((__tmp210312
                     (let ()
                       (declare (not safe))
                       (##structure-type _self204849_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self204849_
                 _id204850_
                 '1
                 __tmp210312
                 '#f))
              (let ((__tmp210313
                     (let ()
                       (declare (not safe))
                       (##structure-type _self204849_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self204849_
                 _arity204851_
                 '2
                 __tmp210313
                 '#f))
              (let ((__tmp210314
                     (let ()
                       (declare (not safe))
                       (##structure-type _self204849_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self204849_
                 _dispatch204852_
                 '3
                 __tmp210314
                 '#f))
              (let ((__tmp210315
                     (let ()
                       (declare (not safe))
                       (##structure-type _self204849_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self204849_
                 _inline204853_
                 '4
                 __tmp210315
                 '#f))
              (let ((__tmp210316
                     (let ()
                       (declare (not safe))
                       (##structure-type _self204849_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self204849_
                 _typedecl204854_
                 '5
                 __tmp210316
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self204849_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self204849_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self204859_ _id204860_ _arity204861_ _dispatch204862_)
        (let* ((_inline204864_ '#f) (_typedecl204866_ '#f))
          (if (let ((__tmp210323
                     (let ()
                       (declare (not safe))
                       (##structure-length _self204859_))))
                (declare (not safe))
                (##fx< '5 __tmp210323))
              (begin
                (let ((__tmp210318
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204859_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204859_
                   _id204860_
                   '1
                   __tmp210318
                   '#f))
                (let ((__tmp210319
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204859_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204859_
                   _arity204861_
                   '2
                   __tmp210319
                   '#f))
                (let ((__tmp210320
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204859_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204859_
                   _dispatch204862_
                   '3
                   __tmp210320
                   '#f))
                (let ((__tmp210321
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204859_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204859_
                   _inline204864_
                   '4
                   __tmp210321
                   '#f))
                (let ((__tmp210322
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204859_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204859_
                   _typedecl204866_
                   '5
                   __tmp210322
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self204859_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self204859_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self204868_
               _id204869_
               _arity204870_
               _dispatch204871_
               _inline204872_)
        (let ((_typedecl204874_ '#f))
          (if (let ((__tmp210329
                     (let ()
                       (declare (not safe))
                       (##structure-length _self204868_))))
                (declare (not safe))
                (##fx< '5 __tmp210329))
              (begin
                (let ((__tmp210324
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204868_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204868_
                   _id204869_
                   '1
                   __tmp210324
                   '#f))
                (let ((__tmp210325
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204868_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204868_
                   _arity204870_
                   '2
                   __tmp210325
                   '#f))
                (let ((__tmp210326
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204868_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204868_
                   _dispatch204871_
                   '3
                   __tmp210326
                   '#f))
                (let ((__tmp210327
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204868_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204868_
                   _inline204872_
                   '4
                   __tmp210327
                   '#f))
                (let ((__tmp210328
                       (let ()
                         (declare (not safe))
                         (##structure-type _self204868_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self204868_
                   _typedecl204874_
                   '5
                   __tmp210328
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self204868_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self204868_)))))))
    (define gxc#!lambda:::init!
      (lambda _g210331_
        (let ((_g210330_ (let () (declare (not safe)) (##length _g210331_))))
          (cond ((let () (declare (not safe)) (##fx= _g210330_ 4))
                 (apply (lambda (_self204859_
                                 _id204860_
                                 _arity204861_
                                 _dispatch204862_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self204859_
                             _id204860_
                             _arity204861_
                             _dispatch204862_)))
                        _g210331_))
                ((let () (declare (not safe)) (##fx= _g210330_ 5))
                 (apply (lambda (_self204868_
                                 _id204869_
                                 _arity204870_
                                 _dispatch204871_
                                 _inline204872_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self204868_
                             _id204869_
                             _arity204870_
                             _dispatch204871_
                             _inline204872_)))
                        _g210331_))
                ((let () (declare (not safe)) (##fx= _g210330_ 6))
                 (apply (lambda (_self204876_
                                 _id204877_
                                 _arity204878_
                                 _dispatch204879_
                                 _inline204880_
                                 _typedecl204881_)
                          (if (let ((__tmp210337
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self204876_))))
                                (declare (not safe))
                                (##fx< '5 __tmp210337))
                              (begin
                                (let ((__tmp210332
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self204876_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self204876_
                                   _id204877_
                                   '1
                                   __tmp210332
                                   '#f))
                                (let ((__tmp210333
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self204876_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self204876_
                                   _arity204878_
                                   '2
                                   __tmp210333
                                   '#f))
                                (let ((__tmp210334
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self204876_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self204876_
                                   _dispatch204879_
                                   '3
                                   __tmp210334
                                   '#f))
                                (let ((__tmp210335
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self204876_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self204876_
                                   _inline204880_
                                   '4
                                   __tmp210335
                                   '#f))
                                (let ((__tmp210336
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self204876_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self204876_
                                   _typedecl204881_
                                   '5
                                   __tmp210336
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self204876_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self204876_)))))
                        _g210331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g210331_))))))
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
      (lambda (_self204601_ . _args204602_)
        (apply struct-instance-init! _self204601_ _args204602_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type204476_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type204476_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type204476_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass204469_)
        (let ((_$e204471_
               (##structure-ref _klass204469_ '9 gxc#!class::t '#f)))
          (if _$e204471_
              _$e204471_
              (let ((_tab204474_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass204469_
                 _tab204474_
                 '9
                 gxc#!class::t
                 '#f)
                _tab204474_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass204460_ _method204461_)
        (let ((_tab204462204464_
               (##structure-ref _klass204460_ '9 gxc#!class::t '#f)))
          (if _tab204462204464_
              (let ((_tab204467_ _tab204462204464_))
                (declare (not safe))
                (table-ref _tab204467_ _method204461_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type204457_ _method204458_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type204457_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type204457_ _method204458_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym204441_ _type204442_ _local?204443_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type204442_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym204441_
                   _type204442_))
        (let ((__tmp210338
               (let () (declare (not safe)) (struct->list _type204442_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym204441_ '" " __tmp210338))
        (let ((__tmp210339
               (if _local?204443_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp210339 _sym204441_ _type204442_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym204448_ _type204449_)
        (let ((_local?204451_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym204448_
           _type204449_
           _local?204451_))))
    (define gxc#optimizer-declare-type!
      (lambda _g210341_
        (let ((_g210340_ (let () (declare (not safe)) (##length _g210341_))))
          (cond ((let () (declare (not safe)) (##fx= _g210340_ 2))
                 (apply (lambda (_sym204448_ _type204449_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym204448_
                             _type204449_)))
                        _g210341_))
                ((let () (declare (not safe)) (##fx= _g210340_ 3))
                 (apply (lambda (_sym204453_ _type204454_ _local?204455_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym204453_
                             _type204454_
                             _local?204455_)))
                        _g210341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g210341_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym204427_ _local?204428_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym204427_))
        (let ((__tmp210342
               (if _local?204428_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp210342 _sym204427_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym204433_)
        (let ((_local?204435_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym204433_ _local?204435_))))
    (define gxc#optimizer-clear-type!
      (lambda _g210344_
        (let ((_g210343_ (let () (declare (not safe)) (##length _g210344_))))
          (cond ((let () (declare (not safe)) (##fx= _g210343_ 1))
                 (apply (lambda (_sym204433_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym204433_)))
                        _g210344_))
                ((let () (declare (not safe)) (##fx= _g210343_ 2))
                 (apply (lambda (_sym204437_ _local?204438_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym204437_
                             _local?204438_)))
                        _g210344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g210344_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t204400_ _method204401_ _sym204402_ _rebind?204403_)
        (let* ((_type204405_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t204400_)))
               (_$e204407_
                (let () (declare (not safe)) (gxc#!type-vtab _type204405_))))
          (if _$e204407_
              ((lambda (_vtab204410_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab204410_ _method204401_))
                     (if _rebind?204403_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t204400_
                              '" "
                              _method204401_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab204410_
                              _method204401_
                              _sym204402_)))
                         (let ((__tmp210349
                                (let ((__tmp210350
                                       (let ((__tmp210351
                                              (let ((__tmp210352
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym204402_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method204401_
                                                      __tmp210352))))
                                         (declare (not safe))
                                         (cons _type-t204400_ __tmp210351))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp210350))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp210349
                            _method204401_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t204400_
                          '" "
                          _method204401_
                          '" => "
                          _sym204402_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab204410_
                          _method204401_
                          _sym204402_)))))
               _$e204407_)
              (if (let () (declare (not safe)) (not _type204405_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t204400_))
                  (let ((__tmp210345
                         (let ((__tmp210346
                                (let ((__tmp210347
                                       (let ((__tmp210348
                                              (let ()
                                                (declare (not safe))
                                                (cons _method204401_ '()))))
                                         (declare (not safe))
                                         (cons _sym204402_ __tmp210348))))
                                  (declare (not safe))
                                  (cons _type-t204400_ __tmp210347))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp210346))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp210345
                     _type204405_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t204415_ _method204416_ _sym204417_)
        (let ((_rebind?204419_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t204415_
           _method204416_
           _sym204417_
           _rebind?204419_))))
    (define gxc#optimizer-declare-method!
      (lambda _g210354_
        (let ((_g210353_ (let () (declare (not safe)) (##length _g210354_))))
          (cond ((let () (declare (not safe)) (##fx= _g210353_ 3))
                 (apply (lambda (_type-t204415_ _method204416_ _sym204417_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t204415_
                             _method204416_
                             _sym204417_)))
                        _g210354_))
                ((let () (declare (not safe)) (##fx= _g210353_ 4))
                 (apply (lambda (_type-t204421_
                                 _method204422_
                                 _sym204423_
                                 _rebind?204424_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t204421_
                             _method204422_
                             _sym204423_
                             _rebind?204424_)))
                        _g210354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g210354_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym204388_)
        (let ((_$e204396_
               (let ((_ht204389204391_ (gxc#current-compile-local-type)))
                 (if _ht204389204391_
                     (let ((_ht204394_ _ht204389204391_))
                       (declare (not safe))
                       (table-ref _ht204394_ _sym204388_ '#f))
                     '#f))))
          (if _$e204396_
              _$e204396_
              (let ((__tmp210355
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp210355 _sym204388_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym204380_)
        (let ((_type204381204383_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym204380_))))
          (if _type204381204383_
              (let ((_type204386_ _type204381204383_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type204386_ 'gxc#!alias::t))
                    (let ((__tmp210356
                           (##structure-ref _type204386_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp210356))
                    _type204386_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where204372_ _klass-id204373_)
        (let ((_$e204375_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id204373_))))
          (if _$e204375_
              ((lambda (_klass204378_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass204378_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where204372_
                        _klass-id204373_
                        _klass204378_)))
                 _klass204378_)
               _$e204375_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where204372_
                 _klass-id204373_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t204369_ _method204370_)
        (let ((__tmp210357
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t204369_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp210357 _method204370_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym204367_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym204367_))
        (let ((__tmp210358
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp210358 _sym204367_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym204365_)
        (let ((__tmp210359
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp210359 _sym204365_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx204363_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx204363_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx204363_))
            (let () (declare (not safe)) (gx#stx-e _stx204363_)))))))
