(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707740669)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp220028 (list))
            (__tmp220026
             (let ((__tmp220027
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220027 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp220028
         '(type ssxi methods)
         __tmp220026
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args215401_
        (apply make-instance gxc#optimizer-info::t _$args215401_)))
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
      (lambda (_self215399_)
        (if (let ((__tmp220035
                   (let ()
                     (declare (not safe))
                     (##structure-length _self215399_))))
              (declare (not safe))
              (##fx< '3 __tmp220035))
            (begin
              (let ((__tmp220030
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220029
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215399_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215399_
                 __tmp220030
                 '1
                 __tmp220029
                 '#f))
              (let ((__tmp220032
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220031
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215399_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215399_
                 __tmp220032
                 '2
                 __tmp220031
                 '#f))
              (let ((__tmp220034
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220033
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215399_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215399_
                 __tmp220034
                 '3
                 __tmp220033
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self215399_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self215399_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp220038 (list))
            (__tmp220036
             (let ((__tmp220037
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220037 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp220038
         '(id)
         __tmp220036
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args215274_ (apply make-instance gxc#!type::t _$args215274_)))
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
      (let ((__tmp220041 (list gxc#!type::t))
            (__tmp220039
             (let ((__tmp220040
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220040 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp220041
         '()
         __tmp220039
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args215271_ (apply make-instance gxc#!alias::t _$args215271_)))
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
      (let ((__tmp220044 (list gxc#!type::t))
            (__tmp220042
             (let ((__tmp220043
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220043 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp220044
         '()
         __tmp220042
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args215268_
        (apply make-instance gxc#!procedure::t _$args215268_)))
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
      (let ((__tmp220047 (list gxc#!type::t))
            (__tmp220045
             (let ((__tmp220046
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220046 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp220047
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 methods)
         __tmp220045
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args215265_ (apply make-instance gxc#!class::t _$args215265_)))
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
      (let ((__tmp220050 (list gxc#!procedure::t))
            (__tmp220048
             (let ((__tmp220049
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220049 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp220050
         '()
         __tmp220048
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args215262_
        (apply make-instance gxc#!predicate::t _$args215262_)))
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
      (let ((__tmp220053 (list gxc#!procedure::t))
            (__tmp220051
             (let ((__tmp220052
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220052 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp220053
         '()
         __tmp220051
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args215259_
        (apply make-instance gxc#!constructor::t _$args215259_)))
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
      (let ((__tmp220056 (list gxc#!procedure::t))
            (__tmp220054
             (let ((__tmp220055
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220055 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp220056
         '(slot checked?)
         __tmp220054
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args215256_
        (apply make-instance gxc#!accessor::t _$args215256_)))
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
      (let ((__tmp220059 (list gxc#!procedure::t))
            (__tmp220057
             (let ((__tmp220058
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220058 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp220059
         '(slot checked?)
         __tmp220057
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args215253_
        (apply make-instance gxc#!mutator::t _$args215253_)))
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
      (let ((__tmp220062 (list gxc#!procedure::t))
            (__tmp220060
             (let ((__tmp220061
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220061 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp220062
         '(arity dispatch inline inline-typedecl)
         __tmp220060
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args215250_
        (apply make-instance gxc#!lambda::t _$args215250_)))
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
      (let ((__tmp220065 (list gxc#!procedure::t))
            (__tmp220063
             (let ((__tmp220064
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220064 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp220065
         '(clauses)
         __tmp220063
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args215247_
        (apply make-instance gxc#!case-lambda::t _$args215247_)))
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
      (let ((__tmp220068 (list gxc#!procedure::t))
            (__tmp220066
             (let ((__tmp220067
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220067 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp220068
         '(table dispatch)
         __tmp220066
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args215244_
        (apply make-instance gxc#!kw-lambda::t _$args215244_)))
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
      (let ((__tmp220071 (list gxc#!procedure::t))
            (__tmp220069
             (let ((__tmp220070
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220070 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp220071
         '(keys main)
         __tmp220069
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args215241_
        (apply make-instance gxc#!kw-lambda-primary::t _$args215241_)))
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
      (let ((__tmp220072 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp220072
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args215238_
        (apply make-instance gxc#!primitive::t _$args215238_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp220073 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp220073
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args215235_
        (apply make-instance gxc#!primitive-lambda::t _$args215235_)))
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
      (let ((__tmp220074 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp220074
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args215232_
        (apply make-instance gxc#!primitive-case-lambda::t _$args215232_)))
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
      (lambda (_self215116_
               _id215117_
               _super215118_
               _slots215119_
               _ctor-method215120_
               _struct?215121_
               _final?215122_)
        (let _lp215124_ ((_rest215126_ _super215118_))
          (let* ((_rest215127215135_ _rest215126_)
                 (_else215129215143_ (lambda () '#!void))
                 (_K215131215149_
                  (lambda (_rest215146_ _super-id215147_)
                    (if (##structure-ref
                         (let ((__tmp220077
                                (let ((__tmp220078
                                       (let ()
                                         (declare (not safe))
                                         (cons _id215117_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp220078))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp220077
                            _super-id215147_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp220075
                               (let ((__tmp220076
                                      (let ()
                                        (declare (not safe))
                                        (cons _id215117_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp220076))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp220075
                           _super-id215147_))
                        '#!void)
                    (let () (declare (not safe)) (_lp215124_ _rest215146_)))))
            (if (let () (declare (not safe)) (##pair? _rest215127215135_))
                (let ((_hd215132215152_
                       (let ()
                         (declare (not safe))
                         (##car _rest215127215135_)))
                      (_tl215133215154_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest215127215135_))))
                  (let* ((_super-id215157_ _hd215132215152_)
                         (_rest215159_ _tl215133215154_))
                    (declare (not safe))
                    (_K215131215149_ _rest215159_ _super-id215157_)))
                '#!void)))
        (let* ((_ctor-method215209_
                (let ((_$e215161_ _ctor-method215120_))
                  (if _$e215161_
                      _$e215161_
                      (let _lp215164_ ((_rest215166_ _super215118_)
                                       (_method215167_ '#f))
                        (let* ((_rest215168215176_ _rest215166_)
                               (_else215170215184_ (lambda () _method215167_))
                               (_K215172215197_
                                (lambda (_rest215187_ _super-id215188_)
                                  (let* ((_klass215190_
                                          (let ((__tmp220079
                                                 (let ((__tmp220080
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id215117_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp220080))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp220079
                                             _super-id215188_)))
                                         (_$e215192_
                                          (##structure-ref
                                           _klass215190_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e215192_
                                        ((lambda (_ctor-method215195_)
                                           (if _method215167_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method215195_
                                                          _method215167_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp215164_
                                                      _rest215187_
                                                      _ctor-method215195_))
                                                   (let ((__tmp220081
                                                          (let ((__tmp220082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id215117_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp220082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp220081
                                                      _method215167_
                                                      _ctor-method215195_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp215164_
                                                  _rest215187_
                                                  _ctor-method215195_))))
                                         _$e215192_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp215164_
                                           _rest215187_
                                           _method215167_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest215168215176_))
                              (let ((_hd215173215200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest215168215176_)))
                                    (_tl215174215202_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest215168215176_))))
                                (let* ((_super-id215205_ _hd215173215200_)
                                       (_rest215207_ _tl215174215202_))
                                  (declare (not safe))
                                  (_K215172215197_
                                   _rest215207_
                                   _super-id215205_)))
                              (let ()
                                (declare (not safe))
                                (_else215170215184_))))))))
               (_g220083_
                (let ((__tmp220088
                       (lambda (_klass-id215211_)
                         (let ((__tmp220089
                                (##structure-ref
                                 (let ((__tmp220090
                                        (let ((__tmp220091
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id215117_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp220091))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp220090
                                    _klass-id215211_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id215211_ __tmp220089))))
                      (__tmp220085
                       (lambda (_klass-id215213_)
                         (##structure-ref
                          (let ((__tmp220086
                                 (let ((__tmp220087
                                        (let ()
                                          (declare (not safe))
                                          (cons _id215117_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp220087))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp220086
                             _klass-id215213_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp220088
                   __tmp220085
                   eq?
                   identity
                   '()
                   _super215118_))))
          (begin
            (let ((_g220084_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g220083_)
                         (##vector-length _g220083_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g220084_ 2)))
                  (error "Context expects 2 values" _g220084_)))
            (let ((_precedence-list215215_
                   (let () (declare (not safe)) (##vector-ref _g220083_ 0)))
                  (_base-struct215216_
                   (let () (declare (not safe)) (##vector-ref _g220083_ 1))))
              (let ((_fields215218_
                     (let ((__tmp220092
                            (let ((__tmp220093
                                   (let ()
                                     (declare (not safe))
                                     (cons _id215117_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp220093))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp220092
                        _base-struct215216_
                        _precedence-list215215_
                        _slots215119_))))
                (##structure-set! _self215116_ _id215117_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self215116_
                 _super215118_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215116_
                 _precedence-list215215_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215116_
                 _slots215119_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215116_
                 _fields215218_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215116_
                 _ctor-method215209_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215116_
                 _struct?215121_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215116_
                 _final?215122_
                 '8
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self215221_
               _id215222_
               _super215223_
               _precedence-list215224_
               _slots215225_
               _fields215226_
               _constructor215227_
               _struct?215228_
               _final?215229_
               _methods215230_)
        (##structure-set! _self215221_ _id215222_ '1 gxc#!type::t '#f)
        (##structure-set! _self215221_ _super215223_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self215221_
         _precedence-list215224_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self215221_ _slots215225_ '4 gxc#!class::t '#f)
        (##structure-set! _self215221_ _fields215226_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self215221_
         _constructor215227_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self215221_ _struct?215228_ '7 gxc#!class::t '#f)
        (##structure-set! _self215221_ _final?215229_ '8 gxc#!class::t '#f)
        (if _methods215230_
            (##structure-set!
             _self215221_
             (let ()
               (declare (not safe))
               (list->table _methods215230_ 'test: eq?))
             '9
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g220095_
        (let ((_g220094_ (let () (declare (not safe)) (##length _g220095_))))
          (cond ((let () (declare (not safe)) (##fx= _g220094_ 7))
                 (apply (lambda (_self215116_
                                 _id215117_
                                 _super215118_
                                 _slots215119_
                                 _ctor-method215120_
                                 _struct?215121_
                                 _final?215122_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self215116_
                             _id215117_
                             _super215118_
                             _slots215119_
                             _ctor-method215120_
                             _struct?215121_
                             _final?215122_)))
                        _g220095_))
                ((let () (declare (not safe)) (##fx= _g220094_ 10))
                 (apply (lambda (_self215221_
                                 _id215222_
                                 _super215223_
                                 _precedence-list215224_
                                 _slots215225_
                                 _fields215226_
                                 _constructor215227_
                                 _struct?215228_
                                 _final?215229_
                                 _methods215230_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self215221_
                             _id215222_
                             _super215223_
                             _precedence-list215224_
                             _slots215225_
                             _fields215226_
                             _constructor215227_
                             _struct?215228_
                             _final?215229_
                             _methods215230_)))
                        _g220095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g220095_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t219971)
        (let ((__slots219972
               (let ((__tmp219981
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219971 'slots))))
                 (if __tmp219981 __tmp219981 (error '"Unknown slot" 'slots))))
              (__struct?219973
               (let ((__tmp219982
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219971 'struct?))))
                 (if __tmp219982
                     __tmp219982
                     (error '"Unknown slot" 'struct?))))
              (__id219974
               (let ((__tmp219983
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219971 'id))))
                 (if __tmp219983 __tmp219983 (error '"Unknown slot" 'id))))
              (__precedence-list219975
               (let ((__tmp219984
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219971 'precedence-list))))
                 (if __tmp219984
                     __tmp219984
                     (error '"Unknown slot" 'precedence-list))))
              (__constructor219976
               (let ((__tmp219985
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219971 'constructor))))
                 (if __tmp219985
                     __tmp219985
                     (error '"Unknown slot" 'constructor))))
              (__methods219977
               (let ((__tmp219986
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219971 'methods))))
                 (if __tmp219986
                     __tmp219986
                     (error '"Unknown slot" 'methods))))
              (__super219978
               (let ((__tmp219987
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219971 'super))))
                 (if __tmp219987 __tmp219987 (error '"Unknown slot" 'super))))
              (__final?219979
               (let ((__tmp219988
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219971 'final?))))
                 (if __tmp219988 __tmp219988 (error '"Unknown slot" 'final?))))
              (__fields219980
               (let ((__tmp219989
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219971 'fields))))
                 (if __tmp219989
                     __tmp219989
                     (error '"Unknown slot" 'fields)))))
          (lambda _g220097_
            (let ((_g220096_
                   (let () (declare (not safe)) (##length _g220097_))))
              (cond ((let () (declare (not safe)) (##fx= _g220096_ 7))
                     (apply (lambda (_self215116_
                                     _id215117_
                                     _super215118_
                                     _slots215119_
                                     _ctor-method215120_
                                     _struct?215121_
                                     _final?215122_)
                              (let _lp215124_ ((_rest215126_ _super215118_))
                                (let* ((_rest215127215135_ _rest215126_)
                                       (_else215129215143_ (lambda () '#!void))
                                       (_K215131215149_
                                        (lambda (_rest215146_ _super-id215147_)
                                          (if (##structure-ref
                                               (let ((__tmp220100
                                                      (let ((__tmp220101
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id215117_ '()))))
                (declare (not safe))
                (cons '!class __tmp220101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp220100
                                                  _super-id215147_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp220098
                                                     (let ((__tmp220099
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id215117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp220099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp220098
                                                 _super-id215147_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp215124_ _rest215146_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest215127215135_))
                                      (let ((_hd215132215152_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest215127215135_)))
                                            (_tl215133215154_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest215127215135_))))
                                        (let* ((_super-id215157_
                                                _hd215132215152_)
                                               (_rest215159_ _tl215133215154_))
                                          (declare (not safe))
                                          (_K215131215149_
                                           _rest215159_
                                           _super-id215157_)))
                                      '#!void)))
                              (let* ((_ctor-method215209_
                                      (let ((_$e215161_ _ctor-method215120_))
                                        (if _$e215161_
                                            _$e215161_
                                            (let _lp215164_ ((_rest215166_
                                                              _super215118_)
                                                             (_method215167_
                                                              '#f))
                                              (let* ((_rest215168215176_
                                                      _rest215166_)
                                                     (_else215170215184_
                                                      (lambda ()
                                                        _method215167_))
                                                     (_K215172215197_
                                                      (lambda (_rest215187_
                                                               _super-id215188_)
                                                        (let* ((_klass215190_
                                                                (let ((__tmp220102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp220103
                                      (let ()
                                        (declare (not safe))
                                        (cons _id215117_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp220103))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp220102
                           _super-id215188_)))
                       (_$e215192_
                        (##structure-ref _klass215190_ '6 gxc#!class::t '#f)))
                  (if _$e215192_
                      ((lambda (_ctor-method215195_)
                         (if _method215167_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method215195_ _method215167_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp215164_
                                    _rest215187_
                                    _ctor-method215195_))
                                 (let ((__tmp220104
                                        (let ((__tmp220105
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id215117_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp220105))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp220104
                                    _method215167_
                                    _ctor-method215195_)))
                             (let ()
                               (declare (not safe))
                               (_lp215164_ _rest215187_ _ctor-method215195_))))
                       _$e215192_)
                      (let ()
                        (declare (not safe))
                        (_lp215164_ _rest215187_ _method215167_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest215168215176_))
                                                    (let ((_hd215173215200_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest215168215176_)))
                                                          (_tl215174215202_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest215168215176_))))
                                                      (let* ((_super-id215205_
                                                              _hd215173215200_)
                                                             (_rest215207_
                                                              _tl215174215202_))
                                                        (declare (not safe))
                                                        (_K215172215197_
                                                         _rest215207_
                                                         _super-id215205_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else215170215184_))))))))
                                     (_g220106_
                                      (let ((__tmp220111
                                             (lambda (_klass-id215211_)
                                               (let ((__tmp220112
                                                      (##structure-ref
                                                       (let ((__tmp220113
                                                              (let ((__tmp220114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id215117_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp220114))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp220113 _klass-id215211_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id215211_
                                                       __tmp220112))))
                                            (__tmp220108
                                             (lambda (_klass-id215213_)
                                               (##structure-ref
                                                (let ((__tmp220109
                                                       (let ((__tmp220110
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id215117_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp220110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp220109
                                                   _klass-id215213_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp220111
                                         __tmp220108
                                         eq?
                                         identity
                                         '()
                                         _super215118_))))
                                (begin
                                  (let ((_g220107_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g220106_)
                                               (##vector-length _g220106_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g220107_ 2)))
                                        (error "Context expects 2 values"
                                               _g220107_)))
                                  (let ((_precedence-list215215_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g220106_ 0)))
                                        (_base-struct215216_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g220106_ 1))))
                                    (let ((_fields215218_
                                           (let ((__tmp220115
                                                  (let ((__tmp220116
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id215117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp220116))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp220115
                                              _base-struct215216_
                                              _precedence-list215215_
                                              _slots215119_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215116_
                                         _id215117_
                                         __id219974
                                         __t219971
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215116_
                                         _super215118_
                                         __super219978
                                         __t219971
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215116_
                                         _precedence-list215215_
                                         __precedence-list219975
                                         __t219971
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215116_
                                         _slots215119_
                                         __slots219972
                                         __t219971
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215116_
                                         _fields215218_
                                         __fields219980
                                         __t219971
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215116_
                                         _ctor-method215209_
                                         __constructor219976
                                         __t219971
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215116_
                                         _struct?215121_
                                         __struct?219973
                                         __t219971
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215116_
                                         _final?215122_
                                         __final?219979
                                         __t219971
                                         '#f)))))))
                            _g220097_))
                    ((let () (declare (not safe)) (##fx= _g220096_ 10))
                     (apply (lambda (_self215221_
                                     _id215222_
                                     _super215223_
                                     _precedence-list215224_
                                     _slots215225_
                                     _fields215226_
                                     _constructor215227_
                                     _struct?215228_
                                     _final?215229_
                                     _methods215230_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215221_
                                 _id215222_
                                 __id219974
                                 __t219971
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215221_
                                 _super215223_
                                 __super219978
                                 __t219971
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215221_
                                 _precedence-list215224_
                                 __precedence-list219975
                                 __t219971
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215221_
                                 _slots215225_
                                 __slots219972
                                 __t219971
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215221_
                                 _fields215226_
                                 __fields219980
                                 __t219971
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215221_
                                 _constructor215227_
                                 __constructor219976
                                 __t219971
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215221_
                                 _struct?215228_
                                 __struct?219973
                                 __t219971
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215221_
                                 _final?215229_
                                 __final?219979
                                 __t219971
                                 '#f))
                              (if _methods215230_
                                  (let ((__tmp220117
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods215230_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self215221_
                                     __tmp220117
                                     __methods219977
                                     __t219971
                                     '#f))
                                  '#!void))
                            _g220097_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g220097_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where214968_
               _base-struct214969_
               _precedence-list214970_
               _direct-slots214971_)
        (let* ((_base-fields214973_
                (if _base-struct214969_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where214968_
                        _base-struct214969_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields214975_ (reverse _base-fields214973_))
               (_seen-slots214983_
                (let ((_tab214977_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g214978214980_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab214977_ _g214978214980_ '#t)))
                   _base-fields214973_)
                  _tab214977_))
               (_process-slot214987_
                (lambda (_slot214985_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots214983_ _slot214985_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots214983_ _slot214985_ '#t))
                        (set! _r-fields214975_
                              (let ()
                                (declare (not safe))
                                (cons _slot214985_ _r-fields214975_))))))))
          (for-each
           (lambda (_mixin214990_)
             (let ((_klass214992_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where214968_
                       _mixin214990_))))
               (if (##structure-ref _klass214992_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot214987_
                    (##structure-ref _klass214992_ '5 gxc#!class::t '#f)))))
           _precedence-list214970_)
          (for-each _process-slot214987_ _direct-slots214971_)
          (reverse _r-fields214975_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass214927_ _slot214928_)
        (let _lp214930_ ((_rest214932_
                          (##structure-ref _klass214927_ '5 gxc#!class::t '#f))
                         (_offset214933_ '1))
          (let* ((_rest214934214942_ _rest214932_)
                 (_else214936214950_
                  (lambda ()
                    (let ((__tmp220119
                           (##structure-ref _klass214927_ '1 gxc#!type::t '#f))
                          (__tmp220118
                           (##structure-ref
                            _klass214927_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp220119
                       __tmp220118
                       _slot214928_))))
                 (_K214938214956_
                  (lambda (_rest214953_ _s214954_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s214954_ _slot214928_))
                        _offset214933_
                        (let ((__tmp220120
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset214933_ '1))))
                          (declare (not safe))
                          (_lp214930_ _rest214953_ __tmp220120))))))
            (if (let () (declare (not safe)) (##pair? _rest214934214942_))
                (let ((_hd214939214959_
                       (let ()
                         (declare (not safe))
                         (##car _rest214934214942_)))
                      (_tl214940214961_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest214934214942_))))
                  (let* ((_s214964_ _hd214939214959_)
                         (_rest214966_ _tl214940214961_))
                    (declare (not safe))
                    (_K214938214956_ _rest214966_ _s214964_)))
                (let () (declare (not safe)) (_else214936214950_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass214885_ _slot214886_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass214885_ _slot214886_))
            _klass214885_
            (let _lp214888_ ((_rest214890_
                              (##structure-ref
                               _klass214885_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest214891214899_ _rest214890_)
                     (_else214893214907_ (lambda () '#f))
                     (_K214895214915_
                      (lambda (_rest214910_ _super214911_)
                        (let ((_super-class214913_
                               (let ((__tmp220121
                                      (let ((__tmp220122
                                             (let ((__tmp220124
                                                    (##structure-ref
                                                     _klass214885_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp220123
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot214886_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp220124
                                                     __tmp220123))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp220122))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp220121
                                  _super214911_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class214913_
                                 _slot214886_))
                              _super-class214913_
                              (let ()
                                (declare (not safe))
                                (_lp214888_ _rest214910_)))))))
                (if (let () (declare (not safe)) (##pair? _rest214891214899_))
                    (let ((_hd214896214918_
                           (let ()
                             (declare (not safe))
                             (##car _rest214891214899_)))
                          (_tl214897214920_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest214891214899_))))
                      (let* ((_super214923_ _hd214896214918_)
                             (_rest214925_ _tl214897214920_))
                        (declare (not safe))
                        (_K214895214915_ _rest214925_ _super214923_)))
                    (let () (declare (not safe)) (_else214893214907_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass214882_ _slot214883_)
        (if (##structure-ref _klass214882_ '7 gxc#!class::t '#f)
            (memq _slot214883_
                  (##structure-ref _klass214882_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self214879_ _id214880_)
        (##structure-set! _self214879_ _id214880_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t219990)
        (let ((__id219991
               (let ((__tmp219992
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219990 'id))))
                 (if __tmp219992 __tmp219992 (error '"Unknown slot" 'id)))))
          (lambda (_self214879_ _id214880_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214879_
               _id214880_
               __id219991
               __t219990
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
      (lambda (_self214754_ _id214755_)
        (##structure-set! _self214754_ _id214755_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t219993)
        (let ((__id219994
               (let ((__tmp219995
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219993 'id))))
                 (if __tmp219995 __tmp219995 (error '"Unknown slot" 'id)))))
          (lambda (_self214754_ _id214755_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214754_
               _id214755_
               __id219994
               __t219993
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
      (lambda (_self214627_ _id214628_ _slot214629_ _checked?214630_)
        (##structure-set! _self214627_ _id214628_ '1 gxc#!type::t '#f)
        (##structure-set! _self214627_ _slot214629_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self214627_
         _checked?214630_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t219996)
        (let ((__id219997
               (let ((__tmp220000
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219996 'id))))
                 (if __tmp220000 __tmp220000 (error '"Unknown slot" 'id))))
              (__slot219998
               (let ((__tmp220001
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219996 'slot))))
                 (if __tmp220001 __tmp220001 (error '"Unknown slot" 'slot))))
              (__checked?219999
               (let ((__tmp220002
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219996 'checked?))))
                 (if __tmp220002
                     __tmp220002
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self214627_ _id214628_ _slot214629_ _checked?214630_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214627_
               _id214628_
               __id219997
               __t219996
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214627_
               _slot214629_
               __slot219998
               __t219996
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214627_
               _checked?214630_
               __checked?219999
               __t219996
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
      (lambda (_self214500_ _id214501_ _slot214502_ _checked?214503_)
        (##structure-set! _self214500_ _id214501_ '1 gxc#!type::t '#f)
        (##structure-set! _self214500_ _slot214502_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self214500_
         _checked?214503_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t220003)
        (let ((__id220004
               (let ((__tmp220007
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220003 'id))))
                 (if __tmp220007 __tmp220007 (error '"Unknown slot" 'id))))
              (__slot220005
               (let ((__tmp220008
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220003 'slot))))
                 (if __tmp220008 __tmp220008 (error '"Unknown slot" 'slot))))
              (__checked?220006
               (let ((__tmp220009
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220003 'checked?))))
                 (if __tmp220009
                     __tmp220009
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self214500_ _id214501_ _slot214502_ _checked?214503_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214500_
               _id214501_
               __id220004
               __t220003
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214500_
               _slot214502_
               __slot220005
               __t220003
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214500_
               _checked?214503_
               __checked?220006
               __t220003
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
      (lambda (_self214344_
               _id214345_
               _arity214346_
               _dispatch214347_
               _inline214348_
               _typedecl214349_)
        (if (let ((__tmp220130
                   (let ()
                     (declare (not safe))
                     (##structure-length _self214344_))))
              (declare (not safe))
              (##fx< '5 __tmp220130))
            (begin
              (let ((__tmp220125
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214344_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214344_
                 _id214345_
                 '1
                 __tmp220125
                 '#f))
              (let ((__tmp220126
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214344_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214344_
                 _arity214346_
                 '2
                 __tmp220126
                 '#f))
              (let ((__tmp220127
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214344_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214344_
                 _dispatch214347_
                 '3
                 __tmp220127
                 '#f))
              (let ((__tmp220128
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214344_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214344_
                 _inline214348_
                 '4
                 __tmp220128
                 '#f))
              (let ((__tmp220129
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214344_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214344_
                 _typedecl214349_
                 '5
                 __tmp220129
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self214344_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self214344_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self214354_ _id214355_ _arity214356_ _dispatch214357_)
        (let* ((_inline214359_ '#f) (_typedecl214361_ '#f))
          (if (let ((__tmp220136
                     (let ()
                       (declare (not safe))
                       (##structure-length _self214354_))))
                (declare (not safe))
                (##fx< '5 __tmp220136))
              (begin
                (let ((__tmp220131
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214354_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214354_
                   _id214355_
                   '1
                   __tmp220131
                   '#f))
                (let ((__tmp220132
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214354_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214354_
                   _arity214356_
                   '2
                   __tmp220132
                   '#f))
                (let ((__tmp220133
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214354_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214354_
                   _dispatch214357_
                   '3
                   __tmp220133
                   '#f))
                (let ((__tmp220134
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214354_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214354_
                   _inline214359_
                   '4
                   __tmp220134
                   '#f))
                (let ((__tmp220135
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214354_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214354_
                   _typedecl214361_
                   '5
                   __tmp220135
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self214354_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self214354_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self214363_
               _id214364_
               _arity214365_
               _dispatch214366_
               _inline214367_)
        (let ((_typedecl214369_ '#f))
          (if (let ((__tmp220142
                     (let ()
                       (declare (not safe))
                       (##structure-length _self214363_))))
                (declare (not safe))
                (##fx< '5 __tmp220142))
              (begin
                (let ((__tmp220137
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214363_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214363_
                   _id214364_
                   '1
                   __tmp220137
                   '#f))
                (let ((__tmp220138
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214363_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214363_
                   _arity214365_
                   '2
                   __tmp220138
                   '#f))
                (let ((__tmp220139
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214363_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214363_
                   _dispatch214366_
                   '3
                   __tmp220139
                   '#f))
                (let ((__tmp220140
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214363_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214363_
                   _inline214367_
                   '4
                   __tmp220140
                   '#f))
                (let ((__tmp220141
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214363_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214363_
                   _typedecl214369_
                   '5
                   __tmp220141
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self214363_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self214363_)))))))
    (define gxc#!lambda:::init!
      (lambda _g220144_
        (let ((_g220143_ (let () (declare (not safe)) (##length _g220144_))))
          (cond ((let () (declare (not safe)) (##fx= _g220143_ 4))
                 (apply (lambda (_self214354_
                                 _id214355_
                                 _arity214356_
                                 _dispatch214357_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self214354_
                             _id214355_
                             _arity214356_
                             _dispatch214357_)))
                        _g220144_))
                ((let () (declare (not safe)) (##fx= _g220143_ 5))
                 (apply (lambda (_self214363_
                                 _id214364_
                                 _arity214365_
                                 _dispatch214366_
                                 _inline214367_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self214363_
                             _id214364_
                             _arity214365_
                             _dispatch214366_
                             _inline214367_)))
                        _g220144_))
                ((let () (declare (not safe)) (##fx= _g220143_ 6))
                 (apply (lambda (_self214371_
                                 _id214372_
                                 _arity214373_
                                 _dispatch214374_
                                 _inline214375_
                                 _typedecl214376_)
                          (if (let ((__tmp220150
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self214371_))))
                                (declare (not safe))
                                (##fx< '5 __tmp220150))
                              (begin
                                (let ((__tmp220145
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214371_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214371_
                                   _id214372_
                                   '1
                                   __tmp220145
                                   '#f))
                                (let ((__tmp220146
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214371_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214371_
                                   _arity214373_
                                   '2
                                   __tmp220146
                                   '#f))
                                (let ((__tmp220147
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214371_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214371_
                                   _dispatch214374_
                                   '3
                                   __tmp220147
                                   '#f))
                                (let ((__tmp220148
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214371_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214371_
                                   _inline214375_
                                   '4
                                   __tmp220148
                                   '#f))
                                (let ((__tmp220149
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214371_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214371_
                                   _typedecl214376_
                                   '5
                                   __tmp220149
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self214371_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self214371_)))))
                        _g220144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g220144_))))))
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
      (lambda (_self214096_ . _args214097_)
        (apply struct-instance-init! _self214096_ _args214097_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type213971_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type213971_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type213971_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass213964_)
        (let ((_$e213966_
               (##structure-ref _klass213964_ '9 gxc#!class::t '#f)))
          (if _$e213966_
              _$e213966_
              (let ((_tab213969_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass213964_
                 _tab213969_
                 '9
                 gxc#!class::t
                 '#f)
                _tab213969_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass213955_ _method213956_)
        (let ((_tab213957213959_
               (##structure-ref _klass213955_ '9 gxc#!class::t '#f)))
          (if _tab213957213959_
              (let ((_tab213962_ _tab213957213959_))
                (declare (not safe))
                (table-ref _tab213962_ _method213956_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type213952_ _method213953_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type213952_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type213952_ _method213953_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym213936_ _type213937_ _local?213938_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type213937_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym213936_
                   _type213937_))
        (let ((__tmp220151
               (let () (declare (not safe)) (struct->list _type213937_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym213936_ '" " __tmp220151))
        (let ((__tmp220152
               (if _local?213938_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp220152 _sym213936_ _type213937_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym213943_ _type213944_)
        (let ((_local?213946_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym213943_
           _type213944_
           _local?213946_))))
    (define gxc#optimizer-declare-type!
      (lambda _g220154_
        (let ((_g220153_ (let () (declare (not safe)) (##length _g220154_))))
          (cond ((let () (declare (not safe)) (##fx= _g220153_ 2))
                 (apply (lambda (_sym213943_ _type213944_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym213943_
                             _type213944_)))
                        _g220154_))
                ((let () (declare (not safe)) (##fx= _g220153_ 3))
                 (apply (lambda (_sym213948_ _type213949_ _local?213950_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym213948_
                             _type213949_
                             _local?213950_)))
                        _g220154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g220154_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym213922_ _local?213923_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym213922_))
        (let ((__tmp220155
               (if _local?213923_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp220155 _sym213922_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym213928_)
        (let ((_local?213930_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym213928_ _local?213930_))))
    (define gxc#optimizer-clear-type!
      (lambda _g220157_
        (let ((_g220156_ (let () (declare (not safe)) (##length _g220157_))))
          (cond ((let () (declare (not safe)) (##fx= _g220156_ 1))
                 (apply (lambda (_sym213928_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym213928_)))
                        _g220157_))
                ((let () (declare (not safe)) (##fx= _g220156_ 2))
                 (apply (lambda (_sym213932_ _local?213933_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym213932_
                             _local?213933_)))
                        _g220157_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g220157_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t213895_ _method213896_ _sym213897_ _rebind?213898_)
        (let* ((_type213900_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t213895_)))
               (_$e213902_
                (let () (declare (not safe)) (gxc#!type-vtab _type213900_))))
          (if _$e213902_
              ((lambda (_vtab213905_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab213905_ _method213896_))
                     (if _rebind?213898_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t213895_
                              '" "
                              _method213896_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab213905_
                              _method213896_
                              _sym213897_)))
                         (let ((__tmp220162
                                (let ((__tmp220163
                                       (let ((__tmp220164
                                              (let ((__tmp220165
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym213897_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method213896_
                                                      __tmp220165))))
                                         (declare (not safe))
                                         (cons _type-t213895_ __tmp220164))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp220163))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp220162
                            _method213896_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t213895_
                          '" "
                          _method213896_
                          '" => "
                          _sym213897_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab213905_
                          _method213896_
                          _sym213897_)))))
               _$e213902_)
              (if (let () (declare (not safe)) (not _type213900_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t213895_))
                  (let ((__tmp220158
                         (let ((__tmp220159
                                (let ((__tmp220160
                                       (let ((__tmp220161
                                              (let ()
                                                (declare (not safe))
                                                (cons _method213896_ '()))))
                                         (declare (not safe))
                                         (cons _sym213897_ __tmp220161))))
                                  (declare (not safe))
                                  (cons _type-t213895_ __tmp220160))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp220159))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp220158
                     _type213900_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t213910_ _method213911_ _sym213912_)
        (let ((_rebind?213914_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t213910_
           _method213911_
           _sym213912_
           _rebind?213914_))))
    (define gxc#optimizer-declare-method!
      (lambda _g220167_
        (let ((_g220166_ (let () (declare (not safe)) (##length _g220167_))))
          (cond ((let () (declare (not safe)) (##fx= _g220166_ 3))
                 (apply (lambda (_type-t213910_ _method213911_ _sym213912_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t213910_
                             _method213911_
                             _sym213912_)))
                        _g220167_))
                ((let () (declare (not safe)) (##fx= _g220166_ 4))
                 (apply (lambda (_type-t213916_
                                 _method213917_
                                 _sym213918_
                                 _rebind?213919_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t213916_
                             _method213917_
                             _sym213918_
                             _rebind?213919_)))
                        _g220167_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g220167_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym213883_)
        (let ((_$e213891_
               (let ((_ht213884213886_ (gxc#current-compile-local-type)))
                 (if _ht213884213886_
                     (let ((_ht213889_ _ht213884213886_))
                       (declare (not safe))
                       (table-ref _ht213889_ _sym213883_ '#f))
                     '#f))))
          (if _$e213891_
              _$e213891_
              (let ((__tmp220168
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp220168 _sym213883_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym213875_)
        (let ((_type213876213878_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym213875_))))
          (if _type213876213878_
              (let ((_type213881_ _type213876213878_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type213881_ 'gxc#!alias::t))
                    (let ((__tmp220169
                           (##structure-ref _type213881_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp220169))
                    _type213881_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where213867_ _klass-id213868_)
        (let ((_$e213870_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id213868_))))
          (if _$e213870_
              ((lambda (_klass213873_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass213873_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where213867_
                        _klass-id213868_
                        _klass213873_)))
                 _klass213873_)
               _$e213870_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where213867_
                 _klass-id213868_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t213864_ _method213865_)
        (let ((__tmp220170
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t213864_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp220170 _method213865_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym213862_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym213862_))
        (let ((__tmp220171
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp220171 _sym213862_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym213860_)
        (let ((__tmp220172
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp220172 _sym213860_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx213858_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx213858_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx213858_))
            (let () (declare (not safe)) (gx#stx-e _stx213858_)))))))
