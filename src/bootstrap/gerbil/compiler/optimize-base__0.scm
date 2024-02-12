(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707734704)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp220027 (list))
            (__tmp220025
             (let ((__tmp220026
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220026 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp220027
         '(type ssxi methods)
         __tmp220025
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args215400_
        (apply make-instance gxc#optimizer-info::t _$args215400_)))
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
      (lambda (_self215398_)
        (if (let ((__tmp220034
                   (let ()
                     (declare (not safe))
                     (##structure-length _self215398_))))
              (declare (not safe))
              (##fx< '3 __tmp220034))
            (begin
              (let ((__tmp220029
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220028
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215398_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215398_
                 __tmp220029
                 '1
                 __tmp220028
                 '#f))
              (let ((__tmp220031
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220030
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215398_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215398_
                 __tmp220031
                 '2
                 __tmp220030
                 '#f))
              (let ((__tmp220033
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220032
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215398_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215398_
                 __tmp220033
                 '3
                 __tmp220032
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self215398_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self215398_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp220037 (list))
            (__tmp220035
             (let ((__tmp220036
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220036 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp220037
         '(id)
         __tmp220035
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args215273_ (apply make-instance gxc#!type::t _$args215273_)))
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
      (let ((__tmp220040 (list gxc#!type::t))
            (__tmp220038
             (let ((__tmp220039
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220039 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp220040
         '()
         __tmp220038
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args215270_ (apply make-instance gxc#!alias::t _$args215270_)))
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
      (let ((__tmp220043 (list gxc#!type::t))
            (__tmp220041
             (let ((__tmp220042
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220042 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp220043
         '()
         __tmp220041
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args215267_
        (apply make-instance gxc#!procedure::t _$args215267_)))
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
      (let ((__tmp220046 (list gxc#!type::t))
            (__tmp220044
             (let ((__tmp220045
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220045 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp220046
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 methods)
         __tmp220044
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args215264_ (apply make-instance gxc#!class::t _$args215264_)))
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
      (let ((__tmp220049 (list gxc#!procedure::t))
            (__tmp220047
             (let ((__tmp220048
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220048 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp220049
         '()
         __tmp220047
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args215261_
        (apply make-instance gxc#!predicate::t _$args215261_)))
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
      (let ((__tmp220052 (list gxc#!procedure::t))
            (__tmp220050
             (let ((__tmp220051
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220051 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp220052
         '()
         __tmp220050
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args215258_
        (apply make-instance gxc#!constructor::t _$args215258_)))
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
      (let ((__tmp220055 (list gxc#!procedure::t))
            (__tmp220053
             (let ((__tmp220054
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220054 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp220055
         '(slot checked?)
         __tmp220053
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args215255_
        (apply make-instance gxc#!accessor::t _$args215255_)))
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
      (let ((__tmp220058 (list gxc#!procedure::t))
            (__tmp220056
             (let ((__tmp220057
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220057 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp220058
         '(slot checked?)
         __tmp220056
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args215252_
        (apply make-instance gxc#!mutator::t _$args215252_)))
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
      (let ((__tmp220061 (list gxc#!procedure::t))
            (__tmp220059
             (let ((__tmp220060
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220060 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp220061
         '(arity dispatch inline inline-typedecl)
         __tmp220059
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args215249_
        (apply make-instance gxc#!lambda::t _$args215249_)))
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
      (let ((__tmp220064 (list gxc#!procedure::t))
            (__tmp220062
             (let ((__tmp220063
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220063 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp220064
         '(clauses)
         __tmp220062
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args215246_
        (apply make-instance gxc#!case-lambda::t _$args215246_)))
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
      (let ((__tmp220067 (list gxc#!procedure::t))
            (__tmp220065
             (let ((__tmp220066
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220066 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp220067
         '(table dispatch)
         __tmp220065
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args215243_
        (apply make-instance gxc#!kw-lambda::t _$args215243_)))
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
      (let ((__tmp220070 (list gxc#!procedure::t))
            (__tmp220068
             (let ((__tmp220069
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220069 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp220070
         '(keys main)
         __tmp220068
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args215240_
        (apply make-instance gxc#!kw-lambda-primary::t _$args215240_)))
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
      (let ((__tmp220071 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp220071
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args215237_
        (apply make-instance gxc#!primitive::t _$args215237_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp220072 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp220072
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args215234_
        (apply make-instance gxc#!primitive-lambda::t _$args215234_)))
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
      (let ((__tmp220073 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp220073
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args215231_
        (apply make-instance gxc#!primitive-case-lambda::t _$args215231_)))
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
      (lambda (_self215115_
               _id215116_
               _super215117_
               _slots215118_
               _ctor-method215119_
               _struct?215120_
               _final?215121_)
        (let _lp215123_ ((_rest215125_ _super215117_))
          (let* ((_rest215126215134_ _rest215125_)
                 (_else215128215142_ (lambda () '#!void))
                 (_K215130215148_
                  (lambda (_rest215145_ _super-id215146_)
                    (if (##structure-ref
                         (let ((__tmp220076
                                (let ((__tmp220077
                                       (let ()
                                         (declare (not safe))
                                         (cons _id215116_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp220077))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp220076
                            _super-id215146_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp220074
                               (let ((__tmp220075
                                      (let ()
                                        (declare (not safe))
                                        (cons _id215116_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp220075))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp220074
                           _super-id215146_))
                        '#!void)
                    (let () (declare (not safe)) (_lp215123_ _rest215145_)))))
            (if (let () (declare (not safe)) (##pair? _rest215126215134_))
                (let ((_hd215131215151_
                       (let ()
                         (declare (not safe))
                         (##car _rest215126215134_)))
                      (_tl215132215153_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest215126215134_))))
                  (let* ((_super-id215156_ _hd215131215151_)
                         (_rest215158_ _tl215132215153_))
                    (declare (not safe))
                    (_K215130215148_ _rest215158_ _super-id215156_)))
                '#!void)))
        (let* ((_ctor-method215208_
                (let ((_$e215160_ _ctor-method215119_))
                  (if _$e215160_
                      _$e215160_
                      (let _lp215163_ ((_rest215165_ _super215117_)
                                       (_method215166_ '#f))
                        (let* ((_rest215167215175_ _rest215165_)
                               (_else215169215183_ (lambda () _method215166_))
                               (_K215171215196_
                                (lambda (_rest215186_ _super-id215187_)
                                  (let* ((_klass215189_
                                          (let ((__tmp220078
                                                 (let ((__tmp220079
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id215116_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp220079))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp220078
                                             _super-id215187_)))
                                         (_$e215191_
                                          (##structure-ref
                                           _klass215189_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e215191_
                                        ((lambda (_ctor-method215194_)
                                           (if _method215166_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method215194_
                                                          _method215166_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp215163_
                                                      _rest215186_
                                                      _ctor-method215194_))
                                                   (let ((__tmp220080
                                                          (let ((__tmp220081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id215116_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp220081))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp220080
                                                      _method215166_
                                                      _ctor-method215194_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp215163_
                                                  _rest215186_
                                                  _ctor-method215194_))))
                                         _$e215191_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp215163_
                                           _rest215186_
                                           _method215166_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest215167215175_))
                              (let ((_hd215172215199_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest215167215175_)))
                                    (_tl215173215201_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest215167215175_))))
                                (let* ((_super-id215204_ _hd215172215199_)
                                       (_rest215206_ _tl215173215201_))
                                  (declare (not safe))
                                  (_K215171215196_
                                   _rest215206_
                                   _super-id215204_)))
                              (let ()
                                (declare (not safe))
                                (_else215169215183_))))))))
               (_g220082_
                (let ((__tmp220087
                       (lambda (_klass-id215210_)
                         (let ((__tmp220088
                                (##structure-ref
                                 (let ((__tmp220089
                                        (let ((__tmp220090
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id215116_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp220090))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp220089
                                    _klass-id215210_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id215210_ __tmp220088))))
                      (__tmp220084
                       (lambda (_klass-id215212_)
                         (##structure-ref
                          (let ((__tmp220085
                                 (let ((__tmp220086
                                        (let ()
                                          (declare (not safe))
                                          (cons _id215116_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp220086))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp220085
                             _klass-id215212_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp220087
                   __tmp220084
                   eq?
                   identity
                   '()
                   _super215117_))))
          (begin
            (let ((_g220083_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g220082_)
                         (##vector-length _g220082_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g220083_ 2)))
                  (error "Context expects 2 values" _g220083_)))
            (let ((_precedence-list215214_
                   (let () (declare (not safe)) (##vector-ref _g220082_ 0)))
                  (_base-struct215215_
                   (let () (declare (not safe)) (##vector-ref _g220082_ 1))))
              (let ((_fields215217_
                     (let ((__tmp220091
                            (let ((__tmp220092
                                   (let ()
                                     (declare (not safe))
                                     (cons _id215116_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp220092))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp220091
                        _base-struct215215_
                        _precedence-list215214_
                        _slots215118_))))
                (##structure-set! _self215115_ _id215116_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self215115_
                 _super215117_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215115_
                 _precedence-list215214_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215115_
                 _slots215118_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215115_
                 _fields215217_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215115_
                 _ctor-method215208_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215115_
                 _struct?215120_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215115_
                 _final?215121_
                 '8
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self215220_
               _id215221_
               _super215222_
               _precedence-list215223_
               _slots215224_
               _fields215225_
               _constructor215226_
               _struct?215227_
               _final?215228_
               _methods215229_)
        (##structure-set! _self215220_ _id215221_ '1 gxc#!type::t '#f)
        (##structure-set! _self215220_ _super215222_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self215220_
         _precedence-list215223_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self215220_ _slots215224_ '4 gxc#!class::t '#f)
        (##structure-set! _self215220_ _fields215225_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self215220_
         _constructor215226_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self215220_ _struct?215227_ '7 gxc#!class::t '#f)
        (##structure-set! _self215220_ _final?215228_ '8 gxc#!class::t '#f)
        (if _methods215229_
            (##structure-set!
             _self215220_
             (let ()
               (declare (not safe))
               (list->table _methods215229_ 'test: eq?))
             '9
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g220094_
        (let ((_g220093_ (let () (declare (not safe)) (##length _g220094_))))
          (cond ((let () (declare (not safe)) (##fx= _g220093_ 7))
                 (apply (lambda (_self215115_
                                 _id215116_
                                 _super215117_
                                 _slots215118_
                                 _ctor-method215119_
                                 _struct?215120_
                                 _final?215121_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self215115_
                             _id215116_
                             _super215117_
                             _slots215118_
                             _ctor-method215119_
                             _struct?215120_
                             _final?215121_)))
                        _g220094_))
                ((let () (declare (not safe)) (##fx= _g220093_ 10))
                 (apply (lambda (_self215220_
                                 _id215221_
                                 _super215222_
                                 _precedence-list215223_
                                 _slots215224_
                                 _fields215225_
                                 _constructor215226_
                                 _struct?215227_
                                 _final?215228_
                                 _methods215229_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self215220_
                             _id215221_
                             _super215222_
                             _precedence-list215223_
                             _slots215224_
                             _fields215225_
                             _constructor215226_
                             _struct?215227_
                             _final?215228_
                             _methods215229_)))
                        _g220094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g220094_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t219970)
        (let ((__fields219971
               (let ((__tmp219980
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219970 'fields))))
                 (if __tmp219980 __tmp219980 (error '"Unknown slot" 'fields))))
              (__final?219972
               (let ((__tmp219981
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219970 'final?))))
                 (if __tmp219981 __tmp219981 (error '"Unknown slot" 'final?))))
              (__id219973
               (let ((__tmp219982
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219970 'id))))
                 (if __tmp219982 __tmp219982 (error '"Unknown slot" 'id))))
              (__slots219974
               (let ((__tmp219983
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219970 'slots))))
                 (if __tmp219983 __tmp219983 (error '"Unknown slot" 'slots))))
              (__struct?219975
               (let ((__tmp219984
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219970 'struct?))))
                 (if __tmp219984
                     __tmp219984
                     (error '"Unknown slot" 'struct?))))
              (__precedence-list219976
               (let ((__tmp219985
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219970 'precedence-list))))
                 (if __tmp219985
                     __tmp219985
                     (error '"Unknown slot" 'precedence-list))))
              (__methods219977
               (let ((__tmp219986
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219970 'methods))))
                 (if __tmp219986
                     __tmp219986
                     (error '"Unknown slot" 'methods))))
              (__super219978
               (let ((__tmp219987
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219970 'super))))
                 (if __tmp219987 __tmp219987 (error '"Unknown slot" 'super))))
              (__constructor219979
               (let ((__tmp219988
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219970 'constructor))))
                 (if __tmp219988
                     __tmp219988
                     (error '"Unknown slot" 'constructor)))))
          (lambda _g220096_
            (let ((_g220095_
                   (let () (declare (not safe)) (##length _g220096_))))
              (cond ((let () (declare (not safe)) (##fx= _g220095_ 7))
                     (apply (lambda (_self215115_
                                     _id215116_
                                     _super215117_
                                     _slots215118_
                                     _ctor-method215119_
                                     _struct?215120_
                                     _final?215121_)
                              (let _lp215123_ ((_rest215125_ _super215117_))
                                (let* ((_rest215126215134_ _rest215125_)
                                       (_else215128215142_ (lambda () '#!void))
                                       (_K215130215148_
                                        (lambda (_rest215145_ _super-id215146_)
                                          (if (##structure-ref
                                               (let ((__tmp220099
                                                      (let ((__tmp220100
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id215116_ '()))))
                (declare (not safe))
                (cons '!class __tmp220100))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp220099
                                                  _super-id215146_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp220097
                                                     (let ((__tmp220098
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id215116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp220098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp220097
                                                 _super-id215146_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp215123_ _rest215145_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest215126215134_))
                                      (let ((_hd215131215151_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest215126215134_)))
                                            (_tl215132215153_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest215126215134_))))
                                        (let* ((_super-id215156_
                                                _hd215131215151_)
                                               (_rest215158_ _tl215132215153_))
                                          (declare (not safe))
                                          (_K215130215148_
                                           _rest215158_
                                           _super-id215156_)))
                                      '#!void)))
                              (let* ((_ctor-method215208_
                                      (let ((_$e215160_ _ctor-method215119_))
                                        (if _$e215160_
                                            _$e215160_
                                            (let _lp215163_ ((_rest215165_
                                                              _super215117_)
                                                             (_method215166_
                                                              '#f))
                                              (let* ((_rest215167215175_
                                                      _rest215165_)
                                                     (_else215169215183_
                                                      (lambda ()
                                                        _method215166_))
                                                     (_K215171215196_
                                                      (lambda (_rest215186_
                                                               _super-id215187_)
                                                        (let* ((_klass215189_
                                                                (let ((__tmp220101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp220102
                                      (let ()
                                        (declare (not safe))
                                        (cons _id215116_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp220102))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp220101
                           _super-id215187_)))
                       (_$e215191_
                        (##structure-ref _klass215189_ '6 gxc#!class::t '#f)))
                  (if _$e215191_
                      ((lambda (_ctor-method215194_)
                         (if _method215166_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method215194_ _method215166_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp215163_
                                    _rest215186_
                                    _ctor-method215194_))
                                 (let ((__tmp220103
                                        (let ((__tmp220104
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id215116_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp220104))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp220103
                                    _method215166_
                                    _ctor-method215194_)))
                             (let ()
                               (declare (not safe))
                               (_lp215163_ _rest215186_ _ctor-method215194_))))
                       _$e215191_)
                      (let ()
                        (declare (not safe))
                        (_lp215163_ _rest215186_ _method215166_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest215167215175_))
                                                    (let ((_hd215172215199_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest215167215175_)))
                                                          (_tl215173215201_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest215167215175_))))
                                                      (let* ((_super-id215204_
                                                              _hd215172215199_)
                                                             (_rest215206_
                                                              _tl215173215201_))
                                                        (declare (not safe))
                                                        (_K215171215196_
                                                         _rest215206_
                                                         _super-id215204_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else215169215183_))))))))
                                     (_g220105_
                                      (let ((__tmp220110
                                             (lambda (_klass-id215210_)
                                               (let ((__tmp220111
                                                      (##structure-ref
                                                       (let ((__tmp220112
                                                              (let ((__tmp220113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id215116_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp220113))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp220112 _klass-id215210_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id215210_
                                                       __tmp220111))))
                                            (__tmp220107
                                             (lambda (_klass-id215212_)
                                               (##structure-ref
                                                (let ((__tmp220108
                                                       (let ((__tmp220109
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id215116_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp220109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp220108
                                                   _klass-id215212_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp220110
                                         __tmp220107
                                         eq?
                                         identity
                                         '()
                                         _super215117_))))
                                (begin
                                  (let ((_g220106_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g220105_)
                                               (##vector-length _g220105_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g220106_ 2)))
                                        (error "Context expects 2 values"
                                               _g220106_)))
                                  (let ((_precedence-list215214_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g220105_ 0)))
                                        (_base-struct215215_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g220105_ 1))))
                                    (let ((_fields215217_
                                           (let ((__tmp220114
                                                  (let ((__tmp220115
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id215116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp220115))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp220114
                                              _base-struct215215_
                                              _precedence-list215214_
                                              _slots215118_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215115_
                                         _id215116_
                                         __id219973
                                         __t219970
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215115_
                                         _super215117_
                                         __super219978
                                         __t219970
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215115_
                                         _precedence-list215214_
                                         __precedence-list219976
                                         __t219970
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215115_
                                         _slots215118_
                                         __slots219974
                                         __t219970
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215115_
                                         _fields215217_
                                         __fields219971
                                         __t219970
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215115_
                                         _ctor-method215208_
                                         __constructor219979
                                         __t219970
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215115_
                                         _struct?215120_
                                         __struct?219975
                                         __t219970
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215115_
                                         _final?215121_
                                         __final?219972
                                         __t219970
                                         '#f)))))))
                            _g220096_))
                    ((let () (declare (not safe)) (##fx= _g220095_ 10))
                     (apply (lambda (_self215220_
                                     _id215221_
                                     _super215222_
                                     _precedence-list215223_
                                     _slots215224_
                                     _fields215225_
                                     _constructor215226_
                                     _struct?215227_
                                     _final?215228_
                                     _methods215229_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215220_
                                 _id215221_
                                 __id219973
                                 __t219970
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215220_
                                 _super215222_
                                 __super219978
                                 __t219970
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215220_
                                 _precedence-list215223_
                                 __precedence-list219976
                                 __t219970
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215220_
                                 _slots215224_
                                 __slots219974
                                 __t219970
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215220_
                                 _fields215225_
                                 __fields219971
                                 __t219970
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215220_
                                 _constructor215226_
                                 __constructor219979
                                 __t219970
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215220_
                                 _struct?215227_
                                 __struct?219975
                                 __t219970
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215220_
                                 _final?215228_
                                 __final?219972
                                 __t219970
                                 '#f))
                              (if _methods215229_
                                  (let ((__tmp220116
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods215229_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self215220_
                                     __tmp220116
                                     __methods219977
                                     __t219970
                                     '#f))
                                  '#!void))
                            _g220096_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g220096_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where214967_
               _base-struct214968_
               _precedence-list214969_
               _direct-slots214970_)
        (let* ((_base-fields214972_
                (if _base-struct214968_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where214967_
                        _base-struct214968_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields214974_ (reverse _base-fields214972_))
               (_seen-slots214982_
                (let ((_tab214976_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g214977214979_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab214976_ _g214977214979_ '#t)))
                   _base-fields214972_)
                  _tab214976_))
               (_process-slot214986_
                (lambda (_slot214984_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots214982_ _slot214984_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots214982_ _slot214984_ '#t))
                        (set! _r-fields214974_
                              (let ()
                                (declare (not safe))
                                (cons _slot214984_ _r-fields214974_))))))))
          (for-each
           (lambda (_mixin214989_)
             (let ((_klass214991_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where214967_
                       _mixin214989_))))
               (if (##structure-ref _klass214991_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot214986_
                    (##structure-ref _klass214991_ '5 gxc#!class::t '#f)))))
           _precedence-list214969_)
          (for-each _process-slot214986_ _direct-slots214970_)
          (reverse _r-fields214974_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass214926_ _slot214927_)
        (let _lp214929_ ((_rest214931_
                          (##structure-ref _klass214926_ '5 gxc#!class::t '#f))
                         (_offset214932_ '1))
          (let* ((_rest214933214941_ _rest214931_)
                 (_else214935214949_
                  (lambda ()
                    (let ((__tmp220118
                           (##structure-ref _klass214926_ '1 gxc#!type::t '#f))
                          (__tmp220117
                           (##structure-ref
                            _klass214926_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp220118
                       __tmp220117
                       _slot214927_))))
                 (_K214937214955_
                  (lambda (_rest214952_ _s214953_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s214953_ _slot214927_))
                        _offset214932_
                        (let ((__tmp220119
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset214932_ '1))))
                          (declare (not safe))
                          (_lp214929_ _rest214952_ __tmp220119))))))
            (if (let () (declare (not safe)) (##pair? _rest214933214941_))
                (let ((_hd214938214958_
                       (let ()
                         (declare (not safe))
                         (##car _rest214933214941_)))
                      (_tl214939214960_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest214933214941_))))
                  (let* ((_s214963_ _hd214938214958_)
                         (_rest214965_ _tl214939214960_))
                    (declare (not safe))
                    (_K214937214955_ _rest214965_ _s214963_)))
                (let () (declare (not safe)) (_else214935214949_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass214884_ _slot214885_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass214884_ _slot214885_))
            _klass214884_
            (let _lp214887_ ((_rest214889_
                              (##structure-ref
                               _klass214884_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest214890214898_ _rest214889_)
                     (_else214892214906_ (lambda () '#f))
                     (_K214894214914_
                      (lambda (_rest214909_ _super214910_)
                        (let ((_super-class214912_
                               (let ((__tmp220120
                                      (let ((__tmp220121
                                             (let ((__tmp220123
                                                    (##structure-ref
                                                     _klass214884_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp220122
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot214885_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp220123
                                                     __tmp220122))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp220121))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp220120
                                  _super214910_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class214912_
                                 _slot214885_))
                              _super-class214912_
                              (let ()
                                (declare (not safe))
                                (_lp214887_ _rest214909_)))))))
                (if (let () (declare (not safe)) (##pair? _rest214890214898_))
                    (let ((_hd214895214917_
                           (let ()
                             (declare (not safe))
                             (##car _rest214890214898_)))
                          (_tl214896214919_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest214890214898_))))
                      (let* ((_super214922_ _hd214895214917_)
                             (_rest214924_ _tl214896214919_))
                        (declare (not safe))
                        (_K214894214914_ _rest214924_ _super214922_)))
                    (let () (declare (not safe)) (_else214892214906_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass214881_ _slot214882_)
        (if (##structure-ref _klass214881_ '7 gxc#!class::t '#f)
            (memq _slot214882_
                  (##structure-ref _klass214881_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self214878_ _id214879_)
        (##structure-set! _self214878_ _id214879_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t219989)
        (let ((__id219990
               (let ((__tmp219991
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219989 'id))))
                 (if __tmp219991 __tmp219991 (error '"Unknown slot" 'id)))))
          (lambda (_self214878_ _id214879_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214878_
               _id214879_
               __id219990
               __t219989
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
      (lambda (_self214753_ _id214754_)
        (##structure-set! _self214753_ _id214754_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t219992)
        (let ((__id219993
               (let ((__tmp219994
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219992 'id))))
                 (if __tmp219994 __tmp219994 (error '"Unknown slot" 'id)))))
          (lambda (_self214753_ _id214754_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214753_
               _id214754_
               __id219993
               __t219992
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
      (lambda (_self214626_ _id214627_ _slot214628_ _checked?214629_)
        (##structure-set! _self214626_ _id214627_ '1 gxc#!type::t '#f)
        (##structure-set! _self214626_ _slot214628_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self214626_
         _checked?214629_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t219995)
        (let ((__slot219996
               (let ((__tmp219999
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219995 'slot))))
                 (if __tmp219999 __tmp219999 (error '"Unknown slot" 'slot))))
              (__id219997
               (let ((__tmp220000
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219995 'id))))
                 (if __tmp220000 __tmp220000 (error '"Unknown slot" 'id))))
              (__checked?219998
               (let ((__tmp220001
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219995 'checked?))))
                 (if __tmp220001
                     __tmp220001
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self214626_ _id214627_ _slot214628_ _checked?214629_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214626_
               _id214627_
               __id219997
               __t219995
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214626_
               _slot214628_
               __slot219996
               __t219995
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214626_
               _checked?214629_
               __checked?219998
               __t219995
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
      (lambda (_self214499_ _id214500_ _slot214501_ _checked?214502_)
        (##structure-set! _self214499_ _id214500_ '1 gxc#!type::t '#f)
        (##structure-set! _self214499_ _slot214501_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self214499_
         _checked?214502_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t220002)
        (let ((__slot220003
               (let ((__tmp220006
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220002 'slot))))
                 (if __tmp220006 __tmp220006 (error '"Unknown slot" 'slot))))
              (__id220004
               (let ((__tmp220007
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220002 'id))))
                 (if __tmp220007 __tmp220007 (error '"Unknown slot" 'id))))
              (__checked?220005
               (let ((__tmp220008
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220002 'checked?))))
                 (if __tmp220008
                     __tmp220008
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self214499_ _id214500_ _slot214501_ _checked?214502_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214499_
               _id214500_
               __id220004
               __t220002
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214499_
               _slot214501_
               __slot220003
               __t220002
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214499_
               _checked?214502_
               __checked?220005
               __t220002
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
      (lambda (_self214343_
               _id214344_
               _arity214345_
               _dispatch214346_
               _inline214347_
               _typedecl214348_)
        (if (let ((__tmp220129
                   (let ()
                     (declare (not safe))
                     (##structure-length _self214343_))))
              (declare (not safe))
              (##fx< '5 __tmp220129))
            (begin
              (let ((__tmp220124
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214343_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214343_
                 _id214344_
                 '1
                 __tmp220124
                 '#f))
              (let ((__tmp220125
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214343_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214343_
                 _arity214345_
                 '2
                 __tmp220125
                 '#f))
              (let ((__tmp220126
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214343_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214343_
                 _dispatch214346_
                 '3
                 __tmp220126
                 '#f))
              (let ((__tmp220127
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214343_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214343_
                 _inline214347_
                 '4
                 __tmp220127
                 '#f))
              (let ((__tmp220128
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214343_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214343_
                 _typedecl214348_
                 '5
                 __tmp220128
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self214343_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self214343_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self214353_ _id214354_ _arity214355_ _dispatch214356_)
        (let* ((_inline214358_ '#f) (_typedecl214360_ '#f))
          (if (let ((__tmp220135
                     (let ()
                       (declare (not safe))
                       (##structure-length _self214353_))))
                (declare (not safe))
                (##fx< '5 __tmp220135))
              (begin
                (let ((__tmp220130
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214353_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214353_
                   _id214354_
                   '1
                   __tmp220130
                   '#f))
                (let ((__tmp220131
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214353_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214353_
                   _arity214355_
                   '2
                   __tmp220131
                   '#f))
                (let ((__tmp220132
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214353_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214353_
                   _dispatch214356_
                   '3
                   __tmp220132
                   '#f))
                (let ((__tmp220133
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214353_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214353_
                   _inline214358_
                   '4
                   __tmp220133
                   '#f))
                (let ((__tmp220134
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214353_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214353_
                   _typedecl214360_
                   '5
                   __tmp220134
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self214353_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self214353_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self214362_
               _id214363_
               _arity214364_
               _dispatch214365_
               _inline214366_)
        (let ((_typedecl214368_ '#f))
          (if (let ((__tmp220141
                     (let ()
                       (declare (not safe))
                       (##structure-length _self214362_))))
                (declare (not safe))
                (##fx< '5 __tmp220141))
              (begin
                (let ((__tmp220136
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214362_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214362_
                   _id214363_
                   '1
                   __tmp220136
                   '#f))
                (let ((__tmp220137
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214362_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214362_
                   _arity214364_
                   '2
                   __tmp220137
                   '#f))
                (let ((__tmp220138
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214362_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214362_
                   _dispatch214365_
                   '3
                   __tmp220138
                   '#f))
                (let ((__tmp220139
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214362_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214362_
                   _inline214366_
                   '4
                   __tmp220139
                   '#f))
                (let ((__tmp220140
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214362_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214362_
                   _typedecl214368_
                   '5
                   __tmp220140
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self214362_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self214362_)))))))
    (define gxc#!lambda:::init!
      (lambda _g220143_
        (let ((_g220142_ (let () (declare (not safe)) (##length _g220143_))))
          (cond ((let () (declare (not safe)) (##fx= _g220142_ 4))
                 (apply (lambda (_self214353_
                                 _id214354_
                                 _arity214355_
                                 _dispatch214356_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self214353_
                             _id214354_
                             _arity214355_
                             _dispatch214356_)))
                        _g220143_))
                ((let () (declare (not safe)) (##fx= _g220142_ 5))
                 (apply (lambda (_self214362_
                                 _id214363_
                                 _arity214364_
                                 _dispatch214365_
                                 _inline214366_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self214362_
                             _id214363_
                             _arity214364_
                             _dispatch214365_
                             _inline214366_)))
                        _g220143_))
                ((let () (declare (not safe)) (##fx= _g220142_ 6))
                 (apply (lambda (_self214370_
                                 _id214371_
                                 _arity214372_
                                 _dispatch214373_
                                 _inline214374_
                                 _typedecl214375_)
                          (if (let ((__tmp220149
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self214370_))))
                                (declare (not safe))
                                (##fx< '5 __tmp220149))
                              (begin
                                (let ((__tmp220144
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214370_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214370_
                                   _id214371_
                                   '1
                                   __tmp220144
                                   '#f))
                                (let ((__tmp220145
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214370_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214370_
                                   _arity214372_
                                   '2
                                   __tmp220145
                                   '#f))
                                (let ((__tmp220146
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214370_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214370_
                                   _dispatch214373_
                                   '3
                                   __tmp220146
                                   '#f))
                                (let ((__tmp220147
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214370_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214370_
                                   _inline214374_
                                   '4
                                   __tmp220147
                                   '#f))
                                (let ((__tmp220148
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214370_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214370_
                                   _typedecl214375_
                                   '5
                                   __tmp220148
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self214370_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self214370_)))))
                        _g220143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g220143_))))))
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
      (lambda (_self214095_ . _args214096_)
        (apply struct-instance-init! _self214095_ _args214096_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type213970_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type213970_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type213970_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass213963_)
        (let ((_$e213965_
               (##structure-ref _klass213963_ '9 gxc#!class::t '#f)))
          (if _$e213965_
              _$e213965_
              (let ((_tab213968_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass213963_
                 _tab213968_
                 '9
                 gxc#!class::t
                 '#f)
                _tab213968_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass213954_ _method213955_)
        (let ((_tab213956213958_
               (##structure-ref _klass213954_ '9 gxc#!class::t '#f)))
          (if _tab213956213958_
              (let ((_tab213961_ _tab213956213958_))
                (declare (not safe))
                (table-ref _tab213961_ _method213955_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type213951_ _method213952_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type213951_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type213951_ _method213952_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym213935_ _type213936_ _local?213937_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type213936_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym213935_
                   _type213936_))
        (let ((__tmp220150
               (let () (declare (not safe)) (struct->list _type213936_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym213935_ '" " __tmp220150))
        (let ((__tmp220151
               (if _local?213937_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp220151 _sym213935_ _type213936_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym213942_ _type213943_)
        (let ((_local?213945_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym213942_
           _type213943_
           _local?213945_))))
    (define gxc#optimizer-declare-type!
      (lambda _g220153_
        (let ((_g220152_ (let () (declare (not safe)) (##length _g220153_))))
          (cond ((let () (declare (not safe)) (##fx= _g220152_ 2))
                 (apply (lambda (_sym213942_ _type213943_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym213942_
                             _type213943_)))
                        _g220153_))
                ((let () (declare (not safe)) (##fx= _g220152_ 3))
                 (apply (lambda (_sym213947_ _type213948_ _local?213949_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym213947_
                             _type213948_
                             _local?213949_)))
                        _g220153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g220153_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym213921_ _local?213922_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym213921_))
        (let ((__tmp220154
               (if _local?213922_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp220154 _sym213921_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym213927_)
        (let ((_local?213929_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym213927_ _local?213929_))))
    (define gxc#optimizer-clear-type!
      (lambda _g220156_
        (let ((_g220155_ (let () (declare (not safe)) (##length _g220156_))))
          (cond ((let () (declare (not safe)) (##fx= _g220155_ 1))
                 (apply (lambda (_sym213927_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym213927_)))
                        _g220156_))
                ((let () (declare (not safe)) (##fx= _g220155_ 2))
                 (apply (lambda (_sym213931_ _local?213932_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym213931_
                             _local?213932_)))
                        _g220156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g220156_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t213894_ _method213895_ _sym213896_ _rebind?213897_)
        (let* ((_type213899_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t213894_)))
               (_$e213901_
                (let () (declare (not safe)) (gxc#!type-vtab _type213899_))))
          (if _$e213901_
              ((lambda (_vtab213904_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab213904_ _method213895_))
                     (if _rebind?213897_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t213894_
                              '" "
                              _method213895_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab213904_
                              _method213895_
                              _sym213896_)))
                         (let ((__tmp220161
                                (let ((__tmp220162
                                       (let ((__tmp220163
                                              (let ((__tmp220164
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym213896_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method213895_
                                                      __tmp220164))))
                                         (declare (not safe))
                                         (cons _type-t213894_ __tmp220163))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp220162))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp220161
                            _method213895_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t213894_
                          '" "
                          _method213895_
                          '" => "
                          _sym213896_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab213904_
                          _method213895_
                          _sym213896_)))))
               _$e213901_)
              (if (let () (declare (not safe)) (not _type213899_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t213894_))
                  (let ((__tmp220157
                         (let ((__tmp220158
                                (let ((__tmp220159
                                       (let ((__tmp220160
                                              (let ()
                                                (declare (not safe))
                                                (cons _method213895_ '()))))
                                         (declare (not safe))
                                         (cons _sym213896_ __tmp220160))))
                                  (declare (not safe))
                                  (cons _type-t213894_ __tmp220159))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp220158))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp220157
                     _type213899_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t213909_ _method213910_ _sym213911_)
        (let ((_rebind?213913_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t213909_
           _method213910_
           _sym213911_
           _rebind?213913_))))
    (define gxc#optimizer-declare-method!
      (lambda _g220166_
        (let ((_g220165_ (let () (declare (not safe)) (##length _g220166_))))
          (cond ((let () (declare (not safe)) (##fx= _g220165_ 3))
                 (apply (lambda (_type-t213909_ _method213910_ _sym213911_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t213909_
                             _method213910_
                             _sym213911_)))
                        _g220166_))
                ((let () (declare (not safe)) (##fx= _g220165_ 4))
                 (apply (lambda (_type-t213915_
                                 _method213916_
                                 _sym213917_
                                 _rebind?213918_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t213915_
                             _method213916_
                             _sym213917_
                             _rebind?213918_)))
                        _g220166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g220166_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym213882_)
        (let ((_$e213890_
               (let ((_ht213883213885_ (gxc#current-compile-local-type)))
                 (if _ht213883213885_
                     (let ((_ht213888_ _ht213883213885_))
                       (declare (not safe))
                       (table-ref _ht213888_ _sym213882_ '#f))
                     '#f))))
          (if _$e213890_
              _$e213890_
              (let ((__tmp220167
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp220167 _sym213882_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym213874_)
        (let ((_type213875213877_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym213874_))))
          (if _type213875213877_
              (let ((_type213880_ _type213875213877_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type213880_ 'gxc#!alias::t))
                    (let ((__tmp220168
                           (##structure-ref _type213880_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp220168))
                    _type213880_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where213866_ _klass-id213867_)
        (let ((_$e213869_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id213867_))))
          (if _$e213869_
              ((lambda (_klass213872_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass213872_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where213866_
                        _klass-id213867_
                        _klass213872_)))
                 _klass213872_)
               _$e213869_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where213866_
                 _klass-id213867_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t213863_ _method213864_)
        (let ((__tmp220169
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t213863_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp220169 _method213864_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym213861_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym213861_))
        (let ((__tmp220170
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp220170 _sym213861_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym213859_)
        (let ((__tmp220171
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp220171 _sym213859_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx213857_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx213857_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx213857_))
            (let () (declare (not safe)) (gx#stx-e _stx213857_)))))))
