(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707674933)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp220018 (list))
            (__tmp220016
             (let ((__tmp220017
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220017 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp220018
         '(type ssxi methods)
         __tmp220016
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args215391_
        (apply make-instance gxc#optimizer-info::t _$args215391_)))
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
      (lambda (_self215389_)
        (if (let ((__tmp220025
                   (let ()
                     (declare (not safe))
                     (##structure-length _self215389_))))
              (declare (not safe))
              (##fx< '3 __tmp220025))
            (begin
              (let ((__tmp220020
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220019
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215389_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215389_
                 __tmp220020
                 '1
                 __tmp220019
                 '#f))
              (let ((__tmp220022
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220021
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215389_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215389_
                 __tmp220022
                 '2
                 __tmp220021
                 '#f))
              (let ((__tmp220024
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220023
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215389_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215389_
                 __tmp220024
                 '3
                 __tmp220023
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self215389_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self215389_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp220028 (list))
            (__tmp220026
             (let ((__tmp220027
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220027 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp220028
         '(id)
         __tmp220026
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args215264_ (apply make-instance gxc#!type::t _$args215264_)))
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
      (let ((__tmp220031 (list gxc#!type::t))
            (__tmp220029
             (let ((__tmp220030
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220030 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp220031
         '()
         __tmp220029
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args215261_ (apply make-instance gxc#!alias::t _$args215261_)))
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
      (let ((__tmp220034 (list gxc#!type::t))
            (__tmp220032
             (let ((__tmp220033
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220033 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp220034
         '()
         __tmp220032
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args215258_
        (apply make-instance gxc#!procedure::t _$args215258_)))
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
      (let ((__tmp220037 (list gxc#!type::t))
            (__tmp220035
             (let ((__tmp220036
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220036 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp220037
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 methods)
         __tmp220035
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args215255_ (apply make-instance gxc#!class::t _$args215255_)))
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
      (let ((__tmp220040 (list gxc#!procedure::t))
            (__tmp220038
             (let ((__tmp220039
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220039 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp220040
         '()
         __tmp220038
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args215252_
        (apply make-instance gxc#!predicate::t _$args215252_)))
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
      (let ((__tmp220043 (list gxc#!procedure::t))
            (__tmp220041
             (let ((__tmp220042
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220042 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp220043
         '()
         __tmp220041
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args215249_
        (apply make-instance gxc#!constructor::t _$args215249_)))
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
      (let ((__tmp220046 (list gxc#!procedure::t))
            (__tmp220044
             (let ((__tmp220045
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220045 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp220046
         '(slot checked?)
         __tmp220044
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args215246_
        (apply make-instance gxc#!accessor::t _$args215246_)))
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
      (let ((__tmp220049 (list gxc#!procedure::t))
            (__tmp220047
             (let ((__tmp220048
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220048 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp220049
         '(slot checked?)
         __tmp220047
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args215243_
        (apply make-instance gxc#!mutator::t _$args215243_)))
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
      (let ((__tmp220052 (list gxc#!procedure::t))
            (__tmp220050
             (let ((__tmp220051
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220051 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp220052
         '(arity dispatch inline inline-typedecl)
         __tmp220050
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args215240_
        (apply make-instance gxc#!lambda::t _$args215240_)))
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
      (let ((__tmp220055 (list gxc#!procedure::t))
            (__tmp220053
             (let ((__tmp220054
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220054 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp220055
         '(clauses)
         __tmp220053
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args215237_
        (apply make-instance gxc#!case-lambda::t _$args215237_)))
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
      (let ((__tmp220058 (list gxc#!procedure::t))
            (__tmp220056
             (let ((__tmp220057
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220057 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp220058
         '(table dispatch)
         __tmp220056
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args215234_
        (apply make-instance gxc#!kw-lambda::t _$args215234_)))
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
      (let ((__tmp220061 (list gxc#!procedure::t))
            (__tmp220059
             (let ((__tmp220060
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220060 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp220061
         '(keys main)
         __tmp220059
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args215231_
        (apply make-instance gxc#!kw-lambda-primary::t _$args215231_)))
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
      (let ((__tmp220062 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp220062
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args215228_
        (apply make-instance gxc#!primitive::t _$args215228_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp220063 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp220063
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args215225_
        (apply make-instance gxc#!primitive-lambda::t _$args215225_)))
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
      (let ((__tmp220064 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp220064
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args215222_
        (apply make-instance gxc#!primitive-case-lambda::t _$args215222_)))
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
      (lambda (_self215106_
               _id215107_
               _super215108_
               _slots215109_
               _ctor-method215110_
               _struct?215111_
               _final?215112_)
        (let _lp215114_ ((_rest215116_ _super215108_))
          (let* ((_rest215117215125_ _rest215116_)
                 (_else215119215133_ (lambda () '#!void))
                 (_K215121215139_
                  (lambda (_rest215136_ _super-id215137_)
                    (if (##structure-ref
                         (let ((__tmp220067
                                (let ((__tmp220068
                                       (let ()
                                         (declare (not safe))
                                         (cons _id215107_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp220068))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp220067
                            _super-id215137_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp220065
                               (let ((__tmp220066
                                      (let ()
                                        (declare (not safe))
                                        (cons _id215107_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp220066))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp220065
                           _super-id215137_))
                        '#!void)
                    (let () (declare (not safe)) (_lp215114_ _rest215136_)))))
            (if (let () (declare (not safe)) (##pair? _rest215117215125_))
                (let ((_hd215122215142_
                       (let ()
                         (declare (not safe))
                         (##car _rest215117215125_)))
                      (_tl215123215144_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest215117215125_))))
                  (let* ((_super-id215147_ _hd215122215142_)
                         (_rest215149_ _tl215123215144_))
                    (declare (not safe))
                    (_K215121215139_ _rest215149_ _super-id215147_)))
                '#!void)))
        (let* ((_ctor-method215199_
                (let ((_$e215151_ _ctor-method215110_))
                  (if _$e215151_
                      _$e215151_
                      (let _lp215154_ ((_rest215156_ _super215108_)
                                       (_method215157_ '#f))
                        (let* ((_rest215158215166_ _rest215156_)
                               (_else215160215174_ (lambda () _method215157_))
                               (_K215162215187_
                                (lambda (_rest215177_ _super-id215178_)
                                  (let* ((_klass215180_
                                          (let ((__tmp220069
                                                 (let ((__tmp220070
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id215107_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp220070))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp220069
                                             _super-id215178_)))
                                         (_$e215182_
                                          (##structure-ref
                                           _klass215180_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e215182_
                                        ((lambda (_ctor-method215185_)
                                           (if _method215157_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method215185_
                                                          _method215157_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp215154_
                                                      _rest215177_
                                                      _ctor-method215185_))
                                                   (let ((__tmp220071
                                                          (let ((__tmp220072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id215107_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp220072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp220071
                                                      _method215157_
                                                      _ctor-method215185_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp215154_
                                                  _rest215177_
                                                  _ctor-method215185_))))
                                         _$e215182_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp215154_
                                           _rest215177_
                                           _method215157_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest215158215166_))
                              (let ((_hd215163215190_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest215158215166_)))
                                    (_tl215164215192_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest215158215166_))))
                                (let* ((_super-id215195_ _hd215163215190_)
                                       (_rest215197_ _tl215164215192_))
                                  (declare (not safe))
                                  (_K215162215187_
                                   _rest215197_
                                   _super-id215195_)))
                              (let ()
                                (declare (not safe))
                                (_else215160215174_))))))))
               (_g220073_
                (let ((__tmp220078
                       (lambda (_klass-id215201_)
                         (let ((__tmp220079
                                (##structure-ref
                                 (let ((__tmp220080
                                        (let ((__tmp220081
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id215107_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp220081))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp220080
                                    _klass-id215201_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id215201_ __tmp220079))))
                      (__tmp220075
                       (lambda (_klass-id215203_)
                         (##structure-ref
                          (let ((__tmp220076
                                 (let ((__tmp220077
                                        (let ()
                                          (declare (not safe))
                                          (cons _id215107_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp220077))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp220076
                             _klass-id215203_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp220078
                   __tmp220075
                   eq?
                   identity
                   '()
                   _super215108_))))
          (begin
            (let ((_g220074_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g220073_)
                         (##vector-length _g220073_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g220074_ 2)))
                  (error "Context expects 2 values" _g220074_)))
            (let ((_precedence-list215205_
                   (let () (declare (not safe)) (##vector-ref _g220073_ 0)))
                  (_base-struct215206_
                   (let () (declare (not safe)) (##vector-ref _g220073_ 1))))
              (let ((_fields215208_
                     (let ((__tmp220082
                            (let ((__tmp220083
                                   (let ()
                                     (declare (not safe))
                                     (cons _id215107_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp220083))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp220082
                        _base-struct215206_
                        _precedence-list215205_
                        _slots215109_))))
                (##structure-set! _self215106_ _id215107_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self215106_
                 _super215108_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215106_
                 _precedence-list215205_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215106_
                 _slots215109_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215106_
                 _fields215208_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215106_
                 _ctor-method215199_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215106_
                 _struct?215111_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215106_
                 _final?215112_
                 '8
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self215211_
               _id215212_
               _super215213_
               _precedence-list215214_
               _slots215215_
               _fields215216_
               _constructor215217_
               _struct?215218_
               _final?215219_
               _methods215220_)
        (##structure-set! _self215211_ _id215212_ '1 gxc#!type::t '#f)
        (##structure-set! _self215211_ _super215213_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self215211_
         _precedence-list215214_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self215211_ _slots215215_ '4 gxc#!class::t '#f)
        (##structure-set! _self215211_ _fields215216_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self215211_
         _constructor215217_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self215211_ _struct?215218_ '7 gxc#!class::t '#f)
        (##structure-set! _self215211_ _final?215219_ '8 gxc#!class::t '#f)
        (if _methods215220_
            (##structure-set!
             _self215211_
             (let ()
               (declare (not safe))
               (list->table _methods215220_ 'test: eq?))
             '9
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g220085_
        (let ((_g220084_ (let () (declare (not safe)) (##length _g220085_))))
          (cond ((let () (declare (not safe)) (##fx= _g220084_ 7))
                 (apply (lambda (_self215106_
                                 _id215107_
                                 _super215108_
                                 _slots215109_
                                 _ctor-method215110_
                                 _struct?215111_
                                 _final?215112_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self215106_
                             _id215107_
                             _super215108_
                             _slots215109_
                             _ctor-method215110_
                             _struct?215111_
                             _final?215112_)))
                        _g220085_))
                ((let () (declare (not safe)) (##fx= _g220084_ 10))
                 (apply (lambda (_self215211_
                                 _id215212_
                                 _super215213_
                                 _precedence-list215214_
                                 _slots215215_
                                 _fields215216_
                                 _constructor215217_
                                 _struct?215218_
                                 _final?215219_
                                 _methods215220_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self215211_
                             _id215212_
                             _super215213_
                             _precedence-list215214_
                             _slots215215_
                             _fields215216_
                             _constructor215217_
                             _struct?215218_
                             _final?215219_
                             _methods215220_)))
                        _g220085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g220085_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t219961)
        (let ((__final?219962
               (let ((__tmp219971
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219961 'final?))))
                 (if __tmp219971 __tmp219971 (error '"Unknown slot" 'final?))))
              (__id219963
               (let ((__tmp219972
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219961 'id))))
                 (if __tmp219972 __tmp219972 (error '"Unknown slot" 'id))))
              (__constructor219964
               (let ((__tmp219973
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219961 'constructor))))
                 (if __tmp219973
                     __tmp219973
                     (error '"Unknown slot" 'constructor))))
              (__fields219965
               (let ((__tmp219974
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219961 'fields))))
                 (if __tmp219974 __tmp219974 (error '"Unknown slot" 'fields))))
              (__precedence-list219966
               (let ((__tmp219975
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219961 'precedence-list))))
                 (if __tmp219975
                     __tmp219975
                     (error '"Unknown slot" 'precedence-list))))
              (__methods219967
               (let ((__tmp219976
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219961 'methods))))
                 (if __tmp219976
                     __tmp219976
                     (error '"Unknown slot" 'methods))))
              (__super219968
               (let ((__tmp219977
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219961 'super))))
                 (if __tmp219977 __tmp219977 (error '"Unknown slot" 'super))))
              (__slots219969
               (let ((__tmp219978
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219961 'slots))))
                 (if __tmp219978 __tmp219978 (error '"Unknown slot" 'slots))))
              (__struct?219970
               (let ((__tmp219979
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219961 'struct?))))
                 (if __tmp219979
                     __tmp219979
                     (error '"Unknown slot" 'struct?)))))
          (lambda _g220087_
            (let ((_g220086_
                   (let () (declare (not safe)) (##length _g220087_))))
              (cond ((let () (declare (not safe)) (##fx= _g220086_ 7))
                     (apply (lambda (_self215106_
                                     _id215107_
                                     _super215108_
                                     _slots215109_
                                     _ctor-method215110_
                                     _struct?215111_
                                     _final?215112_)
                              (let _lp215114_ ((_rest215116_ _super215108_))
                                (let* ((_rest215117215125_ _rest215116_)
                                       (_else215119215133_ (lambda () '#!void))
                                       (_K215121215139_
                                        (lambda (_rest215136_ _super-id215137_)
                                          (if (##structure-ref
                                               (let ((__tmp220090
                                                      (let ((__tmp220091
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id215107_ '()))))
                (declare (not safe))
                (cons '!class __tmp220091))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp220090
                                                  _super-id215137_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp220088
                                                     (let ((__tmp220089
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id215107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp220089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp220088
                                                 _super-id215137_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp215114_ _rest215136_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest215117215125_))
                                      (let ((_hd215122215142_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest215117215125_)))
                                            (_tl215123215144_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest215117215125_))))
                                        (let* ((_super-id215147_
                                                _hd215122215142_)
                                               (_rest215149_ _tl215123215144_))
                                          (declare (not safe))
                                          (_K215121215139_
                                           _rest215149_
                                           _super-id215147_)))
                                      '#!void)))
                              (let* ((_ctor-method215199_
                                      (let ((_$e215151_ _ctor-method215110_))
                                        (if _$e215151_
                                            _$e215151_
                                            (let _lp215154_ ((_rest215156_
                                                              _super215108_)
                                                             (_method215157_
                                                              '#f))
                                              (let* ((_rest215158215166_
                                                      _rest215156_)
                                                     (_else215160215174_
                                                      (lambda ()
                                                        _method215157_))
                                                     (_K215162215187_
                                                      (lambda (_rest215177_
                                                               _super-id215178_)
                                                        (let* ((_klass215180_
                                                                (let ((__tmp220092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp220093
                                      (let ()
                                        (declare (not safe))
                                        (cons _id215107_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp220093))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp220092
                           _super-id215178_)))
                       (_$e215182_
                        (##structure-ref _klass215180_ '6 gxc#!class::t '#f)))
                  (if _$e215182_
                      ((lambda (_ctor-method215185_)
                         (if _method215157_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method215185_ _method215157_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp215154_
                                    _rest215177_
                                    _ctor-method215185_))
                                 (let ((__tmp220094
                                        (let ((__tmp220095
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id215107_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp220095))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp220094
                                    _method215157_
                                    _ctor-method215185_)))
                             (let ()
                               (declare (not safe))
                               (_lp215154_ _rest215177_ _ctor-method215185_))))
                       _$e215182_)
                      (let ()
                        (declare (not safe))
                        (_lp215154_ _rest215177_ _method215157_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest215158215166_))
                                                    (let ((_hd215163215190_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest215158215166_)))
                                                          (_tl215164215192_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest215158215166_))))
                                                      (let* ((_super-id215195_
                                                              _hd215163215190_)
                                                             (_rest215197_
                                                              _tl215164215192_))
                                                        (declare (not safe))
                                                        (_K215162215187_
                                                         _rest215197_
                                                         _super-id215195_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else215160215174_))))))))
                                     (_g220096_
                                      (let ((__tmp220101
                                             (lambda (_klass-id215201_)
                                               (let ((__tmp220102
                                                      (##structure-ref
                                                       (let ((__tmp220103
                                                              (let ((__tmp220104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id215107_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp220104))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp220103 _klass-id215201_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id215201_
                                                       __tmp220102))))
                                            (__tmp220098
                                             (lambda (_klass-id215203_)
                                               (##structure-ref
                                                (let ((__tmp220099
                                                       (let ((__tmp220100
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id215107_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp220100))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp220099
                                                   _klass-id215203_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp220101
                                         __tmp220098
                                         eq?
                                         identity
                                         '()
                                         _super215108_))))
                                (begin
                                  (let ((_g220097_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g220096_)
                                               (##vector-length _g220096_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g220097_ 2)))
                                        (error "Context expects 2 values"
                                               _g220097_)))
                                  (let ((_precedence-list215205_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g220096_ 0)))
                                        (_base-struct215206_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g220096_ 1))))
                                    (let ((_fields215208_
                                           (let ((__tmp220105
                                                  (let ((__tmp220106
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id215107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp220106))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp220105
                                              _base-struct215206_
                                              _precedence-list215205_
                                              _slots215109_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215106_
                                         _id215107_
                                         __id219963
                                         __t219961
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215106_
                                         _super215108_
                                         __super219968
                                         __t219961
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215106_
                                         _precedence-list215205_
                                         __precedence-list219966
                                         __t219961
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215106_
                                         _slots215109_
                                         __slots219969
                                         __t219961
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215106_
                                         _fields215208_
                                         __fields219965
                                         __t219961
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215106_
                                         _ctor-method215199_
                                         __constructor219964
                                         __t219961
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215106_
                                         _struct?215111_
                                         __struct?219970
                                         __t219961
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215106_
                                         _final?215112_
                                         __final?219962
                                         __t219961
                                         '#f)))))))
                            _g220087_))
                    ((let () (declare (not safe)) (##fx= _g220086_ 10))
                     (apply (lambda (_self215211_
                                     _id215212_
                                     _super215213_
                                     _precedence-list215214_
                                     _slots215215_
                                     _fields215216_
                                     _constructor215217_
                                     _struct?215218_
                                     _final?215219_
                                     _methods215220_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215211_
                                 _id215212_
                                 __id219963
                                 __t219961
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215211_
                                 _super215213_
                                 __super219968
                                 __t219961
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215211_
                                 _precedence-list215214_
                                 __precedence-list219966
                                 __t219961
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215211_
                                 _slots215215_
                                 __slots219969
                                 __t219961
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215211_
                                 _fields215216_
                                 __fields219965
                                 __t219961
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215211_
                                 _constructor215217_
                                 __constructor219964
                                 __t219961
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215211_
                                 _struct?215218_
                                 __struct?219970
                                 __t219961
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215211_
                                 _final?215219_
                                 __final?219962
                                 __t219961
                                 '#f))
                              (if _methods215220_
                                  (let ((__tmp220107
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods215220_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self215211_
                                     __tmp220107
                                     __methods219967
                                     __t219961
                                     '#f))
                                  '#!void))
                            _g220087_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g220087_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where214958_
               _base-struct214959_
               _precedence-list214960_
               _direct-slots214961_)
        (let* ((_base-fields214963_
                (if _base-struct214959_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where214958_
                        _base-struct214959_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields214965_ (reverse _base-fields214963_))
               (_seen-slots214973_
                (let ((_tab214967_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g214968214970_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab214967_ _g214968214970_ '#t)))
                   _base-fields214963_)
                  _tab214967_))
               (_process-slot214977_
                (lambda (_slot214975_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots214973_ _slot214975_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots214973_ _slot214975_ '#t))
                        (set! _r-fields214965_
                              (let ()
                                (declare (not safe))
                                (cons _slot214975_ _r-fields214965_))))))))
          (for-each
           (lambda (_mixin214980_)
             (let ((_klass214982_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where214958_
                       _mixin214980_))))
               (if (##structure-ref _klass214982_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot214977_
                    (##structure-ref _klass214982_ '5 gxc#!class::t '#f)))))
           _precedence-list214960_)
          (for-each _process-slot214977_ _direct-slots214961_)
          (reverse _r-fields214965_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass214917_ _slot214918_)
        (let _lp214920_ ((_rest214922_
                          (##structure-ref _klass214917_ '5 gxc#!class::t '#f))
                         (_offset214923_ '1))
          (let* ((_rest214924214932_ _rest214922_)
                 (_else214926214940_
                  (lambda ()
                    (let ((__tmp220109
                           (##structure-ref _klass214917_ '1 gxc#!type::t '#f))
                          (__tmp220108
                           (##structure-ref
                            _klass214917_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp220109
                       __tmp220108
                       _slot214918_))))
                 (_K214928214946_
                  (lambda (_rest214943_ _s214944_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s214944_ _slot214918_))
                        _offset214923_
                        (let ((__tmp220110
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset214923_ '1))))
                          (declare (not safe))
                          (_lp214920_ _rest214943_ __tmp220110))))))
            (if (let () (declare (not safe)) (##pair? _rest214924214932_))
                (let ((_hd214929214949_
                       (let ()
                         (declare (not safe))
                         (##car _rest214924214932_)))
                      (_tl214930214951_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest214924214932_))))
                  (let* ((_s214954_ _hd214929214949_)
                         (_rest214956_ _tl214930214951_))
                    (declare (not safe))
                    (_K214928214946_ _rest214956_ _s214954_)))
                (let () (declare (not safe)) (_else214926214940_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass214875_ _slot214876_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass214875_ _slot214876_))
            _klass214875_
            (let _lp214878_ ((_rest214880_
                              (##structure-ref
                               _klass214875_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest214881214889_ _rest214880_)
                     (_else214883214897_ (lambda () '#f))
                     (_K214885214905_
                      (lambda (_rest214900_ _super214901_)
                        (let ((_super-class214903_
                               (let ((__tmp220111
                                      (let ((__tmp220112
                                             (let ((__tmp220114
                                                    (##structure-ref
                                                     _klass214875_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp220113
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot214876_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp220114
                                                     __tmp220113))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp220112))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp220111
                                  _super214901_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class214903_
                                 _slot214876_))
                              _super-class214903_
                              (let ()
                                (declare (not safe))
                                (_lp214878_ _rest214900_)))))))
                (if (let () (declare (not safe)) (##pair? _rest214881214889_))
                    (let ((_hd214886214908_
                           (let ()
                             (declare (not safe))
                             (##car _rest214881214889_)))
                          (_tl214887214910_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest214881214889_))))
                      (let* ((_super214913_ _hd214886214908_)
                             (_rest214915_ _tl214887214910_))
                        (declare (not safe))
                        (_K214885214905_ _rest214915_ _super214913_)))
                    (let () (declare (not safe)) (_else214883214897_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass214872_ _slot214873_)
        (if (##structure-ref _klass214872_ '7 gxc#!class::t '#f)
            (memq _slot214873_
                  (##structure-ref _klass214872_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self214869_ _id214870_)
        (##structure-set! _self214869_ _id214870_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t219980)
        (let ((__id219981
               (let ((__tmp219982
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219980 'id))))
                 (if __tmp219982 __tmp219982 (error '"Unknown slot" 'id)))))
          (lambda (_self214869_ _id214870_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214869_
               _id214870_
               __id219981
               __t219980
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
      (lambda (_self214744_ _id214745_)
        (##structure-set! _self214744_ _id214745_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t219983)
        (let ((__id219984
               (let ((__tmp219985
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219983 'id))))
                 (if __tmp219985 __tmp219985 (error '"Unknown slot" 'id)))))
          (lambda (_self214744_ _id214745_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214744_
               _id214745_
               __id219984
               __t219983
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
      (lambda (_self214617_ _id214618_ _slot214619_ _checked?214620_)
        (##structure-set! _self214617_ _id214618_ '1 gxc#!type::t '#f)
        (##structure-set! _self214617_ _slot214619_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self214617_
         _checked?214620_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t219986)
        (let ((__id219987
               (let ((__tmp219990
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219986 'id))))
                 (if __tmp219990 __tmp219990 (error '"Unknown slot" 'id))))
              (__slot219988
               (let ((__tmp219991
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219986 'slot))))
                 (if __tmp219991 __tmp219991 (error '"Unknown slot" 'slot))))
              (__checked?219989
               (let ((__tmp219992
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219986 'checked?))))
                 (if __tmp219992
                     __tmp219992
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self214617_ _id214618_ _slot214619_ _checked?214620_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214617_
               _id214618_
               __id219987
               __t219986
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214617_
               _slot214619_
               __slot219988
               __t219986
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214617_
               _checked?214620_
               __checked?219989
               __t219986
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
      (lambda (_self214490_ _id214491_ _slot214492_ _checked?214493_)
        (##structure-set! _self214490_ _id214491_ '1 gxc#!type::t '#f)
        (##structure-set! _self214490_ _slot214492_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self214490_
         _checked?214493_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t219993)
        (let ((__id219994
               (let ((__tmp219997
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219993 'id))))
                 (if __tmp219997 __tmp219997 (error '"Unknown slot" 'id))))
              (__slot219995
               (let ((__tmp219998
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219993 'slot))))
                 (if __tmp219998 __tmp219998 (error '"Unknown slot" 'slot))))
              (__checked?219996
               (let ((__tmp219999
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219993 'checked?))))
                 (if __tmp219999
                     __tmp219999
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self214490_ _id214491_ _slot214492_ _checked?214493_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214490_
               _id214491_
               __id219994
               __t219993
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214490_
               _slot214492_
               __slot219995
               __t219993
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214490_
               _checked?214493_
               __checked?219996
               __t219993
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
      (lambda (_self214334_
               _id214335_
               _arity214336_
               _dispatch214337_
               _inline214338_
               _typedecl214339_)
        (if (let ((__tmp220120
                   (let ()
                     (declare (not safe))
                     (##structure-length _self214334_))))
              (declare (not safe))
              (##fx< '5 __tmp220120))
            (begin
              (let ((__tmp220115
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214334_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214334_
                 _id214335_
                 '1
                 __tmp220115
                 '#f))
              (let ((__tmp220116
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214334_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214334_
                 _arity214336_
                 '2
                 __tmp220116
                 '#f))
              (let ((__tmp220117
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214334_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214334_
                 _dispatch214337_
                 '3
                 __tmp220117
                 '#f))
              (let ((__tmp220118
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214334_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214334_
                 _inline214338_
                 '4
                 __tmp220118
                 '#f))
              (let ((__tmp220119
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214334_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214334_
                 _typedecl214339_
                 '5
                 __tmp220119
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self214334_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self214334_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self214344_ _id214345_ _arity214346_ _dispatch214347_)
        (let* ((_inline214349_ '#f) (_typedecl214351_ '#f))
          (if (let ((__tmp220126
                     (let ()
                       (declare (not safe))
                       (##structure-length _self214344_))))
                (declare (not safe))
                (##fx< '5 __tmp220126))
              (begin
                (let ((__tmp220121
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214344_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214344_
                   _id214345_
                   '1
                   __tmp220121
                   '#f))
                (let ((__tmp220122
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214344_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214344_
                   _arity214346_
                   '2
                   __tmp220122
                   '#f))
                (let ((__tmp220123
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214344_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214344_
                   _dispatch214347_
                   '3
                   __tmp220123
                   '#f))
                (let ((__tmp220124
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214344_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214344_
                   _inline214349_
                   '4
                   __tmp220124
                   '#f))
                (let ((__tmp220125
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214344_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214344_
                   _typedecl214351_
                   '5
                   __tmp220125
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self214344_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self214344_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self214353_
               _id214354_
               _arity214355_
               _dispatch214356_
               _inline214357_)
        (let ((_typedecl214359_ '#f))
          (if (let ((__tmp220132
                     (let ()
                       (declare (not safe))
                       (##structure-length _self214353_))))
                (declare (not safe))
                (##fx< '5 __tmp220132))
              (begin
                (let ((__tmp220127
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214353_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214353_
                   _id214354_
                   '1
                   __tmp220127
                   '#f))
                (let ((__tmp220128
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214353_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214353_
                   _arity214355_
                   '2
                   __tmp220128
                   '#f))
                (let ((__tmp220129
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214353_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214353_
                   _dispatch214356_
                   '3
                   __tmp220129
                   '#f))
                (let ((__tmp220130
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214353_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214353_
                   _inline214357_
                   '4
                   __tmp220130
                   '#f))
                (let ((__tmp220131
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214353_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214353_
                   _typedecl214359_
                   '5
                   __tmp220131
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self214353_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self214353_)))))))
    (define gxc#!lambda:::init!
      (lambda _g220134_
        (let ((_g220133_ (let () (declare (not safe)) (##length _g220134_))))
          (cond ((let () (declare (not safe)) (##fx= _g220133_ 4))
                 (apply (lambda (_self214344_
                                 _id214345_
                                 _arity214346_
                                 _dispatch214347_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self214344_
                             _id214345_
                             _arity214346_
                             _dispatch214347_)))
                        _g220134_))
                ((let () (declare (not safe)) (##fx= _g220133_ 5))
                 (apply (lambda (_self214353_
                                 _id214354_
                                 _arity214355_
                                 _dispatch214356_
                                 _inline214357_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self214353_
                             _id214354_
                             _arity214355_
                             _dispatch214356_
                             _inline214357_)))
                        _g220134_))
                ((let () (declare (not safe)) (##fx= _g220133_ 6))
                 (apply (lambda (_self214361_
                                 _id214362_
                                 _arity214363_
                                 _dispatch214364_
                                 _inline214365_
                                 _typedecl214366_)
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
                                   _typedecl214366_
                                   '5
                                   __tmp220139
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self214361_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self214361_)))))
                        _g220134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g220134_))))))
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
      (lambda (_self214086_ . _args214087_)
        (apply struct-instance-init! _self214086_ _args214087_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type213961_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type213961_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type213961_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass213954_)
        (let ((_$e213956_
               (##structure-ref _klass213954_ '9 gxc#!class::t '#f)))
          (if _$e213956_
              _$e213956_
              (let ((_tab213959_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass213954_
                 _tab213959_
                 '9
                 gxc#!class::t
                 '#f)
                _tab213959_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass213945_ _method213946_)
        (let ((_tab213947213949_
               (##structure-ref _klass213945_ '9 gxc#!class::t '#f)))
          (if _tab213947213949_
              (let ((_tab213952_ _tab213947213949_))
                (declare (not safe))
                (table-ref _tab213952_ _method213946_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type213942_ _method213943_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type213942_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type213942_ _method213943_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym213926_ _type213927_ _local?213928_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type213927_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym213926_
                   _type213927_))
        (let ((__tmp220141
               (let () (declare (not safe)) (struct->list _type213927_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym213926_ '" " __tmp220141))
        (let ((__tmp220142
               (if _local?213928_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp220142 _sym213926_ _type213927_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym213933_ _type213934_)
        (let ((_local?213936_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym213933_
           _type213934_
           _local?213936_))))
    (define gxc#optimizer-declare-type!
      (lambda _g220144_
        (let ((_g220143_ (let () (declare (not safe)) (##length _g220144_))))
          (cond ((let () (declare (not safe)) (##fx= _g220143_ 2))
                 (apply (lambda (_sym213933_ _type213934_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym213933_
                             _type213934_)))
                        _g220144_))
                ((let () (declare (not safe)) (##fx= _g220143_ 3))
                 (apply (lambda (_sym213938_ _type213939_ _local?213940_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym213938_
                             _type213939_
                             _local?213940_)))
                        _g220144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g220144_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym213912_ _local?213913_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym213912_))
        (let ((__tmp220145
               (if _local?213913_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp220145 _sym213912_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym213918_)
        (let ((_local?213920_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym213918_ _local?213920_))))
    (define gxc#optimizer-clear-type!
      (lambda _g220147_
        (let ((_g220146_ (let () (declare (not safe)) (##length _g220147_))))
          (cond ((let () (declare (not safe)) (##fx= _g220146_ 1))
                 (apply (lambda (_sym213918_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym213918_)))
                        _g220147_))
                ((let () (declare (not safe)) (##fx= _g220146_ 2))
                 (apply (lambda (_sym213922_ _local?213923_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym213922_
                             _local?213923_)))
                        _g220147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g220147_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t213885_ _method213886_ _sym213887_ _rebind?213888_)
        (let* ((_type213890_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t213885_)))
               (_$e213892_
                (let () (declare (not safe)) (gxc#!type-vtab _type213890_))))
          (if _$e213892_
              ((lambda (_vtab213895_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab213895_ _method213886_))
                     (if _rebind?213888_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t213885_
                              '" "
                              _method213886_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab213895_
                              _method213886_
                              _sym213887_)))
                         (let ((__tmp220152
                                (let ((__tmp220153
                                       (let ((__tmp220154
                                              (let ((__tmp220155
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym213887_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method213886_
                                                      __tmp220155))))
                                         (declare (not safe))
                                         (cons _type-t213885_ __tmp220154))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp220153))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp220152
                            _method213886_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t213885_
                          '" "
                          _method213886_
                          '" => "
                          _sym213887_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab213895_
                          _method213886_
                          _sym213887_)))))
               _$e213892_)
              (if (let () (declare (not safe)) (not _type213890_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t213885_))
                  (let ((__tmp220148
                         (let ((__tmp220149
                                (let ((__tmp220150
                                       (let ((__tmp220151
                                              (let ()
                                                (declare (not safe))
                                                (cons _method213886_ '()))))
                                         (declare (not safe))
                                         (cons _sym213887_ __tmp220151))))
                                  (declare (not safe))
                                  (cons _type-t213885_ __tmp220150))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp220149))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp220148
                     _type213890_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t213900_ _method213901_ _sym213902_)
        (let ((_rebind?213904_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t213900_
           _method213901_
           _sym213902_
           _rebind?213904_))))
    (define gxc#optimizer-declare-method!
      (lambda _g220157_
        (let ((_g220156_ (let () (declare (not safe)) (##length _g220157_))))
          (cond ((let () (declare (not safe)) (##fx= _g220156_ 3))
                 (apply (lambda (_type-t213900_ _method213901_ _sym213902_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t213900_
                             _method213901_
                             _sym213902_)))
                        _g220157_))
                ((let () (declare (not safe)) (##fx= _g220156_ 4))
                 (apply (lambda (_type-t213906_
                                 _method213907_
                                 _sym213908_
                                 _rebind?213909_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t213906_
                             _method213907_
                             _sym213908_
                             _rebind?213909_)))
                        _g220157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g220157_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym213873_)
        (let ((_$e213881_
               (let ((_ht213874213876_ (gxc#current-compile-local-type)))
                 (if _ht213874213876_
                     (let ((_ht213879_ _ht213874213876_))
                       (declare (not safe))
                       (table-ref _ht213879_ _sym213873_ '#f))
                     '#f))))
          (if _$e213881_
              _$e213881_
              (let ((__tmp220158
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp220158 _sym213873_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym213865_)
        (let ((_type213866213868_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym213865_))))
          (if _type213866213868_
              (let ((_type213871_ _type213866213868_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type213871_ 'gxc#!alias::t))
                    (let ((__tmp220159
                           (##structure-ref _type213871_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp220159))
                    _type213871_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where213857_ _klass-id213858_)
        (let ((_$e213860_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id213858_))))
          (if _$e213860_
              ((lambda (_klass213863_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass213863_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where213857_
                        _klass-id213858_
                        _klass213863_)))
                 _klass213863_)
               _$e213860_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where213857_
                 _klass-id213858_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t213854_ _method213855_)
        (let ((__tmp220160
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t213854_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp220160 _method213855_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym213852_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym213852_))
        (let ((__tmp220161
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp220161 _sym213852_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym213850_)
        (let ((__tmp220162
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp220162 _sym213850_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx213848_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx213848_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx213848_))
            (let () (declare (not safe)) (gx#stx-e _stx213848_)))))))
