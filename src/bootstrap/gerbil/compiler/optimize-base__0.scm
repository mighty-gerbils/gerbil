(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708168071)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp228107 (list))
            (__tmp228105
             (let ((__tmp228106
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228106 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp228107
         '(type ssxi methods)
         __tmp228105
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args223478_
        (apply make-instance gxc#optimizer-info::t _$args223478_)))
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
      (lambda (_self223476_)
        (if (let ((__tmp228114
                   (let ()
                     (declare (not safe))
                     (##structure-length _self223476_))))
              (declare (not safe))
              (##fx< '3 __tmp228114))
            (begin
              (let ((__tmp228109
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp228108
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223476_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223476_
                 __tmp228109
                 '1
                 __tmp228108
                 '#f))
              (let ((__tmp228111
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp228110
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223476_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223476_
                 __tmp228111
                 '2
                 __tmp228110
                 '#f))
              (let ((__tmp228113
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp228112
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223476_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223476_
                 __tmp228113
                 '3
                 __tmp228112
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self223476_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self223476_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp228117 (list))
            (__tmp228115
             (let ((__tmp228116
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228116 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp228117
         '(id)
         __tmp228115
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args223351_ (apply make-instance gxc#!type::t _$args223351_)))
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
      (let ((__tmp228120 (list gxc#!type::t))
            (__tmp228118
             (let ((__tmp228119
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228119 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp228120
         '()
         __tmp228118
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args223348_ (apply make-instance gxc#!alias::t _$args223348_)))
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
      (let ((__tmp228123 (list gxc#!type::t))
            (__tmp228121
             (let ((__tmp228122
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228122 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp228123
         '()
         __tmp228121
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args223345_
        (apply make-instance gxc#!procedure::t _$args223345_)))
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
      (let ((__tmp228126 (list gxc#!type::t))
            (__tmp228124
             (let ((__tmp228125
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228125 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp228126
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp228124
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args223342_ (apply make-instance gxc#!class::t _$args223342_)))
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
    (define gxc#!class-metaclass
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'metaclass)))
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
    (define gxc#!class-metaclass-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'metaclass)))
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
    (define gxc#&!class-metaclass
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'metaclass)))
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
    (define gxc#&!class-metaclass-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'metaclass)))
    (define gxc#&!class-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'methods)))
    (define gxc#&!class-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'id)))
    (define gxc#!predicate::t
      (let ((__tmp228129 (list gxc#!procedure::t))
            (__tmp228127
             (let ((__tmp228128
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228128 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp228129
         '()
         __tmp228127
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args223339_
        (apply make-instance gxc#!predicate::t _$args223339_)))
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
      (let ((__tmp228132 (list gxc#!procedure::t))
            (__tmp228130
             (let ((__tmp228131
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228131 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp228132
         '()
         __tmp228130
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args223336_
        (apply make-instance gxc#!constructor::t _$args223336_)))
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
      (let ((__tmp228135 (list gxc#!procedure::t))
            (__tmp228133
             (let ((__tmp228134
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228134 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp228135
         '(slot checked?)
         __tmp228133
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args223333_
        (apply make-instance gxc#!accessor::t _$args223333_)))
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
      (let ((__tmp228138 (list gxc#!procedure::t))
            (__tmp228136
             (let ((__tmp228137
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228137 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp228138
         '(slot checked?)
         __tmp228136
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args223330_
        (apply make-instance gxc#!mutator::t _$args223330_)))
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
      (let ((__tmp228141 (list gxc#!procedure::t))
            (__tmp228139
             (let ((__tmp228140
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228140 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp228141
         '(arity dispatch inline inline-typedecl)
         __tmp228139
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args223327_
        (apply make-instance gxc#!lambda::t _$args223327_)))
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
      (let ((__tmp228144 (list gxc#!procedure::t))
            (__tmp228142
             (let ((__tmp228143
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228143 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp228144
         '(clauses)
         __tmp228142
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args223324_
        (apply make-instance gxc#!case-lambda::t _$args223324_)))
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
      (let ((__tmp228147 (list gxc#!procedure::t))
            (__tmp228145
             (let ((__tmp228146
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228146 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp228147
         '(table dispatch)
         __tmp228145
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args223321_
        (apply make-instance gxc#!kw-lambda::t _$args223321_)))
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
      (let ((__tmp228150 (list gxc#!procedure::t))
            (__tmp228148
             (let ((__tmp228149
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228149 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp228150
         '(keys main)
         __tmp228148
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args223318_
        (apply make-instance gxc#!kw-lambda-primary::t _$args223318_)))
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
      (let ((__tmp228151 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp228151
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args223315_
        (apply make-instance gxc#!primitive::t _$args223315_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp228152 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp228152
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args223312_
        (apply make-instance gxc#!primitive-lambda::t _$args223312_)))
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
      (let ((__tmp228153 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp228153
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args223309_
        (apply make-instance gxc#!primitive-case-lambda::t _$args223309_)))
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
      (lambda (_self223191_
               _id223192_
               _super223193_
               _slots223194_
               _ctor-method223195_
               _struct?223196_
               _final?223197_
               _metaclass223198_)
        (let _lp223200_ ((_rest223202_ _super223193_))
          (let* ((_rest223203223211_ _rest223202_)
                 (_else223205223219_ (lambda () '#!void))
                 (_K223207223225_
                  (lambda (_rest223222_ _super-id223223_)
                    (if (##structure-ref
                         (let ((__tmp228156
                                (let ((__tmp228157
                                       (let ()
                                         (declare (not safe))
                                         (cons _id223192_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp228157))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp228156
                            _super-id223223_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp228154
                               (let ((__tmp228155
                                      (let ()
                                        (declare (not safe))
                                        (cons _id223192_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp228155))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp228154
                           _super-id223223_))
                        '#!void)
                    (let () (declare (not safe)) (_lp223200_ _rest223222_)))))
            (if (let () (declare (not safe)) (##pair? _rest223203223211_))
                (let ((_hd223208223228_
                       (let ()
                         (declare (not safe))
                         (##car _rest223203223211_)))
                      (_tl223209223230_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest223203223211_))))
                  (let* ((_super-id223233_ _hd223208223228_)
                         (_rest223235_ _tl223209223230_))
                    (declare (not safe))
                    (_K223207223225_ _rest223235_ _super-id223233_)))
                '#!void)))
        (let* ((_ctor-method223285_
                (let ((_$e223237_ _ctor-method223195_))
                  (if _$e223237_
                      _$e223237_
                      (let _lp223240_ ((_rest223242_ _super223193_)
                                       (_method223243_ '#f))
                        (let* ((_rest223244223252_ _rest223242_)
                               (_else223246223260_ (lambda () _method223243_))
                               (_K223248223273_
                                (lambda (_rest223263_ _super-id223264_)
                                  (let* ((_klass223266_
                                          (let ((__tmp228158
                                                 (let ((__tmp228159
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id223192_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp228159))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp228158
                                             _super-id223264_)))
                                         (_$e223268_
                                          (##structure-ref
                                           _klass223266_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e223268_
                                        ((lambda (_ctor-method223271_)
                                           (if _method223243_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method223271_
                                                          _method223243_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp223240_
                                                      _rest223263_
                                                      _ctor-method223271_))
                                                   (let ((__tmp228160
                                                          (let ((__tmp228161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id223192_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp228161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp228160
                                                      _method223243_
                                                      _ctor-method223271_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp223240_
                                                  _rest223263_
                                                  _ctor-method223271_))))
                                         _$e223268_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp223240_
                                           _rest223263_
                                           _method223243_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest223244223252_))
                              (let ((_hd223249223276_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest223244223252_)))
                                    (_tl223250223278_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest223244223252_))))
                                (let* ((_super-id223281_ _hd223249223276_)
                                       (_rest223283_ _tl223250223278_))
                                  (declare (not safe))
                                  (_K223248223273_
                                   _rest223283_
                                   _super-id223281_)))
                              (let ()
                                (declare (not safe))
                                (_else223246223260_))))))))
               (_g228162_
                (let ((__tmp228167
                       (lambda (_klass-id223287_)
                         (let ((__tmp228168
                                (##structure-ref
                                 (let ((__tmp228169
                                        (let ((__tmp228170
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id223192_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp228170))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp228169
                                    _klass-id223287_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id223287_ __tmp228168))))
                      (__tmp228164
                       (lambda (_klass-id223289_)
                         (##structure-ref
                          (let ((__tmp228165
                                 (let ((__tmp228166
                                        (let ()
                                          (declare (not safe))
                                          (cons _id223192_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp228166))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp228165
                             _klass-id223289_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp228167
                   __tmp228164
                   eq?
                   identity
                   '()
                   _super223193_))))
          (begin
            (let ((_g228163_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g228162_)
                         (##vector-length _g228162_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g228163_ 2)))
                  (error "Context expects 2 values" _g228163_)))
            (let ((_precedence-list223291_
                   (let () (declare (not safe)) (##vector-ref _g228162_ 0)))
                  (_base-struct223292_
                   (let () (declare (not safe)) (##vector-ref _g228162_ 1))))
              (let ((_fields223294_
                     (let ((__tmp228171
                            (let ((__tmp228172
                                   (let ()
                                     (declare (not safe))
                                     (cons _id223192_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp228172))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp228171
                        _base-struct223292_
                        _precedence-list223291_
                        _slots223194_))))
                (##structure-set! _self223191_ _id223192_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self223191_
                 _super223193_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self223191_
                 _precedence-list223291_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self223191_
                 _slots223194_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self223191_
                 _fields223294_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self223191_
                 _ctor-method223285_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self223191_
                 _struct?223196_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self223191_
                 _final?223197_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self223191_
                 _metaclass223198_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self223297_
               _id223298_
               _super223299_
               _precedence-list223300_
               _slots223301_
               _fields223302_
               _constructor223303_
               _struct?223304_
               _final?223305_
               _metaclass223306_
               _methods223307_)
        (##structure-set! _self223297_ _id223298_ '1 gxc#!type::t '#f)
        (##structure-set! _self223297_ _super223299_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self223297_
         _precedence-list223300_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self223297_ _slots223301_ '4 gxc#!class::t '#f)
        (##structure-set! _self223297_ _fields223302_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self223297_
         _constructor223303_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self223297_ _struct?223304_ '7 gxc#!class::t '#f)
        (##structure-set! _self223297_ _final?223305_ '8 gxc#!class::t '#f)
        (##structure-set! _self223297_ _metaclass223306_ '9 gxc#!class::t '#f)
        (if _methods223307_
            (##structure-set!
             _self223297_
             (let ()
               (declare (not safe))
               (list->table _methods223307_ 'test: eq?))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g228174_
        (let ((_g228173_ (let () (declare (not safe)) (##length _g228174_))))
          (cond ((let () (declare (not safe)) (##fx= _g228173_ 8))
                 (apply (lambda (_self223191_
                                 _id223192_
                                 _super223193_
                                 _slots223194_
                                 _ctor-method223195_
                                 _struct?223196_
                                 _final?223197_
                                 _metaclass223198_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self223191_
                             _id223192_
                             _super223193_
                             _slots223194_
                             _ctor-method223195_
                             _struct?223196_
                             _final?223197_
                             _metaclass223198_)))
                        _g228174_))
                ((let () (declare (not safe)) (##fx= _g228173_ 11))
                 (apply (lambda (_self223297_
                                 _id223298_
                                 _super223299_
                                 _precedence-list223300_
                                 _slots223301_
                                 _fields223302_
                                 _constructor223303_
                                 _struct?223304_
                                 _final?223305_
                                 _metaclass223306_
                                 _methods223307_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self223297_
                             _id223298_
                             _super223299_
                             _precedence-list223300_
                             _slots223301_
                             _fields223302_
                             _constructor223303_
                             _struct?223304_
                             _final?223305_
                             _metaclass223306_
                             _methods223307_)))
                        _g228174_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g228174_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t228048)
        (let ((__fields228049
               (let ((__tmp228059
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228048 'fields))))
                 (if __tmp228059 __tmp228059 (error '"Unknown slot" 'fields))))
              (__id228050
               (let ((__tmp228060
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228048 'id))))
                 (if __tmp228060 __tmp228060 (error '"Unknown slot" 'id))))
              (__precedence-list228051
               (let ((__tmp228061
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228048 'precedence-list))))
                 (if __tmp228061
                     __tmp228061
                     (error '"Unknown slot" 'precedence-list))))
              (__final?228052
               (let ((__tmp228062
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228048 'final?))))
                 (if __tmp228062 __tmp228062 (error '"Unknown slot" 'final?))))
              (__methods228053
               (let ((__tmp228063
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228048 'methods))))
                 (if __tmp228063
                     __tmp228063
                     (error '"Unknown slot" 'methods))))
              (__slots228054
               (let ((__tmp228064
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228048 'slots))))
                 (if __tmp228064 __tmp228064 (error '"Unknown slot" 'slots))))
              (__metaclass228055
               (let ((__tmp228065
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228048 'metaclass))))
                 (if __tmp228065
                     __tmp228065
                     (error '"Unknown slot" 'metaclass))))
              (__constructor228056
               (let ((__tmp228066
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228048 'constructor))))
                 (if __tmp228066
                     __tmp228066
                     (error '"Unknown slot" 'constructor))))
              (__super228057
               (let ((__tmp228067
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228048 'super))))
                 (if __tmp228067 __tmp228067 (error '"Unknown slot" 'super))))
              (__struct?228058
               (let ((__tmp228068
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228048 'struct?))))
                 (if __tmp228068
                     __tmp228068
                     (error '"Unknown slot" 'struct?)))))
          (lambda _g228176_
            (let ((_g228175_
                   (let () (declare (not safe)) (##length _g228176_))))
              (cond ((let () (declare (not safe)) (##fx= _g228175_ 8))
                     (apply (lambda (_self223191_
                                     _id223192_
                                     _super223193_
                                     _slots223194_
                                     _ctor-method223195_
                                     _struct?223196_
                                     _final?223197_
                                     _metaclass223198_)
                              (let _lp223200_ ((_rest223202_ _super223193_))
                                (let* ((_rest223203223211_ _rest223202_)
                                       (_else223205223219_ (lambda () '#!void))
                                       (_K223207223225_
                                        (lambda (_rest223222_ _super-id223223_)
                                          (if (##structure-ref
                                               (let ((__tmp228179
                                                      (let ((__tmp228180
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id223192_ '()))))
                (declare (not safe))
                (cons '!class __tmp228180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp228179
                                                  _super-id223223_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp228177
                                                     (let ((__tmp228178
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id223192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp228178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp228177
                                                 _super-id223223_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp223200_ _rest223222_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest223203223211_))
                                      (let ((_hd223208223228_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest223203223211_)))
                                            (_tl223209223230_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest223203223211_))))
                                        (let* ((_super-id223233_
                                                _hd223208223228_)
                                               (_rest223235_ _tl223209223230_))
                                          (declare (not safe))
                                          (_K223207223225_
                                           _rest223235_
                                           _super-id223233_)))
                                      '#!void)))
                              (let* ((_ctor-method223285_
                                      (let ((_$e223237_ _ctor-method223195_))
                                        (if _$e223237_
                                            _$e223237_
                                            (let _lp223240_ ((_rest223242_
                                                              _super223193_)
                                                             (_method223243_
                                                              '#f))
                                              (let* ((_rest223244223252_
                                                      _rest223242_)
                                                     (_else223246223260_
                                                      (lambda ()
                                                        _method223243_))
                                                     (_K223248223273_
                                                      (lambda (_rest223263_
                                                               _super-id223264_)
                                                        (let* ((_klass223266_
                                                                (let ((__tmp228181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp228182
                                      (let ()
                                        (declare (not safe))
                                        (cons _id223192_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp228182))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp228181
                           _super-id223264_)))
                       (_$e223268_
                        (##structure-ref _klass223266_ '6 gxc#!class::t '#f)))
                  (if _$e223268_
                      ((lambda (_ctor-method223271_)
                         (if _method223243_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method223271_ _method223243_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp223240_
                                    _rest223263_
                                    _ctor-method223271_))
                                 (let ((__tmp228183
                                        (let ((__tmp228184
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id223192_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp228184))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp228183
                                    _method223243_
                                    _ctor-method223271_)))
                             (let ()
                               (declare (not safe))
                               (_lp223240_ _rest223263_ _ctor-method223271_))))
                       _$e223268_)
                      (let ()
                        (declare (not safe))
                        (_lp223240_ _rest223263_ _method223243_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest223244223252_))
                                                    (let ((_hd223249223276_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest223244223252_)))
                                                          (_tl223250223278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest223244223252_))))
                                                      (let* ((_super-id223281_
                                                              _hd223249223276_)
                                                             (_rest223283_
                                                              _tl223250223278_))
                                                        (declare (not safe))
                                                        (_K223248223273_
                                                         _rest223283_
                                                         _super-id223281_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else223246223260_))))))))
                                     (_g228185_
                                      (let ((__tmp228190
                                             (lambda (_klass-id223287_)
                                               (let ((__tmp228191
                                                      (##structure-ref
                                                       (let ((__tmp228192
                                                              (let ((__tmp228193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id223192_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp228193))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp228192 _klass-id223287_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id223287_
                                                       __tmp228191))))
                                            (__tmp228187
                                             (lambda (_klass-id223289_)
                                               (##structure-ref
                                                (let ((__tmp228188
                                                       (let ((__tmp228189
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id223192_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp228189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp228188
                                                   _klass-id223289_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp228190
                                         __tmp228187
                                         eq?
                                         identity
                                         '()
                                         _super223193_))))
                                (begin
                                  (let ((_g228186_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228185_)
                                               (##vector-length _g228185_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228186_ 2)))
                                        (error "Context expects 2 values"
                                               _g228186_)))
                                  (let ((_precedence-list223291_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228185_ 0)))
                                        (_base-struct223292_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228185_ 1))))
                                    (let ((_fields223294_
                                           (let ((__tmp228194
                                                  (let ((__tmp228195
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id223192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp228195))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp228194
                                              _base-struct223292_
                                              _precedence-list223291_
                                              _slots223194_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223191_
                                         _id223192_
                                         __id228050
                                         __t228048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223191_
                                         _super223193_
                                         __super228057
                                         __t228048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223191_
                                         _precedence-list223291_
                                         __precedence-list228051
                                         __t228048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223191_
                                         _slots223194_
                                         __slots228054
                                         __t228048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223191_
                                         _fields223294_
                                         __fields228049
                                         __t228048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223191_
                                         _ctor-method223285_
                                         __constructor228056
                                         __t228048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223191_
                                         _struct?223196_
                                         __struct?228058
                                         __t228048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223191_
                                         _final?223197_
                                         __final?228052
                                         __t228048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self223191_
                                         _metaclass223198_
                                         __metaclass228055
                                         __t228048
                                         '#f)))))))
                            _g228176_))
                    ((let () (declare (not safe)) (##fx= _g228175_ 11))
                     (apply (lambda (_self223297_
                                     _id223298_
                                     _super223299_
                                     _precedence-list223300_
                                     _slots223301_
                                     _fields223302_
                                     _constructor223303_
                                     _struct?223304_
                                     _final?223305_
                                     _metaclass223306_
                                     _methods223307_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223297_
                                 _id223298_
                                 __id228050
                                 __t228048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223297_
                                 _super223299_
                                 __super228057
                                 __t228048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223297_
                                 _precedence-list223300_
                                 __precedence-list228051
                                 __t228048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223297_
                                 _slots223301_
                                 __slots228054
                                 __t228048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223297_
                                 _fields223302_
                                 __fields228049
                                 __t228048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223297_
                                 _constructor223303_
                                 __constructor228056
                                 __t228048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223297_
                                 _struct?223304_
                                 __struct?228058
                                 __t228048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223297_
                                 _final?223305_
                                 __final?228052
                                 __t228048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self223297_
                                 _metaclass223306_
                                 __metaclass228055
                                 __t228048
                                 '#f))
                              (if _methods223307_
                                  (let ((__tmp228196
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods223307_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self223297_
                                     __tmp228196
                                     __methods228053
                                     __t228048
                                     '#f))
                                  '#!void))
                            _g228176_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g228176_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where223043_
               _base-struct223044_
               _precedence-list223045_
               _direct-slots223046_)
        (let* ((_base-fields223048_
                (if _base-struct223044_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where223043_
                        _base-struct223044_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields223050_ (reverse _base-fields223048_))
               (_seen-slots223058_
                (let ((_tab223052_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g223053223055_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab223052_ _g223053223055_ '#t)))
                   _base-fields223048_)
                  _tab223052_))
               (_process-slot223062_
                (lambda (_slot223060_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots223058_ _slot223060_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots223058_ _slot223060_ '#t))
                        (set! _r-fields223050_
                              (let ()
                                (declare (not safe))
                                (cons _slot223060_ _r-fields223050_))))))))
          (for-each
           (lambda (_mixin223065_)
             (let ((_klass223067_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where223043_
                       _mixin223065_))))
               (if (##structure-ref _klass223067_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot223062_
                    (##structure-ref _klass223067_ '5 gxc#!class::t '#f)))))
           _precedence-list223045_)
          (for-each _process-slot223062_ _direct-slots223046_)
          (reverse _r-fields223050_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass223002_ _slot223003_)
        (let _lp223005_ ((_rest223007_
                          (##structure-ref _klass223002_ '5 gxc#!class::t '#f))
                         (_offset223008_ '1))
          (let* ((_rest223009223017_ _rest223007_)
                 (_else223011223025_
                  (lambda ()
                    (let ((__tmp228198
                           (##structure-ref _klass223002_ '1 gxc#!type::t '#f))
                          (__tmp228197
                           (##structure-ref
                            _klass223002_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp228198
                       __tmp228197
                       _slot223003_))))
                 (_K223013223031_
                  (lambda (_rest223028_ _s223029_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s223029_ _slot223003_))
                        _offset223008_
                        (let ((__tmp228199
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset223008_ '1))))
                          (declare (not safe))
                          (_lp223005_ _rest223028_ __tmp228199))))))
            (if (let () (declare (not safe)) (##pair? _rest223009223017_))
                (let ((_hd223014223034_
                       (let ()
                         (declare (not safe))
                         (##car _rest223009223017_)))
                      (_tl223015223036_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest223009223017_))))
                  (let* ((_s223039_ _hd223014223034_)
                         (_rest223041_ _tl223015223036_))
                    (declare (not safe))
                    (_K223013223031_ _rest223041_ _s223039_)))
                (let () (declare (not safe)) (_else223011223025_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass222960_ _slot222961_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass222960_ _slot222961_))
            _klass222960_
            (let _lp222963_ ((_rest222965_
                              (##structure-ref
                               _klass222960_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest222966222974_ _rest222965_)
                     (_else222968222982_ (lambda () '#f))
                     (_K222970222990_
                      (lambda (_rest222985_ _super222986_)
                        (let ((_super-class222988_
                               (let ((__tmp228200
                                      (let ((__tmp228201
                                             (let ((__tmp228203
                                                    (##structure-ref
                                                     _klass222960_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp228202
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot222961_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp228203
                                                     __tmp228202))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp228201))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp228200
                                  _super222986_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class222988_
                                 _slot222961_))
                              _super-class222988_
                              (let ()
                                (declare (not safe))
                                (_lp222963_ _rest222985_)))))))
                (if (let () (declare (not safe)) (##pair? _rest222966222974_))
                    (let ((_hd222971222993_
                           (let ()
                             (declare (not safe))
                             (##car _rest222966222974_)))
                          (_tl222972222995_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest222966222974_))))
                      (let* ((_super222998_ _hd222971222993_)
                             (_rest223000_ _tl222972222995_))
                        (declare (not safe))
                        (_K222970222990_ _rest223000_ _super222998_)))
                    (let () (declare (not safe)) (_else222968222982_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass222957_ _slot222958_)
        (if (##structure-ref _klass222957_ '7 gxc#!class::t '#f)
            (memq _slot222958_
                  (##structure-ref _klass222957_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self222954_ _id222955_)
        (##structure-set! _self222954_ _id222955_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t228069)
        (let ((__id228070
               (let ((__tmp228071
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228069 'id))))
                 (if __tmp228071 __tmp228071 (error '"Unknown slot" 'id)))))
          (lambda (_self222954_ _id222955_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222954_
               _id222955_
               __id228070
               __t228069
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
      (lambda (_self222829_ _id222830_)
        (##structure-set! _self222829_ _id222830_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t228072)
        (let ((__id228073
               (let ((__tmp228074
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228072 'id))))
                 (if __tmp228074 __tmp228074 (error '"Unknown slot" 'id)))))
          (lambda (_self222829_ _id222830_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222829_
               _id222830_
               __id228073
               __t228072
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
      (lambda (_self222702_ _id222703_ _slot222704_ _checked?222705_)
        (##structure-set! _self222702_ _id222703_ '1 gxc#!type::t '#f)
        (##structure-set! _self222702_ _slot222704_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self222702_
         _checked?222705_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t228075)
        (let ((__id228076
               (let ((__tmp228079
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228075 'id))))
                 (if __tmp228079 __tmp228079 (error '"Unknown slot" 'id))))
              (__slot228077
               (let ((__tmp228080
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228075 'slot))))
                 (if __tmp228080 __tmp228080 (error '"Unknown slot" 'slot))))
              (__checked?228078
               (let ((__tmp228081
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228075 'checked?))))
                 (if __tmp228081
                     __tmp228081
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self222702_ _id222703_ _slot222704_ _checked?222705_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222702_
               _id222703_
               __id228076
               __t228075
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222702_
               _slot222704_
               __slot228077
               __t228075
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222702_
               _checked?222705_
               __checked?228078
               __t228075
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
      (lambda (_self222575_ _id222576_ _slot222577_ _checked?222578_)
        (##structure-set! _self222575_ _id222576_ '1 gxc#!type::t '#f)
        (##structure-set! _self222575_ _slot222577_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self222575_
         _checked?222578_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t228082)
        (let ((__id228083
               (let ((__tmp228086
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228082 'id))))
                 (if __tmp228086 __tmp228086 (error '"Unknown slot" 'id))))
              (__slot228084
               (let ((__tmp228087
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228082 'slot))))
                 (if __tmp228087 __tmp228087 (error '"Unknown slot" 'slot))))
              (__checked?228085
               (let ((__tmp228088
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228082 'checked?))))
                 (if __tmp228088
                     __tmp228088
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self222575_ _id222576_ _slot222577_ _checked?222578_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222575_
               _id222576_
               __id228083
               __t228082
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222575_
               _slot222577_
               __slot228084
               __t228082
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222575_
               _checked?222578_
               __checked?228085
               __t228082
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
      (lambda (_self222419_
               _id222420_
               _arity222421_
               _dispatch222422_
               _inline222423_
               _typedecl222424_)
        (if (let ((__tmp228209
                   (let ()
                     (declare (not safe))
                     (##structure-length _self222419_))))
              (declare (not safe))
              (##fx< '5 __tmp228209))
            (begin
              (let ((__tmp228204
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222419_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222419_
                 _id222420_
                 '1
                 __tmp228204
                 '#f))
              (let ((__tmp228205
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222419_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222419_
                 _arity222421_
                 '2
                 __tmp228205
                 '#f))
              (let ((__tmp228206
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222419_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222419_
                 _dispatch222422_
                 '3
                 __tmp228206
                 '#f))
              (let ((__tmp228207
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222419_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222419_
                 _inline222423_
                 '4
                 __tmp228207
                 '#f))
              (let ((__tmp228208
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222419_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222419_
                 _typedecl222424_
                 '5
                 __tmp228208
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self222419_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self222419_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self222429_ _id222430_ _arity222431_ _dispatch222432_)
        (let* ((_inline222434_ '#f) (_typedecl222436_ '#f))
          (if (let ((__tmp228215
                     (let ()
                       (declare (not safe))
                       (##structure-length _self222429_))))
                (declare (not safe))
                (##fx< '5 __tmp228215))
              (begin
                (let ((__tmp228210
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222429_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222429_
                   _id222430_
                   '1
                   __tmp228210
                   '#f))
                (let ((__tmp228211
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222429_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222429_
                   _arity222431_
                   '2
                   __tmp228211
                   '#f))
                (let ((__tmp228212
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222429_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222429_
                   _dispatch222432_
                   '3
                   __tmp228212
                   '#f))
                (let ((__tmp228213
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222429_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222429_
                   _inline222434_
                   '4
                   __tmp228213
                   '#f))
                (let ((__tmp228214
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222429_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222429_
                   _typedecl222436_
                   '5
                   __tmp228214
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self222429_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self222429_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self222438_
               _id222439_
               _arity222440_
               _dispatch222441_
               _inline222442_)
        (let ((_typedecl222444_ '#f))
          (if (let ((__tmp228221
                     (let ()
                       (declare (not safe))
                       (##structure-length _self222438_))))
                (declare (not safe))
                (##fx< '5 __tmp228221))
              (begin
                (let ((__tmp228216
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222438_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222438_
                   _id222439_
                   '1
                   __tmp228216
                   '#f))
                (let ((__tmp228217
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222438_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222438_
                   _arity222440_
                   '2
                   __tmp228217
                   '#f))
                (let ((__tmp228218
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222438_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222438_
                   _dispatch222441_
                   '3
                   __tmp228218
                   '#f))
                (let ((__tmp228219
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222438_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222438_
                   _inline222442_
                   '4
                   __tmp228219
                   '#f))
                (let ((__tmp228220
                       (let ()
                         (declare (not safe))
                         (##structure-type _self222438_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self222438_
                   _typedecl222444_
                   '5
                   __tmp228220
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self222438_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self222438_)))))))
    (define gxc#!lambda:::init!
      (lambda _g228223_
        (let ((_g228222_ (let () (declare (not safe)) (##length _g228223_))))
          (cond ((let () (declare (not safe)) (##fx= _g228222_ 4))
                 (apply (lambda (_self222429_
                                 _id222430_
                                 _arity222431_
                                 _dispatch222432_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self222429_
                             _id222430_
                             _arity222431_
                             _dispatch222432_)))
                        _g228223_))
                ((let () (declare (not safe)) (##fx= _g228222_ 5))
                 (apply (lambda (_self222438_
                                 _id222439_
                                 _arity222440_
                                 _dispatch222441_
                                 _inline222442_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self222438_
                             _id222439_
                             _arity222440_
                             _dispatch222441_
                             _inline222442_)))
                        _g228223_))
                ((let () (declare (not safe)) (##fx= _g228222_ 6))
                 (apply (lambda (_self222446_
                                 _id222447_
                                 _arity222448_
                                 _dispatch222449_
                                 _inline222450_
                                 _typedecl222451_)
                          (if (let ((__tmp228229
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self222446_))))
                                (declare (not safe))
                                (##fx< '5 __tmp228229))
                              (begin
                                (let ((__tmp228224
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self222446_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self222446_
                                   _id222447_
                                   '1
                                   __tmp228224
                                   '#f))
                                (let ((__tmp228225
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self222446_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self222446_
                                   _arity222448_
                                   '2
                                   __tmp228225
                                   '#f))
                                (let ((__tmp228226
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self222446_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self222446_
                                   _dispatch222449_
                                   '3
                                   __tmp228226
                                   '#f))
                                (let ((__tmp228227
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self222446_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self222446_
                                   _inline222450_
                                   '4
                                   __tmp228227
                                   '#f))
                                (let ((__tmp228228
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self222446_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self222446_
                                   _typedecl222451_
                                   '5
                                   __tmp228228
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self222446_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self222446_)))))
                        _g228223_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g228223_))))))
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
      (lambda (_self222171_ . _args222172_)
        (apply struct-instance-init! _self222171_ _args222172_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type222046_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type222046_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type222046_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass222039_)
        (let ((_$e222041_
               (##structure-ref _klass222039_ '10 gxc#!class::t '#f)))
          (if _$e222041_
              _$e222041_
              (let ((_tab222044_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass222039_
                 _tab222044_
                 '10
                 gxc#!class::t
                 '#f)
                _tab222044_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass222030_ _method222031_)
        (let ((_tab222032222034_
               (##structure-ref _klass222030_ '10 gxc#!class::t '#f)))
          (if _tab222032222034_
              (let ((_tab222037_ _tab222032222034_))
                (declare (not safe))
                (table-ref _tab222037_ _method222031_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type222027_ _method222028_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type222027_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type222027_ _method222028_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym222011_ _type222012_ _local?222013_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type222012_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym222011_
                   _type222012_))
        (let ((__tmp228230
               (let () (declare (not safe)) (struct->list _type222012_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym222011_ '" " __tmp228230))
        (let ((__tmp228231
               (if _local?222013_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp228231 _sym222011_ _type222012_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym222018_ _type222019_)
        (let ((_local?222021_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym222018_
           _type222019_
           _local?222021_))))
    (define gxc#optimizer-declare-type!
      (lambda _g228233_
        (let ((_g228232_ (let () (declare (not safe)) (##length _g228233_))))
          (cond ((let () (declare (not safe)) (##fx= _g228232_ 2))
                 (apply (lambda (_sym222018_ _type222019_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym222018_
                             _type222019_)))
                        _g228233_))
                ((let () (declare (not safe)) (##fx= _g228232_ 3))
                 (apply (lambda (_sym222023_ _type222024_ _local?222025_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym222023_
                             _type222024_
                             _local?222025_)))
                        _g228233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g228233_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym221997_ _local?221998_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym221997_))
        (let ((__tmp228234
               (if _local?221998_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp228234 _sym221997_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym222003_)
        (let ((_local?222005_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym222003_ _local?222005_))))
    (define gxc#optimizer-clear-type!
      (lambda _g228236_
        (let ((_g228235_ (let () (declare (not safe)) (##length _g228236_))))
          (cond ((let () (declare (not safe)) (##fx= _g228235_ 1))
                 (apply (lambda (_sym222003_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym222003_)))
                        _g228236_))
                ((let () (declare (not safe)) (##fx= _g228235_ 2))
                 (apply (lambda (_sym222007_ _local?222008_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym222007_
                             _local?222008_)))
                        _g228236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g228236_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t221970_ _method221971_ _sym221972_ _rebind?221973_)
        (let* ((_type221975_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t221970_)))
               (_$e221977_
                (let () (declare (not safe)) (gxc#!type-vtab _type221975_))))
          (if _$e221977_
              ((lambda (_vtab221980_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab221980_ _method221971_))
                     (if _rebind?221973_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t221970_
                              '" "
                              _method221971_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab221980_
                              _method221971_
                              _sym221972_)))
                         (let ((__tmp228241
                                (let ((__tmp228242
                                       (let ((__tmp228243
                                              (let ((__tmp228244
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym221972_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method221971_
                                                      __tmp228244))))
                                         (declare (not safe))
                                         (cons _type-t221970_ __tmp228243))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp228242))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp228241
                            _method221971_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t221970_
                          '" "
                          _method221971_
                          '" => "
                          _sym221972_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab221980_
                          _method221971_
                          _sym221972_)))))
               _$e221977_)
              (if (let () (declare (not safe)) (not _type221975_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t221970_))
                  (let ((__tmp228237
                         (let ((__tmp228238
                                (let ((__tmp228239
                                       (let ((__tmp228240
                                              (let ()
                                                (declare (not safe))
                                                (cons _method221971_ '()))))
                                         (declare (not safe))
                                         (cons _sym221972_ __tmp228240))))
                                  (declare (not safe))
                                  (cons _type-t221970_ __tmp228239))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp228238))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp228237
                     _type221975_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t221985_ _method221986_ _sym221987_)
        (let ((_rebind?221989_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t221985_
           _method221986_
           _sym221987_
           _rebind?221989_))))
    (define gxc#optimizer-declare-method!
      (lambda _g228246_
        (let ((_g228245_ (let () (declare (not safe)) (##length _g228246_))))
          (cond ((let () (declare (not safe)) (##fx= _g228245_ 3))
                 (apply (lambda (_type-t221985_ _method221986_ _sym221987_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t221985_
                             _method221986_
                             _sym221987_)))
                        _g228246_))
                ((let () (declare (not safe)) (##fx= _g228245_ 4))
                 (apply (lambda (_type-t221991_
                                 _method221992_
                                 _sym221993_
                                 _rebind?221994_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t221991_
                             _method221992_
                             _sym221993_
                             _rebind?221994_)))
                        _g228246_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g228246_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym221958_)
        (let ((_$e221966_
               (let ((_ht221959221961_ (gxc#current-compile-local-type)))
                 (if _ht221959221961_
                     (let ((_ht221964_ _ht221959221961_))
                       (declare (not safe))
                       (table-ref _ht221964_ _sym221958_ '#f))
                     '#f))))
          (if _$e221966_
              _$e221966_
              (let ((__tmp228247
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp228247 _sym221958_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym221950_)
        (let ((_type221951221953_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym221950_))))
          (if _type221951221953_
              (let ((_type221956_ _type221951221953_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type221956_ 'gxc#!alias::t))
                    (let ((__tmp228248
                           (##structure-ref _type221956_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp228248))
                    _type221956_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where221942_ _klass-id221943_)
        (let ((_$e221945_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id221943_))))
          (if _$e221945_
              ((lambda (_klass221948_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass221948_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where221942_
                        _klass-id221943_
                        _klass221948_)))
                 _klass221948_)
               _$e221945_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where221942_
                 _klass-id221943_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t221939_ _method221940_)
        (let ((__tmp228249
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t221939_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp228249 _method221940_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym221937_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym221937_))
        (let ((__tmp228250
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp228250 _sym221937_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym221935_)
        (let ((__tmp228251
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp228251 _sym221935_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx221933_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx221933_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx221933_))
            (let () (declare (not safe)) (gx#stx-e _stx221933_)))))))
