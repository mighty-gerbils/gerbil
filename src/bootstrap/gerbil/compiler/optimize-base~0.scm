(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710943499)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp117104 (list))
            (__tmp117102
             (let ((__tmp117103
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117103 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp117104
         '(type ssxi methods)
         __tmp117102
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args117038_
        (apply make-instance gxc#optimizer-info::t _$args117038_)))
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
      (lambda (_self117036_)
        (if (let ((__tmp117112
                   (let ()
                     (declare (not safe))
                     (##structure-length _self117036_))))
              (declare (not safe))
              (##fx< '3 __tmp117112))
            (begin
              (let ((__tmp117107
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117106
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117036_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117036_
                 __tmp117107
                 '1
                 __tmp117106
                 '#f))
              (let ((__tmp117109
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117108
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117036_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117036_
                 __tmp117109
                 '2
                 __tmp117108
                 '#f))
              (let ((__tmp117111
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117110
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117036_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117036_
                 __tmp117111
                 '3
                 __tmp117110
                 '#f)))
            (let ((__tmp117105
                   (let ()
                     (declare (not safe))
                     (##vector-length _self117036_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self117036_
                     '3
                     __tmp117105)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp117115 (list))
            (__tmp117113
             (let ((__tmp117114
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117114 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp117115
         '(id)
         __tmp117113
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args116911_ (apply make-instance gxc#!type::t _$args116911_)))
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
      (let ((__tmp117118 (list gxc#!type::t))
            (__tmp117116
             (let ((__tmp117117
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117117 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp117118
         '()
         __tmp117116
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args116908_ (apply make-instance gxc#!alias::t _$args116908_)))
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
      (let ((__tmp117121 (list gxc#!type::t))
            (__tmp117119
             (let ((__tmp117120
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117120 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp117121
         '()
         __tmp117119
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args116905_
        (apply make-instance gxc#!procedure::t _$args116905_)))
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
      (let ((__tmp117124 (list gxc#!type::t))
            (__tmp117122
             (let ((__tmp117123
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117123 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp117124
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp117122
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args116902_ (apply make-instance gxc#!class::t _$args116902_)))
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
      (let ((__tmp117127 (list gxc#!procedure::t))
            (__tmp117125
             (let ((__tmp117126
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117126 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp117127
         '()
         __tmp117125
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args116899_
        (apply make-instance gxc#!predicate::t _$args116899_)))
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
      (let ((__tmp117130 (list gxc#!procedure::t))
            (__tmp117128
             (let ((__tmp117129
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117129 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp117130
         '()
         __tmp117128
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args116896_
        (apply make-instance gxc#!constructor::t _$args116896_)))
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
      (let ((__tmp117133 (list gxc#!procedure::t))
            (__tmp117131
             (let ((__tmp117132
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117132 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp117133
         '(slot checked?)
         __tmp117131
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args116893_
        (apply make-instance gxc#!accessor::t _$args116893_)))
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
      (let ((__tmp117136 (list gxc#!procedure::t))
            (__tmp117134
             (let ((__tmp117135
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117135 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp117136
         '(slot checked?)
         __tmp117134
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args116890_
        (apply make-instance gxc#!mutator::t _$args116890_)))
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
      (let ((__tmp117139 (list gxc#!procedure::t))
            (__tmp117137
             (let ((__tmp117138
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117138 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp117139
         '(arity dispatch inline inline-typedecl)
         __tmp117137
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args116887_
        (apply make-instance gxc#!lambda::t _$args116887_)))
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
      (let ((__tmp117142 (list gxc#!procedure::t))
            (__tmp117140
             (let ((__tmp117141
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117141 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp117142
         '(clauses)
         __tmp117140
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args116884_
        (apply make-instance gxc#!case-lambda::t _$args116884_)))
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
      (let ((__tmp117145 (list gxc#!procedure::t))
            (__tmp117143
             (let ((__tmp117144
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117144 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp117145
         '(table dispatch)
         __tmp117143
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args116881_
        (apply make-instance gxc#!kw-lambda::t _$args116881_)))
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
      (let ((__tmp117148 (list gxc#!procedure::t))
            (__tmp117146
             (let ((__tmp117147
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117147 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp117148
         '(keys main)
         __tmp117146
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args116878_
        (apply make-instance gxc#!kw-lambda-primary::t _$args116878_)))
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
      (let ((__tmp117149 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp117149
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args116875_
        (apply make-instance gxc#!primitive::t _$args116875_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp117150 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp117150
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args116872_
        (apply make-instance gxc#!primitive-lambda::t _$args116872_)))
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
      (let ((__tmp117151 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp117151
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args116869_
        (apply make-instance gxc#!primitive-case-lambda::t _$args116869_)))
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
      (lambda (_self116749_
               _id116750_
               _super116751_
               _slots116752_
               _ctor-method116753_
               _struct?116754_
               _final?116755_
               _system?116756_
               _metaclass116757_)
        (let _lp116759_ ((_rest116761_ _super116751_))
          (let* ((_rest116762116770_ _rest116761_)
                 (_else116764116778_ (lambda () '#!void))
                 (_K116766116784_
                  (lambda (_rest116781_ _super-id116782_)
                    (if (##structure-ref
                         (let ((__tmp117154
                                (let ((__tmp117155
                                       (let ()
                                         (declare (not safe))
                                         (cons _id116750_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp117155))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp117154
                            _super-id116782_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp117152
                               (let ((__tmp117153
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116750_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp117153))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp117152
                           _super-id116782_))
                        '#!void)
                    (let () (declare (not safe)) (_lp116759_ _rest116781_)))))
            (if (let () (declare (not safe)) (##pair? _rest116762116770_))
                (let ((_hd116767116787_
                       (let ()
                         (declare (not safe))
                         (##car _rest116762116770_)))
                      (_tl116768116789_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116762116770_))))
                  (let* ((_super-id116792_ _hd116767116787_)
                         (_rest116794_ _tl116768116789_))
                    (declare (not safe))
                    (_K116766116784_ _rest116794_ _super-id116792_)))
                '#!void)))
        (let* ((_ctor-method116844_
                (let ((_$e116796_ _ctor-method116753_))
                  (if _$e116796_
                      _$e116796_
                      (let _lp116799_ ((_rest116801_ _super116751_)
                                       (_method116802_ '#f))
                        (let* ((_rest116803116811_ _rest116801_)
                               (_else116805116819_ (lambda () _method116802_))
                               (_K116807116832_
                                (lambda (_rest116822_ _super-id116823_)
                                  (let* ((_klass116825_
                                          (let ((__tmp117156
                                                 (let ((__tmp117157
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id116750_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp117157))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp117156
                                             _super-id116823_)))
                                         (_$e116827_
                                          (##structure-ref
                                           _klass116825_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e116827_
                                        ((lambda (_ctor-method116830_)
                                           (if _method116802_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method116830_
                                                          _method116802_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp116799_
                                                      _rest116822_
                                                      _ctor-method116830_))
                                                   (let ((__tmp117158
                                                          (let ((__tmp117159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id116750_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp117159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp117158
                                                      _method116802_
                                                      _ctor-method116830_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp116799_
                                                  _rest116822_
                                                  _ctor-method116830_))))
                                         _$e116827_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp116799_
                                           _rest116822_
                                           _method116802_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest116803116811_))
                              (let ((_hd116808116835_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest116803116811_)))
                                    (_tl116809116837_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest116803116811_))))
                                (let* ((_super-id116840_ _hd116808116835_)
                                       (_rest116842_ _tl116809116837_))
                                  (declare (not safe))
                                  (_K116807116832_
                                   _rest116842_
                                   _super-id116840_)))
                              (let ()
                                (declare (not safe))
                                (_else116805116819_))))))))
               (_g117160_
                (let ((__tmp117165
                       (lambda (_klass-id116846_)
                         (let ((__tmp117166
                                (##structure-ref
                                 (let ((__tmp117167
                                        (let ((__tmp117168
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116750_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp117168))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp117167
                                    _klass-id116846_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id116846_ __tmp117166))))
                      (__tmp117162
                       (lambda (_klass-id116848_)
                         (##structure-ref
                          (let ((__tmp117163
                                 (let ((__tmp117164
                                        (let ()
                                          (declare (not safe))
                                          (cons _id116750_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp117164))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp117163
                             _klass-id116848_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super116751_
                   'get-precedence-list:
                   __tmp117165
                   'struct:
                   __tmp117162
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g117161_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g117160_)
                         (##vector-length _g117160_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g117161_ 2)))
                  (error "Context expects 2 values" _g117161_)))
            (let ((_precedence-list116850_
                   (let () (declare (not safe)) (##vector-ref _g117160_ 0)))
                  (_base-struct116851_
                   (let () (declare (not safe)) (##vector-ref _g117160_ 1))))
              (let ((_fields116853_
                     (let ((__tmp117169
                            (let ((__tmp117170
                                   (let ()
                                     (declare (not safe))
                                     (cons _id116750_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp117170))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp117169
                        _base-struct116851_
                        _precedence-list116850_
                        _slots116752_))))
                (##structure-set! _self116749_ _id116750_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self116749_
                 _super116751_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116749_
                 _precedence-list116850_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116749_
                 _slots116752_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116749_
                 _fields116853_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116749_
                 _ctor-method116844_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116749_
                 _struct?116754_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116749_
                 _final?116755_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116749_
                 _metaclass116757_
                 '10
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self116856_
               _id116857_
               _super116858_
               _precedence-list116859_
               _slots116860_
               _fields116861_
               _constructor116862_
               _struct?116863_
               _final?116864_
               _system?116865_
               _metaclass116866_
               _methods116867_)
        (##structure-set! _self116856_ _id116857_ '1 gxc#!type::t '#f)
        (##structure-set! _self116856_ _super116858_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self116856_
         _precedence-list116859_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self116856_ _slots116860_ '4 gxc#!class::t '#f)
        (##structure-set! _self116856_ _fields116861_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self116856_
         _constructor116862_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self116856_ _struct?116863_ '7 gxc#!class::t '#f)
        (##structure-set! _self116856_ _final?116864_ '8 gxc#!class::t '#f)
        (##structure-set! _self116856_ _metaclass116866_ '10 gxc#!class::t '#f)
        (if _methods116867_
            (##structure-set!
             _self116856_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods116867_))
             '11
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g117172_
        (let ((_g117171_ (let () (declare (not safe)) (##length _g117172_))))
          (cond ((let () (declare (not safe)) (##fx= _g117171_ 9))
                 (apply (lambda (_self116749_
                                 _id116750_
                                 _super116751_
                                 _slots116752_
                                 _ctor-method116753_
                                 _struct?116754_
                                 _final?116755_
                                 _system?116756_
                                 _metaclass116757_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self116749_
                             _id116750_
                             _super116751_
                             _slots116752_
                             _ctor-method116753_
                             _struct?116754_
                             _final?116755_
                             _system?116756_
                             _metaclass116757_)))
                        _g117172_))
                ((let () (declare (not safe)) (##fx= _g117171_ 12))
                 (apply (lambda (_self116856_
                                 _id116857_
                                 _super116858_
                                 _precedence-list116859_
                                 _slots116860_
                                 _fields116861_
                                 _constructor116862_
                                 _struct?116863_
                                 _final?116864_
                                 _system?116865_
                                 _metaclass116866_
                                 _methods116867_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self116856_
                             _id116857_
                             _super116858_
                             _precedence-list116859_
                             _slots116860_
                             _fields116861_
                             _constructor116862_
                             _struct?116863_
                             _final?116864_
                             _system?116865_
                             _metaclass116866_
                             _methods116867_)))
                        _g117172_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g117172_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass117040 __method-table117041)
        (let ((__metaclass117042
               (let ((__slot117052
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117040 'metaclass))))
                 (if __slot117052
                     __slot117052
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__methods117043
               (let ((__slot117053
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117040 'methods))))
                 (if __slot117053
                     __slot117053
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__id117044
               (let ((__slot117054
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117040 'id))))
                 (if __slot117054
                     __slot117054
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super117045
               (let ((__slot117055
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117040 'super))))
                 (if __slot117055
                     __slot117055
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__constructor117046
               (let ((__slot117056
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117040 'constructor))))
                 (if __slot117056
                     __slot117056
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__final?117047
               (let ((__slot117057
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117040 'final?))))
                 (if __slot117057
                     __slot117057
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__struct?117048
               (let ((__slot117058
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117040 'struct?))))
                 (if __slot117058
                     __slot117058
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__slots117049
               (let ((__slot117059
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117040 'slots))))
                 (if __slot117059
                     __slot117059
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__precedence-list117050
               (let ((__slot117060
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117040 'precedence-list))))
                 (if __slot117060
                     __slot117060
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__fields117051
               (let ((__slot117061
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117040 'fields))))
                 (if __slot117061
                     __slot117061
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields))))))
          (lambda _g117174_
            (let ((_g117173_
                   (let () (declare (not safe)) (##length _g117174_))))
              (cond ((let () (declare (not safe)) (##fx= _g117173_ 9))
                     (apply (lambda (_self116749_
                                     _id116750_
                                     _super116751_
                                     _slots116752_
                                     _ctor-method116753_
                                     _struct?116754_
                                     _final?116755_
                                     _system?116756_
                                     _metaclass116757_)
                              (let _lp116759_ ((_rest116761_ _super116751_))
                                (let* ((_rest116762116770_ _rest116761_)
                                       (_else116764116778_ (lambda () '#!void))
                                       (_K116766116784_
                                        (lambda (_rest116781_ _super-id116782_)
                                          (if (##structure-ref
                                               (let ((__tmp117177
                                                      (let ((__tmp117178
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id116750_ '()))))
                (declare (not safe))
                (cons '!class __tmp117178))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp117177
                                                  _super-id116782_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp117175
                                                     (let ((__tmp117176
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id116750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp117176))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp117175
                                                 _super-id116782_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp116759_ _rest116781_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest116762116770_))
                                      (let ((_hd116767116787_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest116762116770_)))
                                            (_tl116768116789_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest116762116770_))))
                                        (let* ((_super-id116792_
                                                _hd116767116787_)
                                               (_rest116794_ _tl116768116789_))
                                          (declare (not safe))
                                          (_K116766116784_
                                           _rest116794_
                                           _super-id116792_)))
                                      '#!void)))
                              (let* ((_ctor-method116844_
                                      (let ((_$e116796_ _ctor-method116753_))
                                        (if _$e116796_
                                            _$e116796_
                                            (let _lp116799_ ((_rest116801_
                                                              _super116751_)
                                                             (_method116802_
                                                              '#f))
                                              (let* ((_rest116803116811_
                                                      _rest116801_)
                                                     (_else116805116819_
                                                      (lambda ()
                                                        _method116802_))
                                                     (_K116807116832_
                                                      (lambda (_rest116822_
                                                               _super-id116823_)
                                                        (let* ((_klass116825_
                                                                (let ((__tmp117179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp117180
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116750_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp117180))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp117179
                           _super-id116823_)))
                       (_$e116827_
                        (##structure-ref _klass116825_ '6 gxc#!class::t '#f)))
                  (if _$e116827_
                      ((lambda (_ctor-method116830_)
                         (if _method116802_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method116830_ _method116802_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp116799_
                                    _rest116822_
                                    _ctor-method116830_))
                                 (let ((__tmp117181
                                        (let ((__tmp117182
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116750_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp117182))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp117181
                                    _method116802_
                                    _ctor-method116830_)))
                             (let ()
                               (declare (not safe))
                               (_lp116799_ _rest116822_ _ctor-method116830_))))
                       _$e116827_)
                      (let ()
                        (declare (not safe))
                        (_lp116799_ _rest116822_ _method116802_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest116803116811_))
                                                    (let ((_hd116808116835_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest116803116811_)))
                                                          (_tl116809116837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest116803116811_))))
                                                      (let* ((_super-id116840_
                                                              _hd116808116835_)
                                                             (_rest116842_
                                                              _tl116809116837_))
                                                        (declare (not safe))
                                                        (_K116807116832_
                                                         _rest116842_
                                                         _super-id116840_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else116805116819_))))))))
                                     (_g117183_
                                      (let ((__tmp117188
                                             (lambda (_klass-id116846_)
                                               (let ((__tmp117189
                                                      (##structure-ref
                                                       (let ((__tmp117190
                                                              (let ((__tmp117191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id116750_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp117191))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp117190 _klass-id116846_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id116846_
                                                       __tmp117189))))
                                            (__tmp117185
                                             (lambda (_klass-id116848_)
                                               (##structure-ref
                                                (let ((__tmp117186
                                                       (let ((__tmp117187
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id116750_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp117187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp117186
                                                   _klass-id116848_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super116751_
                                         'get-precedence-list:
                                         __tmp117188
                                         'struct:
                                         __tmp117185
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g117184_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117183_)
                                               (##vector-length _g117183_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117184_ 2)))
                                        (error "Context expects 2 values"
                                               _g117184_)))
                                  (let ((_precedence-list116850_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117183_ 0)))
                                        (_base-struct116851_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117183_ 1))))
                                    (let ((_fields116853_
                                           (let ((__tmp117192
                                                  (let ((__tmp117193
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id116750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp117193))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp117192
                                              _base-struct116851_
                                              _precedence-list116850_
                                              _slots116752_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116749_
                                         _id116750_
                                         __id117044
                                         __klass117040
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116749_
                                         _super116751_
                                         __super117045
                                         __klass117040
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116749_
                                         _precedence-list116850_
                                         __precedence-list117050
                                         __klass117040
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116749_
                                         _slots116752_
                                         __slots117049
                                         __klass117040
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116749_
                                         _fields116853_
                                         __fields117051
                                         __klass117040
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116749_
                                         _ctor-method116844_
                                         __constructor117046
                                         __klass117040
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116749_
                                         _struct?116754_
                                         __struct?117048
                                         __klass117040
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116749_
                                         _final?116755_
                                         __final?117047
                                         __klass117040
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116749_
                                         _metaclass116757_
                                         __metaclass117042
                                         __klass117040
                                         '#f)))))))
                            _g117174_))
                    ((let () (declare (not safe)) (##fx= _g117173_ 12))
                     (apply (lambda (_self116856_
                                     _id116857_
                                     _super116858_
                                     _precedence-list116859_
                                     _slots116860_
                                     _fields116861_
                                     _constructor116862_
                                     _struct?116863_
                                     _final?116864_
                                     _system?116865_
                                     _metaclass116866_
                                     _methods116867_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116856_
                                 _id116857_
                                 __id117044
                                 __klass117040
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116856_
                                 _super116858_
                                 __super117045
                                 __klass117040
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116856_
                                 _precedence-list116859_
                                 __precedence-list117050
                                 __klass117040
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116856_
                                 _slots116860_
                                 __slots117049
                                 __klass117040
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116856_
                                 _fields116861_
                                 __fields117051
                                 __klass117040
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116856_
                                 _constructor116862_
                                 __constructor117046
                                 __klass117040
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116856_
                                 _struct?116863_
                                 __struct?117048
                                 __klass117040
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116856_
                                 _final?116864_
                                 __final?117047
                                 __klass117040
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116856_
                                 _metaclass116866_
                                 __metaclass117042
                                 __klass117040
                                 '#f))
                              (if _methods116867_
                                  (let ((__tmp117194
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods116867_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self116856_
                                     __tmp117194
                                     __methods117043
                                     __klass117040
                                     '#f))
                                  '#!void))
                            _g117174_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g117174_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where116601_
               _base-struct116602_
               _precedence-list116603_
               _direct-slots116604_)
        (let* ((_base-fields116606_
                (if _base-struct116602_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where116601_
                        _base-struct116602_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields116608_ (reverse _base-fields116606_))
               (_seen-slots116616_
                (let ((_tab116610_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g116611116613_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab116610_ _g116611116613_ '#t)))
                   _base-fields116606_)
                  _tab116610_))
               (_process-slot116620_
                (lambda (_slot116618_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots116616_ _slot116618_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots116616_ _slot116618_ '#t))
                        (set! _r-fields116608_
                              (let ()
                                (declare (not safe))
                                (cons _slot116618_ _r-fields116608_))))))))
          (for-each
           (lambda (_mixin116623_)
             (let ((_klass116625_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where116601_
                       _mixin116623_))))
               (if (##structure-ref _klass116625_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot116620_
                    (##structure-ref _klass116625_ '5 gxc#!class::t '#f)))))
           _precedence-list116603_)
          (for-each _process-slot116620_ _direct-slots116604_)
          (reverse _r-fields116608_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass116560_ _slot116561_)
        (let _lp116563_ ((_rest116565_
                          (##structure-ref _klass116560_ '5 gxc#!class::t '#f))
                         (_offset116566_ '1))
          (let* ((_rest116567116575_ _rest116565_)
                 (_else116569116583_
                  (lambda ()
                    (let ((__tmp117196
                           (##structure-ref _klass116560_ '1 gxc#!type::t '#f))
                          (__tmp117195
                           (##structure-ref
                            _klass116560_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp117196
                       __tmp117195
                       _slot116561_))))
                 (_K116571116589_
                  (lambda (_rest116586_ _s116587_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s116587_ _slot116561_))
                        _offset116566_
                        (let ((__tmp117197
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset116566_ '1))))
                          (declare (not safe))
                          (_lp116563_ _rest116586_ __tmp117197))))))
            (if (let () (declare (not safe)) (##pair? _rest116567116575_))
                (let ((_hd116572116592_
                       (let ()
                         (declare (not safe))
                         (##car _rest116567116575_)))
                      (_tl116573116594_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116567116575_))))
                  (let* ((_s116597_ _hd116572116592_)
                         (_rest116599_ _tl116573116594_))
                    (declare (not safe))
                    (_K116571116589_ _rest116599_ _s116597_)))
                (let () (declare (not safe)) (_else116569116583_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass116518_ _slot116519_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass116518_ _slot116519_))
            _klass116518_
            (let _lp116521_ ((_rest116523_
                              (##structure-ref
                               _klass116518_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest116524116532_ _rest116523_)
                     (_else116526116540_ (lambda () '#f))
                     (_K116528116548_
                      (lambda (_rest116543_ _super116544_)
                        (let ((_super-class116546_
                               (let ((__tmp117198
                                      (let ((__tmp117199
                                             (let ((__tmp117201
                                                    (##structure-ref
                                                     _klass116518_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp117200
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot116519_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp117201
                                                     __tmp117200))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp117199))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp117198
                                  _super116544_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class116546_
                                 _slot116519_))
                              _super-class116546_
                              (let ()
                                (declare (not safe))
                                (_lp116521_ _rest116543_)))))))
                (if (let () (declare (not safe)) (##pair? _rest116524116532_))
                    (let ((_hd116529116551_
                           (let ()
                             (declare (not safe))
                             (##car _rest116524116532_)))
                          (_tl116530116553_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest116524116532_))))
                      (let* ((_super116556_ _hd116529116551_)
                             (_rest116558_ _tl116530116553_))
                        (declare (not safe))
                        (_K116528116548_ _rest116558_ _super116556_)))
                    (let () (declare (not safe)) (_else116526116540_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass116515_ _slot116516_)
        (if (##structure-ref _klass116515_ '7 gxc#!class::t '#f)
            (memq _slot116516_
                  (##structure-ref _klass116515_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self116512_ _id116513_)
        (##structure-set! _self116512_ _id116513_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass117062 __method-table117063)
        (let ((__id117064
               (let ((__slot117065
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117062 'id))))
                 (if __slot117065
                     __slot117065
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116512_ _id116513_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116512_
               _id116513_
               __id117064
               __klass117062
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
      (lambda (_self116387_ _id116388_)
        (##structure-set! _self116387_ _id116388_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass117066 __method-table117067)
        (let ((__id117068
               (let ((__slot117069
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117066 'id))))
                 (if __slot117069
                     __slot117069
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116387_ _id116388_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116387_
               _id116388_
               __id117068
               __klass117066
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
      (lambda (_self116260_ _id116261_ _slot116262_ _checked?116263_)
        (##structure-set! _self116260_ _id116261_ '1 gxc#!type::t '#f)
        (##structure-set! _self116260_ _slot116262_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self116260_
         _checked?116263_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass117070 __method-table117071)
        (let ((__id117072
               (let ((__slot117075
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117070 'id))))
                 (if __slot117075
                     __slot117075
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?117073
               (let ((__slot117076
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117070 'checked?))))
                 (if __slot117076
                     __slot117076
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot117074
               (let ((__slot117077
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117070 'slot))))
                 (if __slot117077
                     __slot117077
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self116260_ _id116261_ _slot116262_ _checked?116263_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116260_
               _id116261_
               __id117072
               __klass117070
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116260_
               _slot116262_
               __slot117074
               __klass117070
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116260_
               _checked?116263_
               __checked?117073
               __klass117070
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
      (lambda (_self116133_ _id116134_ _slot116135_ _checked?116136_)
        (##structure-set! _self116133_ _id116134_ '1 gxc#!type::t '#f)
        (##structure-set! _self116133_ _slot116135_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self116133_
         _checked?116136_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass117078 __method-table117079)
        (let ((__id117080
               (let ((__slot117083
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117078 'id))))
                 (if __slot117083
                     __slot117083
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?117081
               (let ((__slot117084
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117078 'checked?))))
                 (if __slot117084
                     __slot117084
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot117082
               (let ((__slot117085
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117078 'slot))))
                 (if __slot117085
                     __slot117085
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self116133_ _id116134_ _slot116135_ _checked?116136_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116133_
               _id116134_
               __id117080
               __klass117078
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116133_
               _slot116135_
               __slot117082
               __klass117078
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116133_
               _checked?116136_
               __checked?117081
               __klass117078
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
      (lambda (_self115977_
               _id115978_
               _arity115979_
               _dispatch115980_
               _inline115981_
               _typedecl115982_)
        (if (let ((__tmp117208
                   (let ()
                     (declare (not safe))
                     (##structure-length _self115977_))))
              (declare (not safe))
              (##fx< '5 __tmp117208))
            (begin
              (let ((__tmp117203
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115977_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115977_
                 _id115978_
                 '1
                 __tmp117203
                 '#f))
              (let ((__tmp117204
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115977_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115977_
                 _arity115979_
                 '2
                 __tmp117204
                 '#f))
              (let ((__tmp117205
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115977_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115977_
                 _dispatch115980_
                 '3
                 __tmp117205
                 '#f))
              (let ((__tmp117206
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115977_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115977_
                 _inline115981_
                 '4
                 __tmp117206
                 '#f))
              (let ((__tmp117207
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115977_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115977_
                 _typedecl115982_
                 '5
                 __tmp117207
                 '#f)))
            (let ((__tmp117202
                   (let ()
                     (declare (not safe))
                     (##vector-length _self115977_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self115977_
                     '5
                     __tmp117202)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self115987_ _id115988_ _arity115989_ _dispatch115990_)
        (let* ((_inline115992_ '#f) (_typedecl115994_ '#f))
          (if (let ((__tmp117215
                     (let ()
                       (declare (not safe))
                       (##structure-length _self115987_))))
                (declare (not safe))
                (##fx< '5 __tmp117215))
              (begin
                (let ((__tmp117210
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115987_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115987_
                   _id115988_
                   '1
                   __tmp117210
                   '#f))
                (let ((__tmp117211
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115987_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115987_
                   _arity115989_
                   '2
                   __tmp117211
                   '#f))
                (let ((__tmp117212
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115987_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115987_
                   _dispatch115990_
                   '3
                   __tmp117212
                   '#f))
                (let ((__tmp117213
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115987_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115987_
                   _inline115992_
                   '4
                   __tmp117213
                   '#f))
                (let ((__tmp117214
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115987_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115987_
                   _typedecl115994_
                   '5
                   __tmp117214
                   '#f)))
              (let ((__tmp117209
                     (let ()
                       (declare (not safe))
                       (##vector-length _self115987_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self115987_
                       '5
                       __tmp117209))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self115996_
               _id115997_
               _arity115998_
               _dispatch115999_
               _inline116000_)
        (let ((_typedecl116002_ '#f))
          (if (let ((__tmp117222
                     (let ()
                       (declare (not safe))
                       (##structure-length _self115996_))))
                (declare (not safe))
                (##fx< '5 __tmp117222))
              (begin
                (let ((__tmp117217
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115996_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115996_
                   _id115997_
                   '1
                   __tmp117217
                   '#f))
                (let ((__tmp117218
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115996_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115996_
                   _arity115998_
                   '2
                   __tmp117218
                   '#f))
                (let ((__tmp117219
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115996_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115996_
                   _dispatch115999_
                   '3
                   __tmp117219
                   '#f))
                (let ((__tmp117220
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115996_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115996_
                   _inline116000_
                   '4
                   __tmp117220
                   '#f))
                (let ((__tmp117221
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115996_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115996_
                   _typedecl116002_
                   '5
                   __tmp117221
                   '#f)))
              (let ((__tmp117216
                     (let ()
                       (declare (not safe))
                       (##vector-length _self115996_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self115996_
                       '5
                       __tmp117216))))))
    (define gxc#!lambda:::init!
      (lambda _g117224_
        (let ((_g117223_ (let () (declare (not safe)) (##length _g117224_))))
          (cond ((let () (declare (not safe)) (##fx= _g117223_ 4))
                 (apply (lambda (_self115987_
                                 _id115988_
                                 _arity115989_
                                 _dispatch115990_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self115987_
                             _id115988_
                             _arity115989_
                             _dispatch115990_)))
                        _g117224_))
                ((let () (declare (not safe)) (##fx= _g117223_ 5))
                 (apply (lambda (_self115996_
                                 _id115997_
                                 _arity115998_
                                 _dispatch115999_
                                 _inline116000_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self115996_
                             _id115997_
                             _arity115998_
                             _dispatch115999_
                             _inline116000_)))
                        _g117224_))
                ((let () (declare (not safe)) (##fx= _g117223_ 6))
                 (apply (lambda (_self116004_
                                 _id116005_
                                 _arity116006_
                                 _dispatch116007_
                                 _inline116008_
                                 _typedecl116009_)
                          (if (let ((__tmp117231
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self116004_))))
                                (declare (not safe))
                                (##fx< '5 __tmp117231))
                              (begin
                                (let ((__tmp117226
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116004_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116004_
                                   _id116005_
                                   '1
                                   __tmp117226
                                   '#f))
                                (let ((__tmp117227
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116004_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116004_
                                   _arity116006_
                                   '2
                                   __tmp117227
                                   '#f))
                                (let ((__tmp117228
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116004_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116004_
                                   _dispatch116007_
                                   '3
                                   __tmp117228
                                   '#f))
                                (let ((__tmp117229
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116004_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116004_
                                   _inline116008_
                                   '4
                                   __tmp117229
                                   '#f))
                                (let ((__tmp117230
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self116004_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self116004_
                                   _typedecl116009_
                                   '5
                                   __tmp117230
                                   '#f)))
                              (let ((__tmp117225
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self116004_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self116004_
                                       '5
                                       __tmp117225))))
                        _g117224_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g117224_))))))
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
      (lambda (_self115729_ . _args115730_)
        (apply struct-instance-init! _self115729_ _args115730_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type115604_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115604_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type115604_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass115597_)
        (let ((_$e115599_
               (##structure-ref _klass115597_ '11 gxc#!class::t '#f)))
          (if _$e115599_
              _$e115599_
              (let ((_tab115602_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass115597_
                 _tab115602_
                 '11
                 gxc#!class::t
                 '#f)
                _tab115602_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass115588_ _method115589_)
        (let ((_tab115590115592_
               (##structure-ref _klass115588_ '11 gxc#!class::t '#f)))
          (if _tab115590115592_
              (let ((_tab115595_ _tab115590115592_))
                (declare (not safe))
                (hash-get _tab115595_ _method115589_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type115585_ _method115586_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115585_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type115585_ _method115586_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym115569_ _type115570_ _local?115571_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115570_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym115569_
                     _type115570_)))
        (let ((__tmp117232
               (let () (declare (not safe)) (struct->list _type115570_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym115569_ '" " __tmp117232))
        (let ((__tmp117233
               (if _local?115571_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp117233 _sym115569_ _type115570_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym115576_ _type115577_)
        (let ((_local?115579_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym115576_
           _type115577_
           _local?115579_))))
    (define gxc#optimizer-declare-type!
      (lambda _g117235_
        (let ((_g117234_ (let () (declare (not safe)) (##length _g117235_))))
          (cond ((let () (declare (not safe)) (##fx= _g117234_ 2))
                 (apply (lambda (_sym115576_ _type115577_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym115576_
                             _type115577_)))
                        _g117235_))
                ((let () (declare (not safe)) (##fx= _g117234_ 3))
                 (apply (lambda (_sym115581_ _type115582_ _local?115583_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym115581_
                             _type115582_
                             _local?115583_)))
                        _g117235_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g117235_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym115555_ _local?115556_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym115555_))
        (let ((__tmp117236
               (if _local?115556_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp117236 _sym115555_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym115561_)
        (let ((_local?115563_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym115561_ _local?115563_))))
    (define gxc#optimizer-clear-type!
      (lambda _g117238_
        (let ((_g117237_ (let () (declare (not safe)) (##length _g117238_))))
          (cond ((let () (declare (not safe)) (##fx= _g117237_ 1))
                 (apply (lambda (_sym115561_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym115561_)))
                        _g117238_))
                ((let () (declare (not safe)) (##fx= _g117237_ 2))
                 (apply (lambda (_sym115565_ _local?115566_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym115565_
                             _local?115566_)))
                        _g117238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g117238_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t115523_ _method115524_ _sym115525_ _rebind?115526_)
        (let* ((_type115528_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t115523_)))
               (_$e115530_
                (let () (declare (not safe)) (gxc#!type-vtab _type115528_))))
          (if _$e115530_
              ((lambda (_vtab115533_)
                 (let ((_$e115535_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab115533_ _method115524_))))
                   (if _$e115535_
                       ((lambda (_existing115538_)
                          (if _rebind?115526_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t115523_
                                   '" "
                                   _method115524_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab115533_
                                   _method115524_
                                   _sym115525_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing115538_ _sym115525_))
                                  '#!void
                                  (let ((__tmp117243
                                         (let ((__tmp117244
                                                (let ((__tmp117245
                                                       (let ((__tmp117246
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym115525_ '()))))
                 (declare (not safe))
                 (cons _method115524_ __tmp117246))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t115523_
                                                        __tmp117245))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp117244))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp117243
                                     _method115524_)))))
                        _$e115535_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t115523_
                            '" "
                            _method115524_
                            '" => "
                            _sym115525_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab115533_
                            _method115524_
                            _sym115525_))))))
               _$e115530_)
              (if (let () (declare (not safe)) (not _type115528_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t115523_))
                  (let ((__tmp117239
                         (let ((__tmp117240
                                (let ((__tmp117241
                                       (let ((__tmp117242
                                              (let ()
                                                (declare (not safe))
                                                (cons _method115524_ '()))))
                                         (declare (not safe))
                                         (cons _sym115525_ __tmp117242))))
                                  (declare (not safe))
                                  (cons _type-t115523_ __tmp117241))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp117240))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp117239
                     _type115528_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t115543_ _method115544_ _sym115545_)
        (let ((_rebind?115547_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t115543_
           _method115544_
           _sym115545_
           _rebind?115547_))))
    (define gxc#optimizer-declare-method!
      (lambda _g117248_
        (let ((_g117247_ (let () (declare (not safe)) (##length _g117248_))))
          (cond ((let () (declare (not safe)) (##fx= _g117247_ 3))
                 (apply (lambda (_type-t115543_ _method115544_ _sym115545_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t115543_
                             _method115544_
                             _sym115545_)))
                        _g117248_))
                ((let () (declare (not safe)) (##fx= _g117247_ 4))
                 (apply (lambda (_type-t115549_
                                 _method115550_
                                 _sym115551_
                                 _rebind?115552_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t115549_
                             _method115550_
                             _sym115551_
                             _rebind?115552_)))
                        _g117248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g117248_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym115511_)
        (let ((_$e115519_
               (let ((_ht115512115514_ (gxc#current-compile-local-type)))
                 (if _ht115512115514_
                     (let ((_ht115517_ _ht115512115514_))
                       (declare (not safe))
                       (hash-get _ht115517_ _sym115511_))
                     '#f))))
          (if _$e115519_
              _$e115519_
              (let ((__tmp117249
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp117249 _sym115511_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym115503_)
        (let ((_type115504115506_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym115503_))))
          (if _type115504115506_
              (let ((_type115509_ _type115504115506_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type115509_ 'gxc#!alias::t))
                    (let ((__tmp117250
                           (##structure-ref _type115509_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp117250))
                    _type115509_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where115495_ _klass-id115496_)
        (let ((_$e115498_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id115496_))))
          (if _$e115498_
              ((lambda (_klass115501_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass115501_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where115495_
                        _klass-id115496_
                        _klass115501_)))
                 _klass115501_)
               _$e115498_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where115495_
                 _klass-id115496_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t115492_ _method115493_)
        (let ((__tmp117251
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t115492_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp117251 _method115493_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym115490_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym115490_))
        (let ((__tmp117252
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp117252 _sym115490_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym115488_)
        (let ((__tmp117253
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp117253 _sym115488_))))
    (define gxc#identifier-symbol
      (lambda (_stx115486_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx115486_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx115486_))
            (let () (declare (not safe)) (gx#stx-e _stx115486_)))))))
