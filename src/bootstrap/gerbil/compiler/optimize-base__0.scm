(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710617604)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp114133 (list))
            (__tmp114131
             (let ((__tmp114132
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114132 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp114133
         '(type ssxi methods)
         __tmp114131
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args114067_
        (apply make-instance gxc#optimizer-info::t _$args114067_)))
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
      (lambda (_self114065_)
        (if (let ((__tmp114134
                   (let ()
                     (declare (not safe))
                     (##structure-length _self114065_))))
              (declare (not safe))
              (##fx< '3 __tmp114134))
            (begin
              (let ((__tmp114136
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114135
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114065_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114065_
                 __tmp114136
                 '1
                 __tmp114135
                 '#f))
              (let ((__tmp114138
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114137
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114065_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114065_
                 __tmp114138
                 '2
                 __tmp114137
                 '#f))
              (let ((__tmp114140
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114139
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114065_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114065_
                 __tmp114140
                 '3
                 __tmp114139
                 '#f)))
            (let ((__tmp114141
                   (let ()
                     (declare (not safe))
                     (##vector-length _self114065_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self114065_
                     '3
                     __tmp114141)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp114144 (list))
            (__tmp114142
             (let ((__tmp114143
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114143 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp114144
         '(id)
         __tmp114142
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args113940_ (apply make-instance gxc#!type::t _$args113940_)))
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
      (let ((__tmp114147 (list gxc#!type::t))
            (__tmp114145
             (let ((__tmp114146
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114146 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp114147
         '()
         __tmp114145
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args113937_ (apply make-instance gxc#!alias::t _$args113937_)))
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
      (let ((__tmp114150 (list gxc#!type::t))
            (__tmp114148
             (let ((__tmp114149
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114149 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp114150
         '()
         __tmp114148
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args113934_
        (apply make-instance gxc#!procedure::t _$args113934_)))
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
      (let ((__tmp114153 (list gxc#!type::t))
            (__tmp114151
             (let ((__tmp114152
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114152 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp114153
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp114151
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args113931_ (apply make-instance gxc#!class::t _$args113931_)))
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
      (let ((__tmp114156 (list gxc#!procedure::t))
            (__tmp114154
             (let ((__tmp114155
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114155 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp114156
         '()
         __tmp114154
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args113928_
        (apply make-instance gxc#!predicate::t _$args113928_)))
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
      (let ((__tmp114159 (list gxc#!procedure::t))
            (__tmp114157
             (let ((__tmp114158
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114158 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp114159
         '()
         __tmp114157
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args113925_
        (apply make-instance gxc#!constructor::t _$args113925_)))
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
      (let ((__tmp114162 (list gxc#!procedure::t))
            (__tmp114160
             (let ((__tmp114161
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114161 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp114162
         '(slot checked?)
         __tmp114160
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args113922_
        (apply make-instance gxc#!accessor::t _$args113922_)))
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
      (let ((__tmp114165 (list gxc#!procedure::t))
            (__tmp114163
             (let ((__tmp114164
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114164 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp114165
         '(slot checked?)
         __tmp114163
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args113919_
        (apply make-instance gxc#!mutator::t _$args113919_)))
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
      (let ((__tmp114168 (list gxc#!procedure::t))
            (__tmp114166
             (let ((__tmp114167
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114167 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp114168
         '(arity dispatch inline inline-typedecl)
         __tmp114166
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args113916_
        (apply make-instance gxc#!lambda::t _$args113916_)))
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
      (let ((__tmp114171 (list gxc#!procedure::t))
            (__tmp114169
             (let ((__tmp114170
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114170 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp114171
         '(clauses)
         __tmp114169
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args113913_
        (apply make-instance gxc#!case-lambda::t _$args113913_)))
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
      (let ((__tmp114174 (list gxc#!procedure::t))
            (__tmp114172
             (let ((__tmp114173
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114173 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp114174
         '(table dispatch)
         __tmp114172
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args113910_
        (apply make-instance gxc#!kw-lambda::t _$args113910_)))
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
      (let ((__tmp114177 (list gxc#!procedure::t))
            (__tmp114175
             (let ((__tmp114176
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114176 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp114177
         '(keys main)
         __tmp114175
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args113907_
        (apply make-instance gxc#!kw-lambda-primary::t _$args113907_)))
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
      (let ((__tmp114178 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp114178
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args113904_
        (apply make-instance gxc#!primitive::t _$args113904_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp114179 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp114179
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args113901_
        (apply make-instance gxc#!primitive-lambda::t _$args113901_)))
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
      (let ((__tmp114180 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp114180
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args113898_
        (apply make-instance gxc#!primitive-case-lambda::t _$args113898_)))
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
      (lambda (_self113778_
               _id113779_
               _super113780_
               _slots113781_
               _ctor-method113782_
               _struct?113783_
               _final?113784_
               _system?113785_
               _metaclass113786_)
        (let _lp113788_ ((_rest113790_ _super113780_))
          (let* ((_rest113791113799_ _rest113790_)
                 (_else113793113807_ (lambda () '#!void))
                 (_K113795113813_
                  (lambda (_rest113810_ _super-id113811_)
                    (if (##structure-ref
                         (let ((__tmp114181
                                (let ((__tmp114182
                                       (let ()
                                         (declare (not safe))
                                         (cons _id113779_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp114182))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp114181
                            _super-id113811_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp114183
                               (let ((__tmp114184
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113779_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114184))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp114183
                           _super-id113811_))
                        '#!void)
                    (let () (declare (not safe)) (_lp113788_ _rest113810_)))))
            (if (let () (declare (not safe)) (##pair? _rest113791113799_))
                (let ((_hd113796113816_
                       (let ()
                         (declare (not safe))
                         (##car _rest113791113799_)))
                      (_tl113797113818_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113791113799_))))
                  (let* ((_super-id113821_ _hd113796113816_)
                         (_rest113823_ _tl113797113818_))
                    (declare (not safe))
                    (_K113795113813_ _rest113823_ _super-id113821_)))
                '#!void)))
        (let* ((_ctor-method113873_
                (let ((_$e113825_ _ctor-method113782_))
                  (if _$e113825_
                      _$e113825_
                      (let _lp113828_ ((_rest113830_ _super113780_)
                                       (_method113831_ '#f))
                        (let* ((_rest113832113840_ _rest113830_)
                               (_else113834113848_ (lambda () _method113831_))
                               (_K113836113861_
                                (lambda (_rest113851_ _super-id113852_)
                                  (let* ((_klass113854_
                                          (let ((__tmp114185
                                                 (let ((__tmp114186
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id113779_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp114186))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp114185
                                             _super-id113852_)))
                                         (_$e113856_
                                          (##structure-ref
                                           _klass113854_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e113856_
                                        ((lambda (_ctor-method113859_)
                                           (if _method113831_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method113859_
                                                          _method113831_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp113828_
                                                      _rest113851_
                                                      _ctor-method113859_))
                                                   (let ((__tmp114187
                                                          (let ((__tmp114188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id113779_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp114188))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp114187
                                                      _method113831_
                                                      _ctor-method113859_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp113828_
                                                  _rest113851_
                                                  _ctor-method113859_))))
                                         _$e113856_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp113828_
                                           _rest113851_
                                           _method113831_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest113832113840_))
                              (let ((_hd113837113864_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest113832113840_)))
                                    (_tl113838113866_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest113832113840_))))
                                (let* ((_super-id113869_ _hd113837113864_)
                                       (_rest113871_ _tl113838113866_))
                                  (declare (not safe))
                                  (_K113836113861_
                                   _rest113871_
                                   _super-id113869_)))
                              (let ()
                                (declare (not safe))
                                (_else113834113848_))))))))
               (_g114189_
                (let ((__tmp114194
                       (lambda (_klass-id113875_)
                         (let ((__tmp114195
                                (##structure-ref
                                 (let ((__tmp114196
                                        (let ((__tmp114197
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113779_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114197))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp114196
                                    _klass-id113875_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id113875_ __tmp114195))))
                      (__tmp114191
                       (lambda (_klass-id113877_)
                         (##structure-ref
                          (let ((__tmp114192
                                 (let ((__tmp114193
                                        (let ()
                                          (declare (not safe))
                                          (cons _id113779_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp114193))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp114192
                             _klass-id113877_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super113780_
                   'get-precedence-list:
                   __tmp114194
                   'struct:
                   __tmp114191
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g114190_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g114189_)
                         (##vector-length _g114189_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g114190_ 2)))
                  (error "Context expects 2 values" _g114190_)))
            (let ((_precedence-list113879_
                   (let () (declare (not safe)) (##vector-ref _g114189_ 0)))
                  (_base-struct113880_
                   (let () (declare (not safe)) (##vector-ref _g114189_ 1))))
              (let ((_fields113882_
                     (let ((__tmp114198
                            (let ((__tmp114199
                                   (let ()
                                     (declare (not safe))
                                     (cons _id113779_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp114199))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp114198
                        _base-struct113880_
                        _precedence-list113879_
                        _slots113781_))))
                (##structure-set! _self113778_ _id113779_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self113778_
                 _super113780_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113778_
                 _precedence-list113879_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113778_
                 _slots113781_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113778_
                 _fields113882_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113778_
                 _ctor-method113873_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113778_
                 _struct?113783_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113778_
                 _final?113784_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113778_
                 _metaclass113786_
                 '10
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self113885_
               _id113886_
               _super113887_
               _precedence-list113888_
               _slots113889_
               _fields113890_
               _constructor113891_
               _struct?113892_
               _final?113893_
               _system?113894_
               _metaclass113895_
               _methods113896_)
        (##structure-set! _self113885_ _id113886_ '1 gxc#!type::t '#f)
        (##structure-set! _self113885_ _super113887_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self113885_
         _precedence-list113888_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self113885_ _slots113889_ '4 gxc#!class::t '#f)
        (##structure-set! _self113885_ _fields113890_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self113885_
         _constructor113891_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self113885_ _struct?113892_ '7 gxc#!class::t '#f)
        (##structure-set! _self113885_ _final?113893_ '8 gxc#!class::t '#f)
        (##structure-set! _self113885_ _metaclass113895_ '10 gxc#!class::t '#f)
        (if _methods113896_
            (##structure-set!
             _self113885_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods113896_))
             '11
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g114201_
        (let ((_g114200_ (let () (declare (not safe)) (##length _g114201_))))
          (cond ((let () (declare (not safe)) (##fx= _g114200_ 9))
                 (apply (lambda (_self113778_
                                 _id113779_
                                 _super113780_
                                 _slots113781_
                                 _ctor-method113782_
                                 _struct?113783_
                                 _final?113784_
                                 _system?113785_
                                 _metaclass113786_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self113778_
                             _id113779_
                             _super113780_
                             _slots113781_
                             _ctor-method113782_
                             _struct?113783_
                             _final?113784_
                             _system?113785_
                             _metaclass113786_)))
                        _g114201_))
                ((let () (declare (not safe)) (##fx= _g114200_ 12))
                 (apply (lambda (_self113885_
                                 _id113886_
                                 _super113887_
                                 _precedence-list113888_
                                 _slots113889_
                                 _fields113890_
                                 _constructor113891_
                                 _struct?113892_
                                 _final?113893_
                                 _system?113894_
                                 _metaclass113895_
                                 _methods113896_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self113885_
                             _id113886_
                             _super113887_
                             _precedence-list113888_
                             _slots113889_
                             _fields113890_
                             _constructor113891_
                             _struct?113892_
                             _final?113893_
                             _system?113894_
                             _metaclass113895_
                             _methods113896_)))
                        _g114201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g114201_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass114069 __method-table114070)
        (let ((__id114071
               (let ((__slot114081
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114069 'id))))
                 (if __slot114081
                     __slot114081
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super114072
               (let ((__slot114082
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114069 'super))))
                 (if __slot114082
                     __slot114082
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__constructor114073
               (let ((__slot114083
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114069 'constructor))))
                 (if __slot114083
                     __slot114083
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__precedence-list114074
               (let ((__slot114084
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114069 'precedence-list))))
                 (if __slot114084
                     __slot114084
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__fields114075
               (let ((__slot114085
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114069 'fields))))
                 (if __slot114085
                     __slot114085
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__slots114076
               (let ((__slot114086
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114069 'slots))))
                 (if __slot114086
                     __slot114086
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__struct?114077
               (let ((__slot114087
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114069 'struct?))))
                 (if __slot114087
                     __slot114087
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__final?114078
               (let ((__slot114088
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114069 'final?))))
                 (if __slot114088
                     __slot114088
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__methods114079
               (let ((__slot114089
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114069 'methods))))
                 (if __slot114089
                     __slot114089
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__metaclass114080
               (let ((__slot114090
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114069 'metaclass))))
                 (if __slot114090
                     __slot114090
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass))))))
          (lambda _g114203_
            (let ((_g114202_
                   (let () (declare (not safe)) (##length _g114203_))))
              (cond ((let () (declare (not safe)) (##fx= _g114202_ 9))
                     (apply (lambda (_self113778_
                                     _id113779_
                                     _super113780_
                                     _slots113781_
                                     _ctor-method113782_
                                     _struct?113783_
                                     _final?113784_
                                     _system?113785_
                                     _metaclass113786_)
                              (let _lp113788_ ((_rest113790_ _super113780_))
                                (let* ((_rest113791113799_ _rest113790_)
                                       (_else113793113807_ (lambda () '#!void))
                                       (_K113795113813_
                                        (lambda (_rest113810_ _super-id113811_)
                                          (if (##structure-ref
                                               (let ((__tmp114204
                                                      (let ((__tmp114205
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id113779_ '()))))
                (declare (not safe))
                (cons '!class __tmp114205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp114204
                                                  _super-id113811_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp114206
                                                     (let ((__tmp114207
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id113779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp114207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp114206
                                                 _super-id113811_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp113788_ _rest113810_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest113791113799_))
                                      (let ((_hd113796113816_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest113791113799_)))
                                            (_tl113797113818_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest113791113799_))))
                                        (let* ((_super-id113821_
                                                _hd113796113816_)
                                               (_rest113823_ _tl113797113818_))
                                          (declare (not safe))
                                          (_K113795113813_
                                           _rest113823_
                                           _super-id113821_)))
                                      '#!void)))
                              (let* ((_ctor-method113873_
                                      (let ((_$e113825_ _ctor-method113782_))
                                        (if _$e113825_
                                            _$e113825_
                                            (let _lp113828_ ((_rest113830_
                                                              _super113780_)
                                                             (_method113831_
                                                              '#f))
                                              (let* ((_rest113832113840_
                                                      _rest113830_)
                                                     (_else113834113848_
                                                      (lambda ()
                                                        _method113831_))
                                                     (_K113836113861_
                                                      (lambda (_rest113851_
                                                               _super-id113852_)
                                                        (let* ((_klass113854_
                                                                (let ((__tmp114208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114209
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113779_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114209))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp114208
                           _super-id113852_)))
                       (_$e113856_
                        (##structure-ref _klass113854_ '6 gxc#!class::t '#f)))
                  (if _$e113856_
                      ((lambda (_ctor-method113859_)
                         (if _method113831_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method113859_ _method113831_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp113828_
                                    _rest113851_
                                    _ctor-method113859_))
                                 (let ((__tmp114210
                                        (let ((__tmp114211
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113779_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114211))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp114210
                                    _method113831_
                                    _ctor-method113859_)))
                             (let ()
                               (declare (not safe))
                               (_lp113828_ _rest113851_ _ctor-method113859_))))
                       _$e113856_)
                      (let ()
                        (declare (not safe))
                        (_lp113828_ _rest113851_ _method113831_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest113832113840_))
                                                    (let ((_hd113837113864_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest113832113840_)))
                                                          (_tl113838113866_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest113832113840_))))
                                                      (let* ((_super-id113869_
                                                              _hd113837113864_)
                                                             (_rest113871_
                                                              _tl113838113866_))
                                                        (declare (not safe))
                                                        (_K113836113861_
                                                         _rest113871_
                                                         _super-id113869_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else113834113848_))))))))
                                     (_g114212_
                                      (let ((__tmp114217
                                             (lambda (_klass-id113875_)
                                               (let ((__tmp114218
                                                      (##structure-ref
                                                       (let ((__tmp114219
                                                              (let ((__tmp114220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id113779_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp114220))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp114219 _klass-id113875_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id113875_
                                                       __tmp114218))))
                                            (__tmp114214
                                             (lambda (_klass-id113877_)
                                               (##structure-ref
                                                (let ((__tmp114215
                                                       (let ((__tmp114216
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id113779_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp114216))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp114215
                                                   _klass-id113877_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super113780_
                                         'get-precedence-list:
                                         __tmp114217
                                         'struct:
                                         __tmp114214
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g114213_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g114212_)
                                               (##vector-length _g114212_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g114213_ 2)))
                                        (error "Context expects 2 values"
                                               _g114213_)))
                                  (let ((_precedence-list113879_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114212_ 0)))
                                        (_base-struct113880_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114212_ 1))))
                                    (let ((_fields113882_
                                           (let ((__tmp114221
                                                  (let ((__tmp114222
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id113779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp114222))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp114221
                                              _base-struct113880_
                                              _precedence-list113879_
                                              _slots113781_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113778_
                                         _id113779_
                                         __id114071
                                         __klass114069
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113778_
                                         _super113780_
                                         __super114072
                                         __klass114069
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113778_
                                         _precedence-list113879_
                                         __precedence-list114074
                                         __klass114069
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113778_
                                         _slots113781_
                                         __slots114076
                                         __klass114069
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113778_
                                         _fields113882_
                                         __fields114075
                                         __klass114069
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113778_
                                         _ctor-method113873_
                                         __constructor114073
                                         __klass114069
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113778_
                                         _struct?113783_
                                         __struct?114077
                                         __klass114069
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113778_
                                         _final?113784_
                                         __final?114078
                                         __klass114069
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113778_
                                         _metaclass113786_
                                         __metaclass114080
                                         __klass114069
                                         '#f)))))))
                            _g114203_))
                    ((let () (declare (not safe)) (##fx= _g114202_ 12))
                     (apply (lambda (_self113885_
                                     _id113886_
                                     _super113887_
                                     _precedence-list113888_
                                     _slots113889_
                                     _fields113890_
                                     _constructor113891_
                                     _struct?113892_
                                     _final?113893_
                                     _system?113894_
                                     _metaclass113895_
                                     _methods113896_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113885_
                                 _id113886_
                                 __id114071
                                 __klass114069
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113885_
                                 _super113887_
                                 __super114072
                                 __klass114069
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113885_
                                 _precedence-list113888_
                                 __precedence-list114074
                                 __klass114069
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113885_
                                 _slots113889_
                                 __slots114076
                                 __klass114069
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113885_
                                 _fields113890_
                                 __fields114075
                                 __klass114069
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113885_
                                 _constructor113891_
                                 __constructor114073
                                 __klass114069
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113885_
                                 _struct?113892_
                                 __struct?114077
                                 __klass114069
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113885_
                                 _final?113893_
                                 __final?114078
                                 __klass114069
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113885_
                                 _metaclass113895_
                                 __metaclass114080
                                 __klass114069
                                 '#f))
                              (if _methods113896_
                                  (let ((__tmp114223
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods113896_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self113885_
                                     __tmp114223
                                     __methods114079
                                     __klass114069
                                     '#f))
                                  '#!void))
                            _g114203_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g114203_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where113630_
               _base-struct113631_
               _precedence-list113632_
               _direct-slots113633_)
        (let* ((_base-fields113635_
                (if _base-struct113631_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where113630_
                        _base-struct113631_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields113637_ (reverse _base-fields113635_))
               (_seen-slots113645_
                (let ((_tab113639_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g113640113642_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab113639_ _g113640113642_ '#t)))
                   _base-fields113635_)
                  _tab113639_))
               (_process-slot113649_
                (lambda (_slot113647_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots113645_ _slot113647_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots113645_ _slot113647_ '#t))
                        (set! _r-fields113637_
                              (let ()
                                (declare (not safe))
                                (cons _slot113647_ _r-fields113637_))))))))
          (for-each
           (lambda (_mixin113652_)
             (let ((_klass113654_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where113630_
                       _mixin113652_))))
               (if (##structure-ref _klass113654_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot113649_
                    (##structure-ref _klass113654_ '5 gxc#!class::t '#f)))))
           _precedence-list113632_)
          (for-each _process-slot113649_ _direct-slots113633_)
          (reverse _r-fields113637_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass113589_ _slot113590_)
        (let _lp113592_ ((_rest113594_
                          (##structure-ref _klass113589_ '5 gxc#!class::t '#f))
                         (_offset113595_ '1))
          (let* ((_rest113596113604_ _rest113594_)
                 (_else113598113612_
                  (lambda ()
                    (let ((__tmp114225
                           (##structure-ref _klass113589_ '1 gxc#!type::t '#f))
                          (__tmp114224
                           (##structure-ref
                            _klass113589_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp114225
                       __tmp114224
                       _slot113590_))))
                 (_K113600113618_
                  (lambda (_rest113615_ _s113616_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s113616_ _slot113590_))
                        _offset113595_
                        (let ((__tmp114226
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset113595_ '1))))
                          (declare (not safe))
                          (_lp113592_ _rest113615_ __tmp114226))))))
            (if (let () (declare (not safe)) (##pair? _rest113596113604_))
                (let ((_hd113601113621_
                       (let ()
                         (declare (not safe))
                         (##car _rest113596113604_)))
                      (_tl113602113623_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113596113604_))))
                  (let* ((_s113626_ _hd113601113621_)
                         (_rest113628_ _tl113602113623_))
                    (declare (not safe))
                    (_K113600113618_ _rest113628_ _s113626_)))
                (let () (declare (not safe)) (_else113598113612_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass113547_ _slot113548_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass113547_ _slot113548_))
            _klass113547_
            (let _lp113550_ ((_rest113552_
                              (##structure-ref
                               _klass113547_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest113553113561_ _rest113552_)
                     (_else113555113569_ (lambda () '#f))
                     (_K113557113577_
                      (lambda (_rest113572_ _super113573_)
                        (let ((_super-class113575_
                               (let ((__tmp114227
                                      (let ((__tmp114228
                                             (let ((__tmp114230
                                                    (##structure-ref
                                                     _klass113547_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp114229
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot113548_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp114230
                                                     __tmp114229))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp114228))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp114227
                                  _super113573_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class113575_
                                 _slot113548_))
                              _super-class113575_
                              (let ()
                                (declare (not safe))
                                (_lp113550_ _rest113572_)))))))
                (if (let () (declare (not safe)) (##pair? _rest113553113561_))
                    (let ((_hd113558113580_
                           (let ()
                             (declare (not safe))
                             (##car _rest113553113561_)))
                          (_tl113559113582_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest113553113561_))))
                      (let* ((_super113585_ _hd113558113580_)
                             (_rest113587_ _tl113559113582_))
                        (declare (not safe))
                        (_K113557113577_ _rest113587_ _super113585_)))
                    (let () (declare (not safe)) (_else113555113569_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass113544_ _slot113545_)
        (if (##structure-ref _klass113544_ '7 gxc#!class::t '#f)
            (memq _slot113545_
                  (##structure-ref _klass113544_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self113541_ _id113542_)
        (##structure-set! _self113541_ _id113542_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass114091 __method-table114092)
        (let ((__id114093
               (let ((__slot114094
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114091 'id))))
                 (if __slot114094
                     __slot114094
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113541_ _id113542_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113541_
               _id113542_
               __id114093
               __klass114091
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
      (lambda (_self113416_ _id113417_)
        (##structure-set! _self113416_ _id113417_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass114095 __method-table114096)
        (let ((__id114097
               (let ((__slot114098
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114095 'id))))
                 (if __slot114098
                     __slot114098
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113416_ _id113417_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113416_
               _id113417_
               __id114097
               __klass114095
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
      (lambda (_self113289_ _id113290_ _slot113291_ _checked?113292_)
        (##structure-set! _self113289_ _id113290_ '1 gxc#!type::t '#f)
        (##structure-set! _self113289_ _slot113291_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self113289_
         _checked?113292_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass114099 __method-table114100)
        (let ((__slot114101
               (let ((__slot114104
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114099 'slot))))
                 (if __slot114104
                     __slot114104
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id114102
               (let ((__slot114105
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114099 'id))))
                 (if __slot114105
                     __slot114105
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?114103
               (let ((__slot114106
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114099 'checked?))))
                 (if __slot114106
                     __slot114106
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self113289_ _id113290_ _slot113291_ _checked?113292_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113289_
               _id113290_
               __id114102
               __klass114099
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113289_
               _slot113291_
               __slot114101
               __klass114099
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113289_
               _checked?113292_
               __checked?114103
               __klass114099
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
      (lambda (_self113162_ _id113163_ _slot113164_ _checked?113165_)
        (##structure-set! _self113162_ _id113163_ '1 gxc#!type::t '#f)
        (##structure-set! _self113162_ _slot113164_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self113162_
         _checked?113165_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass114107 __method-table114108)
        (let ((__slot114109
               (let ((__slot114112
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114107 'slot))))
                 (if __slot114112
                     __slot114112
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id114110
               (let ((__slot114113
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114107 'id))))
                 (if __slot114113
                     __slot114113
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?114111
               (let ((__slot114114
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114107 'checked?))))
                 (if __slot114114
                     __slot114114
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self113162_ _id113163_ _slot113164_ _checked?113165_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113162_
               _id113163_
               __id114110
               __klass114107
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113162_
               _slot113164_
               __slot114109
               __klass114107
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113162_
               _checked?113165_
               __checked?114111
               __klass114107
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
      (lambda (_self113006_
               _id113007_
               _arity113008_
               _dispatch113009_
               _inline113010_
               _typedecl113011_)
        (if (let ((__tmp114231
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113006_))))
              (declare (not safe))
              (##fx< '5 __tmp114231))
            (begin
              (let ((__tmp114232
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113006_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113006_
                 _id113007_
                 '1
                 __tmp114232
                 '#f))
              (let ((__tmp114233
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113006_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113006_
                 _arity113008_
                 '2
                 __tmp114233
                 '#f))
              (let ((__tmp114234
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113006_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113006_
                 _dispatch113009_
                 '3
                 __tmp114234
                 '#f))
              (let ((__tmp114235
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113006_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113006_
                 _inline113010_
                 '4
                 __tmp114235
                 '#f))
              (let ((__tmp114236
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113006_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113006_
                 _typedecl113011_
                 '5
                 __tmp114236
                 '#f)))
            (let ((__tmp114237
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113006_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113006_
                     '5
                     __tmp114237)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self113016_ _id113017_ _arity113018_ _dispatch113019_)
        (let* ((_inline113021_ '#f) (_typedecl113023_ '#f))
          (if (let ((__tmp114238
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113016_))))
                (declare (not safe))
                (##fx< '5 __tmp114238))
              (begin
                (let ((__tmp114239
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113016_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113016_
                   _id113017_
                   '1
                   __tmp114239
                   '#f))
                (let ((__tmp114240
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113016_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113016_
                   _arity113018_
                   '2
                   __tmp114240
                   '#f))
                (let ((__tmp114241
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113016_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113016_
                   _dispatch113019_
                   '3
                   __tmp114241
                   '#f))
                (let ((__tmp114242
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113016_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113016_
                   _inline113021_
                   '4
                   __tmp114242
                   '#f))
                (let ((__tmp114243
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113016_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113016_
                   _typedecl113023_
                   '5
                   __tmp114243
                   '#f)))
              (let ((__tmp114244
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113016_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113016_
                       '5
                       __tmp114244))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self113025_
               _id113026_
               _arity113027_
               _dispatch113028_
               _inline113029_)
        (let ((_typedecl113031_ '#f))
          (if (let ((__tmp114245
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113025_))))
                (declare (not safe))
                (##fx< '5 __tmp114245))
              (begin
                (let ((__tmp114246
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113025_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113025_
                   _id113026_
                   '1
                   __tmp114246
                   '#f))
                (let ((__tmp114247
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113025_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113025_
                   _arity113027_
                   '2
                   __tmp114247
                   '#f))
                (let ((__tmp114248
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113025_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113025_
                   _dispatch113028_
                   '3
                   __tmp114248
                   '#f))
                (let ((__tmp114249
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113025_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113025_
                   _inline113029_
                   '4
                   __tmp114249
                   '#f))
                (let ((__tmp114250
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113025_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113025_
                   _typedecl113031_
                   '5
                   __tmp114250
                   '#f)))
              (let ((__tmp114251
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113025_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113025_
                       '5
                       __tmp114251))))))
    (define gxc#!lambda:::init!
      (lambda _g114253_
        (let ((_g114252_ (let () (declare (not safe)) (##length _g114253_))))
          (cond ((let () (declare (not safe)) (##fx= _g114252_ 4))
                 (apply (lambda (_self113016_
                                 _id113017_
                                 _arity113018_
                                 _dispatch113019_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self113016_
                             _id113017_
                             _arity113018_
                             _dispatch113019_)))
                        _g114253_))
                ((let () (declare (not safe)) (##fx= _g114252_ 5))
                 (apply (lambda (_self113025_
                                 _id113026_
                                 _arity113027_
                                 _dispatch113028_
                                 _inline113029_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self113025_
                             _id113026_
                             _arity113027_
                             _dispatch113028_
                             _inline113029_)))
                        _g114253_))
                ((let () (declare (not safe)) (##fx= _g114252_ 6))
                 (apply (lambda (_self113033_
                                 _id113034_
                                 _arity113035_
                                 _dispatch113036_
                                 _inline113037_
                                 _typedecl113038_)
                          (if (let ((__tmp114254
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self113033_))))
                                (declare (not safe))
                                (##fx< '5 __tmp114254))
                              (begin
                                (let ((__tmp114255
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113033_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113033_
                                   _id113034_
                                   '1
                                   __tmp114255
                                   '#f))
                                (let ((__tmp114256
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113033_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113033_
                                   _arity113035_
                                   '2
                                   __tmp114256
                                   '#f))
                                (let ((__tmp114257
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113033_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113033_
                                   _dispatch113036_
                                   '3
                                   __tmp114257
                                   '#f))
                                (let ((__tmp114258
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113033_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113033_
                                   _inline113037_
                                   '4
                                   __tmp114258
                                   '#f))
                                (let ((__tmp114259
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113033_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113033_
                                   _typedecl113038_
                                   '5
                                   __tmp114259
                                   '#f)))
                              (let ((__tmp114260
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self113033_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self113033_
                                       '5
                                       __tmp114260))))
                        _g114253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g114253_))))))
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
      (lambda (_self112758_ . _args112759_)
        (apply struct-instance-init! _self112758_ _args112759_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type112633_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112633_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type112633_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass112626_)
        (let ((_$e112628_
               (##structure-ref _klass112626_ '11 gxc#!class::t '#f)))
          (if _$e112628_
              _$e112628_
              (let ((_tab112631_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass112626_
                 _tab112631_
                 '11
                 gxc#!class::t
                 '#f)
                _tab112631_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass112617_ _method112618_)
        (let ((_tab112619112621_
               (##structure-ref _klass112617_ '11 gxc#!class::t '#f)))
          (if _tab112619112621_
              (let ((_tab112624_ _tab112619112621_))
                (declare (not safe))
                (hash-get _tab112624_ _method112618_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type112614_ _method112615_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112614_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type112614_ _method112615_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym112598_ _type112599_ _local?112600_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112599_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym112598_
                     _type112599_)))
        (let ((__tmp114261
               (let () (declare (not safe)) (struct->list _type112599_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym112598_ '" " __tmp114261))
        (let ((__tmp114262
               (if _local?112600_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp114262 _sym112598_ _type112599_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym112605_ _type112606_)
        (let ((_local?112608_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym112605_
           _type112606_
           _local?112608_))))
    (define gxc#optimizer-declare-type!
      (lambda _g114264_
        (let ((_g114263_ (let () (declare (not safe)) (##length _g114264_))))
          (cond ((let () (declare (not safe)) (##fx= _g114263_ 2))
                 (apply (lambda (_sym112605_ _type112606_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym112605_
                             _type112606_)))
                        _g114264_))
                ((let () (declare (not safe)) (##fx= _g114263_ 3))
                 (apply (lambda (_sym112610_ _type112611_ _local?112612_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym112610_
                             _type112611_
                             _local?112612_)))
                        _g114264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g114264_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym112584_ _local?112585_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym112584_))
        (let ((__tmp114265
               (if _local?112585_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp114265 _sym112584_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym112590_)
        (let ((_local?112592_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym112590_ _local?112592_))))
    (define gxc#optimizer-clear-type!
      (lambda _g114267_
        (let ((_g114266_ (let () (declare (not safe)) (##length _g114267_))))
          (cond ((let () (declare (not safe)) (##fx= _g114266_ 1))
                 (apply (lambda (_sym112590_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym112590_)))
                        _g114267_))
                ((let () (declare (not safe)) (##fx= _g114266_ 2))
                 (apply (lambda (_sym112594_ _local?112595_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym112594_
                             _local?112595_)))
                        _g114267_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g114267_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t112552_ _method112553_ _sym112554_ _rebind?112555_)
        (let* ((_type112557_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t112552_)))
               (_$e112559_
                (let () (declare (not safe)) (gxc#!type-vtab _type112557_))))
          (if _$e112559_
              ((lambda (_vtab112562_)
                 (let ((_$e112564_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab112562_ _method112553_))))
                   (if _$e112564_
                       ((lambda (_existing112567_)
                          (if _rebind?112555_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t112552_
                                   '" "
                                   _method112553_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab112562_
                                   _method112553_
                                   _sym112554_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing112567_ _sym112554_))
                                  '#!void
                                  (let ((__tmp114268
                                         (let ((__tmp114269
                                                (let ((__tmp114270
                                                       (let ((__tmp114271
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym112554_ '()))))
                 (declare (not safe))
                 (cons _method112553_ __tmp114271))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t112552_
                                                        __tmp114270))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp114269))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp114268
                                     _method112553_)))))
                        _$e112564_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t112552_
                            '" "
                            _method112553_
                            '" => "
                            _sym112554_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab112562_
                            _method112553_
                            _sym112554_))))))
               _$e112559_)
              (if (let () (declare (not safe)) (not _type112557_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t112552_))
                  (let ((__tmp114272
                         (let ((__tmp114273
                                (let ((__tmp114274
                                       (let ((__tmp114275
                                              (let ()
                                                (declare (not safe))
                                                (cons _method112553_ '()))))
                                         (declare (not safe))
                                         (cons _sym112554_ __tmp114275))))
                                  (declare (not safe))
                                  (cons _type-t112552_ __tmp114274))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp114273))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp114272
                     _type112557_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t112572_ _method112573_ _sym112574_)
        (let ((_rebind?112576_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t112572_
           _method112573_
           _sym112574_
           _rebind?112576_))))
    (define gxc#optimizer-declare-method!
      (lambda _g114277_
        (let ((_g114276_ (let () (declare (not safe)) (##length _g114277_))))
          (cond ((let () (declare (not safe)) (##fx= _g114276_ 3))
                 (apply (lambda (_type-t112572_ _method112573_ _sym112574_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t112572_
                             _method112573_
                             _sym112574_)))
                        _g114277_))
                ((let () (declare (not safe)) (##fx= _g114276_ 4))
                 (apply (lambda (_type-t112578_
                                 _method112579_
                                 _sym112580_
                                 _rebind?112581_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t112578_
                             _method112579_
                             _sym112580_
                             _rebind?112581_)))
                        _g114277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g114277_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym112540_)
        (let ((_$e112548_
               (let ((_ht112541112543_ (gxc#current-compile-local-type)))
                 (if _ht112541112543_
                     (let ((_ht112546_ _ht112541112543_))
                       (declare (not safe))
                       (hash-get _ht112546_ _sym112540_))
                     '#f))))
          (if _$e112548_
              _$e112548_
              (let ((__tmp114278
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp114278 _sym112540_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym112532_)
        (let ((_type112533112535_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym112532_))))
          (if _type112533112535_
              (let ((_type112538_ _type112533112535_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type112538_ 'gxc#!alias::t))
                    (let ((__tmp114279
                           (##structure-ref _type112538_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp114279))
                    _type112538_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where112524_ _klass-id112525_)
        (let ((_$e112527_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id112525_))))
          (if _$e112527_
              ((lambda (_klass112530_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass112530_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where112524_
                        _klass-id112525_
                        _klass112530_)))
                 _klass112530_)
               _$e112527_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where112524_
                 _klass-id112525_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t112521_ _method112522_)
        (let ((__tmp114280
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t112521_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp114280 _method112522_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym112519_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym112519_))
        (let ((__tmp114281
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp114281 _sym112519_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym112517_)
        (let ((__tmp114282
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp114282 _sym112517_))))
    (define gxc#identifier-symbol
      (lambda (_stx112515_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx112515_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx112515_))
            (let () (declare (not safe)) (gx#stx-e _stx112515_)))))))
