(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710833425)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp117122 (list))
            (__tmp117120
             (let ((__tmp117121
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117121 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp117122
         '(type ssxi methods)
         __tmp117120
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args117056_
        (apply make-instance gxc#optimizer-info::t _$args117056_)))
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
      (lambda (_self117054_)
        (if (let ((__tmp117130
                   (let ()
                     (declare (not safe))
                     (##structure-length _self117054_))))
              (declare (not safe))
              (##fx< '3 __tmp117130))
            (begin
              (let ((__tmp117125
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117124
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117054_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117054_
                 __tmp117125
                 '1
                 __tmp117124
                 '#f))
              (let ((__tmp117127
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117126
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117054_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117054_
                 __tmp117127
                 '2
                 __tmp117126
                 '#f))
              (let ((__tmp117129
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117128
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117054_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117054_
                 __tmp117129
                 '3
                 __tmp117128
                 '#f)))
            (let ((__tmp117123
                   (let ()
                     (declare (not safe))
                     (##vector-length _self117054_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self117054_
                     '3
                     __tmp117123)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp117133 (list))
            (__tmp117131
             (let ((__tmp117132
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117132 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp117133
         '(id)
         __tmp117131
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args116929_ (apply make-instance gxc#!type::t _$args116929_)))
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
      (let ((__tmp117136 (list gxc#!type::t))
            (__tmp117134
             (let ((__tmp117135
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117135 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp117136
         '()
         __tmp117134
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args116926_ (apply make-instance gxc#!alias::t _$args116926_)))
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
      (let ((__tmp117139 (list gxc#!type::t))
            (__tmp117137
             (let ((__tmp117138
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117138 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp117139
         '()
         __tmp117137
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args116923_
        (apply make-instance gxc#!procedure::t _$args116923_)))
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
      (let ((__tmp117142 (list gxc#!type::t))
            (__tmp117140
             (let ((__tmp117141
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117141 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp117142
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp117140
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args116920_ (apply make-instance gxc#!class::t _$args116920_)))
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
      (let ((__tmp117145 (list gxc#!procedure::t))
            (__tmp117143
             (let ((__tmp117144
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117144 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp117145
         '()
         __tmp117143
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args116917_
        (apply make-instance gxc#!predicate::t _$args116917_)))
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
      (let ((__tmp117148 (list gxc#!procedure::t))
            (__tmp117146
             (let ((__tmp117147
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117147 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp117148
         '()
         __tmp117146
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args116914_
        (apply make-instance gxc#!constructor::t _$args116914_)))
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
      (let ((__tmp117151 (list gxc#!procedure::t))
            (__tmp117149
             (let ((__tmp117150
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117150 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp117151
         '(slot checked?)
         __tmp117149
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args116911_
        (apply make-instance gxc#!accessor::t _$args116911_)))
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
      (let ((__tmp117154 (list gxc#!procedure::t))
            (__tmp117152
             (let ((__tmp117153
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117153 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp117154
         '(slot checked?)
         __tmp117152
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args116908_
        (apply make-instance gxc#!mutator::t _$args116908_)))
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
      (let ((__tmp117157 (list gxc#!procedure::t))
            (__tmp117155
             (let ((__tmp117156
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117156 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp117157
         '(arity dispatch inline inline-typedecl)
         __tmp117155
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args116905_
        (apply make-instance gxc#!lambda::t _$args116905_)))
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
      (let ((__tmp117160 (list gxc#!procedure::t))
            (__tmp117158
             (let ((__tmp117159
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117159 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp117160
         '(clauses)
         __tmp117158
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args116902_
        (apply make-instance gxc#!case-lambda::t _$args116902_)))
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
      (let ((__tmp117163 (list gxc#!procedure::t))
            (__tmp117161
             (let ((__tmp117162
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117162 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp117163
         '(table dispatch)
         __tmp117161
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args116899_
        (apply make-instance gxc#!kw-lambda::t _$args116899_)))
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
      (let ((__tmp117166 (list gxc#!procedure::t))
            (__tmp117164
             (let ((__tmp117165
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117165 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp117166
         '(keys main)
         __tmp117164
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args116896_
        (apply make-instance gxc#!kw-lambda-primary::t _$args116896_)))
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
      (let ((__tmp117167 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp117167
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args116893_
        (apply make-instance gxc#!primitive::t _$args116893_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp117168 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp117168
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args116890_
        (apply make-instance gxc#!primitive-lambda::t _$args116890_)))
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
      (let ((__tmp117169 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp117169
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args116887_
        (apply make-instance gxc#!primitive-case-lambda::t _$args116887_)))
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
      (lambda (_self116767_
               _id116768_
               _super116769_
               _slots116770_
               _ctor-method116771_
               _struct?116772_
               _final?116773_
               _system?116774_
               _metaclass116775_)
        (let _lp116777_ ((_rest116779_ _super116769_))
          (let* ((_rest116780116788_ _rest116779_)
                 (_else116782116796_ (lambda () '#!void))
                 (_K116784116802_
                  (lambda (_rest116799_ _super-id116800_)
                    (if (##structure-ref
                         (let ((__tmp117172
                                (let ((__tmp117173
                                       (let ()
                                         (declare (not safe))
                                         (cons _id116768_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp117173))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp117172
                            _super-id116800_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp117170
                               (let ((__tmp117171
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116768_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp117171))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp117170
                           _super-id116800_))
                        '#!void)
                    (let () (declare (not safe)) (_lp116777_ _rest116799_)))))
            (if (let () (declare (not safe)) (##pair? _rest116780116788_))
                (let ((_hd116785116805_
                       (let ()
                         (declare (not safe))
                         (##car _rest116780116788_)))
                      (_tl116786116807_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116780116788_))))
                  (let* ((_super-id116810_ _hd116785116805_)
                         (_rest116812_ _tl116786116807_))
                    (declare (not safe))
                    (_K116784116802_ _rest116812_ _super-id116810_)))
                '#!void)))
        (let* ((_ctor-method116862_
                (let ((_$e116814_ _ctor-method116771_))
                  (if _$e116814_
                      _$e116814_
                      (let _lp116817_ ((_rest116819_ _super116769_)
                                       (_method116820_ '#f))
                        (let* ((_rest116821116829_ _rest116819_)
                               (_else116823116837_ (lambda () _method116820_))
                               (_K116825116850_
                                (lambda (_rest116840_ _super-id116841_)
                                  (let* ((_klass116843_
                                          (let ((__tmp117174
                                                 (let ((__tmp117175
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id116768_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp117175))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp117174
                                             _super-id116841_)))
                                         (_$e116845_
                                          (##structure-ref
                                           _klass116843_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e116845_
                                        ((lambda (_ctor-method116848_)
                                           (if _method116820_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method116848_
                                                          _method116820_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp116817_
                                                      _rest116840_
                                                      _ctor-method116848_))
                                                   (let ((__tmp117176
                                                          (let ((__tmp117177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id116768_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp117177))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp117176
                                                      _method116820_
                                                      _ctor-method116848_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp116817_
                                                  _rest116840_
                                                  _ctor-method116848_))))
                                         _$e116845_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp116817_
                                           _rest116840_
                                           _method116820_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest116821116829_))
                              (let ((_hd116826116853_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest116821116829_)))
                                    (_tl116827116855_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest116821116829_))))
                                (let* ((_super-id116858_ _hd116826116853_)
                                       (_rest116860_ _tl116827116855_))
                                  (declare (not safe))
                                  (_K116825116850_
                                   _rest116860_
                                   _super-id116858_)))
                              (let ()
                                (declare (not safe))
                                (_else116823116837_))))))))
               (_g117178_
                (let ((__tmp117183
                       (lambda (_klass-id116864_)
                         (let ((__tmp117184
                                (##structure-ref
                                 (let ((__tmp117185
                                        (let ((__tmp117186
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116768_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp117186))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp117185
                                    _klass-id116864_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id116864_ __tmp117184))))
                      (__tmp117180
                       (lambda (_klass-id116866_)
                         (##structure-ref
                          (let ((__tmp117181
                                 (let ((__tmp117182
                                        (let ()
                                          (declare (not safe))
                                          (cons _id116768_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp117182))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp117181
                             _klass-id116866_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super116769_
                   'get-precedence-list:
                   __tmp117183
                   'struct:
                   __tmp117180
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g117179_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g117178_)
                         (##vector-length _g117178_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g117179_ 2)))
                  (error "Context expects 2 values" _g117179_)))
            (let ((_precedence-list116868_
                   (let () (declare (not safe)) (##vector-ref _g117178_ 0)))
                  (_base-struct116869_
                   (let () (declare (not safe)) (##vector-ref _g117178_ 1))))
              (let ((_fields116871_
                     (let ((__tmp117187
                            (let ((__tmp117188
                                   (let ()
                                     (declare (not safe))
                                     (cons _id116768_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp117188))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp117187
                        _base-struct116869_
                        _precedence-list116868_
                        _slots116770_))))
                (##structure-set! _self116767_ _id116768_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self116767_
                 _super116769_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116767_
                 _precedence-list116868_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116767_
                 _slots116770_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116767_
                 _fields116871_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116767_
                 _ctor-method116862_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116767_
                 _struct?116772_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116767_
                 _final?116773_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116767_
                 _metaclass116775_
                 '10
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self116874_
               _id116875_
               _super116876_
               _precedence-list116877_
               _slots116878_
               _fields116879_
               _constructor116880_
               _struct?116881_
               _final?116882_
               _system?116883_
               _metaclass116884_
               _methods116885_)
        (##structure-set! _self116874_ _id116875_ '1 gxc#!type::t '#f)
        (##structure-set! _self116874_ _super116876_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self116874_
         _precedence-list116877_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self116874_ _slots116878_ '4 gxc#!class::t '#f)
        (##structure-set! _self116874_ _fields116879_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self116874_
         _constructor116880_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self116874_ _struct?116881_ '7 gxc#!class::t '#f)
        (##structure-set! _self116874_ _final?116882_ '8 gxc#!class::t '#f)
        (##structure-set! _self116874_ _metaclass116884_ '10 gxc#!class::t '#f)
        (if _methods116885_
            (##structure-set!
             _self116874_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods116885_))
             '11
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g117190_
        (let ((_g117189_ (let () (declare (not safe)) (##length _g117190_))))
          (cond ((let () (declare (not safe)) (##fx= _g117189_ 9))
                 (apply (lambda (_self116767_
                                 _id116768_
                                 _super116769_
                                 _slots116770_
                                 _ctor-method116771_
                                 _struct?116772_
                                 _final?116773_
                                 _system?116774_
                                 _metaclass116775_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self116767_
                             _id116768_
                             _super116769_
                             _slots116770_
                             _ctor-method116771_
                             _struct?116772_
                             _final?116773_
                             _system?116774_
                             _metaclass116775_)))
                        _g117190_))
                ((let () (declare (not safe)) (##fx= _g117189_ 12))
                 (apply (lambda (_self116874_
                                 _id116875_
                                 _super116876_
                                 _precedence-list116877_
                                 _slots116878_
                                 _fields116879_
                                 _constructor116880_
                                 _struct?116881_
                                 _final?116882_
                                 _system?116883_
                                 _metaclass116884_
                                 _methods116885_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self116874_
                             _id116875_
                             _super116876_
                             _precedence-list116877_
                             _slots116878_
                             _fields116879_
                             _constructor116880_
                             _struct?116881_
                             _final?116882_
                             _system?116883_
                             _metaclass116884_
                             _methods116885_)))
                        _g117190_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g117190_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass117058 __method-table117059)
        (let ((__id117060
               (let ((__slot117070
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117058 'id))))
                 (if __slot117070
                     __slot117070
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super117061
               (let ((__slot117071
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117058 'super))))
                 (if __slot117071
                     __slot117071
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__constructor117062
               (let ((__slot117072
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117058 'constructor))))
                 (if __slot117072
                     __slot117072
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__fields117063
               (let ((__slot117073
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117058 'fields))))
                 (if __slot117073
                     __slot117073
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__final?117064
               (let ((__slot117074
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117058 'final?))))
                 (if __slot117074
                     __slot117074
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__slots117065
               (let ((__slot117075
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117058 'slots))))
                 (if __slot117075
                     __slot117075
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__precedence-list117066
               (let ((__slot117076
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117058 'precedence-list))))
                 (if __slot117076
                     __slot117076
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__struct?117067
               (let ((__slot117077
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117058 'struct?))))
                 (if __slot117077
                     __slot117077
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__metaclass117068
               (let ((__slot117078
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117058 'metaclass))))
                 (if __slot117078
                     __slot117078
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__methods117069
               (let ((__slot117079
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117058 'methods))))
                 (if __slot117079
                     __slot117079
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods))))))
          (lambda _g117192_
            (let ((_g117191_
                   (let () (declare (not safe)) (##length _g117192_))))
              (cond ((let () (declare (not safe)) (##fx= _g117191_ 9))
                     (apply (lambda (_self116767_
                                     _id116768_
                                     _super116769_
                                     _slots116770_
                                     _ctor-method116771_
                                     _struct?116772_
                                     _final?116773_
                                     _system?116774_
                                     _metaclass116775_)
                              (let _lp116777_ ((_rest116779_ _super116769_))
                                (let* ((_rest116780116788_ _rest116779_)
                                       (_else116782116796_ (lambda () '#!void))
                                       (_K116784116802_
                                        (lambda (_rest116799_ _super-id116800_)
                                          (if (##structure-ref
                                               (let ((__tmp117195
                                                      (let ((__tmp117196
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id116768_ '()))))
                (declare (not safe))
                (cons '!class __tmp117196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp117195
                                                  _super-id116800_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp117193
                                                     (let ((__tmp117194
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id116768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp117194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp117193
                                                 _super-id116800_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp116777_ _rest116799_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest116780116788_))
                                      (let ((_hd116785116805_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest116780116788_)))
                                            (_tl116786116807_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest116780116788_))))
                                        (let* ((_super-id116810_
                                                _hd116785116805_)
                                               (_rest116812_ _tl116786116807_))
                                          (declare (not safe))
                                          (_K116784116802_
                                           _rest116812_
                                           _super-id116810_)))
                                      '#!void)))
                              (let* ((_ctor-method116862_
                                      (let ((_$e116814_ _ctor-method116771_))
                                        (if _$e116814_
                                            _$e116814_
                                            (let _lp116817_ ((_rest116819_
                                                              _super116769_)
                                                             (_method116820_
                                                              '#f))
                                              (let* ((_rest116821116829_
                                                      _rest116819_)
                                                     (_else116823116837_
                                                      (lambda ()
                                                        _method116820_))
                                                     (_K116825116850_
                                                      (lambda (_rest116840_
                                                               _super-id116841_)
                                                        (let* ((_klass116843_
                                                                (let ((__tmp117197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp117198
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116768_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp117198))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp117197
                           _super-id116841_)))
                       (_$e116845_
                        (##structure-ref _klass116843_ '6 gxc#!class::t '#f)))
                  (if _$e116845_
                      ((lambda (_ctor-method116848_)
                         (if _method116820_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method116848_ _method116820_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp116817_
                                    _rest116840_
                                    _ctor-method116848_))
                                 (let ((__tmp117199
                                        (let ((__tmp117200
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116768_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp117200))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp117199
                                    _method116820_
                                    _ctor-method116848_)))
                             (let ()
                               (declare (not safe))
                               (_lp116817_ _rest116840_ _ctor-method116848_))))
                       _$e116845_)
                      (let ()
                        (declare (not safe))
                        (_lp116817_ _rest116840_ _method116820_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest116821116829_))
                                                    (let ((_hd116826116853_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest116821116829_)))
                                                          (_tl116827116855_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest116821116829_))))
                                                      (let* ((_super-id116858_
                                                              _hd116826116853_)
                                                             (_rest116860_
                                                              _tl116827116855_))
                                                        (declare (not safe))
                                                        (_K116825116850_
                                                         _rest116860_
                                                         _super-id116858_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else116823116837_))))))))
                                     (_g117201_
                                      (let ((__tmp117206
                                             (lambda (_klass-id116864_)
                                               (let ((__tmp117207
                                                      (##structure-ref
                                                       (let ((__tmp117208
                                                              (let ((__tmp117209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id116768_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp117209))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp117208 _klass-id116864_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id116864_
                                                       __tmp117207))))
                                            (__tmp117203
                                             (lambda (_klass-id116866_)
                                               (##structure-ref
                                                (let ((__tmp117204
                                                       (let ((__tmp117205
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id116768_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp117205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp117204
                                                   _klass-id116866_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super116769_
                                         'get-precedence-list:
                                         __tmp117206
                                         'struct:
                                         __tmp117203
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g117202_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117201_)
                                               (##vector-length _g117201_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117202_ 2)))
                                        (error "Context expects 2 values"
                                               _g117202_)))
                                  (let ((_precedence-list116868_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117201_ 0)))
                                        (_base-struct116869_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117201_ 1))))
                                    (let ((_fields116871_
                                           (let ((__tmp117210
                                                  (let ((__tmp117211
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id116768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp117211))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp117210
                                              _base-struct116869_
                                              _precedence-list116868_
                                              _slots116770_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116767_
                                         _id116768_
                                         __id117060
                                         __klass117058
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116767_
                                         _super116769_
                                         __super117061
                                         __klass117058
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116767_
                                         _precedence-list116868_
                                         __precedence-list117066
                                         __klass117058
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116767_
                                         _slots116770_
                                         __slots117065
                                         __klass117058
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116767_
                                         _fields116871_
                                         __fields117063
                                         __klass117058
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116767_
                                         _ctor-method116862_
                                         __constructor117062
                                         __klass117058
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116767_
                                         _struct?116772_
                                         __struct?117067
                                         __klass117058
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116767_
                                         _final?116773_
                                         __final?117064
                                         __klass117058
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116767_
                                         _metaclass116775_
                                         __metaclass117068
                                         __klass117058
                                         '#f)))))))
                            _g117192_))
                    ((let () (declare (not safe)) (##fx= _g117191_ 12))
                     (apply (lambda (_self116874_
                                     _id116875_
                                     _super116876_
                                     _precedence-list116877_
                                     _slots116878_
                                     _fields116879_
                                     _constructor116880_
                                     _struct?116881_
                                     _final?116882_
                                     _system?116883_
                                     _metaclass116884_
                                     _methods116885_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116874_
                                 _id116875_
                                 __id117060
                                 __klass117058
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116874_
                                 _super116876_
                                 __super117061
                                 __klass117058
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116874_
                                 _precedence-list116877_
                                 __precedence-list117066
                                 __klass117058
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116874_
                                 _slots116878_
                                 __slots117065
                                 __klass117058
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116874_
                                 _fields116879_
                                 __fields117063
                                 __klass117058
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116874_
                                 _constructor116880_
                                 __constructor117062
                                 __klass117058
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116874_
                                 _struct?116881_
                                 __struct?117067
                                 __klass117058
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116874_
                                 _final?116882_
                                 __final?117064
                                 __klass117058
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116874_
                                 _metaclass116884_
                                 __metaclass117068
                                 __klass117058
                                 '#f))
                              (if _methods116885_
                                  (let ((__tmp117212
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods116885_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self116874_
                                     __tmp117212
                                     __methods117069
                                     __klass117058
                                     '#f))
                                  '#!void))
                            _g117192_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g117192_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where116619_
               _base-struct116620_
               _precedence-list116621_
               _direct-slots116622_)
        (let* ((_base-fields116624_
                (if _base-struct116620_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where116619_
                        _base-struct116620_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields116626_ (reverse _base-fields116624_))
               (_seen-slots116634_
                (let ((_tab116628_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g116629116631_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab116628_ _g116629116631_ '#t)))
                   _base-fields116624_)
                  _tab116628_))
               (_process-slot116638_
                (lambda (_slot116636_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots116634_ _slot116636_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots116634_ _slot116636_ '#t))
                        (set! _r-fields116626_
                              (let ()
                                (declare (not safe))
                                (cons _slot116636_ _r-fields116626_))))))))
          (for-each
           (lambda (_mixin116641_)
             (let ((_klass116643_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where116619_
                       _mixin116641_))))
               (if (##structure-ref _klass116643_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot116638_
                    (##structure-ref _klass116643_ '5 gxc#!class::t '#f)))))
           _precedence-list116621_)
          (for-each _process-slot116638_ _direct-slots116622_)
          (reverse _r-fields116626_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass116578_ _slot116579_)
        (let _lp116581_ ((_rest116583_
                          (##structure-ref _klass116578_ '5 gxc#!class::t '#f))
                         (_offset116584_ '1))
          (let* ((_rest116585116593_ _rest116583_)
                 (_else116587116601_
                  (lambda ()
                    (let ((__tmp117214
                           (##structure-ref _klass116578_ '1 gxc#!type::t '#f))
                          (__tmp117213
                           (##structure-ref
                            _klass116578_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp117214
                       __tmp117213
                       _slot116579_))))
                 (_K116589116607_
                  (lambda (_rest116604_ _s116605_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s116605_ _slot116579_))
                        _offset116584_
                        (let ((__tmp117215
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset116584_ '1))))
                          (declare (not safe))
                          (_lp116581_ _rest116604_ __tmp117215))))))
            (if (let () (declare (not safe)) (##pair? _rest116585116593_))
                (let ((_hd116590116610_
                       (let ()
                         (declare (not safe))
                         (##car _rest116585116593_)))
                      (_tl116591116612_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116585116593_))))
                  (let* ((_s116615_ _hd116590116610_)
                         (_rest116617_ _tl116591116612_))
                    (declare (not safe))
                    (_K116589116607_ _rest116617_ _s116615_)))
                (let () (declare (not safe)) (_else116587116601_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass116536_ _slot116537_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass116536_ _slot116537_))
            _klass116536_
            (let _lp116539_ ((_rest116541_
                              (##structure-ref
                               _klass116536_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest116542116550_ _rest116541_)
                     (_else116544116558_ (lambda () '#f))
                     (_K116546116566_
                      (lambda (_rest116561_ _super116562_)
                        (let ((_super-class116564_
                               (let ((__tmp117216
                                      (let ((__tmp117217
                                             (let ((__tmp117219
                                                    (##structure-ref
                                                     _klass116536_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp117218
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot116537_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp117219
                                                     __tmp117218))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp117217))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp117216
                                  _super116562_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class116564_
                                 _slot116537_))
                              _super-class116564_
                              (let ()
                                (declare (not safe))
                                (_lp116539_ _rest116561_)))))))
                (if (let () (declare (not safe)) (##pair? _rest116542116550_))
                    (let ((_hd116547116569_
                           (let ()
                             (declare (not safe))
                             (##car _rest116542116550_)))
                          (_tl116548116571_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest116542116550_))))
                      (let* ((_super116574_ _hd116547116569_)
                             (_rest116576_ _tl116548116571_))
                        (declare (not safe))
                        (_K116546116566_ _rest116576_ _super116574_)))
                    (let () (declare (not safe)) (_else116544116558_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass116533_ _slot116534_)
        (if (##structure-ref _klass116533_ '7 gxc#!class::t '#f)
            (memq _slot116534_
                  (##structure-ref _klass116533_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self116530_ _id116531_)
        (##structure-set! _self116530_ _id116531_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
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
          (lambda (_self116530_ _id116531_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116530_
               _id116531_
               __id117082
               __klass117080
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
      (lambda (_self116405_ _id116406_)
        (##structure-set! _self116405_ _id116406_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass117084 __method-table117085)
        (let ((__id117086
               (let ((__slot117087
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117084 'id))))
                 (if __slot117087
                     __slot117087
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116405_ _id116406_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116405_
               _id116406_
               __id117086
               __klass117084
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
      (lambda (_self116278_ _id116279_ _slot116280_ _checked?116281_)
        (##structure-set! _self116278_ _id116279_ '1 gxc#!type::t '#f)
        (##structure-set! _self116278_ _slot116280_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self116278_
         _checked?116281_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass117088 __method-table117089)
        (let ((__slot117090
               (let ((__slot117093
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117088 'slot))))
                 (if __slot117093
                     __slot117093
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id117091
               (let ((__slot117094
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117088 'id))))
                 (if __slot117094
                     __slot117094
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?117092
               (let ((__slot117095
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117088 'checked?))))
                 (if __slot117095
                     __slot117095
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self116278_ _id116279_ _slot116280_ _checked?116281_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116278_
               _id116279_
               __id117091
               __klass117088
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116278_
               _slot116280_
               __slot117090
               __klass117088
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116278_
               _checked?116281_
               __checked?117092
               __klass117088
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
      (lambda (_self116151_ _id116152_ _slot116153_ _checked?116154_)
        (##structure-set! _self116151_ _id116152_ '1 gxc#!type::t '#f)
        (##structure-set! _self116151_ _slot116153_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self116151_
         _checked?116154_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass117096 __method-table117097)
        (let ((__slot117098
               (let ((__slot117101
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117096 'slot))))
                 (if __slot117101
                     __slot117101
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id117099
               (let ((__slot117102
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117096 'id))))
                 (if __slot117102
                     __slot117102
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?117100
               (let ((__slot117103
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117096 'checked?))))
                 (if __slot117103
                     __slot117103
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self116151_ _id116152_ _slot116153_ _checked?116154_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116151_
               _id116152_
               __id117099
               __klass117096
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116151_
               _slot116153_
               __slot117098
               __klass117096
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116151_
               _checked?116154_
               __checked?117100
               __klass117096
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
      (lambda (_self115995_
               _id115996_
               _arity115997_
               _dispatch115998_
               _inline115999_
               _typedecl116000_)
        (if (let ((__tmp117226
                   (let ()
                     (declare (not safe))
                     (##structure-length _self115995_))))
              (declare (not safe))
              (##fx< '5 __tmp117226))
            (begin
              (let ((__tmp117221
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115995_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115995_
                 _id115996_
                 '1
                 __tmp117221
                 '#f))
              (let ((__tmp117222
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115995_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115995_
                 _arity115997_
                 '2
                 __tmp117222
                 '#f))
              (let ((__tmp117223
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115995_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115995_
                 _dispatch115998_
                 '3
                 __tmp117223
                 '#f))
              (let ((__tmp117224
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115995_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115995_
                 _inline115999_
                 '4
                 __tmp117224
                 '#f))
              (let ((__tmp117225
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115995_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115995_
                 _typedecl116000_
                 '5
                 __tmp117225
                 '#f)))
            (let ((__tmp117220
                   (let ()
                     (declare (not safe))
                     (##vector-length _self115995_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self115995_
                     '5
                     __tmp117220)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self116005_ _id116006_ _arity116007_ _dispatch116008_)
        (let* ((_inline116010_ '#f) (_typedecl116012_ '#f))
          (if (let ((__tmp117233
                     (let ()
                       (declare (not safe))
                       (##structure-length _self116005_))))
                (declare (not safe))
                (##fx< '5 __tmp117233))
              (begin
                (let ((__tmp117228
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116005_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116005_
                   _id116006_
                   '1
                   __tmp117228
                   '#f))
                (let ((__tmp117229
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116005_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116005_
                   _arity116007_
                   '2
                   __tmp117229
                   '#f))
                (let ((__tmp117230
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116005_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116005_
                   _dispatch116008_
                   '3
                   __tmp117230
                   '#f))
                (let ((__tmp117231
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116005_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116005_
                   _inline116010_
                   '4
                   __tmp117231
                   '#f))
                (let ((__tmp117232
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116005_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116005_
                   _typedecl116012_
                   '5
                   __tmp117232
                   '#f)))
              (let ((__tmp117227
                     (let ()
                       (declare (not safe))
                       (##vector-length _self116005_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self116005_
                       '5
                       __tmp117227))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self116014_
               _id116015_
               _arity116016_
               _dispatch116017_
               _inline116018_)
        (let ((_typedecl116020_ '#f))
          (if (let ((__tmp117240
                     (let ()
                       (declare (not safe))
                       (##structure-length _self116014_))))
                (declare (not safe))
                (##fx< '5 __tmp117240))
              (begin
                (let ((__tmp117235
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116014_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116014_
                   _id116015_
                   '1
                   __tmp117235
                   '#f))
                (let ((__tmp117236
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116014_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116014_
                   _arity116016_
                   '2
                   __tmp117236
                   '#f))
                (let ((__tmp117237
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116014_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116014_
                   _dispatch116017_
                   '3
                   __tmp117237
                   '#f))
                (let ((__tmp117238
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116014_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116014_
                   _inline116018_
                   '4
                   __tmp117238
                   '#f))
                (let ((__tmp117239
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116014_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116014_
                   _typedecl116020_
                   '5
                   __tmp117239
                   '#f)))
              (let ((__tmp117234
                     (let ()
                       (declare (not safe))
                       (##vector-length _self116014_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self116014_
                       '5
                       __tmp117234))))))
    (define gxc#!lambda:::init!
      (lambda _g117242_
        (let ((_g117241_ (let () (declare (not safe)) (##length _g117242_))))
          (cond ((let () (declare (not safe)) (##fx= _g117241_ 4))
                 (apply (lambda (_self116005_
                                 _id116006_
                                 _arity116007_
                                 _dispatch116008_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self116005_
                             _id116006_
                             _arity116007_
                             _dispatch116008_)))
                        _g117242_))
                ((let () (declare (not safe)) (##fx= _g117241_ 5))
                 (apply (lambda (_self116014_
                                 _id116015_
                                 _arity116016_
                                 _dispatch116017_
                                 _inline116018_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self116014_
                             _id116015_
                             _arity116016_
                             _dispatch116017_
                             _inline116018_)))
                        _g117242_))
                ((let () (declare (not safe)) (##fx= _g117241_ 6))
                 (apply (lambda (_self116022_
                                 _id116023_
                                 _arity116024_
                                 _dispatch116025_
                                 _inline116026_
                                 _typedecl116027_)
                          (if (let ((__tmp117249
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self116022_))))
                                (declare (not safe))
                                (##fx< '5 __tmp117249))
                              (begin
                                (let ((__tmp117244
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116022_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116022_
                                   _id116023_
                                   '1
                                   __tmp117244
                                   '#f))
                                (let ((__tmp117245
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116022_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116022_
                                   _arity116024_
                                   '2
                                   __tmp117245
                                   '#f))
                                (let ((__tmp117246
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116022_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116022_
                                   _dispatch116025_
                                   '3
                                   __tmp117246
                                   '#f))
                                (let ((__tmp117247
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116022_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116022_
                                   _inline116026_
                                   '4
                                   __tmp117247
                                   '#f))
                                (let ((__tmp117248
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116022_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116022_
                                   _typedecl116027_
                                   '5
                                   __tmp117248
                                   '#f)))
                              (let ((__tmp117243
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self116022_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self116022_
                                       '5
                                       __tmp117243))))
                        _g117242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g117242_))))))
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
      (lambda (_self115747_ . _args115748_)
        (apply struct-instance-init! _self115747_ _args115748_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type115622_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115622_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type115622_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass115615_)
        (let ((_$e115617_
               (##structure-ref _klass115615_ '11 gxc#!class::t '#f)))
          (if _$e115617_
              _$e115617_
              (let ((_tab115620_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass115615_
                 _tab115620_
                 '11
                 gxc#!class::t
                 '#f)
                _tab115620_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass115606_ _method115607_)
        (let ((_tab115608115610_
               (##structure-ref _klass115606_ '11 gxc#!class::t '#f)))
          (if _tab115608115610_
              (let ((_tab115613_ _tab115608115610_))
                (declare (not safe))
                (hash-get _tab115613_ _method115607_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type115603_ _method115604_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115603_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type115603_ _method115604_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym115587_ _type115588_ _local?115589_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115588_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym115587_
                     _type115588_)))
        (let ((__tmp117250
               (let () (declare (not safe)) (struct->list _type115588_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym115587_ '" " __tmp117250))
        (let ((__tmp117251
               (if _local?115589_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp117251 _sym115587_ _type115588_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym115594_ _type115595_)
        (let ((_local?115597_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym115594_
           _type115595_
           _local?115597_))))
    (define gxc#optimizer-declare-type!
      (lambda _g117253_
        (let ((_g117252_ (let () (declare (not safe)) (##length _g117253_))))
          (cond ((let () (declare (not safe)) (##fx= _g117252_ 2))
                 (apply (lambda (_sym115594_ _type115595_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym115594_
                             _type115595_)))
                        _g117253_))
                ((let () (declare (not safe)) (##fx= _g117252_ 3))
                 (apply (lambda (_sym115599_ _type115600_ _local?115601_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym115599_
                             _type115600_
                             _local?115601_)))
                        _g117253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g117253_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym115573_ _local?115574_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym115573_))
        (let ((__tmp117254
               (if _local?115574_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp117254 _sym115573_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym115579_)
        (let ((_local?115581_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym115579_ _local?115581_))))
    (define gxc#optimizer-clear-type!
      (lambda _g117256_
        (let ((_g117255_ (let () (declare (not safe)) (##length _g117256_))))
          (cond ((let () (declare (not safe)) (##fx= _g117255_ 1))
                 (apply (lambda (_sym115579_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym115579_)))
                        _g117256_))
                ((let () (declare (not safe)) (##fx= _g117255_ 2))
                 (apply (lambda (_sym115583_ _local?115584_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym115583_
                             _local?115584_)))
                        _g117256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g117256_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t115541_ _method115542_ _sym115543_ _rebind?115544_)
        (let* ((_type115546_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t115541_)))
               (_$e115548_
                (let () (declare (not safe)) (gxc#!type-vtab _type115546_))))
          (if _$e115548_
              ((lambda (_vtab115551_)
                 (let ((_$e115553_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab115551_ _method115542_))))
                   (if _$e115553_
                       ((lambda (_existing115556_)
                          (if _rebind?115544_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t115541_
                                   '" "
                                   _method115542_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab115551_
                                   _method115542_
                                   _sym115543_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing115556_ _sym115543_))
                                  '#!void
                                  (let ((__tmp117261
                                         (let ((__tmp117262
                                                (let ((__tmp117263
                                                       (let ((__tmp117264
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym115543_ '()))))
                 (declare (not safe))
                 (cons _method115542_ __tmp117264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t115541_
                                                        __tmp117263))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp117262))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp117261
                                     _method115542_)))))
                        _$e115553_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t115541_
                            '" "
                            _method115542_
                            '" => "
                            _sym115543_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab115551_
                            _method115542_
                            _sym115543_))))))
               _$e115548_)
              (if (let () (declare (not safe)) (not _type115546_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t115541_))
                  (let ((__tmp117257
                         (let ((__tmp117258
                                (let ((__tmp117259
                                       (let ((__tmp117260
                                              (let ()
                                                (declare (not safe))
                                                (cons _method115542_ '()))))
                                         (declare (not safe))
                                         (cons _sym115543_ __tmp117260))))
                                  (declare (not safe))
                                  (cons _type-t115541_ __tmp117259))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp117258))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp117257
                     _type115546_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t115561_ _method115562_ _sym115563_)
        (let ((_rebind?115565_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t115561_
           _method115562_
           _sym115563_
           _rebind?115565_))))
    (define gxc#optimizer-declare-method!
      (lambda _g117266_
        (let ((_g117265_ (let () (declare (not safe)) (##length _g117266_))))
          (cond ((let () (declare (not safe)) (##fx= _g117265_ 3))
                 (apply (lambda (_type-t115561_ _method115562_ _sym115563_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t115561_
                             _method115562_
                             _sym115563_)))
                        _g117266_))
                ((let () (declare (not safe)) (##fx= _g117265_ 4))
                 (apply (lambda (_type-t115567_
                                 _method115568_
                                 _sym115569_
                                 _rebind?115570_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t115567_
                             _method115568_
                             _sym115569_
                             _rebind?115570_)))
                        _g117266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g117266_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym115529_)
        (let ((_$e115537_
               (let ((_ht115530115532_ (gxc#current-compile-local-type)))
                 (if _ht115530115532_
                     (let ((_ht115535_ _ht115530115532_))
                       (declare (not safe))
                       (hash-get _ht115535_ _sym115529_))
                     '#f))))
          (if _$e115537_
              _$e115537_
              (let ((__tmp117267
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp117267 _sym115529_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym115521_)
        (let ((_type115522115524_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym115521_))))
          (if _type115522115524_
              (let ((_type115527_ _type115522115524_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type115527_ 'gxc#!alias::t))
                    (let ((__tmp117268
                           (##structure-ref _type115527_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp117268))
                    _type115527_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where115513_ _klass-id115514_)
        (let ((_$e115516_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id115514_))))
          (if _$e115516_
              ((lambda (_klass115519_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass115519_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where115513_
                        _klass-id115514_
                        _klass115519_)))
                 _klass115519_)
               _$e115516_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where115513_
                 _klass-id115514_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t115510_ _method115511_)
        (let ((__tmp117269
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t115510_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp117269 _method115511_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym115508_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym115508_))
        (let ((__tmp117270
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp117270 _sym115508_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym115506_)
        (let ((__tmp117271
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp117271 _sym115506_))))
    (define gxc#identifier-symbol
      (lambda (_stx115504_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx115504_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx115504_))
            (let () (declare (not safe)) (gx#stx-e _stx115504_)))))))
