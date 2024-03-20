(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710943026)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp117123 (list))
            (__tmp117121
             (let ((__tmp117122
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117122 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp117123
         '(type ssxi methods)
         __tmp117121
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args117057_
        (apply make-instance gxc#optimizer-info::t _$args117057_)))
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
      (lambda (_self117055_)
        (if (let ((__tmp117131
                   (let ()
                     (declare (not safe))
                     (##structure-length _self117055_))))
              (declare (not safe))
              (##fx< '3 __tmp117131))
            (begin
              (let ((__tmp117126
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117125
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117055_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117055_
                 __tmp117126
                 '1
                 __tmp117125
                 '#f))
              (let ((__tmp117128
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117127
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117055_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117055_
                 __tmp117128
                 '2
                 __tmp117127
                 '#f))
              (let ((__tmp117130
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117129
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117055_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117055_
                 __tmp117130
                 '3
                 __tmp117129
                 '#f)))
            (let ((__tmp117124
                   (let ()
                     (declare (not safe))
                     (##vector-length _self117055_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self117055_
                     '3
                     __tmp117124)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp117134 (list))
            (__tmp117132
             (let ((__tmp117133
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117133 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp117134
         '(id)
         __tmp117132
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args116930_ (apply make-instance gxc#!type::t _$args116930_)))
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
      (let ((__tmp117137 (list gxc#!type::t))
            (__tmp117135
             (let ((__tmp117136
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117136 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp117137
         '()
         __tmp117135
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args116927_ (apply make-instance gxc#!alias::t _$args116927_)))
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
      (let ((__tmp117140 (list gxc#!type::t))
            (__tmp117138
             (let ((__tmp117139
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117139 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp117140
         '()
         __tmp117138
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args116924_
        (apply make-instance gxc#!procedure::t _$args116924_)))
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
      (let ((__tmp117143 (list gxc#!type::t))
            (__tmp117141
             (let ((__tmp117142
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117142 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp117143
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp117141
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args116921_ (apply make-instance gxc#!class::t _$args116921_)))
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
      (let ((__tmp117146 (list gxc#!procedure::t))
            (__tmp117144
             (let ((__tmp117145
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117145 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp117146
         '()
         __tmp117144
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args116918_
        (apply make-instance gxc#!predicate::t _$args116918_)))
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
      (let ((__tmp117149 (list gxc#!procedure::t))
            (__tmp117147
             (let ((__tmp117148
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117148 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp117149
         '()
         __tmp117147
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args116915_
        (apply make-instance gxc#!constructor::t _$args116915_)))
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
      (let ((__tmp117152 (list gxc#!procedure::t))
            (__tmp117150
             (let ((__tmp117151
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117151 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp117152
         '(slot checked?)
         __tmp117150
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args116912_
        (apply make-instance gxc#!accessor::t _$args116912_)))
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
      (let ((__tmp117155 (list gxc#!procedure::t))
            (__tmp117153
             (let ((__tmp117154
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117154 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp117155
         '(slot checked?)
         __tmp117153
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args116909_
        (apply make-instance gxc#!mutator::t _$args116909_)))
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
      (let ((__tmp117158 (list gxc#!procedure::t))
            (__tmp117156
             (let ((__tmp117157
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117157 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp117158
         '(arity dispatch inline inline-typedecl)
         __tmp117156
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args116906_
        (apply make-instance gxc#!lambda::t _$args116906_)))
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
      (let ((__tmp117161 (list gxc#!procedure::t))
            (__tmp117159
             (let ((__tmp117160
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117160 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp117161
         '(clauses)
         __tmp117159
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args116903_
        (apply make-instance gxc#!case-lambda::t _$args116903_)))
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
      (let ((__tmp117164 (list gxc#!procedure::t))
            (__tmp117162
             (let ((__tmp117163
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117163 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp117164
         '(table dispatch)
         __tmp117162
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args116900_
        (apply make-instance gxc#!kw-lambda::t _$args116900_)))
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
      (let ((__tmp117167 (list gxc#!procedure::t))
            (__tmp117165
             (let ((__tmp117166
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117166 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp117167
         '(keys main)
         __tmp117165
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args116897_
        (apply make-instance gxc#!kw-lambda-primary::t _$args116897_)))
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
      (let ((__tmp117168 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp117168
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args116894_
        (apply make-instance gxc#!primitive::t _$args116894_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp117169 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp117169
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args116891_
        (apply make-instance gxc#!primitive-lambda::t _$args116891_)))
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
      (let ((__tmp117170 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp117170
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args116888_
        (apply make-instance gxc#!primitive-case-lambda::t _$args116888_)))
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
      (lambda (_self116768_
               _id116769_
               _super116770_
               _slots116771_
               _ctor-method116772_
               _struct?116773_
               _final?116774_
               _system?116775_
               _metaclass116776_)
        (let _lp116778_ ((_rest116780_ _super116770_))
          (let* ((_rest116781116789_ _rest116780_)
                 (_else116783116797_ (lambda () '#!void))
                 (_K116785116803_
                  (lambda (_rest116800_ _super-id116801_)
                    (if (##structure-ref
                         (let ((__tmp117173
                                (let ((__tmp117174
                                       (let ()
                                         (declare (not safe))
                                         (cons _id116769_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp117174))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp117173
                            _super-id116801_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp117171
                               (let ((__tmp117172
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116769_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp117172))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp117171
                           _super-id116801_))
                        '#!void)
                    (let () (declare (not safe)) (_lp116778_ _rest116800_)))))
            (if (let () (declare (not safe)) (##pair? _rest116781116789_))
                (let ((_hd116786116806_
                       (let ()
                         (declare (not safe))
                         (##car _rest116781116789_)))
                      (_tl116787116808_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116781116789_))))
                  (let* ((_super-id116811_ _hd116786116806_)
                         (_rest116813_ _tl116787116808_))
                    (declare (not safe))
                    (_K116785116803_ _rest116813_ _super-id116811_)))
                '#!void)))
        (let* ((_ctor-method116863_
                (let ((_$e116815_ _ctor-method116772_))
                  (if _$e116815_
                      _$e116815_
                      (let _lp116818_ ((_rest116820_ _super116770_)
                                       (_method116821_ '#f))
                        (let* ((_rest116822116830_ _rest116820_)
                               (_else116824116838_ (lambda () _method116821_))
                               (_K116826116851_
                                (lambda (_rest116841_ _super-id116842_)
                                  (let* ((_klass116844_
                                          (let ((__tmp117175
                                                 (let ((__tmp117176
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id116769_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp117176))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp117175
                                             _super-id116842_)))
                                         (_$e116846_
                                          (##structure-ref
                                           _klass116844_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e116846_
                                        ((lambda (_ctor-method116849_)
                                           (if _method116821_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method116849_
                                                          _method116821_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp116818_
                                                      _rest116841_
                                                      _ctor-method116849_))
                                                   (let ((__tmp117177
                                                          (let ((__tmp117178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id116769_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp117178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp117177
                                                      _method116821_
                                                      _ctor-method116849_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp116818_
                                                  _rest116841_
                                                  _ctor-method116849_))))
                                         _$e116846_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp116818_
                                           _rest116841_
                                           _method116821_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest116822116830_))
                              (let ((_hd116827116854_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest116822116830_)))
                                    (_tl116828116856_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest116822116830_))))
                                (let* ((_super-id116859_ _hd116827116854_)
                                       (_rest116861_ _tl116828116856_))
                                  (declare (not safe))
                                  (_K116826116851_
                                   _rest116861_
                                   _super-id116859_)))
                              (let ()
                                (declare (not safe))
                                (_else116824116838_))))))))
               (_g117179_
                (let ((__tmp117184
                       (lambda (_klass-id116865_)
                         (let ((__tmp117185
                                (##structure-ref
                                 (let ((__tmp117186
                                        (let ((__tmp117187
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116769_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp117187))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp117186
                                    _klass-id116865_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id116865_ __tmp117185))))
                      (__tmp117181
                       (lambda (_klass-id116867_)
                         (##structure-ref
                          (let ((__tmp117182
                                 (let ((__tmp117183
                                        (let ()
                                          (declare (not safe))
                                          (cons _id116769_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp117183))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp117182
                             _klass-id116867_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super116770_
                   'get-precedence-list:
                   __tmp117184
                   'struct:
                   __tmp117181
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g117180_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g117179_)
                         (##vector-length _g117179_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g117180_ 2)))
                  (error "Context expects 2 values" _g117180_)))
            (let ((_precedence-list116869_
                   (let () (declare (not safe)) (##vector-ref _g117179_ 0)))
                  (_base-struct116870_
                   (let () (declare (not safe)) (##vector-ref _g117179_ 1))))
              (let ((_fields116872_
                     (let ((__tmp117188
                            (let ((__tmp117189
                                   (let ()
                                     (declare (not safe))
                                     (cons _id116769_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp117189))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp117188
                        _base-struct116870_
                        _precedence-list116869_
                        _slots116771_))))
                (##structure-set! _self116768_ _id116769_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self116768_
                 _super116770_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116768_
                 _precedence-list116869_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116768_
                 _slots116771_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116768_
                 _fields116872_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116768_
                 _ctor-method116863_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116768_
                 _struct?116773_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116768_
                 _final?116774_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116768_
                 _metaclass116776_
                 '10
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self116875_
               _id116876_
               _super116877_
               _precedence-list116878_
               _slots116879_
               _fields116880_
               _constructor116881_
               _struct?116882_
               _final?116883_
               _system?116884_
               _metaclass116885_
               _methods116886_)
        (##structure-set! _self116875_ _id116876_ '1 gxc#!type::t '#f)
        (##structure-set! _self116875_ _super116877_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self116875_
         _precedence-list116878_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self116875_ _slots116879_ '4 gxc#!class::t '#f)
        (##structure-set! _self116875_ _fields116880_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self116875_
         _constructor116881_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self116875_ _struct?116882_ '7 gxc#!class::t '#f)
        (##structure-set! _self116875_ _final?116883_ '8 gxc#!class::t '#f)
        (##structure-set! _self116875_ _metaclass116885_ '10 gxc#!class::t '#f)
        (if _methods116886_
            (##structure-set!
             _self116875_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods116886_))
             '11
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g117191_
        (let ((_g117190_ (let () (declare (not safe)) (##length _g117191_))))
          (cond ((let () (declare (not safe)) (##fx= _g117190_ 9))
                 (apply (lambda (_self116768_
                                 _id116769_
                                 _super116770_
                                 _slots116771_
                                 _ctor-method116772_
                                 _struct?116773_
                                 _final?116774_
                                 _system?116775_
                                 _metaclass116776_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self116768_
                             _id116769_
                             _super116770_
                             _slots116771_
                             _ctor-method116772_
                             _struct?116773_
                             _final?116774_
                             _system?116775_
                             _metaclass116776_)))
                        _g117191_))
                ((let () (declare (not safe)) (##fx= _g117190_ 12))
                 (apply (lambda (_self116875_
                                 _id116876_
                                 _super116877_
                                 _precedence-list116878_
                                 _slots116879_
                                 _fields116880_
                                 _constructor116881_
                                 _struct?116882_
                                 _final?116883_
                                 _system?116884_
                                 _metaclass116885_
                                 _methods116886_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self116875_
                             _id116876_
                             _super116877_
                             _precedence-list116878_
                             _slots116879_
                             _fields116880_
                             _constructor116881_
                             _struct?116882_
                             _final?116883_
                             _system?116884_
                             _metaclass116885_
                             _methods116886_)))
                        _g117191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g117191_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass117059 __method-table117060)
        (let ((__metaclass117061
               (let ((__slot117071
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117059 'metaclass))))
                 (if __slot117071
                     __slot117071
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__id117062
               (let ((__slot117072
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117059 'id))))
                 (if __slot117072
                     __slot117072
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__constructor117063
               (let ((__slot117073
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117059 'constructor))))
                 (if __slot117073
                     __slot117073
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__super117064
               (let ((__slot117074
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117059 'super))))
                 (if __slot117074
                     __slot117074
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__final?117065
               (let ((__slot117075
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117059 'final?))))
                 (if __slot117075
                     __slot117075
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__slots117066
               (let ((__slot117076
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117059 'slots))))
                 (if __slot117076
                     __slot117076
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__struct?117067
               (let ((__slot117077
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117059 'struct?))))
                 (if __slot117077
                     __slot117077
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__precedence-list117068
               (let ((__slot117078
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117059 'precedence-list))))
                 (if __slot117078
                     __slot117078
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__fields117069
               (let ((__slot117079
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117059 'fields))))
                 (if __slot117079
                     __slot117079
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__methods117070
               (let ((__slot117080
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117059 'methods))))
                 (if __slot117080
                     __slot117080
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods))))))
          (lambda _g117193_
            (let ((_g117192_
                   (let () (declare (not safe)) (##length _g117193_))))
              (cond ((let () (declare (not safe)) (##fx= _g117192_ 9))
                     (apply (lambda (_self116768_
                                     _id116769_
                                     _super116770_
                                     _slots116771_
                                     _ctor-method116772_
                                     _struct?116773_
                                     _final?116774_
                                     _system?116775_
                                     _metaclass116776_)
                              (let _lp116778_ ((_rest116780_ _super116770_))
                                (let* ((_rest116781116789_ _rest116780_)
                                       (_else116783116797_ (lambda () '#!void))
                                       (_K116785116803_
                                        (lambda (_rest116800_ _super-id116801_)
                                          (if (##structure-ref
                                               (let ((__tmp117196
                                                      (let ((__tmp117197
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id116769_ '()))))
                (declare (not safe))
                (cons '!class __tmp117197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp117196
                                                  _super-id116801_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp117194
                                                     (let ((__tmp117195
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id116769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp117195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp117194
                                                 _super-id116801_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp116778_ _rest116800_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest116781116789_))
                                      (let ((_hd116786116806_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest116781116789_)))
                                            (_tl116787116808_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest116781116789_))))
                                        (let* ((_super-id116811_
                                                _hd116786116806_)
                                               (_rest116813_ _tl116787116808_))
                                          (declare (not safe))
                                          (_K116785116803_
                                           _rest116813_
                                           _super-id116811_)))
                                      '#!void)))
                              (let* ((_ctor-method116863_
                                      (let ((_$e116815_ _ctor-method116772_))
                                        (if _$e116815_
                                            _$e116815_
                                            (let _lp116818_ ((_rest116820_
                                                              _super116770_)
                                                             (_method116821_
                                                              '#f))
                                              (let* ((_rest116822116830_
                                                      _rest116820_)
                                                     (_else116824116838_
                                                      (lambda ()
                                                        _method116821_))
                                                     (_K116826116851_
                                                      (lambda (_rest116841_
                                                               _super-id116842_)
                                                        (let* ((_klass116844_
                                                                (let ((__tmp117198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp117199
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116769_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp117199))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp117198
                           _super-id116842_)))
                       (_$e116846_
                        (##structure-ref _klass116844_ '6 gxc#!class::t '#f)))
                  (if _$e116846_
                      ((lambda (_ctor-method116849_)
                         (if _method116821_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method116849_ _method116821_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp116818_
                                    _rest116841_
                                    _ctor-method116849_))
                                 (let ((__tmp117200
                                        (let ((__tmp117201
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116769_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp117201))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp117200
                                    _method116821_
                                    _ctor-method116849_)))
                             (let ()
                               (declare (not safe))
                               (_lp116818_ _rest116841_ _ctor-method116849_))))
                       _$e116846_)
                      (let ()
                        (declare (not safe))
                        (_lp116818_ _rest116841_ _method116821_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest116822116830_))
                                                    (let ((_hd116827116854_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest116822116830_)))
                                                          (_tl116828116856_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest116822116830_))))
                                                      (let* ((_super-id116859_
                                                              _hd116827116854_)
                                                             (_rest116861_
                                                              _tl116828116856_))
                                                        (declare (not safe))
                                                        (_K116826116851_
                                                         _rest116861_
                                                         _super-id116859_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else116824116838_))))))))
                                     (_g117202_
                                      (let ((__tmp117207
                                             (lambda (_klass-id116865_)
                                               (let ((__tmp117208
                                                      (##structure-ref
                                                       (let ((__tmp117209
                                                              (let ((__tmp117210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id116769_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp117210))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp117209 _klass-id116865_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id116865_
                                                       __tmp117208))))
                                            (__tmp117204
                                             (lambda (_klass-id116867_)
                                               (##structure-ref
                                                (let ((__tmp117205
                                                       (let ((__tmp117206
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id116769_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp117206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp117205
                                                   _klass-id116867_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super116770_
                                         'get-precedence-list:
                                         __tmp117207
                                         'struct:
                                         __tmp117204
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g117203_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117202_)
                                               (##vector-length _g117202_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117203_ 2)))
                                        (error "Context expects 2 values"
                                               _g117203_)))
                                  (let ((_precedence-list116869_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117202_ 0)))
                                        (_base-struct116870_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117202_ 1))))
                                    (let ((_fields116872_
                                           (let ((__tmp117211
                                                  (let ((__tmp117212
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id116769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp117212))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp117211
                                              _base-struct116870_
                                              _precedence-list116869_
                                              _slots116771_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116768_
                                         _id116769_
                                         __id117062
                                         __klass117059
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116768_
                                         _super116770_
                                         __super117064
                                         __klass117059
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116768_
                                         _precedence-list116869_
                                         __precedence-list117068
                                         __klass117059
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116768_
                                         _slots116771_
                                         __slots117066
                                         __klass117059
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116768_
                                         _fields116872_
                                         __fields117069
                                         __klass117059
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116768_
                                         _ctor-method116863_
                                         __constructor117063
                                         __klass117059
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116768_
                                         _struct?116773_
                                         __struct?117067
                                         __klass117059
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116768_
                                         _final?116774_
                                         __final?117065
                                         __klass117059
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116768_
                                         _metaclass116776_
                                         __metaclass117061
                                         __klass117059
                                         '#f)))))))
                            _g117193_))
                    ((let () (declare (not safe)) (##fx= _g117192_ 12))
                     (apply (lambda (_self116875_
                                     _id116876_
                                     _super116877_
                                     _precedence-list116878_
                                     _slots116879_
                                     _fields116880_
                                     _constructor116881_
                                     _struct?116882_
                                     _final?116883_
                                     _system?116884_
                                     _metaclass116885_
                                     _methods116886_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116875_
                                 _id116876_
                                 __id117062
                                 __klass117059
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116875_
                                 _super116877_
                                 __super117064
                                 __klass117059
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116875_
                                 _precedence-list116878_
                                 __precedence-list117068
                                 __klass117059
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116875_
                                 _slots116879_
                                 __slots117066
                                 __klass117059
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116875_
                                 _fields116880_
                                 __fields117069
                                 __klass117059
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116875_
                                 _constructor116881_
                                 __constructor117063
                                 __klass117059
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116875_
                                 _struct?116882_
                                 __struct?117067
                                 __klass117059
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116875_
                                 _final?116883_
                                 __final?117065
                                 __klass117059
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116875_
                                 _metaclass116885_
                                 __metaclass117061
                                 __klass117059
                                 '#f))
                              (if _methods116886_
                                  (let ((__tmp117213
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods116886_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self116875_
                                     __tmp117213
                                     __methods117070
                                     __klass117059
                                     '#f))
                                  '#!void))
                            _g117193_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g117193_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where116620_
               _base-struct116621_
               _precedence-list116622_
               _direct-slots116623_)
        (let* ((_base-fields116625_
                (if _base-struct116621_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where116620_
                        _base-struct116621_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields116627_ (reverse _base-fields116625_))
               (_seen-slots116635_
                (let ((_tab116629_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g116630116632_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab116629_ _g116630116632_ '#t)))
                   _base-fields116625_)
                  _tab116629_))
               (_process-slot116639_
                (lambda (_slot116637_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots116635_ _slot116637_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots116635_ _slot116637_ '#t))
                        (set! _r-fields116627_
                              (let ()
                                (declare (not safe))
                                (cons _slot116637_ _r-fields116627_))))))))
          (for-each
           (lambda (_mixin116642_)
             (let ((_klass116644_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where116620_
                       _mixin116642_))))
               (if (##structure-ref _klass116644_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot116639_
                    (##structure-ref _klass116644_ '5 gxc#!class::t '#f)))))
           _precedence-list116622_)
          (for-each _process-slot116639_ _direct-slots116623_)
          (reverse _r-fields116627_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass116579_ _slot116580_)
        (let _lp116582_ ((_rest116584_
                          (##structure-ref _klass116579_ '5 gxc#!class::t '#f))
                         (_offset116585_ '1))
          (let* ((_rest116586116594_ _rest116584_)
                 (_else116588116602_
                  (lambda ()
                    (let ((__tmp117215
                           (##structure-ref _klass116579_ '1 gxc#!type::t '#f))
                          (__tmp117214
                           (##structure-ref
                            _klass116579_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp117215
                       __tmp117214
                       _slot116580_))))
                 (_K116590116608_
                  (lambda (_rest116605_ _s116606_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s116606_ _slot116580_))
                        _offset116585_
                        (let ((__tmp117216
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset116585_ '1))))
                          (declare (not safe))
                          (_lp116582_ _rest116605_ __tmp117216))))))
            (if (let () (declare (not safe)) (##pair? _rest116586116594_))
                (let ((_hd116591116611_
                       (let ()
                         (declare (not safe))
                         (##car _rest116586116594_)))
                      (_tl116592116613_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116586116594_))))
                  (let* ((_s116616_ _hd116591116611_)
                         (_rest116618_ _tl116592116613_))
                    (declare (not safe))
                    (_K116590116608_ _rest116618_ _s116616_)))
                (let () (declare (not safe)) (_else116588116602_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass116537_ _slot116538_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass116537_ _slot116538_))
            _klass116537_
            (let _lp116540_ ((_rest116542_
                              (##structure-ref
                               _klass116537_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest116543116551_ _rest116542_)
                     (_else116545116559_ (lambda () '#f))
                     (_K116547116567_
                      (lambda (_rest116562_ _super116563_)
                        (let ((_super-class116565_
                               (let ((__tmp117217
                                      (let ((__tmp117218
                                             (let ((__tmp117220
                                                    (##structure-ref
                                                     _klass116537_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp117219
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot116538_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp117220
                                                     __tmp117219))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp117218))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp117217
                                  _super116563_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class116565_
                                 _slot116538_))
                              _super-class116565_
                              (let ()
                                (declare (not safe))
                                (_lp116540_ _rest116562_)))))))
                (if (let () (declare (not safe)) (##pair? _rest116543116551_))
                    (let ((_hd116548116570_
                           (let ()
                             (declare (not safe))
                             (##car _rest116543116551_)))
                          (_tl116549116572_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest116543116551_))))
                      (let* ((_super116575_ _hd116548116570_)
                             (_rest116577_ _tl116549116572_))
                        (declare (not safe))
                        (_K116547116567_ _rest116577_ _super116575_)))
                    (let () (declare (not safe)) (_else116545116559_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass116534_ _slot116535_)
        (if (##structure-ref _klass116534_ '7 gxc#!class::t '#f)
            (memq _slot116535_
                  (##structure-ref _klass116534_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self116531_ _id116532_)
        (##structure-set! _self116531_ _id116532_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass117081 __method-table117082)
        (let ((__id117083
               (let ((__slot117084
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117081 'id))))
                 (if __slot117084
                     __slot117084
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116531_ _id116532_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116531_
               _id116532_
               __id117083
               __klass117081
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
      (lambda (_self116406_ _id116407_)
        (##structure-set! _self116406_ _id116407_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass117085 __method-table117086)
        (let ((__id117087
               (let ((__slot117088
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117085 'id))))
                 (if __slot117088
                     __slot117088
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116406_ _id116407_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116406_
               _id116407_
               __id117087
               __klass117085
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
      (lambda (_self116279_ _id116280_ _slot116281_ _checked?116282_)
        (##structure-set! _self116279_ _id116280_ '1 gxc#!type::t '#f)
        (##structure-set! _self116279_ _slot116281_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self116279_
         _checked?116282_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass117089 __method-table117090)
        (let ((__slot117091
               (let ((__slot117094
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117089 'slot))))
                 (if __slot117094
                     __slot117094
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id117092
               (let ((__slot117095
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117089 'id))))
                 (if __slot117095
                     __slot117095
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?117093
               (let ((__slot117096
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117089 'checked?))))
                 (if __slot117096
                     __slot117096
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self116279_ _id116280_ _slot116281_ _checked?116282_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116279_
               _id116280_
               __id117092
               __klass117089
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116279_
               _slot116281_
               __slot117091
               __klass117089
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116279_
               _checked?116282_
               __checked?117093
               __klass117089
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
      (lambda (_self116152_ _id116153_ _slot116154_ _checked?116155_)
        (##structure-set! _self116152_ _id116153_ '1 gxc#!type::t '#f)
        (##structure-set! _self116152_ _slot116154_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self116152_
         _checked?116155_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass117097 __method-table117098)
        (let ((__slot117099
               (let ((__slot117102
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117097 'slot))))
                 (if __slot117102
                     __slot117102
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id117100
               (let ((__slot117103
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117097 'id))))
                 (if __slot117103
                     __slot117103
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?117101
               (let ((__slot117104
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117097 'checked?))))
                 (if __slot117104
                     __slot117104
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self116152_ _id116153_ _slot116154_ _checked?116155_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116152_
               _id116153_
               __id117100
               __klass117097
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116152_
               _slot116154_
               __slot117099
               __klass117097
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116152_
               _checked?116155_
               __checked?117101
               __klass117097
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
      (lambda (_self115996_
               _id115997_
               _arity115998_
               _dispatch115999_
               _inline116000_
               _typedecl116001_)
        (if (let ((__tmp117227
                   (let ()
                     (declare (not safe))
                     (##structure-length _self115996_))))
              (declare (not safe))
              (##fx< '5 __tmp117227))
            (begin
              (let ((__tmp117222
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115996_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115996_
                 _id115997_
                 '1
                 __tmp117222
                 '#f))
              (let ((__tmp117223
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115996_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115996_
                 _arity115998_
                 '2
                 __tmp117223
                 '#f))
              (let ((__tmp117224
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115996_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115996_
                 _dispatch115999_
                 '3
                 __tmp117224
                 '#f))
              (let ((__tmp117225
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115996_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115996_
                 _inline116000_
                 '4
                 __tmp117225
                 '#f))
              (let ((__tmp117226
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115996_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115996_
                 _typedecl116001_
                 '5
                 __tmp117226
                 '#f)))
            (let ((__tmp117221
                   (let ()
                     (declare (not safe))
                     (##vector-length _self115996_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self115996_
                     '5
                     __tmp117221)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self116006_ _id116007_ _arity116008_ _dispatch116009_)
        (let* ((_inline116011_ '#f) (_typedecl116013_ '#f))
          (if (let ((__tmp117234
                     (let ()
                       (declare (not safe))
                       (##structure-length _self116006_))))
                (declare (not safe))
                (##fx< '5 __tmp117234))
              (begin
                (let ((__tmp117229
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116006_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116006_
                   _id116007_
                   '1
                   __tmp117229
                   '#f))
                (let ((__tmp117230
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116006_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116006_
                   _arity116008_
                   '2
                   __tmp117230
                   '#f))
                (let ((__tmp117231
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116006_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116006_
                   _dispatch116009_
                   '3
                   __tmp117231
                   '#f))
                (let ((__tmp117232
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116006_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116006_
                   _inline116011_
                   '4
                   __tmp117232
                   '#f))
                (let ((__tmp117233
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116006_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116006_
                   _typedecl116013_
                   '5
                   __tmp117233
                   '#f)))
              (let ((__tmp117228
                     (let ()
                       (declare (not safe))
                       (##vector-length _self116006_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self116006_
                       '5
                       __tmp117228))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self116015_
               _id116016_
               _arity116017_
               _dispatch116018_
               _inline116019_)
        (let ((_typedecl116021_ '#f))
          (if (let ((__tmp117241
                     (let ()
                       (declare (not safe))
                       (##structure-length _self116015_))))
                (declare (not safe))
                (##fx< '5 __tmp117241))
              (begin
                (let ((__tmp117236
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116015_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116015_
                   _id116016_
                   '1
                   __tmp117236
                   '#f))
                (let ((__tmp117237
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116015_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116015_
                   _arity116017_
                   '2
                   __tmp117237
                   '#f))
                (let ((__tmp117238
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116015_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116015_
                   _dispatch116018_
                   '3
                   __tmp117238
                   '#f))
                (let ((__tmp117239
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116015_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116015_
                   _inline116019_
                   '4
                   __tmp117239
                   '#f))
                (let ((__tmp117240
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116015_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116015_
                   _typedecl116021_
                   '5
                   __tmp117240
                   '#f)))
              (let ((__tmp117235
                     (let ()
                       (declare (not safe))
                       (##vector-length _self116015_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self116015_
                       '5
                       __tmp117235))))))
    (define gxc#!lambda:::init!
      (lambda _g117243_
        (let ((_g117242_ (let () (declare (not safe)) (##length _g117243_))))
          (cond ((let () (declare (not safe)) (##fx= _g117242_ 4))
                 (apply (lambda (_self116006_
                                 _id116007_
                                 _arity116008_
                                 _dispatch116009_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self116006_
                             _id116007_
                             _arity116008_
                             _dispatch116009_)))
                        _g117243_))
                ((let () (declare (not safe)) (##fx= _g117242_ 5))
                 (apply (lambda (_self116015_
                                 _id116016_
                                 _arity116017_
                                 _dispatch116018_
                                 _inline116019_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self116015_
                             _id116016_
                             _arity116017_
                             _dispatch116018_
                             _inline116019_)))
                        _g117243_))
                ((let () (declare (not safe)) (##fx= _g117242_ 6))
                 (apply (lambda (_self116023_
                                 _id116024_
                                 _arity116025_
                                 _dispatch116026_
                                 _inline116027_
                                 _typedecl116028_)
                          (if (let ((__tmp117250
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self116023_))))
                                (declare (not safe))
                                (##fx< '5 __tmp117250))
                              (begin
                                (let ((__tmp117245
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116023_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116023_
                                   _id116024_
                                   '1
                                   __tmp117245
                                   '#f))
                                (let ((__tmp117246
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116023_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116023_
                                   _arity116025_
                                   '2
                                   __tmp117246
                                   '#f))
                                (let ((__tmp117247
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116023_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116023_
                                   _dispatch116026_
                                   '3
                                   __tmp117247
                                   '#f))
                                (let ((__tmp117248
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116023_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116023_
                                   _inline116027_
                                   '4
                                   __tmp117248
                                   '#f))
                                (let ((__tmp117249
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116023_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116023_
                                   _typedecl116028_
                                   '5
                                   __tmp117249
                                   '#f)))
                              (let ((__tmp117244
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self116023_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self116023_
                                       '5
                                       __tmp117244))))
                        _g117243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g117243_))))))
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
      (lambda (_self115748_ . _args115749_)
        (apply struct-instance-init! _self115748_ _args115749_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type115623_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115623_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type115623_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass115616_)
        (let ((_$e115618_
               (##structure-ref _klass115616_ '11 gxc#!class::t '#f)))
          (if _$e115618_
              _$e115618_
              (let ((_tab115621_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass115616_
                 _tab115621_
                 '11
                 gxc#!class::t
                 '#f)
                _tab115621_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass115607_ _method115608_)
        (let ((_tab115609115611_
               (##structure-ref _klass115607_ '11 gxc#!class::t '#f)))
          (if _tab115609115611_
              (let ((_tab115614_ _tab115609115611_))
                (declare (not safe))
                (hash-get _tab115614_ _method115608_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type115604_ _method115605_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115604_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type115604_ _method115605_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym115588_ _type115589_ _local?115590_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115589_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym115588_
                     _type115589_)))
        (let ((__tmp117251
               (let () (declare (not safe)) (struct->list _type115589_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym115588_ '" " __tmp117251))
        (let ((__tmp117252
               (if _local?115590_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp117252 _sym115588_ _type115589_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym115595_ _type115596_)
        (let ((_local?115598_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym115595_
           _type115596_
           _local?115598_))))
    (define gxc#optimizer-declare-type!
      (lambda _g117254_
        (let ((_g117253_ (let () (declare (not safe)) (##length _g117254_))))
          (cond ((let () (declare (not safe)) (##fx= _g117253_ 2))
                 (apply (lambda (_sym115595_ _type115596_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym115595_
                             _type115596_)))
                        _g117254_))
                ((let () (declare (not safe)) (##fx= _g117253_ 3))
                 (apply (lambda (_sym115600_ _type115601_ _local?115602_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym115600_
                             _type115601_
                             _local?115602_)))
                        _g117254_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g117254_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym115574_ _local?115575_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym115574_))
        (let ((__tmp117255
               (if _local?115575_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp117255 _sym115574_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym115580_)
        (let ((_local?115582_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym115580_ _local?115582_))))
    (define gxc#optimizer-clear-type!
      (lambda _g117257_
        (let ((_g117256_ (let () (declare (not safe)) (##length _g117257_))))
          (cond ((let () (declare (not safe)) (##fx= _g117256_ 1))
                 (apply (lambda (_sym115580_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym115580_)))
                        _g117257_))
                ((let () (declare (not safe)) (##fx= _g117256_ 2))
                 (apply (lambda (_sym115584_ _local?115585_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym115584_
                             _local?115585_)))
                        _g117257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g117257_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t115542_ _method115543_ _sym115544_ _rebind?115545_)
        (let* ((_type115547_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t115542_)))
               (_$e115549_
                (let () (declare (not safe)) (gxc#!type-vtab _type115547_))))
          (if _$e115549_
              ((lambda (_vtab115552_)
                 (let ((_$e115554_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab115552_ _method115543_))))
                   (if _$e115554_
                       ((lambda (_existing115557_)
                          (if _rebind?115545_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t115542_
                                   '" "
                                   _method115543_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab115552_
                                   _method115543_
                                   _sym115544_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing115557_ _sym115544_))
                                  '#!void
                                  (let ((__tmp117262
                                         (let ((__tmp117263
                                                (let ((__tmp117264
                                                       (let ((__tmp117265
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym115544_ '()))))
                 (declare (not safe))
                 (cons _method115543_ __tmp117265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t115542_
                                                        __tmp117264))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp117263))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp117262
                                     _method115543_)))))
                        _$e115554_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t115542_
                            '" "
                            _method115543_
                            '" => "
                            _sym115544_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab115552_
                            _method115543_
                            _sym115544_))))))
               _$e115549_)
              (if (let () (declare (not safe)) (not _type115547_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t115542_))
                  (let ((__tmp117258
                         (let ((__tmp117259
                                (let ((__tmp117260
                                       (let ((__tmp117261
                                              (let ()
                                                (declare (not safe))
                                                (cons _method115543_ '()))))
                                         (declare (not safe))
                                         (cons _sym115544_ __tmp117261))))
                                  (declare (not safe))
                                  (cons _type-t115542_ __tmp117260))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp117259))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp117258
                     _type115547_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t115562_ _method115563_ _sym115564_)
        (let ((_rebind?115566_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t115562_
           _method115563_
           _sym115564_
           _rebind?115566_))))
    (define gxc#optimizer-declare-method!
      (lambda _g117267_
        (let ((_g117266_ (let () (declare (not safe)) (##length _g117267_))))
          (cond ((let () (declare (not safe)) (##fx= _g117266_ 3))
                 (apply (lambda (_type-t115562_ _method115563_ _sym115564_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t115562_
                             _method115563_
                             _sym115564_)))
                        _g117267_))
                ((let () (declare (not safe)) (##fx= _g117266_ 4))
                 (apply (lambda (_type-t115568_
                                 _method115569_
                                 _sym115570_
                                 _rebind?115571_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t115568_
                             _method115569_
                             _sym115570_
                             _rebind?115571_)))
                        _g117267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g117267_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym115530_)
        (let ((_$e115538_
               (let ((_ht115531115533_ (gxc#current-compile-local-type)))
                 (if _ht115531115533_
                     (let ((_ht115536_ _ht115531115533_))
                       (declare (not safe))
                       (hash-get _ht115536_ _sym115530_))
                     '#f))))
          (if _$e115538_
              _$e115538_
              (let ((__tmp117268
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp117268 _sym115530_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym115522_)
        (let ((_type115523115525_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym115522_))))
          (if _type115523115525_
              (let ((_type115528_ _type115523115525_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type115528_ 'gxc#!alias::t))
                    (let ((__tmp117269
                           (##structure-ref _type115528_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp117269))
                    _type115528_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where115514_ _klass-id115515_)
        (let ((_$e115517_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id115515_))))
          (if _$e115517_
              ((lambda (_klass115520_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass115520_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where115514_
                        _klass-id115515_
                        _klass115520_)))
                 _klass115520_)
               _$e115517_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where115514_
                 _klass-id115515_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t115511_ _method115512_)
        (let ((__tmp117270
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t115511_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp117270 _method115512_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym115509_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym115509_))
        (let ((__tmp117271
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp117271 _sym115509_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym115507_)
        (let ((__tmp117272
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp117272 _sym115507_))))
    (define gxc#identifier-symbol
      (lambda (_stx115505_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx115505_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx115505_))
            (let () (declare (not safe)) (gx#stx-e _stx115505_)))))))
