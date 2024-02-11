(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707610215)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp217836
             (let ((__tmp217837
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217837 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#optimizer-info::t
         'optimizer-info
         '#f
         '(type ssxi methods)
         __tmp217836
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args213293_
        (apply make-struct-instance gxc#optimizer-info::t _$args213293_)))
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
      (lambda (_self213291_)
        (if (let ((__tmp217844
                   (let ()
                     (declare (not safe))
                     (##structure-length _self213291_))))
              (declare (not safe))
              (##fx< '3 __tmp217844))
            (begin
              (let ((__tmp217839
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217838
                     (let ()
                       (declare (not safe))
                       (##structure-type _self213291_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self213291_
                 __tmp217839
                 '1
                 __tmp217838
                 '#f))
              (let ((__tmp217841
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217840
                     (let ()
                       (declare (not safe))
                       (##structure-type _self213291_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self213291_
                 __tmp217841
                 '2
                 __tmp217840
                 '#f))
              (let ((__tmp217843
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217842
                     (let ()
                       (declare (not safe))
                       (##structure-type _self213291_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self213291_
                 __tmp217843
                 '3
                 __tmp217842
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self213291_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self213291_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp217845
             (let ((__tmp217846
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217846 '()))))
        (declare (not safe))
        (make-struct-type 'gxc#!type::t '!type '#f '(id) __tmp217845 '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-struct-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args213166_
        (apply make-struct-instance gxc#!type::t _$args213166_)))
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
      (let ((__tmp217847
             (let ((__tmp217848
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217848 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!alias::t
         '!alias
         gxc#!type::t
         '()
         __tmp217847
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-struct-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args213163_
        (apply make-struct-instance gxc#!alias::t _$args213163_)))
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
      (let ((__tmp217849
             (let ((__tmp217850
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217850 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!procedure::t
         '!procedure
         gxc#!type::t
         '()
         __tmp217849
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-struct-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args213160_
        (apply make-struct-instance gxc#!procedure::t _$args213160_)))
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
      (let ((__tmp217851
             (let ((__tmp217852
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217852 '()))))
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
         __tmp217851
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args213157_
        (apply make-struct-instance gxc#!class::t _$args213157_)))
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
      (let ((__tmp217853
             (let ((__tmp217854
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217854 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!predicate::t
         '!predicate
         gxc#!procedure::t
         '()
         __tmp217853
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-struct-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args213154_
        (apply make-struct-instance gxc#!predicate::t _$args213154_)))
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
      (let ((__tmp217855
             (let ((__tmp217856
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217856 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!constructor::t
         '!constructor
         gxc#!procedure::t
         '()
         __tmp217855
         '#f)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args213151_
        (apply make-struct-instance gxc#!constructor::t _$args213151_)))
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
      (let ((__tmp217857
             (let ((__tmp217858
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217858 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!accessor::t
         '!accessor
         gxc#!procedure::t
         '(slot checked?)
         __tmp217857
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-struct-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args213148_
        (apply make-struct-instance gxc#!accessor::t _$args213148_)))
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
      (let ((__tmp217859
             (let ((__tmp217860
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217860 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!mutator::t
         '!mutator
         gxc#!procedure::t
         '(slot checked?)
         __tmp217859
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-struct-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args213145_
        (apply make-struct-instance gxc#!mutator::t _$args213145_)))
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
      (let ((__tmp217861
             (let ((__tmp217862
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217862 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!lambda::t
         '!lambda
         gxc#!procedure::t
         '(arity dispatch inline inline-typedecl)
         __tmp217861
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args213142_
        (apply make-struct-instance gxc#!lambda::t _$args213142_)))
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
      (let ((__tmp217863
             (let ((__tmp217864
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217864 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!case-lambda::t
         '!case-lambda
         gxc#!procedure::t
         '(clauses)
         __tmp217863
         '#f)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args213139_
        (apply make-struct-instance gxc#!case-lambda::t _$args213139_)))
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
      (let ((__tmp217865
             (let ((__tmp217866
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217866 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         gxc#!procedure::t
         '(table dispatch)
         __tmp217865
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args213136_
        (apply make-struct-instance gxc#!kw-lambda::t _$args213136_)))
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
      (let ((__tmp217867
             (let ((__tmp217868
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217868 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         gxc#!procedure::t
         '(keys main)
         __tmp217867
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args213133_
        (apply make-struct-instance gxc#!kw-lambda-primary::t _$args213133_)))
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
      (let ((__tmp217869 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp217869
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args213130_
        (apply make-class-instance gxc#!primitive::t _$args213130_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp217870 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp217870
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args213127_
        (apply make-class-instance gxc#!primitive-lambda::t _$args213127_)))
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
      (let ((__tmp217871 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp217871
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args213124_
        (apply make-class-instance
               gxc#!primitive-case-lambda::t
               _$args213124_)))
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
      (lambda (_self212962_
               _id212963_
               _super212964_
               _slots212965_
               _ctor-method212966_
               _struct?212967_
               _final?212968_)
        (let _lp212970_ ((_rest212972_ _super212964_))
          (let* ((_rest212973212981_ _rest212972_)
                 (_else212975212989_ (lambda () '#!void))
                 (_K212977212995_
                  (lambda (_rest212992_ _super-id212993_)
                    (if (##structure-ref
                         (let ((__tmp217874
                                (let ((__tmp217875
                                       (let ()
                                         (declare (not safe))
                                         (cons _id212963_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp217875))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp217874
                            _super-id212993_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp217872
                               (let ((__tmp217873
                                      (let ()
                                        (declare (not safe))
                                        (cons _id212963_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp217873))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp217872
                           _super-id212993_))
                        '#!void)
                    (let () (declare (not safe)) (_lp212970_ _rest212992_)))))
            (if (let () (declare (not safe)) (##pair? _rest212973212981_))
                (let ((_hd212978212998_
                       (let ()
                         (declare (not safe))
                         (##car _rest212973212981_)))
                      (_tl212979213000_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest212973212981_))))
                  (let* ((_super-id213003_ _hd212978212998_)
                         (_rest213005_ _tl212979213000_))
                    (declare (not safe))
                    (_K212977212995_ _rest213005_ _super-id213003_)))
                '#!void)))
        (if _struct?212967_
            (let* ((_super213006213016_ _super212964_)
                   (_else213009213024_
                    (lambda ()
                      (let ((__tmp217876
                             (let ((__tmp217877
                                    (let ()
                                      (declare (not safe))
                                      (cons _id212963_ '()))))
                               (declare (not safe))
                               (cons '!class __tmp217877))))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"bad class; struct can only extend a single struct"
                         __tmp217876
                         _super212964_)))))
              (let ((_K213014213046_ (lambda () '#!void))
                    (_K213011213032_
                     (lambda (_super-id213028_)
                       (let ((_klass213030_
                              (let ((__tmp217878
                                     (let ((__tmp217879
                                            (let ()
                                              (declare (not safe))
                                              (cons _id212963_ '()))))
                                       (declare (not safe))
                                       (cons '!class __tmp217879))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-class
                                 __tmp217878
                                 _super-id213028_))))
                         (if (##structure-ref
                              _klass213030_
                              '7
                              gxc#!class::t
                              '#f)
                             '#!void
                             (let ((__tmp217880
                                    (let ((__tmp217881
                                           (let ()
                                             (declare (not safe))
                                             (cons _id212963_ '()))))
                                      (declare (not safe))
                                      (cons '!class __tmp217881))))
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"bad class; struct extending non struct"
                                __tmp217880
                                _super-id213028_)))))))
                (let ((_try-match213008213042_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _super213006213016_))
                             (let ((_tl213013213037_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _super213006213016_)))
                                   (_hd213012213035_
                                    (let ()
                                      (declare (not safe))
                                      (##car _super213006213016_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _tl213013213037_))
                                   (let ((_super-id213040_ _hd213012213035_))
                                     (declare (not safe))
                                     (_K213011213032_ _super-id213040_))
                                   (let ()
                                     (declare (not safe))
                                     (_else213009213024_))))
                             (let ()
                               (declare (not safe))
                               (_else213009213024_))))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _super213006213016_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (_try-match213008213042_))))))
            '#!void)
        (let* ((_ctor-method213097_
                (let ((_$e213049_ _ctor-method212966_))
                  (if _$e213049_
                      _$e213049_
                      (let _lp213052_ ((_rest213054_ _super212964_)
                                       (_method213055_ '#f))
                        (let* ((_rest213056213064_ _rest213054_)
                               (_else213058213072_ (lambda () _method213055_))
                               (_K213060213085_
                                (lambda (_rest213075_ _super-id213076_)
                                  (let* ((_klass213078_
                                          (let ((__tmp217882
                                                 (let ((__tmp217883
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id212963_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp217883))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp217882
                                             _super-id213076_)))
                                         (_$e213080_
                                          (##structure-ref
                                           _klass213078_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e213080_
                                        ((lambda (_ctor-method213083_)
                                           (if _method213055_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method213083_
                                                          _method213055_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp213052_
                                                      _rest213075_
                                                      _ctor-method213083_))
                                                   (let ((__tmp217884
                                                          (let ((__tmp217885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id212963_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp217885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp217884
                                                      _method213055_
                                                      _ctor-method213083_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp213052_
                                                  _rest213075_
                                                  _ctor-method213083_))))
                                         _$e213080_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp213052_
                                           _rest213075_
                                           _method213055_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest213056213064_))
                              (let ((_hd213061213088_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest213056213064_)))
                                    (_tl213062213090_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest213056213064_))))
                                (let* ((_super-id213093_ _hd213061213088_)
                                       (_rest213095_ _tl213062213090_))
                                  (declare (not safe))
                                  (_K213060213085_
                                   _rest213095_
                                   _super-id213093_)))
                              (let ()
                                (declare (not safe))
                                (_else213058213072_))))))))
               (_g217886_
                (let ((__tmp217891
                       (lambda (_klass-id213099_)
                         (let ((__tmp217892
                                (##structure-ref
                                 (let ((__tmp217893
                                        (let ((__tmp217894
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id212963_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp217894))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp217893
                                    _klass-id213099_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id213099_ __tmp217892))))
                      (__tmp217888
                       (lambda (_klass-id213101_)
                         (##structure-ref
                          (let ((__tmp217889
                                 (let ((__tmp217890
                                        (let ()
                                          (declare (not safe))
                                          (cons _id212963_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp217890))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp217889
                             _klass-id213101_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp217891
                   __tmp217888
                   eq?
                   identity
                   '()
                   _super212964_))))
          (begin
            (let ((_g217887_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g217886_)
                         (##vector-length _g217886_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g217887_ 2)))
                  (error "Context expects 2 values" _g217887_)))
            (let ((_precedence-list213103_
                   (let () (declare (not safe)) (##vector-ref _g217886_ 0)))
                  (_super-struct213104_
                   (let () (declare (not safe)) (##vector-ref _g217886_ 1))))
              (let ((_fields213110_
                     (let* ((_base-struct213108_
                             (let ((__tmp217895
                                    (lambda (_klass-id213106_)
                                      (##structure-ref
                                       (let ((__tmp217896
                                              (let ((__tmp217897
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _id212963_ '()))))
                                                (declare (not safe))
                                                (cons '!class __tmp217897))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-class
                                          __tmp217896
                                          _klass-id213106_))
                                       '7
                                       gxc#!class::t
                                       '#f))))
                               (declare (not safe))
                               (find __tmp217895 _precedence-list213103_)))
                            (__tmp217898
                             (let ((__tmp217899
                                    (let ()
                                      (declare (not safe))
                                      (cons _id212963_ '()))))
                               (declare (not safe))
                               (cons '!class __tmp217899))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp217898
                        _base-struct213108_
                        _precedence-list213103_
                        _slots212965_))))
                (##structure-set! _self212962_ _id212963_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self212962_
                 _super212964_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212962_
                 _precedence-list213103_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212962_
                 _slots212965_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212962_
                 _fields213110_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212962_
                 _ctor-method213097_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212962_
                 _struct?212967_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212962_
                 _final?212968_
                 '8
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self213113_
               _id213114_
               _super213115_
               _precedence-list213116_
               _slots213117_
               _fields213118_
               _constructor213119_
               _struct?213120_
               _final?213121_
               _methods213122_)
        (##structure-set! _self213113_ _id213114_ '1 gxc#!type::t '#f)
        (##structure-set! _self213113_ _super213115_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self213113_
         _precedence-list213116_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self213113_ _slots213117_ '4 gxc#!class::t '#f)
        (##structure-set! _self213113_ _fields213118_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self213113_
         _constructor213119_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self213113_ _struct?213120_ '7 gxc#!class::t '#f)
        (##structure-set! _self213113_ _final?213121_ '8 gxc#!class::t '#f)
        (if _methods213122_
            (##structure-set!
             _self213113_
             (let ()
               (declare (not safe))
               (list->table _methods213122_ 'test: eq?))
             '9
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g217901_
        (let ((_g217900_ (let () (declare (not safe)) (##length _g217901_))))
          (cond ((let () (declare (not safe)) (##fx= _g217900_ 7))
                 (apply (lambda (_self212962_
                                 _id212963_
                                 _super212964_
                                 _slots212965_
                                 _ctor-method212966_
                                 _struct?212967_
                                 _final?212968_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self212962_
                             _id212963_
                             _super212964_
                             _slots212965_
                             _ctor-method212966_
                             _struct?212967_
                             _final?212968_)))
                        _g217901_))
                ((let () (declare (not safe)) (##fx= _g217900_ 10))
                 (apply (lambda (_self213113_
                                 _id213114_
                                 _super213115_
                                 _precedence-list213116_
                                 _slots213117_
                                 _fields213118_
                                 _constructor213119_
                                 _struct?213120_
                                 _final?213121_
                                 _methods213122_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self213113_
                             _id213114_
                             _super213115_
                             _precedence-list213116_
                             _slots213117_
                             _fields213118_
                             _constructor213119_
                             _struct?213120_
                             _final?213121_
                             _methods213122_)))
                        _g217901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g217901_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t217763)
        (let ((__methods217764
               (let ((__tmp217773
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217763 'methods))))
                 (if __tmp217773
                     __tmp217773
                     (error '"Unknown slot" 'methods))))
              (__struct?217765
               (let ((__tmp217774
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217763 'struct?))))
                 (if __tmp217774
                     __tmp217774
                     (error '"Unknown slot" 'struct?))))
              (__slots217766
               (let ((__tmp217775
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217763 'slots))))
                 (if __tmp217775 __tmp217775 (error '"Unknown slot" 'slots))))
              (__final?217767
               (let ((__tmp217776
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217763 'final?))))
                 (if __tmp217776 __tmp217776 (error '"Unknown slot" 'final?))))
              (__super217768
               (let ((__tmp217777
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217763 'super))))
                 (if __tmp217777 __tmp217777 (error '"Unknown slot" 'super))))
              (__constructor217769
               (let ((__tmp217778
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217763 'constructor))))
                 (if __tmp217778
                     __tmp217778
                     (error '"Unknown slot" 'constructor))))
              (__id217770
               (let ((__tmp217779
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217763 'id))))
                 (if __tmp217779 __tmp217779 (error '"Unknown slot" 'id))))
              (__precedence-list217771
               (let ((__tmp217780
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217763 'precedence-list))))
                 (if __tmp217780
                     __tmp217780
                     (error '"Unknown slot" 'precedence-list))))
              (__fields217772
               (let ((__tmp217781
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217763 'fields))))
                 (if __tmp217781
                     __tmp217781
                     (error '"Unknown slot" 'fields)))))
          (lambda _g217903_
            (let ((_g217902_
                   (let () (declare (not safe)) (##length _g217903_))))
              (cond ((let () (declare (not safe)) (##fx= _g217902_ 7))
                     (apply (lambda (_self212962_
                                     _id212963_
                                     _super212964_
                                     _slots212965_
                                     _ctor-method212966_
                                     _struct?212967_
                                     _final?212968_)
                              (let _lp212970_ ((_rest212972_ _super212964_))
                                (let* ((_rest212973212981_ _rest212972_)
                                       (_else212975212989_ (lambda () '#!void))
                                       (_K212977212995_
                                        (lambda (_rest212992_ _super-id212993_)
                                          (if (##structure-ref
                                               (let ((__tmp217906
                                                      (let ((__tmp217907
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id212963_ '()))))
                (declare (not safe))
                (cons '!class __tmp217907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp217906
                                                  _super-id212993_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp217904
                                                     (let ((__tmp217905
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id212963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp217905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp217904
                                                 _super-id212993_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp212970_ _rest212992_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest212973212981_))
                                      (let ((_hd212978212998_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest212973212981_)))
                                            (_tl212979213000_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest212973212981_))))
                                        (let* ((_super-id213003_
                                                _hd212978212998_)
                                               (_rest213005_ _tl212979213000_))
                                          (declare (not safe))
                                          (_K212977212995_
                                           _rest213005_
                                           _super-id213003_)))
                                      '#!void)))
                              (if _struct?212967_
                                  (let* ((_super213006213016_ _super212964_)
                                         (_else213009213024_
                                          (lambda ()
                                            (let ((__tmp217908
                                                   (let ((__tmp217909
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _id212963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '!class
                                                           __tmp217909))))
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"bad class; struct can only extend a single struct"
                                               __tmp217908
                                               _super212964_)))))
                                    (let ((_K213014213046_ (lambda () '#!void))
                                          (_K213011213032_
                                           (lambda (_super-id213028_)
                                             (let ((_klass213030_
                                                    (let ((__tmp217910
                                                           (let ((__tmp217911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id212963_ '()))))
                     (declare (not safe))
                     (cons '!class __tmp217911))))
              (declare (not safe))
              (gxc#optimizer-resolve-class __tmp217910 _super-id213028_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-ref
                                                    _klass213030_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   '#!void
                                                   (let ((__tmp217912
                                                          (let ((__tmp217913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id212963_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp217913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"bad class; struct extending non struct"
                                                      __tmp217912
                                                      _super-id213028_)))))))
                                      (let ((_try-match213008213042_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _super213006213016_))
                                                   (let ((_tl213013213037_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _super213006213016_)))
                                                         (_hd213012213035_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _super213006213016_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##null? _tl213013213037_))
                                                         (let ((_super-id213040_
                                                                _hd213012213035_))
                                                           (declare (not safe))
                                                           (_K213011213032_
                                                            _super-id213040_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (_else213009213024_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_else213009213024_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _super213006213016_))
                                            '#!void
                                            (let ()
                                              (declare (not safe))
                                              (_try-match213008213042_))))))
                                  '#!void)
                              (let* ((_ctor-method213097_
                                      (let ((_$e213049_ _ctor-method212966_))
                                        (if _$e213049_
                                            _$e213049_
                                            (let _lp213052_ ((_rest213054_
                                                              _super212964_)
                                                             (_method213055_
                                                              '#f))
                                              (let* ((_rest213056213064_
                                                      _rest213054_)
                                                     (_else213058213072_
                                                      (lambda ()
                                                        _method213055_))
                                                     (_K213060213085_
                                                      (lambda (_rest213075_
                                                               _super-id213076_)
                                                        (let* ((_klass213078_
                                                                (let ((__tmp217914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp217915
                                      (let ()
                                        (declare (not safe))
                                        (cons _id212963_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp217915))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp217914
                           _super-id213076_)))
                       (_$e213080_
                        (##structure-ref _klass213078_ '6 gxc#!class::t '#f)))
                  (if _$e213080_
                      ((lambda (_ctor-method213083_)
                         (if _method213055_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method213083_ _method213055_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp213052_
                                    _rest213075_
                                    _ctor-method213083_))
                                 (let ((__tmp217916
                                        (let ((__tmp217917
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id212963_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp217917))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp217916
                                    _method213055_
                                    _ctor-method213083_)))
                             (let ()
                               (declare (not safe))
                               (_lp213052_ _rest213075_ _ctor-method213083_))))
                       _$e213080_)
                      (let ()
                        (declare (not safe))
                        (_lp213052_ _rest213075_ _method213055_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest213056213064_))
                                                    (let ((_hd213061213088_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest213056213064_)))
                                                          (_tl213062213090_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest213056213064_))))
                                                      (let* ((_super-id213093_
                                                              _hd213061213088_)
                                                             (_rest213095_
                                                              _tl213062213090_))
                                                        (declare (not safe))
                                                        (_K213060213085_
                                                         _rest213095_
                                                         _super-id213093_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else213058213072_))))))))
                                     (_g217918_
                                      (let ((__tmp217923
                                             (lambda (_klass-id213099_)
                                               (let ((__tmp217924
                                                      (##structure-ref
                                                       (let ((__tmp217925
                                                              (let ((__tmp217926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id212963_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp217926))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp217925 _klass-id213099_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id213099_
                                                       __tmp217924))))
                                            (__tmp217920
                                             (lambda (_klass-id213101_)
                                               (##structure-ref
                                                (let ((__tmp217921
                                                       (let ((__tmp217922
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id212963_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp217922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp217921
                                                   _klass-id213101_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp217923
                                         __tmp217920
                                         eq?
                                         identity
                                         '()
                                         _super212964_))))
                                (begin
                                  (let ((_g217919_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217918_)
                                               (##vector-length _g217918_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217919_ 2)))
                                        (error "Context expects 2 values"
                                               _g217919_)))
                                  (let ((_precedence-list213103_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g217918_ 0)))
                                        (_super-struct213104_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g217918_ 1))))
                                    (let ((_fields213110_
                                           (let* ((_base-struct213108_
                                                   (let ((__tmp217927
                                                          (lambda (_klass-id213106_)
                                                            (##structure-ref
                                                             (let ((__tmp217928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp217929
                                   (let ()
                                     (declare (not safe))
                                     (cons _id212963_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp217929))))
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        __tmp217928
                        _klass-id213106_))
                     '7
                     gxc#!class::t
                     '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (find __tmp217927
                                                           _precedence-list213103_)))
                                                  (__tmp217930
                                                   (let ((__tmp217931
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _id212963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '!class
                                                           __tmp217931))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp217930
                                              _base-struct213108_
                                              _precedence-list213103_
                                              _slots212965_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212962_
                                         _id212963_
                                         __id217770
                                         __t217763
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212962_
                                         _super212964_
                                         __super217768
                                         __t217763
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212962_
                                         _precedence-list213103_
                                         __precedence-list217771
                                         __t217763
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212962_
                                         _slots212965_
                                         __slots217766
                                         __t217763
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212962_
                                         _fields213110_
                                         __fields217772
                                         __t217763
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212962_
                                         _ctor-method213097_
                                         __constructor217769
                                         __t217763
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212962_
                                         _struct?212967_
                                         __struct?217765
                                         __t217763
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212962_
                                         _final?212968_
                                         __final?217767
                                         __t217763
                                         '#f)))))))
                            _g217903_))
                    ((let () (declare (not safe)) (##fx= _g217902_ 10))
                     (apply (lambda (_self213113_
                                     _id213114_
                                     _super213115_
                                     _precedence-list213116_
                                     _slots213117_
                                     _fields213118_
                                     _constructor213119_
                                     _struct?213120_
                                     _final?213121_
                                     _methods213122_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213113_
                                 _id213114_
                                 __id217770
                                 __t217763
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213113_
                                 _super213115_
                                 __super217768
                                 __t217763
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213113_
                                 _precedence-list213116_
                                 __precedence-list217771
                                 __t217763
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213113_
                                 _slots213117_
                                 __slots217766
                                 __t217763
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213113_
                                 _fields213118_
                                 __fields217772
                                 __t217763
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213113_
                                 _constructor213119_
                                 __constructor217769
                                 __t217763
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213113_
                                 _struct?213120_
                                 __struct?217765
                                 __t217763
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213113_
                                 _final?213121_
                                 __final?217767
                                 __t217763
                                 '#f))
                              (if _methods213122_
                                  (let ((__tmp217932
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods213122_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self213113_
                                     __tmp217932
                                     __methods217764
                                     __t217763
                                     '#f))
                                  '#!void))
                            _g217903_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g217903_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where212814_
               _base-struct212815_
               _precedence-list212816_
               _direct-slots212817_)
        (let* ((_base-fields212819_
                (if _base-struct212815_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where212814_
                        _base-struct212815_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields212821_ (reverse _base-fields212819_))
               (_seen-slots212829_
                (let ((_tab212823_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g212824212826_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab212823_ _g212824212826_ '#t)))
                   _base-fields212819_)
                  _tab212823_))
               (_process-slot212833_
                (lambda (_slot212831_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots212829_ _slot212831_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots212829_ _slot212831_ '#t))
                        (set! _r-fields212821_
                              (let ()
                                (declare (not safe))
                                (cons _slot212831_ _r-fields212821_))))))))
          (for-each
           (lambda (_mixin212836_)
             (let ((_klass212838_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where212814_
                       _mixin212836_))))
               (if (##structure-ref _klass212838_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot212833_
                    (##structure-ref _klass212838_ '5 gxc#!class::t '#f)))))
           _precedence-list212816_)
          (for-each _process-slot212833_ _direct-slots212817_)
          (reverse _r-fields212821_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass212773_ _slot212774_)
        (let _lp212776_ ((_rest212778_
                          (##structure-ref _klass212773_ '5 gxc#!class::t '#f))
                         (_offset212779_ '1))
          (let* ((_rest212780212788_ _rest212778_)
                 (_else212782212796_
                  (lambda ()
                    (let ((__tmp217934
                           (##structure-ref _klass212773_ '1 gxc#!type::t '#f))
                          (__tmp217933
                           (##structure-ref
                            _klass212773_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp217934
                       __tmp217933
                       _slot212774_))))
                 (_K212784212802_
                  (lambda (_rest212799_ _s212800_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s212800_ _slot212774_))
                        _offset212779_
                        (let ((__tmp217935
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset212779_ '1))))
                          (declare (not safe))
                          (_lp212776_ _rest212799_ __tmp217935))))))
            (if (let () (declare (not safe)) (##pair? _rest212780212788_))
                (let ((_hd212785212805_
                       (let ()
                         (declare (not safe))
                         (##car _rest212780212788_)))
                      (_tl212786212807_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest212780212788_))))
                  (let* ((_s212810_ _hd212785212805_)
                         (_rest212812_ _tl212786212807_))
                    (declare (not safe))
                    (_K212784212802_ _rest212812_ _s212810_)))
                (let () (declare (not safe)) (_else212782212796_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass212731_ _slot212732_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass212731_ _slot212732_))
            _klass212731_
            (let _lp212734_ ((_rest212736_
                              (##structure-ref
                               _klass212731_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest212737212745_ _rest212736_)
                     (_else212739212753_ (lambda () '#f))
                     (_K212741212761_
                      (lambda (_rest212756_ _super212757_)
                        (let ((_super-class212759_
                               (let ((__tmp217936
                                      (let ((__tmp217937
                                             (let ((__tmp217939
                                                    (##structure-ref
                                                     _klass212731_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp217938
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot212732_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp217939
                                                     __tmp217938))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp217937))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp217936
                                  _super212757_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class212759_
                                 _slot212732_))
                              _super-class212759_
                              (let ()
                                (declare (not safe))
                                (_lp212734_ _rest212756_)))))))
                (if (let () (declare (not safe)) (##pair? _rest212737212745_))
                    (let ((_hd212742212764_
                           (let ()
                             (declare (not safe))
                             (##car _rest212737212745_)))
                          (_tl212743212766_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest212737212745_))))
                      (let* ((_super212769_ _hd212742212764_)
                             (_rest212771_ _tl212743212766_))
                        (declare (not safe))
                        (_K212741212761_ _rest212771_ _super212769_)))
                    (let () (declare (not safe)) (_else212739212753_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass212728_ _slot212729_)
        (if (##structure-ref _klass212728_ '7 gxc#!class::t '#f)
            (memq _slot212729_
                  (##structure-ref _klass212728_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self212725_ _id212726_)
        (##structure-set! _self212725_ _id212726_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t217782)
        (let ((__id217783
               (let ((__tmp217784
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217782 'id))))
                 (if __tmp217784 __tmp217784 (error '"Unknown slot" 'id)))))
          (lambda (_self212725_ _id212726_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212725_
               _id212726_
               __id217783
               __t217782
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
      (lambda (_self212600_ _id212601_)
        (##structure-set! _self212600_ _id212601_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t217785)
        (let ((__id217786
               (let ((__tmp217787
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217785 'id))))
                 (if __tmp217787 __tmp217787 (error '"Unknown slot" 'id)))))
          (lambda (_self212600_ _id212601_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212600_
               _id212601_
               __id217786
               __t217785
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
      (lambda (_self212473_ _id212474_ _slot212475_ _checked?212476_)
        (##structure-set! _self212473_ _id212474_ '1 gxc#!type::t '#f)
        (##structure-set! _self212473_ _slot212475_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self212473_
         _checked?212476_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t217788)
        (let ((__checked?217789
               (let ((__tmp217792
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217788 'checked?))))
                 (if __tmp217792
                     __tmp217792
                     (error '"Unknown slot" 'checked?))))
              (__id217790
               (let ((__tmp217793
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217788 'id))))
                 (if __tmp217793 __tmp217793 (error '"Unknown slot" 'id))))
              (__slot217791
               (let ((__tmp217794
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217788 'slot))))
                 (if __tmp217794 __tmp217794 (error '"Unknown slot" 'slot)))))
          (lambda (_self212473_ _id212474_ _slot212475_ _checked?212476_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212473_
               _id212474_
               __id217790
               __t217788
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212473_
               _slot212475_
               __slot217791
               __t217788
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212473_
               _checked?212476_
               __checked?217789
               __t217788
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
      (lambda (_self212346_ _id212347_ _slot212348_ _checked?212349_)
        (##structure-set! _self212346_ _id212347_ '1 gxc#!type::t '#f)
        (##structure-set! _self212346_ _slot212348_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self212346_
         _checked?212349_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t217795)
        (let ((__checked?217796
               (let ((__tmp217799
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217795 'checked?))))
                 (if __tmp217799
                     __tmp217799
                     (error '"Unknown slot" 'checked?))))
              (__id217797
               (let ((__tmp217800
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217795 'id))))
                 (if __tmp217800 __tmp217800 (error '"Unknown slot" 'id))))
              (__slot217798
               (let ((__tmp217801
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217795 'slot))))
                 (if __tmp217801 __tmp217801 (error '"Unknown slot" 'slot)))))
          (lambda (_self212346_ _id212347_ _slot212348_ _checked?212349_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212346_
               _id212347_
               __id217797
               __t217795
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212346_
               _slot212348_
               __slot217798
               __t217795
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212346_
               _checked?212349_
               __checked?217796
               __t217795
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
      (lambda (_self212190_
               _id212191_
               _arity212192_
               _dispatch212193_
               _inline212194_
               _typedecl212195_)
        (if (let ((__tmp217945
                   (let ()
                     (declare (not safe))
                     (##structure-length _self212190_))))
              (declare (not safe))
              (##fx< '5 __tmp217945))
            (begin
              (let ((__tmp217940
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212190_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212190_
                 _id212191_
                 '1
                 __tmp217940
                 '#f))
              (let ((__tmp217941
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212190_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212190_
                 _arity212192_
                 '2
                 __tmp217941
                 '#f))
              (let ((__tmp217942
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212190_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212190_
                 _dispatch212193_
                 '3
                 __tmp217942
                 '#f))
              (let ((__tmp217943
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212190_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212190_
                 _inline212194_
                 '4
                 __tmp217943
                 '#f))
              (let ((__tmp217944
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212190_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212190_
                 _typedecl212195_
                 '5
                 __tmp217944
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self212190_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self212190_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self212200_ _id212201_ _arity212202_ _dispatch212203_)
        (let* ((_inline212205_ '#f) (_typedecl212207_ '#f))
          (if (let ((__tmp217951
                     (let ()
                       (declare (not safe))
                       (##structure-length _self212200_))))
                (declare (not safe))
                (##fx< '5 __tmp217951))
              (begin
                (let ((__tmp217946
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212200_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212200_
                   _id212201_
                   '1
                   __tmp217946
                   '#f))
                (let ((__tmp217947
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212200_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212200_
                   _arity212202_
                   '2
                   __tmp217947
                   '#f))
                (let ((__tmp217948
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212200_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212200_
                   _dispatch212203_
                   '3
                   __tmp217948
                   '#f))
                (let ((__tmp217949
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212200_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212200_
                   _inline212205_
                   '4
                   __tmp217949
                   '#f))
                (let ((__tmp217950
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212200_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212200_
                   _typedecl212207_
                   '5
                   __tmp217950
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self212200_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self212200_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self212209_
               _id212210_
               _arity212211_
               _dispatch212212_
               _inline212213_)
        (let ((_typedecl212215_ '#f))
          (if (let ((__tmp217957
                     (let ()
                       (declare (not safe))
                       (##structure-length _self212209_))))
                (declare (not safe))
                (##fx< '5 __tmp217957))
              (begin
                (let ((__tmp217952
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212209_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212209_
                   _id212210_
                   '1
                   __tmp217952
                   '#f))
                (let ((__tmp217953
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212209_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212209_
                   _arity212211_
                   '2
                   __tmp217953
                   '#f))
                (let ((__tmp217954
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212209_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212209_
                   _dispatch212212_
                   '3
                   __tmp217954
                   '#f))
                (let ((__tmp217955
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212209_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212209_
                   _inline212213_
                   '4
                   __tmp217955
                   '#f))
                (let ((__tmp217956
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212209_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212209_
                   _typedecl212215_
                   '5
                   __tmp217956
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self212209_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self212209_)))))))
    (define gxc#!lambda:::init!
      (lambda _g217959_
        (let ((_g217958_ (let () (declare (not safe)) (##length _g217959_))))
          (cond ((let () (declare (not safe)) (##fx= _g217958_ 4))
                 (apply (lambda (_self212200_
                                 _id212201_
                                 _arity212202_
                                 _dispatch212203_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self212200_
                             _id212201_
                             _arity212202_
                             _dispatch212203_)))
                        _g217959_))
                ((let () (declare (not safe)) (##fx= _g217958_ 5))
                 (apply (lambda (_self212209_
                                 _id212210_
                                 _arity212211_
                                 _dispatch212212_
                                 _inline212213_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self212209_
                             _id212210_
                             _arity212211_
                             _dispatch212212_
                             _inline212213_)))
                        _g217959_))
                ((let () (declare (not safe)) (##fx= _g217958_ 6))
                 (apply (lambda (_self212217_
                                 _id212218_
                                 _arity212219_
                                 _dispatch212220_
                                 _inline212221_
                                 _typedecl212222_)
                          (if (let ((__tmp217965
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self212217_))))
                                (declare (not safe))
                                (##fx< '5 __tmp217965))
                              (begin
                                (let ((__tmp217960
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212217_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212217_
                                   _id212218_
                                   '1
                                   __tmp217960
                                   '#f))
                                (let ((__tmp217961
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212217_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212217_
                                   _arity212219_
                                   '2
                                   __tmp217961
                                   '#f))
                                (let ((__tmp217962
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212217_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212217_
                                   _dispatch212220_
                                   '3
                                   __tmp217962
                                   '#f))
                                (let ((__tmp217963
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212217_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212217_
                                   _inline212221_
                                   '4
                                   __tmp217963
                                   '#f))
                                (let ((__tmp217964
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212217_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212217_
                                   _typedecl212222_
                                   '5
                                   __tmp217964
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self212217_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self212217_)))))
                        _g217959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g217959_))))))
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
      (lambda (_self211942_ . _args211943_)
        (apply struct-instance-init! _self211942_ _args211943_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type211817_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211817_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type211817_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass211810_)
        (let ((_$e211812_
               (##structure-ref _klass211810_ '9 gxc#!class::t '#f)))
          (if _$e211812_
              _$e211812_
              (let ((_tab211815_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass211810_
                 _tab211815_
                 '9
                 gxc#!class::t
                 '#f)
                _tab211815_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass211801_ _method211802_)
        (let ((_tab211803211805_
               (##structure-ref _klass211801_ '9 gxc#!class::t '#f)))
          (if _tab211803211805_
              (let ((_tab211808_ _tab211803211805_))
                (declare (not safe))
                (table-ref _tab211808_ _method211802_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type211798_ _method211799_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211798_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type211798_ _method211799_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym211782_ _type211783_ _local?211784_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211783_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym211782_
                   _type211783_))
        (let ((__tmp217966
               (let () (declare (not safe)) (struct->list _type211783_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym211782_ '" " __tmp217966))
        (let ((__tmp217967
               (if _local?211784_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp217967 _sym211782_ _type211783_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym211789_ _type211790_)
        (let ((_local?211792_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym211789_
           _type211790_
           _local?211792_))))
    (define gxc#optimizer-declare-type!
      (lambda _g217969_
        (let ((_g217968_ (let () (declare (not safe)) (##length _g217969_))))
          (cond ((let () (declare (not safe)) (##fx= _g217968_ 2))
                 (apply (lambda (_sym211789_ _type211790_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym211789_
                             _type211790_)))
                        _g217969_))
                ((let () (declare (not safe)) (##fx= _g217968_ 3))
                 (apply (lambda (_sym211794_ _type211795_ _local?211796_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym211794_
                             _type211795_
                             _local?211796_)))
                        _g217969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g217969_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym211768_ _local?211769_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym211768_))
        (let ((__tmp217970
               (if _local?211769_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp217970 _sym211768_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym211774_)
        (let ((_local?211776_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym211774_ _local?211776_))))
    (define gxc#optimizer-clear-type!
      (lambda _g217972_
        (let ((_g217971_ (let () (declare (not safe)) (##length _g217972_))))
          (cond ((let () (declare (not safe)) (##fx= _g217971_ 1))
                 (apply (lambda (_sym211774_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym211774_)))
                        _g217972_))
                ((let () (declare (not safe)) (##fx= _g217971_ 2))
                 (apply (lambda (_sym211778_ _local?211779_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym211778_
                             _local?211779_)))
                        _g217972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g217972_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t211741_ _method211742_ _sym211743_ _rebind?211744_)
        (let* ((_type211746_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t211741_)))
               (_$e211748_
                (let () (declare (not safe)) (gxc#!type-vtab _type211746_))))
          (if _$e211748_
              ((lambda (_vtab211751_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab211751_ _method211742_))
                     (if _rebind?211744_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t211741_
                              '" "
                              _method211742_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab211751_
                              _method211742_
                              _sym211743_)))
                         (let ((__tmp217977
                                (let ((__tmp217978
                                       (let ((__tmp217979
                                              (let ((__tmp217980
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym211743_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method211742_
                                                      __tmp217980))))
                                         (declare (not safe))
                                         (cons _type-t211741_ __tmp217979))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp217978))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp217977
                            _method211742_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t211741_
                          '" "
                          _method211742_
                          '" => "
                          _sym211743_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab211751_
                          _method211742_
                          _sym211743_)))))
               _$e211748_)
              (if (let () (declare (not safe)) (not _type211746_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t211741_))
                  (let ((__tmp217973
                         (let ((__tmp217974
                                (let ((__tmp217975
                                       (let ((__tmp217976
                                              (let ()
                                                (declare (not safe))
                                                (cons _method211742_ '()))))
                                         (declare (not safe))
                                         (cons _sym211743_ __tmp217976))))
                                  (declare (not safe))
                                  (cons _type-t211741_ __tmp217975))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp217974))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp217973
                     _type211746_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t211756_ _method211757_ _sym211758_)
        (let ((_rebind?211760_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t211756_
           _method211757_
           _sym211758_
           _rebind?211760_))))
    (define gxc#optimizer-declare-method!
      (lambda _g217982_
        (let ((_g217981_ (let () (declare (not safe)) (##length _g217982_))))
          (cond ((let () (declare (not safe)) (##fx= _g217981_ 3))
                 (apply (lambda (_type-t211756_ _method211757_ _sym211758_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t211756_
                             _method211757_
                             _sym211758_)))
                        _g217982_))
                ((let () (declare (not safe)) (##fx= _g217981_ 4))
                 (apply (lambda (_type-t211762_
                                 _method211763_
                                 _sym211764_
                                 _rebind?211765_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t211762_
                             _method211763_
                             _sym211764_
                             _rebind?211765_)))
                        _g217982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g217982_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym211729_)
        (let ((_$e211737_
               (let ((_ht211730211732_ (gxc#current-compile-local-type)))
                 (if _ht211730211732_
                     (let ((_ht211735_ _ht211730211732_))
                       (declare (not safe))
                       (table-ref _ht211735_ _sym211729_ '#f))
                     '#f))))
          (if _$e211737_
              _$e211737_
              (let ((__tmp217983
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp217983 _sym211729_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym211721_)
        (let ((_type211722211724_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym211721_))))
          (if _type211722211724_
              (let ((_type211727_ _type211722211724_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type211727_ 'gxc#!alias::t))
                    (let ((__tmp217984
                           (##structure-ref _type211727_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp217984))
                    _type211727_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where211713_ _klass-id211714_)
        (let ((_$e211716_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id211714_))))
          (if _$e211716_
              ((lambda (_klass211719_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass211719_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where211713_
                        _klass-id211714_
                        _klass211719_)))
                 _klass211719_)
               _$e211716_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where211713_
                 _klass-id211714_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t211710_ _method211711_)
        (let ((__tmp217985
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t211710_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp217985 _method211711_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym211708_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym211708_))
        (let ((__tmp217986
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp217986 _sym211708_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym211706_)
        (let ((__tmp217987
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp217987 _sym211706_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx211704_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx211704_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx211704_))
            (let () (declare (not safe)) (gx#stx-e _stx211704_)))))))
