(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707616239)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp217840
             (let ((__tmp217841
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217841 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#optimizer-info::t
         'optimizer-info
         '#f
         '(type ssxi methods)
         __tmp217840
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args213297_
        (apply make-struct-instance gxc#optimizer-info::t _$args213297_)))
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
      (lambda (_self213295_)
        (if (let ((__tmp217848
                   (let ()
                     (declare (not safe))
                     (##structure-length _self213295_))))
              (declare (not safe))
              (##fx< '3 __tmp217848))
            (begin
              (let ((__tmp217843
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217842
                     (let ()
                       (declare (not safe))
                       (##structure-type _self213295_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self213295_
                 __tmp217843
                 '1
                 __tmp217842
                 '#f))
              (let ((__tmp217845
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217844
                     (let ()
                       (declare (not safe))
                       (##structure-type _self213295_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self213295_
                 __tmp217845
                 '2
                 __tmp217844
                 '#f))
              (let ((__tmp217847
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217846
                     (let ()
                       (declare (not safe))
                       (##structure-type _self213295_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self213295_
                 __tmp217847
                 '3
                 __tmp217846
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self213295_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self213295_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp217849
             (let ((__tmp217850
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217850 '()))))
        (declare (not safe))
        (make-struct-type 'gxc#!type::t '!type '#f '(id) __tmp217849 '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-struct-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args213170_
        (apply make-struct-instance gxc#!type::t _$args213170_)))
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
      (let ((__tmp217851
             (let ((__tmp217852
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217852 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!alias::t
         '!alias
         gxc#!type::t
         '()
         __tmp217851
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-struct-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args213167_
        (apply make-struct-instance gxc#!alias::t _$args213167_)))
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
      (let ((__tmp217853
             (let ((__tmp217854
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217854 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!procedure::t
         '!procedure
         gxc#!type::t
         '()
         __tmp217853
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-struct-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args213164_
        (apply make-struct-instance gxc#!procedure::t _$args213164_)))
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
      (let ((__tmp217855
             (let ((__tmp217856
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217856 '()))))
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
         __tmp217855
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args213161_
        (apply make-struct-instance gxc#!class::t _$args213161_)))
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
      (let ((__tmp217857
             (let ((__tmp217858
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217858 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!predicate::t
         '!predicate
         gxc#!procedure::t
         '()
         __tmp217857
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-struct-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args213158_
        (apply make-struct-instance gxc#!predicate::t _$args213158_)))
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
      (let ((__tmp217859
             (let ((__tmp217860
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217860 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!constructor::t
         '!constructor
         gxc#!procedure::t
         '()
         __tmp217859
         '#f)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args213155_
        (apply make-struct-instance gxc#!constructor::t _$args213155_)))
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
      (let ((__tmp217861
             (let ((__tmp217862
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217862 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!accessor::t
         '!accessor
         gxc#!procedure::t
         '(slot checked?)
         __tmp217861
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-struct-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args213152_
        (apply make-struct-instance gxc#!accessor::t _$args213152_)))
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
      (let ((__tmp217863
             (let ((__tmp217864
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217864 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!mutator::t
         '!mutator
         gxc#!procedure::t
         '(slot checked?)
         __tmp217863
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-struct-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args213149_
        (apply make-struct-instance gxc#!mutator::t _$args213149_)))
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
      (let ((__tmp217865
             (let ((__tmp217866
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217866 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!lambda::t
         '!lambda
         gxc#!procedure::t
         '(arity dispatch inline inline-typedecl)
         __tmp217865
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args213146_
        (apply make-struct-instance gxc#!lambda::t _$args213146_)))
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
      (let ((__tmp217867
             (let ((__tmp217868
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217868 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!case-lambda::t
         '!case-lambda
         gxc#!procedure::t
         '(clauses)
         __tmp217867
         '#f)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args213143_
        (apply make-struct-instance gxc#!case-lambda::t _$args213143_)))
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
      (let ((__tmp217869
             (let ((__tmp217870
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217870 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         gxc#!procedure::t
         '(table dispatch)
         __tmp217869
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args213140_
        (apply make-struct-instance gxc#!kw-lambda::t _$args213140_)))
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
      (let ((__tmp217871
             (let ((__tmp217872
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217872 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         gxc#!procedure::t
         '(keys main)
         __tmp217871
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args213137_
        (apply make-struct-instance gxc#!kw-lambda-primary::t _$args213137_)))
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
      (let ((__tmp217873 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp217873
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args213134_
        (apply make-class-instance gxc#!primitive::t _$args213134_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp217874 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp217874
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args213131_
        (apply make-class-instance gxc#!primitive-lambda::t _$args213131_)))
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
      (let ((__tmp217875 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp217875
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args213128_
        (apply make-class-instance
               gxc#!primitive-case-lambda::t
               _$args213128_)))
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
      (lambda (_self212966_
               _id212967_
               _super212968_
               _slots212969_
               _ctor-method212970_
               _struct?212971_
               _final?212972_)
        (let _lp212974_ ((_rest212976_ _super212968_))
          (let* ((_rest212977212985_ _rest212976_)
                 (_else212979212993_ (lambda () '#!void))
                 (_K212981212999_
                  (lambda (_rest212996_ _super-id212997_)
                    (if (##structure-ref
                         (let ((__tmp217878
                                (let ((__tmp217879
                                       (let ()
                                         (declare (not safe))
                                         (cons _id212967_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp217879))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp217878
                            _super-id212997_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp217876
                               (let ((__tmp217877
                                      (let ()
                                        (declare (not safe))
                                        (cons _id212967_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp217877))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp217876
                           _super-id212997_))
                        '#!void)
                    (let () (declare (not safe)) (_lp212974_ _rest212996_)))))
            (if (let () (declare (not safe)) (##pair? _rest212977212985_))
                (let ((_hd212982213002_
                       (let ()
                         (declare (not safe))
                         (##car _rest212977212985_)))
                      (_tl212983213004_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest212977212985_))))
                  (let* ((_super-id213007_ _hd212982213002_)
                         (_rest213009_ _tl212983213004_))
                    (declare (not safe))
                    (_K212981212999_ _rest213009_ _super-id213007_)))
                '#!void)))
        (if _struct?212971_
            (let* ((_super213010213020_ _super212968_)
                   (_else213013213028_
                    (lambda ()
                      (let ((__tmp217880
                             (let ((__tmp217881
                                    (let ()
                                      (declare (not safe))
                                      (cons _id212967_ '()))))
                               (declare (not safe))
                               (cons '!class __tmp217881))))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"bad class; struct can only extend a single struct"
                         __tmp217880
                         _super212968_)))))
              (let ((_K213018213050_ (lambda () '#!void))
                    (_K213015213036_
                     (lambda (_super-id213032_)
                       (let ((_klass213034_
                              (let ((__tmp217882
                                     (let ((__tmp217883
                                            (let ()
                                              (declare (not safe))
                                              (cons _id212967_ '()))))
                                       (declare (not safe))
                                       (cons '!class __tmp217883))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-class
                                 __tmp217882
                                 _super-id213032_))))
                         (if (##structure-ref
                              _klass213034_
                              '7
                              gxc#!class::t
                              '#f)
                             '#!void
                             (let ((__tmp217884
                                    (let ((__tmp217885
                                           (let ()
                                             (declare (not safe))
                                             (cons _id212967_ '()))))
                                      (declare (not safe))
                                      (cons '!class __tmp217885))))
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"bad class; struct extending non struct"
                                __tmp217884
                                _super-id213032_)))))))
                (let ((_try-match213012213046_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _super213010213020_))
                             (let ((_tl213017213041_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _super213010213020_)))
                                   (_hd213016213039_
                                    (let ()
                                      (declare (not safe))
                                      (##car _super213010213020_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _tl213017213041_))
                                   (let ((_super-id213044_ _hd213016213039_))
                                     (declare (not safe))
                                     (_K213015213036_ _super-id213044_))
                                   (let ()
                                     (declare (not safe))
                                     (_else213013213028_))))
                             (let ()
                               (declare (not safe))
                               (_else213013213028_))))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _super213010213020_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (_try-match213012213046_))))))
            '#!void)
        (let* ((_ctor-method213101_
                (let ((_$e213053_ _ctor-method212970_))
                  (if _$e213053_
                      _$e213053_
                      (let _lp213056_ ((_rest213058_ _super212968_)
                                       (_method213059_ '#f))
                        (let* ((_rest213060213068_ _rest213058_)
                               (_else213062213076_ (lambda () _method213059_))
                               (_K213064213089_
                                (lambda (_rest213079_ _super-id213080_)
                                  (let* ((_klass213082_
                                          (let ((__tmp217886
                                                 (let ((__tmp217887
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id212967_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp217887))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp217886
                                             _super-id213080_)))
                                         (_$e213084_
                                          (##structure-ref
                                           _klass213082_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e213084_
                                        ((lambda (_ctor-method213087_)
                                           (if _method213059_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method213087_
                                                          _method213059_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp213056_
                                                      _rest213079_
                                                      _ctor-method213087_))
                                                   (let ((__tmp217888
                                                          (let ((__tmp217889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id212967_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp217889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp217888
                                                      _method213059_
                                                      _ctor-method213087_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp213056_
                                                  _rest213079_
                                                  _ctor-method213087_))))
                                         _$e213084_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp213056_
                                           _rest213079_
                                           _method213059_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest213060213068_))
                              (let ((_hd213065213092_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest213060213068_)))
                                    (_tl213066213094_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest213060213068_))))
                                (let* ((_super-id213097_ _hd213065213092_)
                                       (_rest213099_ _tl213066213094_))
                                  (declare (not safe))
                                  (_K213064213089_
                                   _rest213099_
                                   _super-id213097_)))
                              (let ()
                                (declare (not safe))
                                (_else213062213076_))))))))
               (_g217890_
                (let ((__tmp217895
                       (lambda (_klass-id213103_)
                         (let ((__tmp217896
                                (##structure-ref
                                 (let ((__tmp217897
                                        (let ((__tmp217898
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id212967_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp217898))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp217897
                                    _klass-id213103_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id213103_ __tmp217896))))
                      (__tmp217892
                       (lambda (_klass-id213105_)
                         (##structure-ref
                          (let ((__tmp217893
                                 (let ((__tmp217894
                                        (let ()
                                          (declare (not safe))
                                          (cons _id212967_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp217894))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp217893
                             _klass-id213105_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp217895
                   __tmp217892
                   eq?
                   identity
                   '()
                   _super212968_))))
          (begin
            (let ((_g217891_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g217890_)
                         (##vector-length _g217890_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g217891_ 2)))
                  (error "Context expects 2 values" _g217891_)))
            (let ((_precedence-list213107_
                   (let () (declare (not safe)) (##vector-ref _g217890_ 0)))
                  (_super-struct213108_
                   (let () (declare (not safe)) (##vector-ref _g217890_ 1))))
              (let ((_fields213114_
                     (let* ((_base-struct213112_
                             (let ((__tmp217899
                                    (lambda (_klass-id213110_)
                                      (##structure-ref
                                       (let ((__tmp217900
                                              (let ((__tmp217901
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _id212967_ '()))))
                                                (declare (not safe))
                                                (cons '!class __tmp217901))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-class
                                          __tmp217900
                                          _klass-id213110_))
                                       '7
                                       gxc#!class::t
                                       '#f))))
                               (declare (not safe))
                               (find __tmp217899 _precedence-list213107_)))
                            (__tmp217902
                             (let ((__tmp217903
                                    (let ()
                                      (declare (not safe))
                                      (cons _id212967_ '()))))
                               (declare (not safe))
                               (cons '!class __tmp217903))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp217902
                        _base-struct213112_
                        _precedence-list213107_
                        _slots212969_))))
                (##structure-set! _self212966_ _id212967_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self212966_
                 _super212968_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212966_
                 _precedence-list213107_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212966_
                 _slots212969_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212966_
                 _fields213114_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212966_
                 _ctor-method213101_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212966_
                 _struct?212971_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212966_
                 _final?212972_
                 '8
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self213117_
               _id213118_
               _super213119_
               _precedence-list213120_
               _slots213121_
               _fields213122_
               _constructor213123_
               _struct?213124_
               _final?213125_
               _methods213126_)
        (##structure-set! _self213117_ _id213118_ '1 gxc#!type::t '#f)
        (##structure-set! _self213117_ _super213119_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self213117_
         _precedence-list213120_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self213117_ _slots213121_ '4 gxc#!class::t '#f)
        (##structure-set! _self213117_ _fields213122_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self213117_
         _constructor213123_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self213117_ _struct?213124_ '7 gxc#!class::t '#f)
        (##structure-set! _self213117_ _final?213125_ '8 gxc#!class::t '#f)
        (if _methods213126_
            (##structure-set!
             _self213117_
             (let ()
               (declare (not safe))
               (list->table _methods213126_ 'test: eq?))
             '9
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g217905_
        (let ((_g217904_ (let () (declare (not safe)) (##length _g217905_))))
          (cond ((let () (declare (not safe)) (##fx= _g217904_ 7))
                 (apply (lambda (_self212966_
                                 _id212967_
                                 _super212968_
                                 _slots212969_
                                 _ctor-method212970_
                                 _struct?212971_
                                 _final?212972_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self212966_
                             _id212967_
                             _super212968_
                             _slots212969_
                             _ctor-method212970_
                             _struct?212971_
                             _final?212972_)))
                        _g217905_))
                ((let () (declare (not safe)) (##fx= _g217904_ 10))
                 (apply (lambda (_self213117_
                                 _id213118_
                                 _super213119_
                                 _precedence-list213120_
                                 _slots213121_
                                 _fields213122_
                                 _constructor213123_
                                 _struct?213124_
                                 _final?213125_
                                 _methods213126_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self213117_
                             _id213118_
                             _super213119_
                             _precedence-list213120_
                             _slots213121_
                             _fields213122_
                             _constructor213123_
                             _struct?213124_
                             _final?213125_
                             _methods213126_)))
                        _g217905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g217905_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t217767)
        (let ((__id217768
               (let ((__tmp217777
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217767 'id))))
                 (if __tmp217777 __tmp217777 (error '"Unknown slot" 'id))))
              (__slots217769
               (let ((__tmp217778
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217767 'slots))))
                 (if __tmp217778 __tmp217778 (error '"Unknown slot" 'slots))))
              (__struct?217770
               (let ((__tmp217779
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217767 'struct?))))
                 (if __tmp217779
                     __tmp217779
                     (error '"Unknown slot" 'struct?))))
              (__final?217771
               (let ((__tmp217780
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217767 'final?))))
                 (if __tmp217780 __tmp217780 (error '"Unknown slot" 'final?))))
              (__super217772
               (let ((__tmp217781
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217767 'super))))
                 (if __tmp217781 __tmp217781 (error '"Unknown slot" 'super))))
              (__constructor217773
               (let ((__tmp217782
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217767 'constructor))))
                 (if __tmp217782
                     __tmp217782
                     (error '"Unknown slot" 'constructor))))
              (__methods217774
               (let ((__tmp217783
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217767 'methods))))
                 (if __tmp217783
                     __tmp217783
                     (error '"Unknown slot" 'methods))))
              (__fields217775
               (let ((__tmp217784
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217767 'fields))))
                 (if __tmp217784 __tmp217784 (error '"Unknown slot" 'fields))))
              (__precedence-list217776
               (let ((__tmp217785
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217767 'precedence-list))))
                 (if __tmp217785
                     __tmp217785
                     (error '"Unknown slot" 'precedence-list)))))
          (lambda _g217907_
            (let ((_g217906_
                   (let () (declare (not safe)) (##length _g217907_))))
              (cond ((let () (declare (not safe)) (##fx= _g217906_ 7))
                     (apply (lambda (_self212966_
                                     _id212967_
                                     _super212968_
                                     _slots212969_
                                     _ctor-method212970_
                                     _struct?212971_
                                     _final?212972_)
                              (let _lp212974_ ((_rest212976_ _super212968_))
                                (let* ((_rest212977212985_ _rest212976_)
                                       (_else212979212993_ (lambda () '#!void))
                                       (_K212981212999_
                                        (lambda (_rest212996_ _super-id212997_)
                                          (if (##structure-ref
                                               (let ((__tmp217910
                                                      (let ((__tmp217911
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id212967_ '()))))
                (declare (not safe))
                (cons '!class __tmp217911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp217910
                                                  _super-id212997_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp217908
                                                     (let ((__tmp217909
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id212967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp217909))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp217908
                                                 _super-id212997_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp212974_ _rest212996_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest212977212985_))
                                      (let ((_hd212982213002_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest212977212985_)))
                                            (_tl212983213004_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest212977212985_))))
                                        (let* ((_super-id213007_
                                                _hd212982213002_)
                                               (_rest213009_ _tl212983213004_))
                                          (declare (not safe))
                                          (_K212981212999_
                                           _rest213009_
                                           _super-id213007_)))
                                      '#!void)))
                              (if _struct?212971_
                                  (let* ((_super213010213020_ _super212968_)
                                         (_else213013213028_
                                          (lambda ()
                                            (let ((__tmp217912
                                                   (let ((__tmp217913
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _id212967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '!class
                                                           __tmp217913))))
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"bad class; struct can only extend a single struct"
                                               __tmp217912
                                               _super212968_)))))
                                    (let ((_K213018213050_ (lambda () '#!void))
                                          (_K213015213036_
                                           (lambda (_super-id213032_)
                                             (let ((_klass213034_
                                                    (let ((__tmp217914
                                                           (let ((__tmp217915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id212967_ '()))))
                     (declare (not safe))
                     (cons '!class __tmp217915))))
              (declare (not safe))
              (gxc#optimizer-resolve-class __tmp217914 _super-id213032_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-ref
                                                    _klass213034_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   '#!void
                                                   (let ((__tmp217916
                                                          (let ((__tmp217917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id212967_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp217917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"bad class; struct extending non struct"
                                                      __tmp217916
                                                      _super-id213032_)))))))
                                      (let ((_try-match213012213046_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _super213010213020_))
                                                   (let ((_tl213017213041_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _super213010213020_)))
                                                         (_hd213016213039_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _super213010213020_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##null? _tl213017213041_))
                                                         (let ((_super-id213044_
                                                                _hd213016213039_))
                                                           (declare (not safe))
                                                           (_K213015213036_
                                                            _super-id213044_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (_else213013213028_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_else213013213028_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _super213010213020_))
                                            '#!void
                                            (let ()
                                              (declare (not safe))
                                              (_try-match213012213046_))))))
                                  '#!void)
                              (let* ((_ctor-method213101_
                                      (let ((_$e213053_ _ctor-method212970_))
                                        (if _$e213053_
                                            _$e213053_
                                            (let _lp213056_ ((_rest213058_
                                                              _super212968_)
                                                             (_method213059_
                                                              '#f))
                                              (let* ((_rest213060213068_
                                                      _rest213058_)
                                                     (_else213062213076_
                                                      (lambda ()
                                                        _method213059_))
                                                     (_K213064213089_
                                                      (lambda (_rest213079_
                                                               _super-id213080_)
                                                        (let* ((_klass213082_
                                                                (let ((__tmp217918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp217919
                                      (let ()
                                        (declare (not safe))
                                        (cons _id212967_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp217919))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp217918
                           _super-id213080_)))
                       (_$e213084_
                        (##structure-ref _klass213082_ '6 gxc#!class::t '#f)))
                  (if _$e213084_
                      ((lambda (_ctor-method213087_)
                         (if _method213059_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method213087_ _method213059_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp213056_
                                    _rest213079_
                                    _ctor-method213087_))
                                 (let ((__tmp217920
                                        (let ((__tmp217921
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id212967_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp217921))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp217920
                                    _method213059_
                                    _ctor-method213087_)))
                             (let ()
                               (declare (not safe))
                               (_lp213056_ _rest213079_ _ctor-method213087_))))
                       _$e213084_)
                      (let ()
                        (declare (not safe))
                        (_lp213056_ _rest213079_ _method213059_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest213060213068_))
                                                    (let ((_hd213065213092_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest213060213068_)))
                                                          (_tl213066213094_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest213060213068_))))
                                                      (let* ((_super-id213097_
                                                              _hd213065213092_)
                                                             (_rest213099_
                                                              _tl213066213094_))
                                                        (declare (not safe))
                                                        (_K213064213089_
                                                         _rest213099_
                                                         _super-id213097_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else213062213076_))))))))
                                     (_g217922_
                                      (let ((__tmp217927
                                             (lambda (_klass-id213103_)
                                               (let ((__tmp217928
                                                      (##structure-ref
                                                       (let ((__tmp217929
                                                              (let ((__tmp217930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id212967_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp217930))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp217929 _klass-id213103_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id213103_
                                                       __tmp217928))))
                                            (__tmp217924
                                             (lambda (_klass-id213105_)
                                               (##structure-ref
                                                (let ((__tmp217925
                                                       (let ((__tmp217926
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id212967_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp217926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp217925
                                                   _klass-id213105_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp217927
                                         __tmp217924
                                         eq?
                                         identity
                                         '()
                                         _super212968_))))
                                (begin
                                  (let ((_g217923_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217922_)
                                               (##vector-length _g217922_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217923_ 2)))
                                        (error "Context expects 2 values"
                                               _g217923_)))
                                  (let ((_precedence-list213107_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g217922_ 0)))
                                        (_super-struct213108_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g217922_ 1))))
                                    (let ((_fields213114_
                                           (let* ((_base-struct213112_
                                                   (let ((__tmp217931
                                                          (lambda (_klass-id213110_)
                                                            (##structure-ref
                                                             (let ((__tmp217932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp217933
                                   (let ()
                                     (declare (not safe))
                                     (cons _id212967_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp217933))))
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        __tmp217932
                        _klass-id213110_))
                     '7
                     gxc#!class::t
                     '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (find __tmp217931
                                                           _precedence-list213107_)))
                                                  (__tmp217934
                                                   (let ((__tmp217935
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _id212967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '!class
                                                           __tmp217935))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp217934
                                              _base-struct213112_
                                              _precedence-list213107_
                                              _slots212969_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212966_
                                         _id212967_
                                         __id217768
                                         __t217767
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212966_
                                         _super212968_
                                         __super217772
                                         __t217767
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212966_
                                         _precedence-list213107_
                                         __precedence-list217776
                                         __t217767
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212966_
                                         _slots212969_
                                         __slots217769
                                         __t217767
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212966_
                                         _fields213114_
                                         __fields217775
                                         __t217767
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212966_
                                         _ctor-method213101_
                                         __constructor217773
                                         __t217767
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212966_
                                         _struct?212971_
                                         __struct?217770
                                         __t217767
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212966_
                                         _final?212972_
                                         __final?217771
                                         __t217767
                                         '#f)))))))
                            _g217907_))
                    ((let () (declare (not safe)) (##fx= _g217906_ 10))
                     (apply (lambda (_self213117_
                                     _id213118_
                                     _super213119_
                                     _precedence-list213120_
                                     _slots213121_
                                     _fields213122_
                                     _constructor213123_
                                     _struct?213124_
                                     _final?213125_
                                     _methods213126_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213117_
                                 _id213118_
                                 __id217768
                                 __t217767
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213117_
                                 _super213119_
                                 __super217772
                                 __t217767
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213117_
                                 _precedence-list213120_
                                 __precedence-list217776
                                 __t217767
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213117_
                                 _slots213121_
                                 __slots217769
                                 __t217767
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213117_
                                 _fields213122_
                                 __fields217775
                                 __t217767
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213117_
                                 _constructor213123_
                                 __constructor217773
                                 __t217767
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213117_
                                 _struct?213124_
                                 __struct?217770
                                 __t217767
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213117_
                                 _final?213125_
                                 __final?217771
                                 __t217767
                                 '#f))
                              (if _methods213126_
                                  (let ((__tmp217936
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods213126_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self213117_
                                     __tmp217936
                                     __methods217774
                                     __t217767
                                     '#f))
                                  '#!void))
                            _g217907_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g217907_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where212818_
               _base-struct212819_
               _precedence-list212820_
               _direct-slots212821_)
        (let* ((_base-fields212823_
                (if _base-struct212819_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where212818_
                        _base-struct212819_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields212825_ (reverse _base-fields212823_))
               (_seen-slots212833_
                (let ((_tab212827_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g212828212830_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab212827_ _g212828212830_ '#t)))
                   _base-fields212823_)
                  _tab212827_))
               (_process-slot212837_
                (lambda (_slot212835_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots212833_ _slot212835_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots212833_ _slot212835_ '#t))
                        (set! _r-fields212825_
                              (let ()
                                (declare (not safe))
                                (cons _slot212835_ _r-fields212825_))))))))
          (for-each
           (lambda (_mixin212840_)
             (let ((_klass212842_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where212818_
                       _mixin212840_))))
               (if (##structure-ref _klass212842_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot212837_
                    (##structure-ref _klass212842_ '5 gxc#!class::t '#f)))))
           _precedence-list212820_)
          (for-each _process-slot212837_ _direct-slots212821_)
          (reverse _r-fields212825_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass212777_ _slot212778_)
        (let _lp212780_ ((_rest212782_
                          (##structure-ref _klass212777_ '5 gxc#!class::t '#f))
                         (_offset212783_ '1))
          (let* ((_rest212784212792_ _rest212782_)
                 (_else212786212800_
                  (lambda ()
                    (let ((__tmp217938
                           (##structure-ref _klass212777_ '1 gxc#!type::t '#f))
                          (__tmp217937
                           (##structure-ref
                            _klass212777_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp217938
                       __tmp217937
                       _slot212778_))))
                 (_K212788212806_
                  (lambda (_rest212803_ _s212804_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s212804_ _slot212778_))
                        _offset212783_
                        (let ((__tmp217939
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset212783_ '1))))
                          (declare (not safe))
                          (_lp212780_ _rest212803_ __tmp217939))))))
            (if (let () (declare (not safe)) (##pair? _rest212784212792_))
                (let ((_hd212789212809_
                       (let ()
                         (declare (not safe))
                         (##car _rest212784212792_)))
                      (_tl212790212811_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest212784212792_))))
                  (let* ((_s212814_ _hd212789212809_)
                         (_rest212816_ _tl212790212811_))
                    (declare (not safe))
                    (_K212788212806_ _rest212816_ _s212814_)))
                (let () (declare (not safe)) (_else212786212800_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass212735_ _slot212736_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass212735_ _slot212736_))
            _klass212735_
            (let _lp212738_ ((_rest212740_
                              (##structure-ref
                               _klass212735_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest212741212749_ _rest212740_)
                     (_else212743212757_ (lambda () '#f))
                     (_K212745212765_
                      (lambda (_rest212760_ _super212761_)
                        (let ((_super-class212763_
                               (let ((__tmp217940
                                      (let ((__tmp217941
                                             (let ((__tmp217943
                                                    (##structure-ref
                                                     _klass212735_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp217942
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot212736_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp217943
                                                     __tmp217942))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp217941))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp217940
                                  _super212761_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class212763_
                                 _slot212736_))
                              _super-class212763_
                              (let ()
                                (declare (not safe))
                                (_lp212738_ _rest212760_)))))))
                (if (let () (declare (not safe)) (##pair? _rest212741212749_))
                    (let ((_hd212746212768_
                           (let ()
                             (declare (not safe))
                             (##car _rest212741212749_)))
                          (_tl212747212770_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest212741212749_))))
                      (let* ((_super212773_ _hd212746212768_)
                             (_rest212775_ _tl212747212770_))
                        (declare (not safe))
                        (_K212745212765_ _rest212775_ _super212773_)))
                    (let () (declare (not safe)) (_else212743212757_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass212732_ _slot212733_)
        (if (##structure-ref _klass212732_ '7 gxc#!class::t '#f)
            (memq _slot212733_
                  (##structure-ref _klass212732_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self212729_ _id212730_)
        (##structure-set! _self212729_ _id212730_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t217786)
        (let ((__id217787
               (let ((__tmp217788
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217786 'id))))
                 (if __tmp217788 __tmp217788 (error '"Unknown slot" 'id)))))
          (lambda (_self212729_ _id212730_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212729_
               _id212730_
               __id217787
               __t217786
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
      (lambda (_self212604_ _id212605_)
        (##structure-set! _self212604_ _id212605_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t217789)
        (let ((__id217790
               (let ((__tmp217791
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217789 'id))))
                 (if __tmp217791 __tmp217791 (error '"Unknown slot" 'id)))))
          (lambda (_self212604_ _id212605_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212604_
               _id212605_
               __id217790
               __t217789
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
      (lambda (_self212477_ _id212478_ _slot212479_ _checked?212480_)
        (##structure-set! _self212477_ _id212478_ '1 gxc#!type::t '#f)
        (##structure-set! _self212477_ _slot212479_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self212477_
         _checked?212480_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t217792)
        (let ((__id217793
               (let ((__tmp217796
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217792 'id))))
                 (if __tmp217796 __tmp217796 (error '"Unknown slot" 'id))))
              (__slot217794
               (let ((__tmp217797
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217792 'slot))))
                 (if __tmp217797 __tmp217797 (error '"Unknown slot" 'slot))))
              (__checked?217795
               (let ((__tmp217798
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217792 'checked?))))
                 (if __tmp217798
                     __tmp217798
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self212477_ _id212478_ _slot212479_ _checked?212480_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212477_
               _id212478_
               __id217793
               __t217792
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212477_
               _slot212479_
               __slot217794
               __t217792
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212477_
               _checked?212480_
               __checked?217795
               __t217792
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
      (lambda (_self212350_ _id212351_ _slot212352_ _checked?212353_)
        (##structure-set! _self212350_ _id212351_ '1 gxc#!type::t '#f)
        (##structure-set! _self212350_ _slot212352_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self212350_
         _checked?212353_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t217799)
        (let ((__id217800
               (let ((__tmp217803
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217799 'id))))
                 (if __tmp217803 __tmp217803 (error '"Unknown slot" 'id))))
              (__slot217801
               (let ((__tmp217804
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217799 'slot))))
                 (if __tmp217804 __tmp217804 (error '"Unknown slot" 'slot))))
              (__checked?217802
               (let ((__tmp217805
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217799 'checked?))))
                 (if __tmp217805
                     __tmp217805
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self212350_ _id212351_ _slot212352_ _checked?212353_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212350_
               _id212351_
               __id217800
               __t217799
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212350_
               _slot212352_
               __slot217801
               __t217799
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212350_
               _checked?212353_
               __checked?217802
               __t217799
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
      (lambda (_self212194_
               _id212195_
               _arity212196_
               _dispatch212197_
               _inline212198_
               _typedecl212199_)
        (if (let ((__tmp217949
                   (let ()
                     (declare (not safe))
                     (##structure-length _self212194_))))
              (declare (not safe))
              (##fx< '5 __tmp217949))
            (begin
              (let ((__tmp217944
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212194_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212194_
                 _id212195_
                 '1
                 __tmp217944
                 '#f))
              (let ((__tmp217945
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212194_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212194_
                 _arity212196_
                 '2
                 __tmp217945
                 '#f))
              (let ((__tmp217946
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212194_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212194_
                 _dispatch212197_
                 '3
                 __tmp217946
                 '#f))
              (let ((__tmp217947
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212194_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212194_
                 _inline212198_
                 '4
                 __tmp217947
                 '#f))
              (let ((__tmp217948
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212194_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212194_
                 _typedecl212199_
                 '5
                 __tmp217948
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self212194_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self212194_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self212204_ _id212205_ _arity212206_ _dispatch212207_)
        (let* ((_inline212209_ '#f) (_typedecl212211_ '#f))
          (if (let ((__tmp217955
                     (let ()
                       (declare (not safe))
                       (##structure-length _self212204_))))
                (declare (not safe))
                (##fx< '5 __tmp217955))
              (begin
                (let ((__tmp217950
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212204_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212204_
                   _id212205_
                   '1
                   __tmp217950
                   '#f))
                (let ((__tmp217951
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212204_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212204_
                   _arity212206_
                   '2
                   __tmp217951
                   '#f))
                (let ((__tmp217952
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212204_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212204_
                   _dispatch212207_
                   '3
                   __tmp217952
                   '#f))
                (let ((__tmp217953
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212204_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212204_
                   _inline212209_
                   '4
                   __tmp217953
                   '#f))
                (let ((__tmp217954
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212204_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212204_
                   _typedecl212211_
                   '5
                   __tmp217954
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self212204_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self212204_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self212213_
               _id212214_
               _arity212215_
               _dispatch212216_
               _inline212217_)
        (let ((_typedecl212219_ '#f))
          (if (let ((__tmp217961
                     (let ()
                       (declare (not safe))
                       (##structure-length _self212213_))))
                (declare (not safe))
                (##fx< '5 __tmp217961))
              (begin
                (let ((__tmp217956
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212213_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212213_
                   _id212214_
                   '1
                   __tmp217956
                   '#f))
                (let ((__tmp217957
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212213_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212213_
                   _arity212215_
                   '2
                   __tmp217957
                   '#f))
                (let ((__tmp217958
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212213_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212213_
                   _dispatch212216_
                   '3
                   __tmp217958
                   '#f))
                (let ((__tmp217959
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212213_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212213_
                   _inline212217_
                   '4
                   __tmp217959
                   '#f))
                (let ((__tmp217960
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212213_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212213_
                   _typedecl212219_
                   '5
                   __tmp217960
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self212213_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self212213_)))))))
    (define gxc#!lambda:::init!
      (lambda _g217963_
        (let ((_g217962_ (let () (declare (not safe)) (##length _g217963_))))
          (cond ((let () (declare (not safe)) (##fx= _g217962_ 4))
                 (apply (lambda (_self212204_
                                 _id212205_
                                 _arity212206_
                                 _dispatch212207_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self212204_
                             _id212205_
                             _arity212206_
                             _dispatch212207_)))
                        _g217963_))
                ((let () (declare (not safe)) (##fx= _g217962_ 5))
                 (apply (lambda (_self212213_
                                 _id212214_
                                 _arity212215_
                                 _dispatch212216_
                                 _inline212217_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self212213_
                             _id212214_
                             _arity212215_
                             _dispatch212216_
                             _inline212217_)))
                        _g217963_))
                ((let () (declare (not safe)) (##fx= _g217962_ 6))
                 (apply (lambda (_self212221_
                                 _id212222_
                                 _arity212223_
                                 _dispatch212224_
                                 _inline212225_
                                 _typedecl212226_)
                          (if (let ((__tmp217969
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self212221_))))
                                (declare (not safe))
                                (##fx< '5 __tmp217969))
                              (begin
                                (let ((__tmp217964
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212221_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212221_
                                   _id212222_
                                   '1
                                   __tmp217964
                                   '#f))
                                (let ((__tmp217965
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212221_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212221_
                                   _arity212223_
                                   '2
                                   __tmp217965
                                   '#f))
                                (let ((__tmp217966
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212221_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212221_
                                   _dispatch212224_
                                   '3
                                   __tmp217966
                                   '#f))
                                (let ((__tmp217967
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212221_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212221_
                                   _inline212225_
                                   '4
                                   __tmp217967
                                   '#f))
                                (let ((__tmp217968
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212221_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212221_
                                   _typedecl212226_
                                   '5
                                   __tmp217968
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self212221_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self212221_)))))
                        _g217963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g217963_))))))
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
      (lambda (_self211946_ . _args211947_)
        (apply struct-instance-init! _self211946_ _args211947_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type211821_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211821_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type211821_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass211814_)
        (let ((_$e211816_
               (##structure-ref _klass211814_ '9 gxc#!class::t '#f)))
          (if _$e211816_
              _$e211816_
              (let ((_tab211819_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass211814_
                 _tab211819_
                 '9
                 gxc#!class::t
                 '#f)
                _tab211819_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass211805_ _method211806_)
        (let ((_tab211807211809_
               (##structure-ref _klass211805_ '9 gxc#!class::t '#f)))
          (if _tab211807211809_
              (let ((_tab211812_ _tab211807211809_))
                (declare (not safe))
                (table-ref _tab211812_ _method211806_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type211802_ _method211803_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211802_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type211802_ _method211803_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym211786_ _type211787_ _local?211788_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211787_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym211786_
                   _type211787_))
        (let ((__tmp217970
               (let () (declare (not safe)) (struct->list _type211787_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym211786_ '" " __tmp217970))
        (let ((__tmp217971
               (if _local?211788_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp217971 _sym211786_ _type211787_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym211793_ _type211794_)
        (let ((_local?211796_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym211793_
           _type211794_
           _local?211796_))))
    (define gxc#optimizer-declare-type!
      (lambda _g217973_
        (let ((_g217972_ (let () (declare (not safe)) (##length _g217973_))))
          (cond ((let () (declare (not safe)) (##fx= _g217972_ 2))
                 (apply (lambda (_sym211793_ _type211794_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym211793_
                             _type211794_)))
                        _g217973_))
                ((let () (declare (not safe)) (##fx= _g217972_ 3))
                 (apply (lambda (_sym211798_ _type211799_ _local?211800_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym211798_
                             _type211799_
                             _local?211800_)))
                        _g217973_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g217973_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym211772_ _local?211773_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym211772_))
        (let ((__tmp217974
               (if _local?211773_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp217974 _sym211772_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym211778_)
        (let ((_local?211780_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym211778_ _local?211780_))))
    (define gxc#optimizer-clear-type!
      (lambda _g217976_
        (let ((_g217975_ (let () (declare (not safe)) (##length _g217976_))))
          (cond ((let () (declare (not safe)) (##fx= _g217975_ 1))
                 (apply (lambda (_sym211778_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym211778_)))
                        _g217976_))
                ((let () (declare (not safe)) (##fx= _g217975_ 2))
                 (apply (lambda (_sym211782_ _local?211783_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym211782_
                             _local?211783_)))
                        _g217976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g217976_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t211745_ _method211746_ _sym211747_ _rebind?211748_)
        (let* ((_type211750_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t211745_)))
               (_$e211752_
                (let () (declare (not safe)) (gxc#!type-vtab _type211750_))))
          (if _$e211752_
              ((lambda (_vtab211755_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab211755_ _method211746_))
                     (if _rebind?211748_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t211745_
                              '" "
                              _method211746_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab211755_
                              _method211746_
                              _sym211747_)))
                         (let ((__tmp217981
                                (let ((__tmp217982
                                       (let ((__tmp217983
                                              (let ((__tmp217984
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym211747_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method211746_
                                                      __tmp217984))))
                                         (declare (not safe))
                                         (cons _type-t211745_ __tmp217983))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp217982))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp217981
                            _method211746_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t211745_
                          '" "
                          _method211746_
                          '" => "
                          _sym211747_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab211755_
                          _method211746_
                          _sym211747_)))))
               _$e211752_)
              (if (let () (declare (not safe)) (not _type211750_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t211745_))
                  (let ((__tmp217977
                         (let ((__tmp217978
                                (let ((__tmp217979
                                       (let ((__tmp217980
                                              (let ()
                                                (declare (not safe))
                                                (cons _method211746_ '()))))
                                         (declare (not safe))
                                         (cons _sym211747_ __tmp217980))))
                                  (declare (not safe))
                                  (cons _type-t211745_ __tmp217979))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp217978))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp217977
                     _type211750_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t211760_ _method211761_ _sym211762_)
        (let ((_rebind?211764_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t211760_
           _method211761_
           _sym211762_
           _rebind?211764_))))
    (define gxc#optimizer-declare-method!
      (lambda _g217986_
        (let ((_g217985_ (let () (declare (not safe)) (##length _g217986_))))
          (cond ((let () (declare (not safe)) (##fx= _g217985_ 3))
                 (apply (lambda (_type-t211760_ _method211761_ _sym211762_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t211760_
                             _method211761_
                             _sym211762_)))
                        _g217986_))
                ((let () (declare (not safe)) (##fx= _g217985_ 4))
                 (apply (lambda (_type-t211766_
                                 _method211767_
                                 _sym211768_
                                 _rebind?211769_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t211766_
                             _method211767_
                             _sym211768_
                             _rebind?211769_)))
                        _g217986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g217986_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym211733_)
        (let ((_$e211741_
               (let ((_ht211734211736_ (gxc#current-compile-local-type)))
                 (if _ht211734211736_
                     (let ((_ht211739_ _ht211734211736_))
                       (declare (not safe))
                       (table-ref _ht211739_ _sym211733_ '#f))
                     '#f))))
          (if _$e211741_
              _$e211741_
              (let ((__tmp217987
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp217987 _sym211733_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym211725_)
        (let ((_type211726211728_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym211725_))))
          (if _type211726211728_
              (let ((_type211731_ _type211726211728_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type211731_ 'gxc#!alias::t))
                    (let ((__tmp217988
                           (##structure-ref _type211731_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp217988))
                    _type211731_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where211717_ _klass-id211718_)
        (let ((_$e211720_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id211718_))))
          (if _$e211720_
              ((lambda (_klass211723_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass211723_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where211717_
                        _klass-id211718_
                        _klass211723_)))
                 _klass211723_)
               _$e211720_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where211717_
                 _klass-id211718_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t211714_ _method211715_)
        (let ((__tmp217989
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t211714_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp217989 _method211715_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym211712_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym211712_))
        (let ((__tmp217990
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp217990 _sym211712_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym211710_)
        (let ((__tmp217991
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp217991 _sym211710_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx211708_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx211708_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx211708_))
            (let () (declare (not safe)) (gx#stx-e _stx211708_)))))))
