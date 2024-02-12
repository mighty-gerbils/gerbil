(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707742542)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp220026 (list))
            (__tmp220024
             (let ((__tmp220025
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220025 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp220026
         '(type ssxi methods)
         __tmp220024
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args215399_
        (apply make-instance gxc#optimizer-info::t _$args215399_)))
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
      (lambda (_self215397_)
        (if (let ((__tmp220033
                   (let ()
                     (declare (not safe))
                     (##structure-length _self215397_))))
              (declare (not safe))
              (##fx< '3 __tmp220033))
            (begin
              (let ((__tmp220028
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220027
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215397_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215397_
                 __tmp220028
                 '1
                 __tmp220027
                 '#f))
              (let ((__tmp220030
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220029
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215397_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215397_
                 __tmp220030
                 '2
                 __tmp220029
                 '#f))
              (let ((__tmp220032
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220031
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215397_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215397_
                 __tmp220032
                 '3
                 __tmp220031
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self215397_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self215397_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp220036 (list))
            (__tmp220034
             (let ((__tmp220035
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220035 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp220036
         '(id)
         __tmp220034
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args215272_ (apply make-instance gxc#!type::t _$args215272_)))
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
      (let ((__tmp220039 (list gxc#!type::t))
            (__tmp220037
             (let ((__tmp220038
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220038 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp220039
         '()
         __tmp220037
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args215269_ (apply make-instance gxc#!alias::t _$args215269_)))
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
      (let ((__tmp220042 (list gxc#!type::t))
            (__tmp220040
             (let ((__tmp220041
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220041 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp220042
         '()
         __tmp220040
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args215266_
        (apply make-instance gxc#!procedure::t _$args215266_)))
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
      (let ((__tmp220045 (list gxc#!type::t))
            (__tmp220043
             (let ((__tmp220044
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220044 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp220045
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 methods)
         __tmp220043
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args215263_ (apply make-instance gxc#!class::t _$args215263_)))
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
      (let ((__tmp220048 (list gxc#!procedure::t))
            (__tmp220046
             (let ((__tmp220047
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220047 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp220048
         '()
         __tmp220046
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args215260_
        (apply make-instance gxc#!predicate::t _$args215260_)))
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
      (let ((__tmp220051 (list gxc#!procedure::t))
            (__tmp220049
             (let ((__tmp220050
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220050 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp220051
         '()
         __tmp220049
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args215257_
        (apply make-instance gxc#!constructor::t _$args215257_)))
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
      (let ((__tmp220054 (list gxc#!procedure::t))
            (__tmp220052
             (let ((__tmp220053
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220053 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp220054
         '(slot checked?)
         __tmp220052
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args215254_
        (apply make-instance gxc#!accessor::t _$args215254_)))
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
      (let ((__tmp220057 (list gxc#!procedure::t))
            (__tmp220055
             (let ((__tmp220056
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220056 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp220057
         '(slot checked?)
         __tmp220055
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args215251_
        (apply make-instance gxc#!mutator::t _$args215251_)))
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
      (let ((__tmp220060 (list gxc#!procedure::t))
            (__tmp220058
             (let ((__tmp220059
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220059 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp220060
         '(arity dispatch inline inline-typedecl)
         __tmp220058
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args215248_
        (apply make-instance gxc#!lambda::t _$args215248_)))
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
      (let ((__tmp220063 (list gxc#!procedure::t))
            (__tmp220061
             (let ((__tmp220062
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220062 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp220063
         '(clauses)
         __tmp220061
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args215245_
        (apply make-instance gxc#!case-lambda::t _$args215245_)))
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
      (let ((__tmp220066 (list gxc#!procedure::t))
            (__tmp220064
             (let ((__tmp220065
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220065 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp220066
         '(table dispatch)
         __tmp220064
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args215242_
        (apply make-instance gxc#!kw-lambda::t _$args215242_)))
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
      (let ((__tmp220069 (list gxc#!procedure::t))
            (__tmp220067
             (let ((__tmp220068
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220068 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp220069
         '(keys main)
         __tmp220067
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args215239_
        (apply make-instance gxc#!kw-lambda-primary::t _$args215239_)))
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
      (let ((__tmp220070 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp220070
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args215236_
        (apply make-instance gxc#!primitive::t _$args215236_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp220071 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp220071
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args215233_
        (apply make-instance gxc#!primitive-lambda::t _$args215233_)))
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
      (let ((__tmp220072 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp220072
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args215230_
        (apply make-instance gxc#!primitive-case-lambda::t _$args215230_)))
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
      (lambda (_self215114_
               _id215115_
               _super215116_
               _slots215117_
               _ctor-method215118_
               _struct?215119_
               _final?215120_)
        (let _lp215122_ ((_rest215124_ _super215116_))
          (let* ((_rest215125215133_ _rest215124_)
                 (_else215127215141_ (lambda () '#!void))
                 (_K215129215147_
                  (lambda (_rest215144_ _super-id215145_)
                    (if (##structure-ref
                         (let ((__tmp220075
                                (let ((__tmp220076
                                       (let ()
                                         (declare (not safe))
                                         (cons _id215115_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp220076))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp220075
                            _super-id215145_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp220073
                               (let ((__tmp220074
                                      (let ()
                                        (declare (not safe))
                                        (cons _id215115_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp220074))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp220073
                           _super-id215145_))
                        '#!void)
                    (let () (declare (not safe)) (_lp215122_ _rest215144_)))))
            (if (let () (declare (not safe)) (##pair? _rest215125215133_))
                (let ((_hd215130215150_
                       (let ()
                         (declare (not safe))
                         (##car _rest215125215133_)))
                      (_tl215131215152_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest215125215133_))))
                  (let* ((_super-id215155_ _hd215130215150_)
                         (_rest215157_ _tl215131215152_))
                    (declare (not safe))
                    (_K215129215147_ _rest215157_ _super-id215155_)))
                '#!void)))
        (let* ((_ctor-method215207_
                (let ((_$e215159_ _ctor-method215118_))
                  (if _$e215159_
                      _$e215159_
                      (let _lp215162_ ((_rest215164_ _super215116_)
                                       (_method215165_ '#f))
                        (let* ((_rest215166215174_ _rest215164_)
                               (_else215168215182_ (lambda () _method215165_))
                               (_K215170215195_
                                (lambda (_rest215185_ _super-id215186_)
                                  (let* ((_klass215188_
                                          (let ((__tmp220077
                                                 (let ((__tmp220078
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id215115_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp220078))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp220077
                                             _super-id215186_)))
                                         (_$e215190_
                                          (##structure-ref
                                           _klass215188_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e215190_
                                        ((lambda (_ctor-method215193_)
                                           (if _method215165_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method215193_
                                                          _method215165_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp215162_
                                                      _rest215185_
                                                      _ctor-method215193_))
                                                   (let ((__tmp220079
                                                          (let ((__tmp220080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id215115_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp220080))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp220079
                                                      _method215165_
                                                      _ctor-method215193_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp215162_
                                                  _rest215185_
                                                  _ctor-method215193_))))
                                         _$e215190_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp215162_
                                           _rest215185_
                                           _method215165_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest215166215174_))
                              (let ((_hd215171215198_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest215166215174_)))
                                    (_tl215172215200_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest215166215174_))))
                                (let* ((_super-id215203_ _hd215171215198_)
                                       (_rest215205_ _tl215172215200_))
                                  (declare (not safe))
                                  (_K215170215195_
                                   _rest215205_
                                   _super-id215203_)))
                              (let ()
                                (declare (not safe))
                                (_else215168215182_))))))))
               (_g220081_
                (let ((__tmp220086
                       (lambda (_klass-id215209_)
                         (let ((__tmp220087
                                (##structure-ref
                                 (let ((__tmp220088
                                        (let ((__tmp220089
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id215115_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp220089))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp220088
                                    _klass-id215209_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id215209_ __tmp220087))))
                      (__tmp220083
                       (lambda (_klass-id215211_)
                         (##structure-ref
                          (let ((__tmp220084
                                 (let ((__tmp220085
                                        (let ()
                                          (declare (not safe))
                                          (cons _id215115_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp220085))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp220084
                             _klass-id215211_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp220086
                   __tmp220083
                   eq?
                   identity
                   '()
                   _super215116_))))
          (begin
            (let ((_g220082_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g220081_)
                         (##vector-length _g220081_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g220082_ 2)))
                  (error "Context expects 2 values" _g220082_)))
            (let ((_precedence-list215213_
                   (let () (declare (not safe)) (##vector-ref _g220081_ 0)))
                  (_base-struct215214_
                   (let () (declare (not safe)) (##vector-ref _g220081_ 1))))
              (let ((_fields215216_
                     (let ((__tmp220090
                            (let ((__tmp220091
                                   (let ()
                                     (declare (not safe))
                                     (cons _id215115_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp220091))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp220090
                        _base-struct215214_
                        _precedence-list215213_
                        _slots215117_))))
                (##structure-set! _self215114_ _id215115_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self215114_
                 _super215116_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215114_
                 _precedence-list215213_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215114_
                 _slots215117_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215114_
                 _fields215216_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215114_
                 _ctor-method215207_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215114_
                 _struct?215119_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215114_
                 _final?215120_
                 '8
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self215219_
               _id215220_
               _super215221_
               _precedence-list215222_
               _slots215223_
               _fields215224_
               _constructor215225_
               _struct?215226_
               _final?215227_
               _methods215228_)
        (##structure-set! _self215219_ _id215220_ '1 gxc#!type::t '#f)
        (##structure-set! _self215219_ _super215221_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self215219_
         _precedence-list215222_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self215219_ _slots215223_ '4 gxc#!class::t '#f)
        (##structure-set! _self215219_ _fields215224_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self215219_
         _constructor215225_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self215219_ _struct?215226_ '7 gxc#!class::t '#f)
        (##structure-set! _self215219_ _final?215227_ '8 gxc#!class::t '#f)
        (if _methods215228_
            (##structure-set!
             _self215219_
             (let ()
               (declare (not safe))
               (list->table _methods215228_ 'test: eq?))
             '9
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g220093_
        (let ((_g220092_ (let () (declare (not safe)) (##length _g220093_))))
          (cond ((let () (declare (not safe)) (##fx= _g220092_ 7))
                 (apply (lambda (_self215114_
                                 _id215115_
                                 _super215116_
                                 _slots215117_
                                 _ctor-method215118_
                                 _struct?215119_
                                 _final?215120_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self215114_
                             _id215115_
                             _super215116_
                             _slots215117_
                             _ctor-method215118_
                             _struct?215119_
                             _final?215120_)))
                        _g220093_))
                ((let () (declare (not safe)) (##fx= _g220092_ 10))
                 (apply (lambda (_self215219_
                                 _id215220_
                                 _super215221_
                                 _precedence-list215222_
                                 _slots215223_
                                 _fields215224_
                                 _constructor215225_
                                 _struct?215226_
                                 _final?215227_
                                 _methods215228_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self215219_
                             _id215220_
                             _super215221_
                             _precedence-list215222_
                             _slots215223_
                             _fields215224_
                             _constructor215225_
                             _struct?215226_
                             _final?215227_
                             _methods215228_)))
                        _g220093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g220093_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t219969)
        (let ((__precedence-list219970
               (let ((__tmp219979
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219969 'precedence-list))))
                 (if __tmp219979
                     __tmp219979
                     (error '"Unknown slot" 'precedence-list))))
              (__super219971
               (let ((__tmp219980
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219969 'super))))
                 (if __tmp219980 __tmp219980 (error '"Unknown slot" 'super))))
              (__methods219972
               (let ((__tmp219981
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219969 'methods))))
                 (if __tmp219981
                     __tmp219981
                     (error '"Unknown slot" 'methods))))
              (__final?219973
               (let ((__tmp219982
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219969 'final?))))
                 (if __tmp219982 __tmp219982 (error '"Unknown slot" 'final?))))
              (__constructor219974
               (let ((__tmp219983
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219969 'constructor))))
                 (if __tmp219983
                     __tmp219983
                     (error '"Unknown slot" 'constructor))))
              (__fields219975
               (let ((__tmp219984
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219969 'fields))))
                 (if __tmp219984 __tmp219984 (error '"Unknown slot" 'fields))))
              (__slots219976
               (let ((__tmp219985
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219969 'slots))))
                 (if __tmp219985 __tmp219985 (error '"Unknown slot" 'slots))))
              (__id219977
               (let ((__tmp219986
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219969 'id))))
                 (if __tmp219986 __tmp219986 (error '"Unknown slot" 'id))))
              (__struct?219978
               (let ((__tmp219987
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219969 'struct?))))
                 (if __tmp219987
                     __tmp219987
                     (error '"Unknown slot" 'struct?)))))
          (lambda _g220095_
            (let ((_g220094_
                   (let () (declare (not safe)) (##length _g220095_))))
              (cond ((let () (declare (not safe)) (##fx= _g220094_ 7))
                     (apply (lambda (_self215114_
                                     _id215115_
                                     _super215116_
                                     _slots215117_
                                     _ctor-method215118_
                                     _struct?215119_
                                     _final?215120_)
                              (let _lp215122_ ((_rest215124_ _super215116_))
                                (let* ((_rest215125215133_ _rest215124_)
                                       (_else215127215141_ (lambda () '#!void))
                                       (_K215129215147_
                                        (lambda (_rest215144_ _super-id215145_)
                                          (if (##structure-ref
                                               (let ((__tmp220098
                                                      (let ((__tmp220099
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id215115_ '()))))
                (declare (not safe))
                (cons '!class __tmp220099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp220098
                                                  _super-id215145_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp220096
                                                     (let ((__tmp220097
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id215115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp220097))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp220096
                                                 _super-id215145_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp215122_ _rest215144_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest215125215133_))
                                      (let ((_hd215130215150_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest215125215133_)))
                                            (_tl215131215152_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest215125215133_))))
                                        (let* ((_super-id215155_
                                                _hd215130215150_)
                                               (_rest215157_ _tl215131215152_))
                                          (declare (not safe))
                                          (_K215129215147_
                                           _rest215157_
                                           _super-id215155_)))
                                      '#!void)))
                              (let* ((_ctor-method215207_
                                      (let ((_$e215159_ _ctor-method215118_))
                                        (if _$e215159_
                                            _$e215159_
                                            (let _lp215162_ ((_rest215164_
                                                              _super215116_)
                                                             (_method215165_
                                                              '#f))
                                              (let* ((_rest215166215174_
                                                      _rest215164_)
                                                     (_else215168215182_
                                                      (lambda ()
                                                        _method215165_))
                                                     (_K215170215195_
                                                      (lambda (_rest215185_
                                                               _super-id215186_)
                                                        (let* ((_klass215188_
                                                                (let ((__tmp220100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp220101
                                      (let ()
                                        (declare (not safe))
                                        (cons _id215115_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp220101))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp220100
                           _super-id215186_)))
                       (_$e215190_
                        (##structure-ref _klass215188_ '6 gxc#!class::t '#f)))
                  (if _$e215190_
                      ((lambda (_ctor-method215193_)
                         (if _method215165_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method215193_ _method215165_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp215162_
                                    _rest215185_
                                    _ctor-method215193_))
                                 (let ((__tmp220102
                                        (let ((__tmp220103
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id215115_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp220103))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp220102
                                    _method215165_
                                    _ctor-method215193_)))
                             (let ()
                               (declare (not safe))
                               (_lp215162_ _rest215185_ _ctor-method215193_))))
                       _$e215190_)
                      (let ()
                        (declare (not safe))
                        (_lp215162_ _rest215185_ _method215165_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest215166215174_))
                                                    (let ((_hd215171215198_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest215166215174_)))
                                                          (_tl215172215200_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest215166215174_))))
                                                      (let* ((_super-id215203_
                                                              _hd215171215198_)
                                                             (_rest215205_
                                                              _tl215172215200_))
                                                        (declare (not safe))
                                                        (_K215170215195_
                                                         _rest215205_
                                                         _super-id215203_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else215168215182_))))))))
                                     (_g220104_
                                      (let ((__tmp220109
                                             (lambda (_klass-id215209_)
                                               (let ((__tmp220110
                                                      (##structure-ref
                                                       (let ((__tmp220111
                                                              (let ((__tmp220112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id215115_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp220112))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp220111 _klass-id215209_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id215209_
                                                       __tmp220110))))
                                            (__tmp220106
                                             (lambda (_klass-id215211_)
                                               (##structure-ref
                                                (let ((__tmp220107
                                                       (let ((__tmp220108
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id215115_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp220108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp220107
                                                   _klass-id215211_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp220109
                                         __tmp220106
                                         eq?
                                         identity
                                         '()
                                         _super215116_))))
                                (begin
                                  (let ((_g220105_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g220104_)
                                               (##vector-length _g220104_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g220105_ 2)))
                                        (error "Context expects 2 values"
                                               _g220105_)))
                                  (let ((_precedence-list215213_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g220104_ 0)))
                                        (_base-struct215214_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g220104_ 1))))
                                    (let ((_fields215216_
                                           (let ((__tmp220113
                                                  (let ((__tmp220114
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id215115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp220114))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp220113
                                              _base-struct215214_
                                              _precedence-list215213_
                                              _slots215117_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215114_
                                         _id215115_
                                         __id219977
                                         __t219969
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215114_
                                         _super215116_
                                         __super219971
                                         __t219969
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215114_
                                         _precedence-list215213_
                                         __precedence-list219970
                                         __t219969
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215114_
                                         _slots215117_
                                         __slots219976
                                         __t219969
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215114_
                                         _fields215216_
                                         __fields219975
                                         __t219969
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215114_
                                         _ctor-method215207_
                                         __constructor219974
                                         __t219969
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215114_
                                         _struct?215119_
                                         __struct?219978
                                         __t219969
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215114_
                                         _final?215120_
                                         __final?219973
                                         __t219969
                                         '#f)))))))
                            _g220095_))
                    ((let () (declare (not safe)) (##fx= _g220094_ 10))
                     (apply (lambda (_self215219_
                                     _id215220_
                                     _super215221_
                                     _precedence-list215222_
                                     _slots215223_
                                     _fields215224_
                                     _constructor215225_
                                     _struct?215226_
                                     _final?215227_
                                     _methods215228_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215219_
                                 _id215220_
                                 __id219977
                                 __t219969
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215219_
                                 _super215221_
                                 __super219971
                                 __t219969
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215219_
                                 _precedence-list215222_
                                 __precedence-list219970
                                 __t219969
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215219_
                                 _slots215223_
                                 __slots219976
                                 __t219969
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215219_
                                 _fields215224_
                                 __fields219975
                                 __t219969
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215219_
                                 _constructor215225_
                                 __constructor219974
                                 __t219969
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215219_
                                 _struct?215226_
                                 __struct?219978
                                 __t219969
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215219_
                                 _final?215227_
                                 __final?219973
                                 __t219969
                                 '#f))
                              (if _methods215228_
                                  (let ((__tmp220115
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods215228_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self215219_
                                     __tmp220115
                                     __methods219972
                                     __t219969
                                     '#f))
                                  '#!void))
                            _g220095_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g220095_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where214966_
               _base-struct214967_
               _precedence-list214968_
               _direct-slots214969_)
        (let* ((_base-fields214971_
                (if _base-struct214967_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where214966_
                        _base-struct214967_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields214973_ (reverse _base-fields214971_))
               (_seen-slots214981_
                (let ((_tab214975_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g214976214978_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab214975_ _g214976214978_ '#t)))
                   _base-fields214971_)
                  _tab214975_))
               (_process-slot214985_
                (lambda (_slot214983_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots214981_ _slot214983_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots214981_ _slot214983_ '#t))
                        (set! _r-fields214973_
                              (let ()
                                (declare (not safe))
                                (cons _slot214983_ _r-fields214973_))))))))
          (for-each
           (lambda (_mixin214988_)
             (let ((_klass214990_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where214966_
                       _mixin214988_))))
               (if (##structure-ref _klass214990_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot214985_
                    (##structure-ref _klass214990_ '5 gxc#!class::t '#f)))))
           _precedence-list214968_)
          (for-each _process-slot214985_ _direct-slots214969_)
          (reverse _r-fields214973_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass214925_ _slot214926_)
        (let _lp214928_ ((_rest214930_
                          (##structure-ref _klass214925_ '5 gxc#!class::t '#f))
                         (_offset214931_ '1))
          (let* ((_rest214932214940_ _rest214930_)
                 (_else214934214948_
                  (lambda ()
                    (let ((__tmp220117
                           (##structure-ref _klass214925_ '1 gxc#!type::t '#f))
                          (__tmp220116
                           (##structure-ref
                            _klass214925_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp220117
                       __tmp220116
                       _slot214926_))))
                 (_K214936214954_
                  (lambda (_rest214951_ _s214952_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s214952_ _slot214926_))
                        _offset214931_
                        (let ((__tmp220118
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset214931_ '1))))
                          (declare (not safe))
                          (_lp214928_ _rest214951_ __tmp220118))))))
            (if (let () (declare (not safe)) (##pair? _rest214932214940_))
                (let ((_hd214937214957_
                       (let ()
                         (declare (not safe))
                         (##car _rest214932214940_)))
                      (_tl214938214959_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest214932214940_))))
                  (let* ((_s214962_ _hd214937214957_)
                         (_rest214964_ _tl214938214959_))
                    (declare (not safe))
                    (_K214936214954_ _rest214964_ _s214962_)))
                (let () (declare (not safe)) (_else214934214948_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass214883_ _slot214884_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass214883_ _slot214884_))
            _klass214883_
            (let _lp214886_ ((_rest214888_
                              (##structure-ref
                               _klass214883_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest214889214897_ _rest214888_)
                     (_else214891214905_ (lambda () '#f))
                     (_K214893214913_
                      (lambda (_rest214908_ _super214909_)
                        (let ((_super-class214911_
                               (let ((__tmp220119
                                      (let ((__tmp220120
                                             (let ((__tmp220122
                                                    (##structure-ref
                                                     _klass214883_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp220121
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot214884_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp220122
                                                     __tmp220121))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp220120))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp220119
                                  _super214909_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class214911_
                                 _slot214884_))
                              _super-class214911_
                              (let ()
                                (declare (not safe))
                                (_lp214886_ _rest214908_)))))))
                (if (let () (declare (not safe)) (##pair? _rest214889214897_))
                    (let ((_hd214894214916_
                           (let ()
                             (declare (not safe))
                             (##car _rest214889214897_)))
                          (_tl214895214918_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest214889214897_))))
                      (let* ((_super214921_ _hd214894214916_)
                             (_rest214923_ _tl214895214918_))
                        (declare (not safe))
                        (_K214893214913_ _rest214923_ _super214921_)))
                    (let () (declare (not safe)) (_else214891214905_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass214880_ _slot214881_)
        (if (##structure-ref _klass214880_ '7 gxc#!class::t '#f)
            (memq _slot214881_
                  (##structure-ref _klass214880_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self214877_ _id214878_)
        (##structure-set! _self214877_ _id214878_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t219988)
        (let ((__id219989
               (let ((__tmp219990
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219988 'id))))
                 (if __tmp219990 __tmp219990 (error '"Unknown slot" 'id)))))
          (lambda (_self214877_ _id214878_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214877_
               _id214878_
               __id219989
               __t219988
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
      (lambda (_self214752_ _id214753_)
        (##structure-set! _self214752_ _id214753_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t219991)
        (let ((__id219992
               (let ((__tmp219993
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219991 'id))))
                 (if __tmp219993 __tmp219993 (error '"Unknown slot" 'id)))))
          (lambda (_self214752_ _id214753_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214752_
               _id214753_
               __id219992
               __t219991
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
      (lambda (_self214625_ _id214626_ _slot214627_ _checked?214628_)
        (##structure-set! _self214625_ _id214626_ '1 gxc#!type::t '#f)
        (##structure-set! _self214625_ _slot214627_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self214625_
         _checked?214628_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t219994)
        (let ((__checked?219995
               (let ((__tmp219998
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219994 'checked?))))
                 (if __tmp219998
                     __tmp219998
                     (error '"Unknown slot" 'checked?))))
              (__slot219996
               (let ((__tmp219999
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219994 'slot))))
                 (if __tmp219999 __tmp219999 (error '"Unknown slot" 'slot))))
              (__id219997
               (let ((__tmp220000
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219994 'id))))
                 (if __tmp220000 __tmp220000 (error '"Unknown slot" 'id)))))
          (lambda (_self214625_ _id214626_ _slot214627_ _checked?214628_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214625_
               _id214626_
               __id219997
               __t219994
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214625_
               _slot214627_
               __slot219996
               __t219994
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214625_
               _checked?214628_
               __checked?219995
               __t219994
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
      (lambda (_self214498_ _id214499_ _slot214500_ _checked?214501_)
        (##structure-set! _self214498_ _id214499_ '1 gxc#!type::t '#f)
        (##structure-set! _self214498_ _slot214500_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self214498_
         _checked?214501_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t220001)
        (let ((__checked?220002
               (let ((__tmp220005
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220001 'checked?))))
                 (if __tmp220005
                     __tmp220005
                     (error '"Unknown slot" 'checked?))))
              (__slot220003
               (let ((__tmp220006
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220001 'slot))))
                 (if __tmp220006 __tmp220006 (error '"Unknown slot" 'slot))))
              (__id220004
               (let ((__tmp220007
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220001 'id))))
                 (if __tmp220007 __tmp220007 (error '"Unknown slot" 'id)))))
          (lambda (_self214498_ _id214499_ _slot214500_ _checked?214501_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214498_
               _id214499_
               __id220004
               __t220001
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214498_
               _slot214500_
               __slot220003
               __t220001
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214498_
               _checked?214501_
               __checked?220002
               __t220001
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
      (lambda (_self214342_
               _id214343_
               _arity214344_
               _dispatch214345_
               _inline214346_
               _typedecl214347_)
        (if (let ((__tmp220128
                   (let ()
                     (declare (not safe))
                     (##structure-length _self214342_))))
              (declare (not safe))
              (##fx< '5 __tmp220128))
            (begin
              (let ((__tmp220123
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214342_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214342_
                 _id214343_
                 '1
                 __tmp220123
                 '#f))
              (let ((__tmp220124
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214342_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214342_
                 _arity214344_
                 '2
                 __tmp220124
                 '#f))
              (let ((__tmp220125
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214342_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214342_
                 _dispatch214345_
                 '3
                 __tmp220125
                 '#f))
              (let ((__tmp220126
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214342_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214342_
                 _inline214346_
                 '4
                 __tmp220126
                 '#f))
              (let ((__tmp220127
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214342_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214342_
                 _typedecl214347_
                 '5
                 __tmp220127
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self214342_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self214342_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self214352_ _id214353_ _arity214354_ _dispatch214355_)
        (let* ((_inline214357_ '#f) (_typedecl214359_ '#f))
          (if (let ((__tmp220134
                     (let ()
                       (declare (not safe))
                       (##structure-length _self214352_))))
                (declare (not safe))
                (##fx< '5 __tmp220134))
              (begin
                (let ((__tmp220129
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214352_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214352_
                   _id214353_
                   '1
                   __tmp220129
                   '#f))
                (let ((__tmp220130
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214352_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214352_
                   _arity214354_
                   '2
                   __tmp220130
                   '#f))
                (let ((__tmp220131
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214352_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214352_
                   _dispatch214355_
                   '3
                   __tmp220131
                   '#f))
                (let ((__tmp220132
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214352_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214352_
                   _inline214357_
                   '4
                   __tmp220132
                   '#f))
                (let ((__tmp220133
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214352_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214352_
                   _typedecl214359_
                   '5
                   __tmp220133
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self214352_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self214352_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self214361_
               _id214362_
               _arity214363_
               _dispatch214364_
               _inline214365_)
        (let ((_typedecl214367_ '#f))
          (if (let ((__tmp220140
                     (let ()
                       (declare (not safe))
                       (##structure-length _self214361_))))
                (declare (not safe))
                (##fx< '5 __tmp220140))
              (begin
                (let ((__tmp220135
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214361_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214361_
                   _id214362_
                   '1
                   __tmp220135
                   '#f))
                (let ((__tmp220136
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214361_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214361_
                   _arity214363_
                   '2
                   __tmp220136
                   '#f))
                (let ((__tmp220137
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214361_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214361_
                   _dispatch214364_
                   '3
                   __tmp220137
                   '#f))
                (let ((__tmp220138
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214361_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214361_
                   _inline214365_
                   '4
                   __tmp220138
                   '#f))
                (let ((__tmp220139
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214361_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214361_
                   _typedecl214367_
                   '5
                   __tmp220139
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self214361_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self214361_)))))))
    (define gxc#!lambda:::init!
      (lambda _g220142_
        (let ((_g220141_ (let () (declare (not safe)) (##length _g220142_))))
          (cond ((let () (declare (not safe)) (##fx= _g220141_ 4))
                 (apply (lambda (_self214352_
                                 _id214353_
                                 _arity214354_
                                 _dispatch214355_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self214352_
                             _id214353_
                             _arity214354_
                             _dispatch214355_)))
                        _g220142_))
                ((let () (declare (not safe)) (##fx= _g220141_ 5))
                 (apply (lambda (_self214361_
                                 _id214362_
                                 _arity214363_
                                 _dispatch214364_
                                 _inline214365_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self214361_
                             _id214362_
                             _arity214363_
                             _dispatch214364_
                             _inline214365_)))
                        _g220142_))
                ((let () (declare (not safe)) (##fx= _g220141_ 6))
                 (apply (lambda (_self214369_
                                 _id214370_
                                 _arity214371_
                                 _dispatch214372_
                                 _inline214373_
                                 _typedecl214374_)
                          (if (let ((__tmp220148
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self214369_))))
                                (declare (not safe))
                                (##fx< '5 __tmp220148))
                              (begin
                                (let ((__tmp220143
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214369_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214369_
                                   _id214370_
                                   '1
                                   __tmp220143
                                   '#f))
                                (let ((__tmp220144
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214369_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214369_
                                   _arity214371_
                                   '2
                                   __tmp220144
                                   '#f))
                                (let ((__tmp220145
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214369_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214369_
                                   _dispatch214372_
                                   '3
                                   __tmp220145
                                   '#f))
                                (let ((__tmp220146
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214369_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214369_
                                   _inline214373_
                                   '4
                                   __tmp220146
                                   '#f))
                                (let ((__tmp220147
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214369_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214369_
                                   _typedecl214374_
                                   '5
                                   __tmp220147
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self214369_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self214369_)))))
                        _g220142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g220142_))))))
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
      (lambda (_self214094_ . _args214095_)
        (apply struct-instance-init! _self214094_ _args214095_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type213969_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type213969_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type213969_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass213962_)
        (let ((_$e213964_
               (##structure-ref _klass213962_ '9 gxc#!class::t '#f)))
          (if _$e213964_
              _$e213964_
              (let ((_tab213967_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass213962_
                 _tab213967_
                 '9
                 gxc#!class::t
                 '#f)
                _tab213967_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass213953_ _method213954_)
        (let ((_tab213955213957_
               (##structure-ref _klass213953_ '9 gxc#!class::t '#f)))
          (if _tab213955213957_
              (let ((_tab213960_ _tab213955213957_))
                (declare (not safe))
                (table-ref _tab213960_ _method213954_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type213950_ _method213951_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type213950_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type213950_ _method213951_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym213934_ _type213935_ _local?213936_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type213935_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym213934_
                   _type213935_))
        (let ((__tmp220149
               (let () (declare (not safe)) (struct->list _type213935_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym213934_ '" " __tmp220149))
        (let ((__tmp220150
               (if _local?213936_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp220150 _sym213934_ _type213935_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym213941_ _type213942_)
        (let ((_local?213944_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym213941_
           _type213942_
           _local?213944_))))
    (define gxc#optimizer-declare-type!
      (lambda _g220152_
        (let ((_g220151_ (let () (declare (not safe)) (##length _g220152_))))
          (cond ((let () (declare (not safe)) (##fx= _g220151_ 2))
                 (apply (lambda (_sym213941_ _type213942_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym213941_
                             _type213942_)))
                        _g220152_))
                ((let () (declare (not safe)) (##fx= _g220151_ 3))
                 (apply (lambda (_sym213946_ _type213947_ _local?213948_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym213946_
                             _type213947_
                             _local?213948_)))
                        _g220152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g220152_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym213920_ _local?213921_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym213920_))
        (let ((__tmp220153
               (if _local?213921_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp220153 _sym213920_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym213926_)
        (let ((_local?213928_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym213926_ _local?213928_))))
    (define gxc#optimizer-clear-type!
      (lambda _g220155_
        (let ((_g220154_ (let () (declare (not safe)) (##length _g220155_))))
          (cond ((let () (declare (not safe)) (##fx= _g220154_ 1))
                 (apply (lambda (_sym213926_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym213926_)))
                        _g220155_))
                ((let () (declare (not safe)) (##fx= _g220154_ 2))
                 (apply (lambda (_sym213930_ _local?213931_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym213930_
                             _local?213931_)))
                        _g220155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g220155_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t213893_ _method213894_ _sym213895_ _rebind?213896_)
        (let* ((_type213898_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t213893_)))
               (_$e213900_
                (let () (declare (not safe)) (gxc#!type-vtab _type213898_))))
          (if _$e213900_
              ((lambda (_vtab213903_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab213903_ _method213894_))
                     (if _rebind?213896_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t213893_
                              '" "
                              _method213894_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab213903_
                              _method213894_
                              _sym213895_)))
                         (let ((__tmp220160
                                (let ((__tmp220161
                                       (let ((__tmp220162
                                              (let ((__tmp220163
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym213895_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method213894_
                                                      __tmp220163))))
                                         (declare (not safe))
                                         (cons _type-t213893_ __tmp220162))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp220161))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp220160
                            _method213894_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t213893_
                          '" "
                          _method213894_
                          '" => "
                          _sym213895_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab213903_
                          _method213894_
                          _sym213895_)))))
               _$e213900_)
              (if (let () (declare (not safe)) (not _type213898_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t213893_))
                  (let ((__tmp220156
                         (let ((__tmp220157
                                (let ((__tmp220158
                                       (let ((__tmp220159
                                              (let ()
                                                (declare (not safe))
                                                (cons _method213894_ '()))))
                                         (declare (not safe))
                                         (cons _sym213895_ __tmp220159))))
                                  (declare (not safe))
                                  (cons _type-t213893_ __tmp220158))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp220157))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp220156
                     _type213898_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t213908_ _method213909_ _sym213910_)
        (let ((_rebind?213912_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t213908_
           _method213909_
           _sym213910_
           _rebind?213912_))))
    (define gxc#optimizer-declare-method!
      (lambda _g220165_
        (let ((_g220164_ (let () (declare (not safe)) (##length _g220165_))))
          (cond ((let () (declare (not safe)) (##fx= _g220164_ 3))
                 (apply (lambda (_type-t213908_ _method213909_ _sym213910_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t213908_
                             _method213909_
                             _sym213910_)))
                        _g220165_))
                ((let () (declare (not safe)) (##fx= _g220164_ 4))
                 (apply (lambda (_type-t213914_
                                 _method213915_
                                 _sym213916_
                                 _rebind?213917_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t213914_
                             _method213915_
                             _sym213916_
                             _rebind?213917_)))
                        _g220165_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g220165_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym213881_)
        (let ((_$e213889_
               (let ((_ht213882213884_ (gxc#current-compile-local-type)))
                 (if _ht213882213884_
                     (let ((_ht213887_ _ht213882213884_))
                       (declare (not safe))
                       (table-ref _ht213887_ _sym213881_ '#f))
                     '#f))))
          (if _$e213889_
              _$e213889_
              (let ((__tmp220166
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp220166 _sym213881_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym213873_)
        (let ((_type213874213876_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym213873_))))
          (if _type213874213876_
              (let ((_type213879_ _type213874213876_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type213879_ 'gxc#!alias::t))
                    (let ((__tmp220167
                           (##structure-ref _type213879_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp220167))
                    _type213879_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where213865_ _klass-id213866_)
        (let ((_$e213868_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id213866_))))
          (if _$e213868_
              ((lambda (_klass213871_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass213871_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where213865_
                        _klass-id213866_
                        _klass213871_)))
                 _klass213871_)
               _$e213868_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where213865_
                 _klass-id213866_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t213862_ _method213863_)
        (let ((__tmp220168
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t213862_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp220168 _method213863_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym213860_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym213860_))
        (let ((__tmp220169
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp220169 _sym213860_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym213858_)
        (let ((__tmp220170
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp220170 _sym213858_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx213856_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx213856_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx213856_))
            (let () (declare (not safe)) (gx#stx-e _stx213856_)))))))
