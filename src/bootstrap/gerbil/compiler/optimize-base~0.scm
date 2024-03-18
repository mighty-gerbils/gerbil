(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710781150)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp117118 (list))
            (__tmp117116
             (let ((__tmp117117
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117117 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp117118
         '(type ssxi methods)
         __tmp117116
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args117052_
        (apply make-instance gxc#optimizer-info::t _$args117052_)))
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
      (lambda (_self117050_)
        (if (let ((__tmp117126
                   (let ()
                     (declare (not safe))
                     (##structure-length _self117050_))))
              (declare (not safe))
              (##fx< '3 __tmp117126))
            (begin
              (let ((__tmp117121
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117120
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117050_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117050_
                 __tmp117121
                 '1
                 __tmp117120
                 '#f))
              (let ((__tmp117123
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117122
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117050_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117050_
                 __tmp117123
                 '2
                 __tmp117122
                 '#f))
              (let ((__tmp117125
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117124
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117050_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117050_
                 __tmp117125
                 '3
                 __tmp117124
                 '#f)))
            (let ((__tmp117119
                   (let ()
                     (declare (not safe))
                     (##vector-length _self117050_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self117050_
                     '3
                     __tmp117119)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp117129 (list))
            (__tmp117127
             (let ((__tmp117128
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117128 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp117129
         '(id)
         __tmp117127
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args116925_ (apply make-instance gxc#!type::t _$args116925_)))
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
      (let ((__tmp117132 (list gxc#!type::t))
            (__tmp117130
             (let ((__tmp117131
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117131 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp117132
         '()
         __tmp117130
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args116922_ (apply make-instance gxc#!alias::t _$args116922_)))
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
      (let ((__tmp117135 (list gxc#!type::t))
            (__tmp117133
             (let ((__tmp117134
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117134 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp117135
         '()
         __tmp117133
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args116919_
        (apply make-instance gxc#!procedure::t _$args116919_)))
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
      (let ((__tmp117138 (list gxc#!type::t))
            (__tmp117136
             (let ((__tmp117137
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117137 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp117138
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp117136
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args116916_ (apply make-instance gxc#!class::t _$args116916_)))
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
    (define gxc#!class-system?
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'system?)))
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
    (define gxc#!class-system?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'system?)))
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
    (define gxc#&!class-system?
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'system?)))
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
    (define gxc#&!class-system?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'system?)))
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
      (let ((__tmp117141 (list gxc#!procedure::t))
            (__tmp117139
             (let ((__tmp117140
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117140 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp117141
         '()
         __tmp117139
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args116913_
        (apply make-instance gxc#!predicate::t _$args116913_)))
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
      (let ((__tmp117144 (list gxc#!procedure::t))
            (__tmp117142
             (let ((__tmp117143
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117143 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp117144
         '()
         __tmp117142
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args116910_
        (apply make-instance gxc#!constructor::t _$args116910_)))
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
      (let ((__tmp117147 (list gxc#!procedure::t))
            (__tmp117145
             (let ((__tmp117146
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117146 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp117147
         '(slot checked?)
         __tmp117145
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args116907_
        (apply make-instance gxc#!accessor::t _$args116907_)))
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
      (let ((__tmp117150 (list gxc#!procedure::t))
            (__tmp117148
             (let ((__tmp117149
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117149 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp117150
         '(slot checked?)
         __tmp117148
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args116904_
        (apply make-instance gxc#!mutator::t _$args116904_)))
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
      (let ((__tmp117153 (list gxc#!procedure::t))
            (__tmp117151
             (let ((__tmp117152
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117152 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp117153
         '(arity dispatch inline inline-typedecl)
         __tmp117151
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args116901_
        (apply make-instance gxc#!lambda::t _$args116901_)))
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
      (let ((__tmp117156 (list gxc#!procedure::t))
            (__tmp117154
             (let ((__tmp117155
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117155 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp117156
         '(clauses)
         __tmp117154
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args116898_
        (apply make-instance gxc#!case-lambda::t _$args116898_)))
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
      (let ((__tmp117159 (list gxc#!procedure::t))
            (__tmp117157
             (let ((__tmp117158
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117158 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp117159
         '(table dispatch)
         __tmp117157
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args116895_
        (apply make-instance gxc#!kw-lambda::t _$args116895_)))
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
      (let ((__tmp117162 (list gxc#!procedure::t))
            (__tmp117160
             (let ((__tmp117161
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117161 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp117162
         '(keys main)
         __tmp117160
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args116892_
        (apply make-instance gxc#!kw-lambda-primary::t _$args116892_)))
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
      (let ((__tmp117163 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp117163
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args116889_
        (apply make-instance gxc#!primitive::t _$args116889_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp117164 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp117164
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args116886_
        (apply make-instance gxc#!primitive-lambda::t _$args116886_)))
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
      (let ((__tmp117165 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp117165
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args116883_
        (apply make-instance gxc#!primitive-case-lambda::t _$args116883_)))
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
      (lambda (_self116763_
               _id116764_
               _super116765_
               _slots116766_
               _ctor-method116767_
               _struct?116768_
               _final?116769_
               _system?116770_
               _metaclass116771_)
        (let _lp116773_ ((_rest116775_ _super116765_))
          (let* ((_rest116776116784_ _rest116775_)
                 (_else116778116792_ (lambda () '#!void))
                 (_K116780116798_
                  (lambda (_rest116795_ _super-id116796_)
                    (if (##structure-ref
                         (let ((__tmp117168
                                (let ((__tmp117169
                                       (let ()
                                         (declare (not safe))
                                         (cons _id116764_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp117169))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp117168
                            _super-id116796_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp117166
                               (let ((__tmp117167
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116764_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp117167))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp117166
                           _super-id116796_))
                        '#!void)
                    (let () (declare (not safe)) (_lp116773_ _rest116795_)))))
            (if (let () (declare (not safe)) (##pair? _rest116776116784_))
                (let ((_hd116781116801_
                       (let ()
                         (declare (not safe))
                         (##car _rest116776116784_)))
                      (_tl116782116803_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116776116784_))))
                  (let* ((_super-id116806_ _hd116781116801_)
                         (_rest116808_ _tl116782116803_))
                    (declare (not safe))
                    (_K116780116798_ _rest116808_ _super-id116806_)))
                '#!void)))
        (let* ((_ctor-method116858_
                (let ((_$e116810_ _ctor-method116767_))
                  (if _$e116810_
                      _$e116810_
                      (let _lp116813_ ((_rest116815_ _super116765_)
                                       (_method116816_ '#f))
                        (let* ((_rest116817116825_ _rest116815_)
                               (_else116819116833_ (lambda () _method116816_))
                               (_K116821116846_
                                (lambda (_rest116836_ _super-id116837_)
                                  (let* ((_klass116839_
                                          (let ((__tmp117170
                                                 (let ((__tmp117171
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id116764_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp117171))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp117170
                                             _super-id116837_)))
                                         (_$e116841_
                                          (##structure-ref
                                           _klass116839_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e116841_
                                        ((lambda (_ctor-method116844_)
                                           (if _method116816_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method116844_
                                                          _method116816_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp116813_
                                                      _rest116836_
                                                      _ctor-method116844_))
                                                   (let ((__tmp117172
                                                          (let ((__tmp117173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id116764_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp117173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp117172
                                                      _method116816_
                                                      _ctor-method116844_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp116813_
                                                  _rest116836_
                                                  _ctor-method116844_))))
                                         _$e116841_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp116813_
                                           _rest116836_
                                           _method116816_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest116817116825_))
                              (let ((_hd116822116849_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest116817116825_)))
                                    (_tl116823116851_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest116817116825_))))
                                (let* ((_super-id116854_ _hd116822116849_)
                                       (_rest116856_ _tl116823116851_))
                                  (declare (not safe))
                                  (_K116821116846_
                                   _rest116856_
                                   _super-id116854_)))
                              (let ()
                                (declare (not safe))
                                (_else116819116833_))))))))
               (_g117174_
                (let ((__tmp117179
                       (lambda (_klass-id116860_)
                         (let ((__tmp117180
                                (##structure-ref
                                 (let ((__tmp117181
                                        (let ((__tmp117182
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116764_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp117182))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp117181
                                    _klass-id116860_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id116860_ __tmp117180))))
                      (__tmp117176
                       (lambda (_klass-id116862_)
                         (##structure-ref
                          (let ((__tmp117177
                                 (let ((__tmp117178
                                        (let ()
                                          (declare (not safe))
                                          (cons _id116764_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp117178))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp117177
                             _klass-id116862_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super116765_
                   'get-precedence-list:
                   __tmp117179
                   'struct:
                   __tmp117176
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g117175_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g117174_)
                         (##vector-length _g117174_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g117175_ 2)))
                  (error "Context expects 2 values" _g117175_)))
            (let ((_precedence-list116864_
                   (let () (declare (not safe)) (##vector-ref _g117174_ 0)))
                  (_base-struct116865_
                   (let () (declare (not safe)) (##vector-ref _g117174_ 1))))
              (let ((_fields116867_
                     (let ((__tmp117183
                            (let ((__tmp117184
                                   (let ()
                                     (declare (not safe))
                                     (cons _id116764_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp117184))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp117183
                        _base-struct116865_
                        _precedence-list116864_
                        _slots116766_))))
                (##structure-set! _self116763_ _id116764_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self116763_
                 _super116765_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116763_
                 _precedence-list116864_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116763_
                 _slots116766_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116763_
                 _fields116867_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116763_
                 _ctor-method116858_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116763_
                 _struct?116768_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116763_
                 _final?116769_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116763_
                 _metaclass116771_
                 '10
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self116870_
               _id116871_
               _super116872_
               _precedence-list116873_
               _slots116874_
               _fields116875_
               _constructor116876_
               _struct?116877_
               _final?116878_
               _system?116879_
               _metaclass116880_
               _methods116881_)
        (##structure-set! _self116870_ _id116871_ '1 gxc#!type::t '#f)
        (##structure-set! _self116870_ _super116872_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self116870_
         _precedence-list116873_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self116870_ _slots116874_ '4 gxc#!class::t '#f)
        (##structure-set! _self116870_ _fields116875_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self116870_
         _constructor116876_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self116870_ _struct?116877_ '7 gxc#!class::t '#f)
        (##structure-set! _self116870_ _final?116878_ '8 gxc#!class::t '#f)
        (##structure-set! _self116870_ _metaclass116880_ '10 gxc#!class::t '#f)
        (if _methods116881_
            (##structure-set!
             _self116870_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods116881_))
             '11
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g117186_
        (let ((_g117185_ (let () (declare (not safe)) (##length _g117186_))))
          (cond ((let () (declare (not safe)) (##fx= _g117185_ 9))
                 (apply (lambda (_self116763_
                                 _id116764_
                                 _super116765_
                                 _slots116766_
                                 _ctor-method116767_
                                 _struct?116768_
                                 _final?116769_
                                 _system?116770_
                                 _metaclass116771_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self116763_
                             _id116764_
                             _super116765_
                             _slots116766_
                             _ctor-method116767_
                             _struct?116768_
                             _final?116769_
                             _system?116770_
                             _metaclass116771_)))
                        _g117186_))
                ((let () (declare (not safe)) (##fx= _g117185_ 12))
                 (apply (lambda (_self116870_
                                 _id116871_
                                 _super116872_
                                 _precedence-list116873_
                                 _slots116874_
                                 _fields116875_
                                 _constructor116876_
                                 _struct?116877_
                                 _final?116878_
                                 _system?116879_
                                 _metaclass116880_
                                 _methods116881_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self116870_
                             _id116871_
                             _super116872_
                             _precedence-list116873_
                             _slots116874_
                             _fields116875_
                             _constructor116876_
                             _struct?116877_
                             _final?116878_
                             _system?116879_
                             _metaclass116880_
                             _methods116881_)))
                        _g117186_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g117186_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass117054 __method-table117055)
        (let ((__super117056
               (let ((__slot117066
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117054 'super))))
                 (if __slot117066
                     __slot117066
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__id117057
               (let ((__slot117067
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117054 'id))))
                 (if __slot117067
                     __slot117067
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__final?117058
               (let ((__slot117068
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117054 'final?))))
                 (if __slot117068
                     __slot117068
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__constructor117059
               (let ((__slot117069
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117054 'constructor))))
                 (if __slot117069
                     __slot117069
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__precedence-list117060
               (let ((__slot117070
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117054 'precedence-list))))
                 (if __slot117070
                     __slot117070
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__slots117061
               (let ((__slot117071
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117054 'slots))))
                 (if __slot117071
                     __slot117071
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__fields117062
               (let ((__slot117072
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117054 'fields))))
                 (if __slot117072
                     __slot117072
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__struct?117063
               (let ((__slot117073
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117054 'struct?))))
                 (if __slot117073
                     __slot117073
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__methods117064
               (let ((__slot117074
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117054 'methods))))
                 (if __slot117074
                     __slot117074
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__metaclass117065
               (let ((__slot117075
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117054 'metaclass))))
                 (if __slot117075
                     __slot117075
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass))))))
          (lambda _g117188_
            (let ((_g117187_
                   (let () (declare (not safe)) (##length _g117188_))))
              (cond ((let () (declare (not safe)) (##fx= _g117187_ 9))
                     (apply (lambda (_self116763_
                                     _id116764_
                                     _super116765_
                                     _slots116766_
                                     _ctor-method116767_
                                     _struct?116768_
                                     _final?116769_
                                     _system?116770_
                                     _metaclass116771_)
                              (let _lp116773_ ((_rest116775_ _super116765_))
                                (let* ((_rest116776116784_ _rest116775_)
                                       (_else116778116792_ (lambda () '#!void))
                                       (_K116780116798_
                                        (lambda (_rest116795_ _super-id116796_)
                                          (if (##structure-ref
                                               (let ((__tmp117191
                                                      (let ((__tmp117192
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id116764_ '()))))
                (declare (not safe))
                (cons '!class __tmp117192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp117191
                                                  _super-id116796_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp117189
                                                     (let ((__tmp117190
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id116764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp117190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp117189
                                                 _super-id116796_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp116773_ _rest116795_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest116776116784_))
                                      (let ((_hd116781116801_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest116776116784_)))
                                            (_tl116782116803_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest116776116784_))))
                                        (let* ((_super-id116806_
                                                _hd116781116801_)
                                               (_rest116808_ _tl116782116803_))
                                          (declare (not safe))
                                          (_K116780116798_
                                           _rest116808_
                                           _super-id116806_)))
                                      '#!void)))
                              (let* ((_ctor-method116858_
                                      (let ((_$e116810_ _ctor-method116767_))
                                        (if _$e116810_
                                            _$e116810_
                                            (let _lp116813_ ((_rest116815_
                                                              _super116765_)
                                                             (_method116816_
                                                              '#f))
                                              (let* ((_rest116817116825_
                                                      _rest116815_)
                                                     (_else116819116833_
                                                      (lambda ()
                                                        _method116816_))
                                                     (_K116821116846_
                                                      (lambda (_rest116836_
                                                               _super-id116837_)
                                                        (let* ((_klass116839_
                                                                (let ((__tmp117193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp117194
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116764_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp117194))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp117193
                           _super-id116837_)))
                       (_$e116841_
                        (##structure-ref _klass116839_ '6 gxc#!class::t '#f)))
                  (if _$e116841_
                      ((lambda (_ctor-method116844_)
                         (if _method116816_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method116844_ _method116816_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp116813_
                                    _rest116836_
                                    _ctor-method116844_))
                                 (let ((__tmp117195
                                        (let ((__tmp117196
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116764_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp117196))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp117195
                                    _method116816_
                                    _ctor-method116844_)))
                             (let ()
                               (declare (not safe))
                               (_lp116813_ _rest116836_ _ctor-method116844_))))
                       _$e116841_)
                      (let ()
                        (declare (not safe))
                        (_lp116813_ _rest116836_ _method116816_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest116817116825_))
                                                    (let ((_hd116822116849_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest116817116825_)))
                                                          (_tl116823116851_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest116817116825_))))
                                                      (let* ((_super-id116854_
                                                              _hd116822116849_)
                                                             (_rest116856_
                                                              _tl116823116851_))
                                                        (declare (not safe))
                                                        (_K116821116846_
                                                         _rest116856_
                                                         _super-id116854_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else116819116833_))))))))
                                     (_g117197_
                                      (let ((__tmp117202
                                             (lambda (_klass-id116860_)
                                               (let ((__tmp117203
                                                      (##structure-ref
                                                       (let ((__tmp117204
                                                              (let ((__tmp117205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id116764_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp117205))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp117204 _klass-id116860_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id116860_
                                                       __tmp117203))))
                                            (__tmp117199
                                             (lambda (_klass-id116862_)
                                               (##structure-ref
                                                (let ((__tmp117200
                                                       (let ((__tmp117201
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id116764_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp117201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp117200
                                                   _klass-id116862_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super116765_
                                         'get-precedence-list:
                                         __tmp117202
                                         'struct:
                                         __tmp117199
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g117198_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117197_)
                                               (##vector-length _g117197_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117198_ 2)))
                                        (error "Context expects 2 values"
                                               _g117198_)))
                                  (let ((_precedence-list116864_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117197_ 0)))
                                        (_base-struct116865_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117197_ 1))))
                                    (let ((_fields116867_
                                           (let ((__tmp117206
                                                  (let ((__tmp117207
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id116764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp117207))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp117206
                                              _base-struct116865_
                                              _precedence-list116864_
                                              _slots116766_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116763_
                                         _id116764_
                                         __id117057
                                         __klass117054
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116763_
                                         _super116765_
                                         __super117056
                                         __klass117054
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116763_
                                         _precedence-list116864_
                                         __precedence-list117060
                                         __klass117054
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116763_
                                         _slots116766_
                                         __slots117061
                                         __klass117054
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116763_
                                         _fields116867_
                                         __fields117062
                                         __klass117054
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116763_
                                         _ctor-method116858_
                                         __constructor117059
                                         __klass117054
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116763_
                                         _struct?116768_
                                         __struct?117063
                                         __klass117054
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116763_
                                         _final?116769_
                                         __final?117058
                                         __klass117054
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116763_
                                         _metaclass116771_
                                         __metaclass117065
                                         __klass117054
                                         '#f)))))))
                            _g117188_))
                    ((let () (declare (not safe)) (##fx= _g117187_ 12))
                     (apply (lambda (_self116870_
                                     _id116871_
                                     _super116872_
                                     _precedence-list116873_
                                     _slots116874_
                                     _fields116875_
                                     _constructor116876_
                                     _struct?116877_
                                     _final?116878_
                                     _system?116879_
                                     _metaclass116880_
                                     _methods116881_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116870_
                                 _id116871_
                                 __id117057
                                 __klass117054
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116870_
                                 _super116872_
                                 __super117056
                                 __klass117054
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116870_
                                 _precedence-list116873_
                                 __precedence-list117060
                                 __klass117054
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116870_
                                 _slots116874_
                                 __slots117061
                                 __klass117054
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116870_
                                 _fields116875_
                                 __fields117062
                                 __klass117054
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116870_
                                 _constructor116876_
                                 __constructor117059
                                 __klass117054
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116870_
                                 _struct?116877_
                                 __struct?117063
                                 __klass117054
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116870_
                                 _final?116878_
                                 __final?117058
                                 __klass117054
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116870_
                                 _metaclass116880_
                                 __metaclass117065
                                 __klass117054
                                 '#f))
                              (if _methods116881_
                                  (let ((__tmp117208
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods116881_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self116870_
                                     __tmp117208
                                     __methods117064
                                     __klass117054
                                     '#f))
                                  '#!void))
                            _g117188_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g117188_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where116615_
               _base-struct116616_
               _precedence-list116617_
               _direct-slots116618_)
        (let* ((_base-fields116620_
                (if _base-struct116616_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where116615_
                        _base-struct116616_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields116622_ (reverse _base-fields116620_))
               (_seen-slots116630_
                (let ((_tab116624_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g116625116627_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab116624_ _g116625116627_ '#t)))
                   _base-fields116620_)
                  _tab116624_))
               (_process-slot116634_
                (lambda (_slot116632_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots116630_ _slot116632_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots116630_ _slot116632_ '#t))
                        (set! _r-fields116622_
                              (let ()
                                (declare (not safe))
                                (cons _slot116632_ _r-fields116622_))))))))
          (for-each
           (lambda (_mixin116637_)
             (let ((_klass116639_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where116615_
                       _mixin116637_))))
               (if (##structure-ref _klass116639_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot116634_
                    (##structure-ref _klass116639_ '5 gxc#!class::t '#f)))))
           _precedence-list116617_)
          (for-each _process-slot116634_ _direct-slots116618_)
          (reverse _r-fields116622_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass116574_ _slot116575_)
        (let _lp116577_ ((_rest116579_
                          (##structure-ref _klass116574_ '5 gxc#!class::t '#f))
                         (_offset116580_ '1))
          (let* ((_rest116581116589_ _rest116579_)
                 (_else116583116597_
                  (lambda ()
                    (let ((__tmp117210
                           (##structure-ref _klass116574_ '1 gxc#!type::t '#f))
                          (__tmp117209
                           (##structure-ref
                            _klass116574_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp117210
                       __tmp117209
                       _slot116575_))))
                 (_K116585116603_
                  (lambda (_rest116600_ _s116601_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s116601_ _slot116575_))
                        _offset116580_
                        (let ((__tmp117211
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset116580_ '1))))
                          (declare (not safe))
                          (_lp116577_ _rest116600_ __tmp117211))))))
            (if (let () (declare (not safe)) (##pair? _rest116581116589_))
                (let ((_hd116586116606_
                       (let ()
                         (declare (not safe))
                         (##car _rest116581116589_)))
                      (_tl116587116608_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116581116589_))))
                  (let* ((_s116611_ _hd116586116606_)
                         (_rest116613_ _tl116587116608_))
                    (declare (not safe))
                    (_K116585116603_ _rest116613_ _s116611_)))
                (let () (declare (not safe)) (_else116583116597_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass116532_ _slot116533_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass116532_ _slot116533_))
            _klass116532_
            (let _lp116535_ ((_rest116537_
                              (##structure-ref
                               _klass116532_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest116538116546_ _rest116537_)
                     (_else116540116554_ (lambda () '#f))
                     (_K116542116562_
                      (lambda (_rest116557_ _super116558_)
                        (let ((_super-class116560_
                               (let ((__tmp117212
                                      (let ((__tmp117213
                                             (let ((__tmp117215
                                                    (##structure-ref
                                                     _klass116532_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp117214
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot116533_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp117215
                                                     __tmp117214))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp117213))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp117212
                                  _super116558_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class116560_
                                 _slot116533_))
                              _super-class116560_
                              (let ()
                                (declare (not safe))
                                (_lp116535_ _rest116557_)))))))
                (if (let () (declare (not safe)) (##pair? _rest116538116546_))
                    (let ((_hd116543116565_
                           (let ()
                             (declare (not safe))
                             (##car _rest116538116546_)))
                          (_tl116544116567_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest116538116546_))))
                      (let* ((_super116570_ _hd116543116565_)
                             (_rest116572_ _tl116544116567_))
                        (declare (not safe))
                        (_K116542116562_ _rest116572_ _super116570_)))
                    (let () (declare (not safe)) (_else116540116554_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass116529_ _slot116530_)
        (if (##structure-ref _klass116529_ '7 gxc#!class::t '#f)
            (memq _slot116530_
                  (##structure-ref _klass116529_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self116526_ _id116527_)
        (##structure-set! _self116526_ _id116527_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass117076 __method-table117077)
        (let ((__id117078
               (let ((__slot117079
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117076 'id))))
                 (if __slot117079
                     __slot117079
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116526_ _id116527_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116526_
               _id116527_
               __id117078
               __klass117076
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!predicate:::init!
       gxc#!predicate:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_self116401_ _id116402_)
        (##structure-set! _self116401_ _id116402_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass117080 __method-table117081)
        (let ((__id117082
               (let ((__slot117083
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117080 'id))))
                 (if __slot117083
                     __slot117083
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116401_ _id116402_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116401_
               _id116402_
               __id117082
               __klass117080
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!constructor:::init!
       gxc#!constructor:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_self116274_ _id116275_ _slot116276_ _checked?116277_)
        (##structure-set! _self116274_ _id116275_ '1 gxc#!type::t '#f)
        (##structure-set! _self116274_ _slot116276_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self116274_
         _checked?116277_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass117084 __method-table117085)
        (let ((__id117086
               (let ((__slot117089
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117084 'id))))
                 (if __slot117089
                     __slot117089
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?117087
               (let ((__slot117090
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117084 'checked?))))
                 (if __slot117090
                     __slot117090
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot117088
               (let ((__slot117091
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117084 'slot))))
                 (if __slot117091
                     __slot117091
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self116274_ _id116275_ _slot116276_ _checked?116277_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116274_
               _id116275_
               __id117086
               __klass117084
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116274_
               _slot116276_
               __slot117088
               __klass117084
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116274_
               _checked?116277_
               __checked?117087
               __klass117084
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor:::init!
       gxc#!accessor:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_self116147_ _id116148_ _slot116149_ _checked?116150_)
        (##structure-set! _self116147_ _id116148_ '1 gxc#!type::t '#f)
        (##structure-set! _self116147_ _slot116149_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self116147_
         _checked?116150_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass117092 __method-table117093)
        (let ((__id117094
               (let ((__slot117097
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117092 'id))))
                 (if __slot117097
                     __slot117097
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?117095
               (let ((__slot117098
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117092 'checked?))))
                 (if __slot117098
                     __slot117098
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot117096
               (let ((__slot117099
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117092 'slot))))
                 (if __slot117099
                     __slot117099
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self116147_ _id116148_ _slot116149_ _checked?116150_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116147_
               _id116148_
               __id117094
               __klass117092
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116147_
               _slot116149_
               __slot117096
               __klass117092
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116147_
               _checked?116150_
               __checked?117095
               __klass117092
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator:::init!
       gxc#!mutator:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_self115991_
               _id115992_
               _arity115993_
               _dispatch115994_
               _inline115995_
               _typedecl115996_)
        (if (let ((__tmp117222
                   (let ()
                     (declare (not safe))
                     (##structure-length _self115991_))))
              (declare (not safe))
              (##fx< '5 __tmp117222))
            (begin
              (let ((__tmp117217
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115991_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115991_
                 _id115992_
                 '1
                 __tmp117217
                 '#f))
              (let ((__tmp117218
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115991_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115991_
                 _arity115993_
                 '2
                 __tmp117218
                 '#f))
              (let ((__tmp117219
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115991_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115991_
                 _dispatch115994_
                 '3
                 __tmp117219
                 '#f))
              (let ((__tmp117220
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115991_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115991_
                 _inline115995_
                 '4
                 __tmp117220
                 '#f))
              (let ((__tmp117221
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115991_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115991_
                 _typedecl115996_
                 '5
                 __tmp117221
                 '#f)))
            (let ((__tmp117216
                   (let ()
                     (declare (not safe))
                     (##vector-length _self115991_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self115991_
                     '5
                     __tmp117216)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self116001_ _id116002_ _arity116003_ _dispatch116004_)
        (let* ((_inline116006_ '#f) (_typedecl116008_ '#f))
          (if (let ((__tmp117229
                     (let ()
                       (declare (not safe))
                       (##structure-length _self116001_))))
                (declare (not safe))
                (##fx< '5 __tmp117229))
              (begin
                (let ((__tmp117224
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116001_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116001_
                   _id116002_
                   '1
                   __tmp117224
                   '#f))
                (let ((__tmp117225
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116001_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116001_
                   _arity116003_
                   '2
                   __tmp117225
                   '#f))
                (let ((__tmp117226
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116001_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116001_
                   _dispatch116004_
                   '3
                   __tmp117226
                   '#f))
                (let ((__tmp117227
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116001_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116001_
                   _inline116006_
                   '4
                   __tmp117227
                   '#f))
                (let ((__tmp117228
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116001_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116001_
                   _typedecl116008_
                   '5
                   __tmp117228
                   '#f)))
              (let ((__tmp117223
                     (let ()
                       (declare (not safe))
                       (##vector-length _self116001_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self116001_
                       '5
                       __tmp117223))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self116010_
               _id116011_
               _arity116012_
               _dispatch116013_
               _inline116014_)
        (let ((_typedecl116016_ '#f))
          (if (let ((__tmp117236
                     (let ()
                       (declare (not safe))
                       (##structure-length _self116010_))))
                (declare (not safe))
                (##fx< '5 __tmp117236))
              (begin
                (let ((__tmp117231
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116010_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116010_
                   _id116011_
                   '1
                   __tmp117231
                   '#f))
                (let ((__tmp117232
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116010_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116010_
                   _arity116012_
                   '2
                   __tmp117232
                   '#f))
                (let ((__tmp117233
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116010_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116010_
                   _dispatch116013_
                   '3
                   __tmp117233
                   '#f))
                (let ((__tmp117234
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116010_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116010_
                   _inline116014_
                   '4
                   __tmp117234
                   '#f))
                (let ((__tmp117235
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116010_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116010_
                   _typedecl116016_
                   '5
                   __tmp117235
                   '#f)))
              (let ((__tmp117230
                     (let ()
                       (declare (not safe))
                       (##vector-length _self116010_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self116010_
                       '5
                       __tmp117230))))))
    (define gxc#!lambda:::init!
      (lambda _g117238_
        (let ((_g117237_ (let () (declare (not safe)) (##length _g117238_))))
          (cond ((let () (declare (not safe)) (##fx= _g117237_ 4))
                 (apply (lambda (_self116001_
                                 _id116002_
                                 _arity116003_
                                 _dispatch116004_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self116001_
                             _id116002_
                             _arity116003_
                             _dispatch116004_)))
                        _g117238_))
                ((let () (declare (not safe)) (##fx= _g117237_ 5))
                 (apply (lambda (_self116010_
                                 _id116011_
                                 _arity116012_
                                 _dispatch116013_
                                 _inline116014_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self116010_
                             _id116011_
                             _arity116012_
                             _dispatch116013_
                             _inline116014_)))
                        _g117238_))
                ((let () (declare (not safe)) (##fx= _g117237_ 6))
                 (apply (lambda (_self116018_
                                 _id116019_
                                 _arity116020_
                                 _dispatch116021_
                                 _inline116022_
                                 _typedecl116023_)
                          (if (let ((__tmp117245
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self116018_))))
                                (declare (not safe))
                                (##fx< '5 __tmp117245))
                              (begin
                                (let ((__tmp117240
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116018_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116018_
                                   _id116019_
                                   '1
                                   __tmp117240
                                   '#f))
                                (let ((__tmp117241
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116018_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116018_
                                   _arity116020_
                                   '2
                                   __tmp117241
                                   '#f))
                                (let ((__tmp117242
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116018_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116018_
                                   _dispatch116021_
                                   '3
                                   __tmp117242
                                   '#f))
                                (let ((__tmp117243
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116018_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116018_
                                   _inline116022_
                                   '4
                                   __tmp117243
                                   '#f))
                                (let ((__tmp117244
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116018_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116018_
                                   _typedecl116023_
                                   '5
                                   __tmp117244
                                   '#f)))
                              (let ((__tmp117239
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self116018_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self116018_
                                       '5
                                       __tmp117239))))
                        _g117238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g117238_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!primitive-lambda:::init! gxc#!lambda:::init!)
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-lambda::t
       ':init!
       gxc#!primitive-lambda:::init!
       '#f))
    (define gxc#!primitive-case-lambda:::init!
      (lambda (_self115743_ . _args115744_)
        (apply struct-instance-init! _self115743_ _args115744_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type115618_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115618_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type115618_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass115611_)
        (let ((_$e115613_
               (##structure-ref _klass115611_ '11 gxc#!class::t '#f)))
          (if _$e115613_
              _$e115613_
              (let ((_tab115616_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass115611_
                 _tab115616_
                 '11
                 gxc#!class::t
                 '#f)
                _tab115616_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass115602_ _method115603_)
        (let ((_tab115604115606_
               (##structure-ref _klass115602_ '11 gxc#!class::t '#f)))
          (if _tab115604115606_
              (let ((_tab115609_ _tab115604115606_))
                (declare (not safe))
                (hash-get _tab115609_ _method115603_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type115599_ _method115600_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115599_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type115599_ _method115600_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym115583_ _type115584_ _local?115585_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115584_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym115583_
                     _type115584_)))
        (let ((__tmp117246
               (let () (declare (not safe)) (struct->list _type115584_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym115583_ '" " __tmp117246))
        (let ((__tmp117247
               (if _local?115585_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp117247 _sym115583_ _type115584_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym115590_ _type115591_)
        (let ((_local?115593_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym115590_
           _type115591_
           _local?115593_))))
    (define gxc#optimizer-declare-type!
      (lambda _g117249_
        (let ((_g117248_ (let () (declare (not safe)) (##length _g117249_))))
          (cond ((let () (declare (not safe)) (##fx= _g117248_ 2))
                 (apply (lambda (_sym115590_ _type115591_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym115590_
                             _type115591_)))
                        _g117249_))
                ((let () (declare (not safe)) (##fx= _g117248_ 3))
                 (apply (lambda (_sym115595_ _type115596_ _local?115597_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym115595_
                             _type115596_
                             _local?115597_)))
                        _g117249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g117249_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym115569_ _local?115570_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym115569_))
        (let ((__tmp117250
               (if _local?115570_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp117250 _sym115569_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym115575_)
        (let ((_local?115577_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym115575_ _local?115577_))))
    (define gxc#optimizer-clear-type!
      (lambda _g117252_
        (let ((_g117251_ (let () (declare (not safe)) (##length _g117252_))))
          (cond ((let () (declare (not safe)) (##fx= _g117251_ 1))
                 (apply (lambda (_sym115575_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym115575_)))
                        _g117252_))
                ((let () (declare (not safe)) (##fx= _g117251_ 2))
                 (apply (lambda (_sym115579_ _local?115580_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym115579_
                             _local?115580_)))
                        _g117252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g117252_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t115537_ _method115538_ _sym115539_ _rebind?115540_)
        (let* ((_type115542_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t115537_)))
               (_$e115544_
                (let () (declare (not safe)) (gxc#!type-vtab _type115542_))))
          (if _$e115544_
              ((lambda (_vtab115547_)
                 (let ((_$e115549_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab115547_ _method115538_))))
                   (if _$e115549_
                       ((lambda (_existing115552_)
                          (if _rebind?115540_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t115537_
                                   '" "
                                   _method115538_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab115547_
                                   _method115538_
                                   _sym115539_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing115552_ _sym115539_))
                                  '#!void
                                  (let ((__tmp117257
                                         (let ((__tmp117258
                                                (let ((__tmp117259
                                                       (let ((__tmp117260
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym115539_ '()))))
                 (declare (not safe))
                 (cons _method115538_ __tmp117260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t115537_
                                                        __tmp117259))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp117258))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp117257
                                     _method115538_)))))
                        _$e115549_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t115537_
                            '" "
                            _method115538_
                            '" => "
                            _sym115539_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab115547_
                            _method115538_
                            _sym115539_))))))
               _$e115544_)
              (if (let () (declare (not safe)) (not _type115542_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t115537_))
                  (let ((__tmp117253
                         (let ((__tmp117254
                                (let ((__tmp117255
                                       (let ((__tmp117256
                                              (let ()
                                                (declare (not safe))
                                                (cons _method115538_ '()))))
                                         (declare (not safe))
                                         (cons _sym115539_ __tmp117256))))
                                  (declare (not safe))
                                  (cons _type-t115537_ __tmp117255))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp117254))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp117253
                     _type115542_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t115557_ _method115558_ _sym115559_)
        (let ((_rebind?115561_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t115557_
           _method115558_
           _sym115559_
           _rebind?115561_))))
    (define gxc#optimizer-declare-method!
      (lambda _g117262_
        (let ((_g117261_ (let () (declare (not safe)) (##length _g117262_))))
          (cond ((let () (declare (not safe)) (##fx= _g117261_ 3))
                 (apply (lambda (_type-t115557_ _method115558_ _sym115559_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t115557_
                             _method115558_
                             _sym115559_)))
                        _g117262_))
                ((let () (declare (not safe)) (##fx= _g117261_ 4))
                 (apply (lambda (_type-t115563_
                                 _method115564_
                                 _sym115565_
                                 _rebind?115566_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t115563_
                             _method115564_
                             _sym115565_
                             _rebind?115566_)))
                        _g117262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g117262_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym115525_)
        (let ((_$e115533_
               (let ((_ht115526115528_ (gxc#current-compile-local-type)))
                 (if _ht115526115528_
                     (let ((_ht115531_ _ht115526115528_))
                       (declare (not safe))
                       (hash-get _ht115531_ _sym115525_))
                     '#f))))
          (if _$e115533_
              _$e115533_
              (let ((__tmp117263
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp117263 _sym115525_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym115517_)
        (let ((_type115518115520_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym115517_))))
          (if _type115518115520_
              (let ((_type115523_ _type115518115520_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type115523_ 'gxc#!alias::t))
                    (let ((__tmp117264
                           (##structure-ref _type115523_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp117264))
                    _type115523_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where115509_ _klass-id115510_)
        (let ((_$e115512_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id115510_))))
          (if _$e115512_
              ((lambda (_klass115515_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass115515_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where115509_
                        _klass-id115510_
                        _klass115515_)))
                 _klass115515_)
               _$e115512_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where115509_
                 _klass-id115510_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t115506_ _method115507_)
        (let ((__tmp117265
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t115506_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp117265 _method115507_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym115504_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym115504_))
        (let ((__tmp117266
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp117266 _sym115504_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym115502_)
        (let ((__tmp117267
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp117267 _sym115502_))))
    (define gxc#identifier-symbol
      (lambda (_stx115500_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx115500_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx115500_))
            (let () (declare (not safe)) (gx#stx-e _stx115500_)))))))
