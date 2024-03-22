(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1711108656)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp117113 (list))
            (__tmp117111
             (let ((__tmp117112
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117112 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp117113
         '(type ssxi methods)
         __tmp117111
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args117047_
        (apply make-instance gxc#optimizer-info::t _$args117047_)))
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
      (lambda (_self117045_)
        (if (let ((__tmp117121
                   (let ()
                     (declare (not safe))
                     (##structure-length _self117045_))))
              (declare (not safe))
              (##fx< '3 __tmp117121))
            (begin
              (let ((__tmp117116
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117115
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117045_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117045_
                 __tmp117116
                 '1
                 __tmp117115
                 '#f))
              (let ((__tmp117118
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117117
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117045_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117045_
                 __tmp117118
                 '2
                 __tmp117117
                 '#f))
              (let ((__tmp117120
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117119
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117045_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117045_
                 __tmp117120
                 '3
                 __tmp117119
                 '#f)))
            (let ((__tmp117114
                   (let ()
                     (declare (not safe))
                     (##vector-length _self117045_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self117045_
                     '3
                     __tmp117114)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp117124 (list))
            (__tmp117122
             (let ((__tmp117123
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117123 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp117124
         '(id)
         __tmp117122
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args116920_ (apply make-instance gxc#!type::t _$args116920_)))
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
      (let ((__tmp117127 (list gxc#!type::t))
            (__tmp117125
             (let ((__tmp117126
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117126 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp117127
         '()
         __tmp117125
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args116917_ (apply make-instance gxc#!alias::t _$args116917_)))
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
      (let ((__tmp117130 (list gxc#!type::t))
            (__tmp117128
             (let ((__tmp117129
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117129 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp117130
         '()
         __tmp117128
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args116914_
        (apply make-instance gxc#!procedure::t _$args116914_)))
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
      (let ((__tmp117133 (list gxc#!type::t))
            (__tmp117131
             (let ((__tmp117132
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117132 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp117133
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp117131
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args116911_ (apply make-instance gxc#!class::t _$args116911_)))
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
      (let ((__tmp117136 (list gxc#!procedure::t))
            (__tmp117134
             (let ((__tmp117135
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117135 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp117136
         '()
         __tmp117134
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args116908_
        (apply make-instance gxc#!predicate::t _$args116908_)))
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
      (let ((__tmp117139 (list gxc#!procedure::t))
            (__tmp117137
             (let ((__tmp117138
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117138 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp117139
         '()
         __tmp117137
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args116905_
        (apply make-instance gxc#!constructor::t _$args116905_)))
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
      (let ((__tmp117142 (list gxc#!procedure::t))
            (__tmp117140
             (let ((__tmp117141
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117141 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp117142
         '(slot checked?)
         __tmp117140
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args116902_
        (apply make-instance gxc#!accessor::t _$args116902_)))
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
      (let ((__tmp117145 (list gxc#!procedure::t))
            (__tmp117143
             (let ((__tmp117144
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117144 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp117145
         '(slot checked?)
         __tmp117143
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args116899_
        (apply make-instance gxc#!mutator::t _$args116899_)))
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
      (let ((__tmp117148 (list gxc#!procedure::t))
            (__tmp117146
             (let ((__tmp117147
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117147 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp117148
         '(arity dispatch inline inline-typedecl)
         __tmp117146
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args116896_
        (apply make-instance gxc#!lambda::t _$args116896_)))
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
      (let ((__tmp117151 (list gxc#!procedure::t))
            (__tmp117149
             (let ((__tmp117150
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117150 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp117151
         '(clauses)
         __tmp117149
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args116893_
        (apply make-instance gxc#!case-lambda::t _$args116893_)))
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
      (let ((__tmp117154 (list gxc#!procedure::t))
            (__tmp117152
             (let ((__tmp117153
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117153 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp117154
         '(table dispatch)
         __tmp117152
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args116890_
        (apply make-instance gxc#!kw-lambda::t _$args116890_)))
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
      (let ((__tmp117157 (list gxc#!procedure::t))
            (__tmp117155
             (let ((__tmp117156
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117156 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp117157
         '(keys main)
         __tmp117155
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args116887_
        (apply make-instance gxc#!kw-lambda-primary::t _$args116887_)))
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
      (let ((__tmp117158 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp117158
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args116884_
        (apply make-instance gxc#!primitive::t _$args116884_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp117159 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp117159
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args116881_
        (apply make-instance gxc#!primitive-lambda::t _$args116881_)))
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
      (let ((__tmp117160 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp117160
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args116878_
        (apply make-instance gxc#!primitive-case-lambda::t _$args116878_)))
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
      (lambda (_self116758_
               _id116759_
               _super116760_
               _slots116761_
               _ctor-method116762_
               _struct?116763_
               _final?116764_
               _system?116765_
               _metaclass116766_)
        (let _lp116768_ ((_rest116770_ _super116760_))
          (let* ((_rest116771116779_ _rest116770_)
                 (_else116773116787_ (lambda () '#!void))
                 (_K116775116793_
                  (lambda (_rest116790_ _super-id116791_)
                    (if (##structure-ref
                         (let ((__tmp117163
                                (let ((__tmp117164
                                       (let ()
                                         (declare (not safe))
                                         (cons _id116759_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp117164))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp117163
                            _super-id116791_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp117161
                               (let ((__tmp117162
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116759_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp117162))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp117161
                           _super-id116791_))
                        '#!void)
                    (let () (declare (not safe)) (_lp116768_ _rest116790_)))))
            (if (let () (declare (not safe)) (##pair? _rest116771116779_))
                (let ((_hd116776116796_
                       (let ()
                         (declare (not safe))
                         (##car _rest116771116779_)))
                      (_tl116777116798_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116771116779_))))
                  (let* ((_super-id116801_ _hd116776116796_)
                         (_rest116803_ _tl116777116798_))
                    (declare (not safe))
                    (_K116775116793_ _rest116803_ _super-id116801_)))
                '#!void)))
        (let* ((_ctor-method116853_
                (let ((_$e116805_ _ctor-method116762_))
                  (if _$e116805_
                      _$e116805_
                      (let _lp116808_ ((_rest116810_ _super116760_)
                                       (_method116811_ '#f))
                        (let* ((_rest116812116820_ _rest116810_)
                               (_else116814116828_ (lambda () _method116811_))
                               (_K116816116841_
                                (lambda (_rest116831_ _super-id116832_)
                                  (let* ((_klass116834_
                                          (let ((__tmp117165
                                                 (let ((__tmp117166
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id116759_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp117166))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp117165
                                             _super-id116832_)))
                                         (_$e116836_
                                          (##structure-ref
                                           _klass116834_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e116836_
                                        ((lambda (_ctor-method116839_)
                                           (if _method116811_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method116839_
                                                          _method116811_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp116808_
                                                      _rest116831_
                                                      _ctor-method116839_))
                                                   (let ((__tmp117167
                                                          (let ((__tmp117168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id116759_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp117168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp117167
                                                      _method116811_
                                                      _ctor-method116839_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp116808_
                                                  _rest116831_
                                                  _ctor-method116839_))))
                                         _$e116836_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp116808_
                                           _rest116831_
                                           _method116811_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest116812116820_))
                              (let ((_hd116817116844_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest116812116820_)))
                                    (_tl116818116846_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest116812116820_))))
                                (let* ((_super-id116849_ _hd116817116844_)
                                       (_rest116851_ _tl116818116846_))
                                  (declare (not safe))
                                  (_K116816116841_
                                   _rest116851_
                                   _super-id116849_)))
                              (let ()
                                (declare (not safe))
                                (_else116814116828_))))))))
               (_g117169_
                (let ((__tmp117174
                       (lambda (_klass-id116855_)
                         (let ((__tmp117175
                                (##structure-ref
                                 (let ((__tmp117176
                                        (let ((__tmp117177
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116759_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp117177))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp117176
                                    _klass-id116855_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id116855_ __tmp117175))))
                      (__tmp117171
                       (lambda (_klass-id116857_)
                         (##structure-ref
                          (let ((__tmp117172
                                 (let ((__tmp117173
                                        (let ()
                                          (declare (not safe))
                                          (cons _id116759_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp117173))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp117172
                             _klass-id116857_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super116760_
                   'get-precedence-list:
                   __tmp117174
                   'struct:
                   __tmp117171
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g117170_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g117169_)
                         (##vector-length _g117169_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g117170_ 2)))
                  (error "Context expects 2 values" _g117170_)))
            (let ((_precedence-list116859_
                   (let () (declare (not safe)) (##vector-ref _g117169_ 0)))
                  (_base-struct116860_
                   (let () (declare (not safe)) (##vector-ref _g117169_ 1))))
              (let ((_fields116862_
                     (let ((__tmp117178
                            (let ((__tmp117179
                                   (let ()
                                     (declare (not safe))
                                     (cons _id116759_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp117179))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp117178
                        _base-struct116860_
                        _precedence-list116859_
                        _slots116761_))))
                (##structure-set! _self116758_ _id116759_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self116758_
                 _super116760_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116758_
                 _precedence-list116859_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116758_
                 _slots116761_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116758_
                 _fields116862_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116758_
                 _ctor-method116853_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116758_
                 _struct?116763_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116758_
                 _final?116764_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116758_
                 _metaclass116766_
                 '10
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self116865_
               _id116866_
               _super116867_
               _precedence-list116868_
               _slots116869_
               _fields116870_
               _constructor116871_
               _struct?116872_
               _final?116873_
               _system?116874_
               _metaclass116875_
               _methods116876_)
        (##structure-set! _self116865_ _id116866_ '1 gxc#!type::t '#f)
        (##structure-set! _self116865_ _super116867_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self116865_
         _precedence-list116868_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self116865_ _slots116869_ '4 gxc#!class::t '#f)
        (##structure-set! _self116865_ _fields116870_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self116865_
         _constructor116871_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self116865_ _struct?116872_ '7 gxc#!class::t '#f)
        (##structure-set! _self116865_ _final?116873_ '8 gxc#!class::t '#f)
        (##structure-set! _self116865_ _metaclass116875_ '10 gxc#!class::t '#f)
        (if _methods116876_
            (##structure-set!
             _self116865_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods116876_))
             '11
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g117181_
        (let ((_g117180_ (let () (declare (not safe)) (##length _g117181_))))
          (cond ((let () (declare (not safe)) (##fx= _g117180_ 9))
                 (apply (lambda (_self116758_
                                 _id116759_
                                 _super116760_
                                 _slots116761_
                                 _ctor-method116762_
                                 _struct?116763_
                                 _final?116764_
                                 _system?116765_
                                 _metaclass116766_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self116758_
                             _id116759_
                             _super116760_
                             _slots116761_
                             _ctor-method116762_
                             _struct?116763_
                             _final?116764_
                             _system?116765_
                             _metaclass116766_)))
                        _g117181_))
                ((let () (declare (not safe)) (##fx= _g117180_ 12))
                 (apply (lambda (_self116865_
                                 _id116866_
                                 _super116867_
                                 _precedence-list116868_
                                 _slots116869_
                                 _fields116870_
                                 _constructor116871_
                                 _struct?116872_
                                 _final?116873_
                                 _system?116874_
                                 _metaclass116875_
                                 _methods116876_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self116865_
                             _id116866_
                             _super116867_
                             _precedence-list116868_
                             _slots116869_
                             _fields116870_
                             _constructor116871_
                             _struct?116872_
                             _final?116873_
                             _system?116874_
                             _metaclass116875_
                             _methods116876_)))
                        _g117181_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g117181_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass117049 __method-table117050)
        (let ((__methods117051
               (let ((__slot117061
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117049 'methods))))
                 (if __slot117061
                     __slot117061
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__constructor117052
               (let ((__slot117062
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117049 'constructor))))
                 (if __slot117062
                     __slot117062
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__slots117053
               (let ((__slot117063
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117049 'slots))))
                 (if __slot117063
                     __slot117063
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__fields117054
               (let ((__slot117064
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117049 'fields))))
                 (if __slot117064
                     __slot117064
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__struct?117055
               (let ((__slot117065
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117049 'struct?))))
                 (if __slot117065
                     __slot117065
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__final?117056
               (let ((__slot117066
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117049 'final?))))
                 (if __slot117066
                     __slot117066
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__metaclass117057
               (let ((__slot117067
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117049 'metaclass))))
                 (if __slot117067
                     __slot117067
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__id117058
               (let ((__slot117068
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117049 'id))))
                 (if __slot117068
                     __slot117068
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super117059
               (let ((__slot117069
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117049 'super))))
                 (if __slot117069
                     __slot117069
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__precedence-list117060
               (let ((__slot117070
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117049 'precedence-list))))
                 (if __slot117070
                     __slot117070
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list))))))
          (lambda _g117183_
            (let ((_g117182_
                   (let () (declare (not safe)) (##length _g117183_))))
              (cond ((let () (declare (not safe)) (##fx= _g117182_ 9))
                     (apply (lambda (_self116758_
                                     _id116759_
                                     _super116760_
                                     _slots116761_
                                     _ctor-method116762_
                                     _struct?116763_
                                     _final?116764_
                                     _system?116765_
                                     _metaclass116766_)
                              (let _lp116768_ ((_rest116770_ _super116760_))
                                (let* ((_rest116771116779_ _rest116770_)
                                       (_else116773116787_ (lambda () '#!void))
                                       (_K116775116793_
                                        (lambda (_rest116790_ _super-id116791_)
                                          (if (##structure-ref
                                               (let ((__tmp117186
                                                      (let ((__tmp117187
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id116759_ '()))))
                (declare (not safe))
                (cons '!class __tmp117187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp117186
                                                  _super-id116791_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp117184
                                                     (let ((__tmp117185
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id116759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp117185))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp117184
                                                 _super-id116791_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp116768_ _rest116790_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest116771116779_))
                                      (let ((_hd116776116796_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest116771116779_)))
                                            (_tl116777116798_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest116771116779_))))
                                        (let* ((_super-id116801_
                                                _hd116776116796_)
                                               (_rest116803_ _tl116777116798_))
                                          (declare (not safe))
                                          (_K116775116793_
                                           _rest116803_
                                           _super-id116801_)))
                                      '#!void)))
                              (let* ((_ctor-method116853_
                                      (let ((_$e116805_ _ctor-method116762_))
                                        (if _$e116805_
                                            _$e116805_
                                            (let _lp116808_ ((_rest116810_
                                                              _super116760_)
                                                             (_method116811_
                                                              '#f))
                                              (let* ((_rest116812116820_
                                                      _rest116810_)
                                                     (_else116814116828_
                                                      (lambda ()
                                                        _method116811_))
                                                     (_K116816116841_
                                                      (lambda (_rest116831_
                                                               _super-id116832_)
                                                        (let* ((_klass116834_
                                                                (let ((__tmp117188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp117189
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116759_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp117189))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp117188
                           _super-id116832_)))
                       (_$e116836_
                        (##structure-ref _klass116834_ '6 gxc#!class::t '#f)))
                  (if _$e116836_
                      ((lambda (_ctor-method116839_)
                         (if _method116811_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method116839_ _method116811_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp116808_
                                    _rest116831_
                                    _ctor-method116839_))
                                 (let ((__tmp117190
                                        (let ((__tmp117191
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116759_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp117191))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp117190
                                    _method116811_
                                    _ctor-method116839_)))
                             (let ()
                               (declare (not safe))
                               (_lp116808_ _rest116831_ _ctor-method116839_))))
                       _$e116836_)
                      (let ()
                        (declare (not safe))
                        (_lp116808_ _rest116831_ _method116811_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest116812116820_))
                                                    (let ((_hd116817116844_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest116812116820_)))
                                                          (_tl116818116846_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest116812116820_))))
                                                      (let* ((_super-id116849_
                                                              _hd116817116844_)
                                                             (_rest116851_
                                                              _tl116818116846_))
                                                        (declare (not safe))
                                                        (_K116816116841_
                                                         _rest116851_
                                                         _super-id116849_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else116814116828_))))))))
                                     (_g117192_
                                      (let ((__tmp117197
                                             (lambda (_klass-id116855_)
                                               (let ((__tmp117198
                                                      (##structure-ref
                                                       (let ((__tmp117199
                                                              (let ((__tmp117200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id116759_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp117200))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp117199 _klass-id116855_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id116855_
                                                       __tmp117198))))
                                            (__tmp117194
                                             (lambda (_klass-id116857_)
                                               (##structure-ref
                                                (let ((__tmp117195
                                                       (let ((__tmp117196
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id116759_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp117196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp117195
                                                   _klass-id116857_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super116760_
                                         'get-precedence-list:
                                         __tmp117197
                                         'struct:
                                         __tmp117194
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g117193_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117192_)
                                               (##vector-length _g117192_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117193_ 2)))
                                        (error "Context expects 2 values"
                                               _g117193_)))
                                  (let ((_precedence-list116859_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117192_ 0)))
                                        (_base-struct116860_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117192_ 1))))
                                    (let ((_fields116862_
                                           (let ((__tmp117201
                                                  (let ((__tmp117202
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id116759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp117202))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp117201
                                              _base-struct116860_
                                              _precedence-list116859_
                                              _slots116761_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116758_
                                         _id116759_
                                         __id117058
                                         __klass117049
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116758_
                                         _super116760_
                                         __super117059
                                         __klass117049
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116758_
                                         _precedence-list116859_
                                         __precedence-list117060
                                         __klass117049
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116758_
                                         _slots116761_
                                         __slots117053
                                         __klass117049
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116758_
                                         _fields116862_
                                         __fields117054
                                         __klass117049
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116758_
                                         _ctor-method116853_
                                         __constructor117052
                                         __klass117049
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116758_
                                         _struct?116763_
                                         __struct?117055
                                         __klass117049
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116758_
                                         _final?116764_
                                         __final?117056
                                         __klass117049
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116758_
                                         _metaclass116766_
                                         __metaclass117057
                                         __klass117049
                                         '#f)))))))
                            _g117183_))
                    ((let () (declare (not safe)) (##fx= _g117182_ 12))
                     (apply (lambda (_self116865_
                                     _id116866_
                                     _super116867_
                                     _precedence-list116868_
                                     _slots116869_
                                     _fields116870_
                                     _constructor116871_
                                     _struct?116872_
                                     _final?116873_
                                     _system?116874_
                                     _metaclass116875_
                                     _methods116876_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116865_
                                 _id116866_
                                 __id117058
                                 __klass117049
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116865_
                                 _super116867_
                                 __super117059
                                 __klass117049
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116865_
                                 _precedence-list116868_
                                 __precedence-list117060
                                 __klass117049
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116865_
                                 _slots116869_
                                 __slots117053
                                 __klass117049
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116865_
                                 _fields116870_
                                 __fields117054
                                 __klass117049
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116865_
                                 _constructor116871_
                                 __constructor117052
                                 __klass117049
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116865_
                                 _struct?116872_
                                 __struct?117055
                                 __klass117049
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116865_
                                 _final?116873_
                                 __final?117056
                                 __klass117049
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116865_
                                 _metaclass116875_
                                 __metaclass117057
                                 __klass117049
                                 '#f))
                              (if _methods116876_
                                  (let ((__tmp117203
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods116876_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self116865_
                                     __tmp117203
                                     __methods117051
                                     __klass117049
                                     '#f))
                                  '#!void))
                            _g117183_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g117183_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where116610_
               _base-struct116611_
               _precedence-list116612_
               _direct-slots116613_)
        (let* ((_base-fields116615_
                (if _base-struct116611_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where116610_
                        _base-struct116611_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields116617_ (reverse _base-fields116615_))
               (_seen-slots116625_
                (let ((_tab116619_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g116620116622_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab116619_ _g116620116622_ '#t)))
                   _base-fields116615_)
                  _tab116619_))
               (_process-slot116629_
                (lambda (_slot116627_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots116625_ _slot116627_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots116625_ _slot116627_ '#t))
                        (set! _r-fields116617_
                              (let ()
                                (declare (not safe))
                                (cons _slot116627_ _r-fields116617_))))))))
          (for-each
           (lambda (_mixin116632_)
             (let ((_klass116634_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where116610_
                       _mixin116632_))))
               (if (##structure-ref _klass116634_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot116629_
                    (##structure-ref _klass116634_ '5 gxc#!class::t '#f)))))
           _precedence-list116612_)
          (for-each _process-slot116629_ _direct-slots116613_)
          (reverse _r-fields116617_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass116569_ _slot116570_)
        (let _lp116572_ ((_rest116574_
                          (##structure-ref _klass116569_ '5 gxc#!class::t '#f))
                         (_offset116575_ '1))
          (let* ((_rest116576116584_ _rest116574_)
                 (_else116578116592_
                  (lambda ()
                    (let ((__tmp117205
                           (##structure-ref _klass116569_ '1 gxc#!type::t '#f))
                          (__tmp117204
                           (##structure-ref
                            _klass116569_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp117205
                       __tmp117204
                       _slot116570_))))
                 (_K116580116598_
                  (lambda (_rest116595_ _s116596_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s116596_ _slot116570_))
                        _offset116575_
                        (let ((__tmp117206
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset116575_ '1))))
                          (declare (not safe))
                          (_lp116572_ _rest116595_ __tmp117206))))))
            (if (let () (declare (not safe)) (##pair? _rest116576116584_))
                (let ((_hd116581116601_
                       (let ()
                         (declare (not safe))
                         (##car _rest116576116584_)))
                      (_tl116582116603_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116576116584_))))
                  (let* ((_s116606_ _hd116581116601_)
                         (_rest116608_ _tl116582116603_))
                    (declare (not safe))
                    (_K116580116598_ _rest116608_ _s116606_)))
                (let () (declare (not safe)) (_else116578116592_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass116527_ _slot116528_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass116527_ _slot116528_))
            _klass116527_
            (let _lp116530_ ((_rest116532_
                              (##structure-ref
                               _klass116527_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest116533116541_ _rest116532_)
                     (_else116535116549_ (lambda () '#f))
                     (_K116537116557_
                      (lambda (_rest116552_ _super116553_)
                        (let ((_super-class116555_
                               (let ((__tmp117207
                                      (let ((__tmp117208
                                             (let ((__tmp117210
                                                    (##structure-ref
                                                     _klass116527_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp117209
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot116528_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp117210
                                                     __tmp117209))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp117208))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp117207
                                  _super116553_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class116555_
                                 _slot116528_))
                              _super-class116555_
                              (let ()
                                (declare (not safe))
                                (_lp116530_ _rest116552_)))))))
                (if (let () (declare (not safe)) (##pair? _rest116533116541_))
                    (let ((_hd116538116560_
                           (let ()
                             (declare (not safe))
                             (##car _rest116533116541_)))
                          (_tl116539116562_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest116533116541_))))
                      (let* ((_super116565_ _hd116538116560_)
                             (_rest116567_ _tl116539116562_))
                        (declare (not safe))
                        (_K116537116557_ _rest116567_ _super116565_)))
                    (let () (declare (not safe)) (_else116535116549_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass116524_ _slot116525_)
        (if (##structure-ref _klass116524_ '7 gxc#!class::t '#f)
            (memq _slot116525_
                  (##structure-ref _klass116524_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self116521_ _id116522_)
        (##structure-set! _self116521_ _id116522_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass117071 __method-table117072)
        (let ((__id117073
               (let ((__slot117074
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117071 'id))))
                 (if __slot117074
                     __slot117074
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116521_ _id116522_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116521_
               _id116522_
               __id117073
               __klass117071
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
      (lambda (_self116396_ _id116397_)
        (##structure-set! _self116396_ _id116397_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass117075 __method-table117076)
        (let ((__id117077
               (let ((__slot117078
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117075 'id))))
                 (if __slot117078
                     __slot117078
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116396_ _id116397_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116396_
               _id116397_
               __id117077
               __klass117075
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
      (lambda (_self116269_ _id116270_ _slot116271_ _checked?116272_)
        (##structure-set! _self116269_ _id116270_ '1 gxc#!type::t '#f)
        (##structure-set! _self116269_ _slot116271_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self116269_
         _checked?116272_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass117079 __method-table117080)
        (let ((__checked?117081
               (let ((__slot117084
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117079 'checked?))))
                 (if __slot117084
                     __slot117084
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot117082
               (let ((__slot117085
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117079 'slot))))
                 (if __slot117085
                     __slot117085
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id117083
               (let ((__slot117086
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117079 'id))))
                 (if __slot117086
                     __slot117086
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116269_ _id116270_ _slot116271_ _checked?116272_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116269_
               _id116270_
               __id117083
               __klass117079
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116269_
               _slot116271_
               __slot117082
               __klass117079
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116269_
               _checked?116272_
               __checked?117081
               __klass117079
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
      (lambda (_self116142_ _id116143_ _slot116144_ _checked?116145_)
        (##structure-set! _self116142_ _id116143_ '1 gxc#!type::t '#f)
        (##structure-set! _self116142_ _slot116144_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self116142_
         _checked?116145_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass117087 __method-table117088)
        (let ((__checked?117089
               (let ((__slot117092
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117087 'checked?))))
                 (if __slot117092
                     __slot117092
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot117090
               (let ((__slot117093
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117087 'slot))))
                 (if __slot117093
                     __slot117093
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id117091
               (let ((__slot117094
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117087 'id))))
                 (if __slot117094
                     __slot117094
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116142_ _id116143_ _slot116144_ _checked?116145_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116142_
               _id116143_
               __id117091
               __klass117087
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116142_
               _slot116144_
               __slot117090
               __klass117087
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116142_
               _checked?116145_
               __checked?117089
               __klass117087
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
      (lambda (_self115986_
               _id115987_
               _arity115988_
               _dispatch115989_
               _inline115990_
               _typedecl115991_)
        (if (let ((__tmp117217
                   (let ()
                     (declare (not safe))
                     (##structure-length _self115986_))))
              (declare (not safe))
              (##fx< '5 __tmp117217))
            (begin
              (let ((__tmp117212
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115986_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115986_
                 _id115987_
                 '1
                 __tmp117212
                 '#f))
              (let ((__tmp117213
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115986_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115986_
                 _arity115988_
                 '2
                 __tmp117213
                 '#f))
              (let ((__tmp117214
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115986_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115986_
                 _dispatch115989_
                 '3
                 __tmp117214
                 '#f))
              (let ((__tmp117215
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115986_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115986_
                 _inline115990_
                 '4
                 __tmp117215
                 '#f))
              (let ((__tmp117216
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115986_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115986_
                 _typedecl115991_
                 '5
                 __tmp117216
                 '#f)))
            (let ((__tmp117211
                   (let ()
                     (declare (not safe))
                     (##vector-length _self115986_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self115986_
                     '5
                     __tmp117211)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self115996_ _id115997_ _arity115998_ _dispatch115999_)
        (let* ((_inline116001_ '#f) (_typedecl116003_ '#f))
          (if (let ((__tmp117224
                     (let ()
                       (declare (not safe))
                       (##structure-length _self115996_))))
                (declare (not safe))
                (##fx< '5 __tmp117224))
              (begin
                (let ((__tmp117219
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115996_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115996_
                   _id115997_
                   '1
                   __tmp117219
                   '#f))
                (let ((__tmp117220
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115996_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115996_
                   _arity115998_
                   '2
                   __tmp117220
                   '#f))
                (let ((__tmp117221
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115996_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115996_
                   _dispatch115999_
                   '3
                   __tmp117221
                   '#f))
                (let ((__tmp117222
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115996_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115996_
                   _inline116001_
                   '4
                   __tmp117222
                   '#f))
                (let ((__tmp117223
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115996_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115996_
                   _typedecl116003_
                   '5
                   __tmp117223
                   '#f)))
              (let ((__tmp117218
                     (let ()
                       (declare (not safe))
                       (##vector-length _self115996_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self115996_
                       '5
                       __tmp117218))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self116005_
               _id116006_
               _arity116007_
               _dispatch116008_
               _inline116009_)
        (let ((_typedecl116011_ '#f))
          (if (let ((__tmp117231
                     (let ()
                       (declare (not safe))
                       (##structure-length _self116005_))))
                (declare (not safe))
                (##fx< '5 __tmp117231))
              (begin
                (let ((__tmp117226
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116005_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116005_
                   _id116006_
                   '1
                   __tmp117226
                   '#f))
                (let ((__tmp117227
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116005_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116005_
                   _arity116007_
                   '2
                   __tmp117227
                   '#f))
                (let ((__tmp117228
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116005_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116005_
                   _dispatch116008_
                   '3
                   __tmp117228
                   '#f))
                (let ((__tmp117229
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116005_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116005_
                   _inline116009_
                   '4
                   __tmp117229
                   '#f))
                (let ((__tmp117230
                       (let ()
                         (declare (not safe))
                         (##structure-type _self116005_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self116005_
                   _typedecl116011_
                   '5
                   __tmp117230
                   '#f)))
              (let ((__tmp117225
                     (let ()
                       (declare (not safe))
                       (##vector-length _self116005_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self116005_
                       '5
                       __tmp117225))))))
    (define gxc#!lambda:::init!
      (lambda _g117233_
        (let ((_g117232_ (let () (declare (not safe)) (##length _g117233_))))
          (cond ((let () (declare (not safe)) (##fx= _g117232_ 4))
                 (apply (lambda (_self115996_
                                 _id115997_
                                 _arity115998_
                                 _dispatch115999_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self115996_
                             _id115997_
                             _arity115998_
                             _dispatch115999_)))
                        _g117233_))
                ((let () (declare (not safe)) (##fx= _g117232_ 5))
                 (apply (lambda (_self116005_
                                 _id116006_
                                 _arity116007_
                                 _dispatch116008_
                                 _inline116009_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self116005_
                             _id116006_
                             _arity116007_
                             _dispatch116008_
                             _inline116009_)))
                        _g117233_))
                ((let () (declare (not safe)) (##fx= _g117232_ 6))
                 (apply (lambda (_self116013_
                                 _id116014_
                                 _arity116015_
                                 _dispatch116016_
                                 _inline116017_
                                 _typedecl116018_)
                          (if (let ((__tmp117240
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self116013_))))
                                (declare (not safe))
                                (##fx< '5 __tmp117240))
                              (begin
                                (let ((__tmp117235
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116013_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116013_
                                   _id116014_
                                   '1
                                   __tmp117235
                                   '#f))
                                (let ((__tmp117236
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116013_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116013_
                                   _arity116015_
                                   '2
                                   __tmp117236
                                   '#f))
                                (let ((__tmp117237
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116013_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116013_
                                   _dispatch116016_
                                   '3
                                   __tmp117237
                                   '#f))
                                (let ((__tmp117238
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116013_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116013_
                                   _inline116017_
                                   '4
                                   __tmp117238
                                   '#f))
                                (let ((__tmp117239
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116013_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116013_
                                   _typedecl116018_
                                   '5
                                   __tmp117239
                                   '#f)))
                              (let ((__tmp117234
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self116013_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self116013_
                                       '5
                                       __tmp117234))))
                        _g117233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g117233_))))))
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
      (lambda (_self115738_ . _args115739_)
        (apply struct-instance-init! _self115738_ _args115739_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type115613_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115613_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type115613_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass115606_)
        (let ((_$e115608_
               (##structure-ref _klass115606_ '11 gxc#!class::t '#f)))
          (if _$e115608_
              _$e115608_
              (let ((_tab115611_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass115606_
                 _tab115611_
                 '11
                 gxc#!class::t
                 '#f)
                _tab115611_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass115597_ _method115598_)
        (let ((_tab115599115601_
               (##structure-ref _klass115597_ '11 gxc#!class::t '#f)))
          (if _tab115599115601_
              (let ((_tab115604_ _tab115599115601_))
                (declare (not safe))
                (hash-get _tab115604_ _method115598_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type115594_ _method115595_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115594_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type115594_ _method115595_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym115578_ _type115579_ _local?115580_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115579_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym115578_
                     _type115579_)))
        (let ((__tmp117241
               (let () (declare (not safe)) (struct->list _type115579_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym115578_ '" " __tmp117241))
        (let ((__tmp117242
               (if _local?115580_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp117242 _sym115578_ _type115579_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym115585_ _type115586_)
        (let ((_local?115588_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym115585_
           _type115586_
           _local?115588_))))
    (define gxc#optimizer-declare-type!
      (lambda _g117244_
        (let ((_g117243_ (let () (declare (not safe)) (##length _g117244_))))
          (cond ((let () (declare (not safe)) (##fx= _g117243_ 2))
                 (apply (lambda (_sym115585_ _type115586_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym115585_
                             _type115586_)))
                        _g117244_))
                ((let () (declare (not safe)) (##fx= _g117243_ 3))
                 (apply (lambda (_sym115590_ _type115591_ _local?115592_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym115590_
                             _type115591_
                             _local?115592_)))
                        _g117244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g117244_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym115564_ _local?115565_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym115564_))
        (let ((__tmp117245
               (if _local?115565_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp117245 _sym115564_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym115570_)
        (let ((_local?115572_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym115570_ _local?115572_))))
    (define gxc#optimizer-clear-type!
      (lambda _g117247_
        (let ((_g117246_ (let () (declare (not safe)) (##length _g117247_))))
          (cond ((let () (declare (not safe)) (##fx= _g117246_ 1))
                 (apply (lambda (_sym115570_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym115570_)))
                        _g117247_))
                ((let () (declare (not safe)) (##fx= _g117246_ 2))
                 (apply (lambda (_sym115574_ _local?115575_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym115574_
                             _local?115575_)))
                        _g117247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g117247_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t115532_ _method115533_ _sym115534_ _rebind?115535_)
        (let* ((_type115537_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t115532_)))
               (_$e115539_
                (let () (declare (not safe)) (gxc#!type-vtab _type115537_))))
          (if _$e115539_
              ((lambda (_vtab115542_)
                 (let ((_$e115544_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab115542_ _method115533_))))
                   (if _$e115544_
                       ((lambda (_existing115547_)
                          (if _rebind?115535_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t115532_
                                   '" "
                                   _method115533_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab115542_
                                   _method115533_
                                   _sym115534_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing115547_ _sym115534_))
                                  '#!void
                                  (let ((__tmp117252
                                         (let ((__tmp117253
                                                (let ((__tmp117254
                                                       (let ((__tmp117255
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym115534_ '()))))
                 (declare (not safe))
                 (cons _method115533_ __tmp117255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t115532_
                                                        __tmp117254))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp117253))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp117252
                                     _method115533_)))))
                        _$e115544_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t115532_
                            '" "
                            _method115533_
                            '" => "
                            _sym115534_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab115542_
                            _method115533_
                            _sym115534_))))))
               _$e115539_)
              (if (let () (declare (not safe)) (not _type115537_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t115532_))
                  (let ((__tmp117248
                         (let ((__tmp117249
                                (let ((__tmp117250
                                       (let ((__tmp117251
                                              (let ()
                                                (declare (not safe))
                                                (cons _method115533_ '()))))
                                         (declare (not safe))
                                         (cons _sym115534_ __tmp117251))))
                                  (declare (not safe))
                                  (cons _type-t115532_ __tmp117250))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp117249))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp117248
                     _type115537_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t115552_ _method115553_ _sym115554_)
        (let ((_rebind?115556_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t115552_
           _method115553_
           _sym115554_
           _rebind?115556_))))
    (define gxc#optimizer-declare-method!
      (lambda _g117257_
        (let ((_g117256_ (let () (declare (not safe)) (##length _g117257_))))
          (cond ((let () (declare (not safe)) (##fx= _g117256_ 3))
                 (apply (lambda (_type-t115552_ _method115553_ _sym115554_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t115552_
                             _method115553_
                             _sym115554_)))
                        _g117257_))
                ((let () (declare (not safe)) (##fx= _g117256_ 4))
                 (apply (lambda (_type-t115558_
                                 _method115559_
                                 _sym115560_
                                 _rebind?115561_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t115558_
                             _method115559_
                             _sym115560_
                             _rebind?115561_)))
                        _g117257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g117257_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym115520_)
        (let ((_$e115528_
               (let ((_ht115521115523_ (gxc#current-compile-local-type)))
                 (if _ht115521115523_
                     (let ((_ht115526_ _ht115521115523_))
                       (declare (not safe))
                       (hash-get _ht115526_ _sym115520_))
                     '#f))))
          (if _$e115528_
              _$e115528_
              (let ((__tmp117258
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp117258 _sym115520_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym115512_)
        (let ((_type115513115515_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym115512_))))
          (if _type115513115515_
              (let ((_type115518_ _type115513115515_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type115518_ 'gxc#!alias::t))
                    (let ((__tmp117259
                           (##structure-ref _type115518_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp117259))
                    _type115518_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where115504_ _klass-id115505_)
        (let ((_$e115507_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id115505_))))
          (if _$e115507_
              ((lambda (_klass115510_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass115510_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where115504_
                        _klass-id115505_
                        _klass115510_)))
                 _klass115510_)
               _$e115507_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where115504_
                 _klass-id115505_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t115501_ _method115502_)
        (let ((__tmp117260
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t115501_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp117260 _method115502_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym115499_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym115499_))
        (let ((__tmp117261
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp117261 _sym115499_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym115497_)
        (let ((__tmp117262
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp117262 _sym115497_))))
    (define gxc#identifier-symbol
      (lambda (_stx115495_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx115495_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx115495_))
            (let () (declare (not safe)) (gx#stx-e _stx115495_)))))))
