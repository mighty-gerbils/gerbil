(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708337967)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp226107 (list))
            (__tmp226105
             (let ((__tmp226106
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226106 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp226107
         '(type ssxi methods)
         __tmp226105
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args222060_
        (apply make-instance gxc#optimizer-info::t _$args222060_)))
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
      (lambda (_self222058_)
        (if (let ((__tmp226115
                   (let ()
                     (declare (not safe))
                     (##structure-length _self222058_))))
              (declare (not safe))
              (##fx< '3 __tmp226115))
            (begin
              (let ((__tmp226110
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp226109
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222058_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222058_
                 __tmp226110
                 '1
                 __tmp226109
                 '#f))
              (let ((__tmp226112
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp226111
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222058_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222058_
                 __tmp226112
                 '2
                 __tmp226111
                 '#f))
              (let ((__tmp226114
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp226113
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222058_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222058_
                 __tmp226114
                 '3
                 __tmp226113
                 '#f)))
            (let ((__tmp226108
                   (let ()
                     (declare (not safe))
                     (##vector-length _self222058_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self222058_
                     '3
                     __tmp226108)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp226118 (list))
            (__tmp226116
             (let ((__tmp226117
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226117 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp226118
         '(id)
         __tmp226116
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args221933_ (apply make-instance gxc#!type::t _$args221933_)))
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
      (let ((__tmp226121 (list gxc#!type::t))
            (__tmp226119
             (let ((__tmp226120
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226120 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp226121
         '()
         __tmp226119
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args221930_ (apply make-instance gxc#!alias::t _$args221930_)))
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
      (let ((__tmp226124 (list gxc#!type::t))
            (__tmp226122
             (let ((__tmp226123
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226123 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp226124
         '()
         __tmp226122
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args221927_
        (apply make-instance gxc#!procedure::t _$args221927_)))
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
      (let ((__tmp226127 (list gxc#!type::t))
            (__tmp226125
             (let ((__tmp226126
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226126 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp226127
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp226125
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args221924_ (apply make-instance gxc#!class::t _$args221924_)))
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
      (let ((__tmp226130 (list gxc#!procedure::t))
            (__tmp226128
             (let ((__tmp226129
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226129 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp226130
         '()
         __tmp226128
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args221921_
        (apply make-instance gxc#!predicate::t _$args221921_)))
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
      (let ((__tmp226133 (list gxc#!procedure::t))
            (__tmp226131
             (let ((__tmp226132
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226132 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp226133
         '()
         __tmp226131
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args221918_
        (apply make-instance gxc#!constructor::t _$args221918_)))
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
      (let ((__tmp226136 (list gxc#!procedure::t))
            (__tmp226134
             (let ((__tmp226135
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226135 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp226136
         '(slot checked?)
         __tmp226134
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args221915_
        (apply make-instance gxc#!accessor::t _$args221915_)))
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
      (let ((__tmp226139 (list gxc#!procedure::t))
            (__tmp226137
             (let ((__tmp226138
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226138 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp226139
         '(slot checked?)
         __tmp226137
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args221912_
        (apply make-instance gxc#!mutator::t _$args221912_)))
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
      (let ((__tmp226142 (list gxc#!procedure::t))
            (__tmp226140
             (let ((__tmp226141
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226141 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp226142
         '(arity dispatch inline inline-typedecl)
         __tmp226140
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args221909_
        (apply make-instance gxc#!lambda::t _$args221909_)))
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
      (let ((__tmp226145 (list gxc#!procedure::t))
            (__tmp226143
             (let ((__tmp226144
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226144 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp226145
         '(clauses)
         __tmp226143
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args221906_
        (apply make-instance gxc#!case-lambda::t _$args221906_)))
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
      (let ((__tmp226148 (list gxc#!procedure::t))
            (__tmp226146
             (let ((__tmp226147
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226147 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp226148
         '(table dispatch)
         __tmp226146
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args221903_
        (apply make-instance gxc#!kw-lambda::t _$args221903_)))
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
      (let ((__tmp226151 (list gxc#!procedure::t))
            (__tmp226149
             (let ((__tmp226150
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226150 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp226151
         '(keys main)
         __tmp226149
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args221900_
        (apply make-instance gxc#!kw-lambda-primary::t _$args221900_)))
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
      (let ((__tmp226152 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp226152
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args221897_
        (apply make-instance gxc#!primitive::t _$args221897_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp226153 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp226153
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args221894_
        (apply make-instance gxc#!primitive-lambda::t _$args221894_)))
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
      (let ((__tmp226154 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp226154
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args221891_
        (apply make-instance gxc#!primitive-case-lambda::t _$args221891_)))
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
      (lambda (_self221773_
               _id221774_
               _super221775_
               _slots221776_
               _ctor-method221777_
               _struct?221778_
               _final?221779_
               _metaclass221780_)
        (let _lp221782_ ((_rest221784_ _super221775_))
          (let* ((_rest221785221793_ _rest221784_)
                 (_else221787221801_ (lambda () '#!void))
                 (_K221789221807_
                  (lambda (_rest221804_ _super-id221805_)
                    (if (##structure-ref
                         (let ((__tmp226157
                                (let ((__tmp226158
                                       (let ()
                                         (declare (not safe))
                                         (cons _id221774_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp226158))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp226157
                            _super-id221805_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp226155
                               (let ((__tmp226156
                                      (let ()
                                        (declare (not safe))
                                        (cons _id221774_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp226156))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp226155
                           _super-id221805_))
                        '#!void)
                    (let () (declare (not safe)) (_lp221782_ _rest221804_)))))
            (if (let () (declare (not safe)) (##pair? _rest221785221793_))
                (let ((_hd221790221810_
                       (let ()
                         (declare (not safe))
                         (##car _rest221785221793_)))
                      (_tl221791221812_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest221785221793_))))
                  (let* ((_super-id221815_ _hd221790221810_)
                         (_rest221817_ _tl221791221812_))
                    (declare (not safe))
                    (_K221789221807_ _rest221817_ _super-id221815_)))
                '#!void)))
        (let* ((_ctor-method221867_
                (let ((_$e221819_ _ctor-method221777_))
                  (if _$e221819_
                      _$e221819_
                      (let _lp221822_ ((_rest221824_ _super221775_)
                                       (_method221825_ '#f))
                        (let* ((_rest221826221834_ _rest221824_)
                               (_else221828221842_ (lambda () _method221825_))
                               (_K221830221855_
                                (lambda (_rest221845_ _super-id221846_)
                                  (let* ((_klass221848_
                                          (let ((__tmp226159
                                                 (let ((__tmp226160
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id221774_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp226160))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp226159
                                             _super-id221846_)))
                                         (_$e221850_
                                          (##structure-ref
                                           _klass221848_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e221850_
                                        ((lambda (_ctor-method221853_)
                                           (if _method221825_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method221853_
                                                          _method221825_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp221822_
                                                      _rest221845_
                                                      _ctor-method221853_))
                                                   (let ((__tmp226161
                                                          (let ((__tmp226162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id221774_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp226162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp226161
                                                      _method221825_
                                                      _ctor-method221853_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp221822_
                                                  _rest221845_
                                                  _ctor-method221853_))))
                                         _$e221850_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp221822_
                                           _rest221845_
                                           _method221825_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest221826221834_))
                              (let ((_hd221831221858_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest221826221834_)))
                                    (_tl221832221860_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest221826221834_))))
                                (let* ((_super-id221863_ _hd221831221858_)
                                       (_rest221865_ _tl221832221860_))
                                  (declare (not safe))
                                  (_K221830221855_
                                   _rest221865_
                                   _super-id221863_)))
                              (let ()
                                (declare (not safe))
                                (_else221828221842_))))))))
               (_g226163_
                (let ((__tmp226168
                       (lambda (_klass-id221869_)
                         (let ((__tmp226169
                                (##structure-ref
                                 (let ((__tmp226170
                                        (let ((__tmp226171
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id221774_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp226171))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp226170
                                    _klass-id221869_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id221869_ __tmp226169))))
                      (__tmp226165
                       (lambda (_klass-id221871_)
                         (##structure-ref
                          (let ((__tmp226166
                                 (let ((__tmp226167
                                        (let ()
                                          (declare (not safe))
                                          (cons _id221774_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp226167))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp226166
                             _klass-id221871_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super221775_
                   'get-precedence-list:
                   __tmp226168
                   'struct:
                   __tmp226165
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g226164_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g226163_)
                         (##vector-length _g226163_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g226164_ 2)))
                  (error "Context expects 2 values" _g226164_)))
            (let ((_precedence-list221873_
                   (let () (declare (not safe)) (##vector-ref _g226163_ 0)))
                  (_base-struct221874_
                   (let () (declare (not safe)) (##vector-ref _g226163_ 1))))
              (let ((_fields221876_
                     (let ((__tmp226172
                            (let ((__tmp226173
                                   (let ()
                                     (declare (not safe))
                                     (cons _id221774_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp226173))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp226172
                        _base-struct221874_
                        _precedence-list221873_
                        _slots221776_))))
                (##structure-set! _self221773_ _id221774_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self221773_
                 _super221775_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self221773_
                 _precedence-list221873_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self221773_
                 _slots221776_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self221773_
                 _fields221876_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self221773_
                 _ctor-method221867_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self221773_
                 _struct?221778_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self221773_
                 _final?221779_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self221773_
                 _metaclass221780_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self221879_
               _id221880_
               _super221881_
               _precedence-list221882_
               _slots221883_
               _fields221884_
               _constructor221885_
               _struct?221886_
               _final?221887_
               _metaclass221888_
               _methods221889_)
        (##structure-set! _self221879_ _id221880_ '1 gxc#!type::t '#f)
        (##structure-set! _self221879_ _super221881_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self221879_
         _precedence-list221882_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self221879_ _slots221883_ '4 gxc#!class::t '#f)
        (##structure-set! _self221879_ _fields221884_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self221879_
         _constructor221885_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self221879_ _struct?221886_ '7 gxc#!class::t '#f)
        (##structure-set! _self221879_ _final?221887_ '8 gxc#!class::t '#f)
        (##structure-set! _self221879_ _metaclass221888_ '9 gxc#!class::t '#f)
        (if _methods221889_
            (##structure-set!
             _self221879_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods221889_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g226175_
        (let ((_g226174_ (let () (declare (not safe)) (##length _g226175_))))
          (cond ((let () (declare (not safe)) (##fx= _g226174_ 8))
                 (apply (lambda (_self221773_
                                 _id221774_
                                 _super221775_
                                 _slots221776_
                                 _ctor-method221777_
                                 _struct?221778_
                                 _final?221779_
                                 _metaclass221780_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self221773_
                             _id221774_
                             _super221775_
                             _slots221776_
                             _ctor-method221777_
                             _struct?221778_
                             _final?221779_
                             _metaclass221780_)))
                        _g226175_))
                ((let () (declare (not safe)) (##fx= _g226174_ 11))
                 (apply (lambda (_self221879_
                                 _id221880_
                                 _super221881_
                                 _precedence-list221882_
                                 _slots221883_
                                 _fields221884_
                                 _constructor221885_
                                 _struct?221886_
                                 _final?221887_
                                 _metaclass221888_
                                 _methods221889_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self221879_
                             _id221880_
                             _super221881_
                             _precedence-list221882_
                             _slots221883_
                             _fields221884_
                             _constructor221885_
                             _struct?221886_
                             _final?221887_
                             _metaclass221888_
                             _methods221889_)))
                        _g226175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g226175_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t226048)
        (let ((__precedence-list226049
               (let ((__tmp226059
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226048 'precedence-list))))
                 (if __tmp226059
                     __tmp226059
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__struct?226050
               (let ((__tmp226060
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226048 'struct?))))
                 (if __tmp226060
                     __tmp226060
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__constructor226051
               (let ((__tmp226061
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226048 'constructor))))
                 (if __tmp226061
                     __tmp226061
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__id226052
               (let ((__tmp226062
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226048 'id))))
                 (if __tmp226062
                     __tmp226062
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slots226053
               (let ((__tmp226063
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226048 'slots))))
                 (if __tmp226063
                     __tmp226063
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__methods226054
               (let ((__tmp226064
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226048 'methods))))
                 (if __tmp226064
                     __tmp226064
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__final?226055
               (let ((__tmp226065
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226048 'final?))))
                 (if __tmp226065
                     __tmp226065
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__fields226056
               (let ((__tmp226066
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226048 'fields))))
                 (if __tmp226066
                     __tmp226066
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__metaclass226057
               (let ((__tmp226067
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226048 'metaclass))))
                 (if __tmp226067
                     __tmp226067
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__super226058
               (let ((__tmp226068
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226048 'super))))
                 (if __tmp226068
                     __tmp226068
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super))))))
          (lambda _g226177_
            (let ((_g226176_
                   (let () (declare (not safe)) (##length _g226177_))))
              (cond ((let () (declare (not safe)) (##fx= _g226176_ 8))
                     (apply (lambda (_self221773_
                                     _id221774_
                                     _super221775_
                                     _slots221776_
                                     _ctor-method221777_
                                     _struct?221778_
                                     _final?221779_
                                     _metaclass221780_)
                              (let _lp221782_ ((_rest221784_ _super221775_))
                                (let* ((_rest221785221793_ _rest221784_)
                                       (_else221787221801_ (lambda () '#!void))
                                       (_K221789221807_
                                        (lambda (_rest221804_ _super-id221805_)
                                          (if (##structure-ref
                                               (let ((__tmp226180
                                                      (let ((__tmp226181
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id221774_ '()))))
                (declare (not safe))
                (cons '!class __tmp226181))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp226180
                                                  _super-id221805_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp226178
                                                     (let ((__tmp226179
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id221774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp226179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp226178
                                                 _super-id221805_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp221782_ _rest221804_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest221785221793_))
                                      (let ((_hd221790221810_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest221785221793_)))
                                            (_tl221791221812_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest221785221793_))))
                                        (let* ((_super-id221815_
                                                _hd221790221810_)
                                               (_rest221817_ _tl221791221812_))
                                          (declare (not safe))
                                          (_K221789221807_
                                           _rest221817_
                                           _super-id221815_)))
                                      '#!void)))
                              (let* ((_ctor-method221867_
                                      (let ((_$e221819_ _ctor-method221777_))
                                        (if _$e221819_
                                            _$e221819_
                                            (let _lp221822_ ((_rest221824_
                                                              _super221775_)
                                                             (_method221825_
                                                              '#f))
                                              (let* ((_rest221826221834_
                                                      _rest221824_)
                                                     (_else221828221842_
                                                      (lambda ()
                                                        _method221825_))
                                                     (_K221830221855_
                                                      (lambda (_rest221845_
                                                               _super-id221846_)
                                                        (let* ((_klass221848_
                                                                (let ((__tmp226182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp226183
                                      (let ()
                                        (declare (not safe))
                                        (cons _id221774_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp226183))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp226182
                           _super-id221846_)))
                       (_$e221850_
                        (##structure-ref _klass221848_ '6 gxc#!class::t '#f)))
                  (if _$e221850_
                      ((lambda (_ctor-method221853_)
                         (if _method221825_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method221853_ _method221825_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp221822_
                                    _rest221845_
                                    _ctor-method221853_))
                                 (let ((__tmp226184
                                        (let ((__tmp226185
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id221774_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp226185))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp226184
                                    _method221825_
                                    _ctor-method221853_)))
                             (let ()
                               (declare (not safe))
                               (_lp221822_ _rest221845_ _ctor-method221853_))))
                       _$e221850_)
                      (let ()
                        (declare (not safe))
                        (_lp221822_ _rest221845_ _method221825_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest221826221834_))
                                                    (let ((_hd221831221858_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest221826221834_)))
                                                          (_tl221832221860_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest221826221834_))))
                                                      (let* ((_super-id221863_
                                                              _hd221831221858_)
                                                             (_rest221865_
                                                              _tl221832221860_))
                                                        (declare (not safe))
                                                        (_K221830221855_
                                                         _rest221865_
                                                         _super-id221863_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else221828221842_))))))))
                                     (_g226186_
                                      (let ((__tmp226191
                                             (lambda (_klass-id221869_)
                                               (let ((__tmp226192
                                                      (##structure-ref
                                                       (let ((__tmp226193
                                                              (let ((__tmp226194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id221774_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp226194))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp226193 _klass-id221869_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id221869_
                                                       __tmp226192))))
                                            (__tmp226188
                                             (lambda (_klass-id221871_)
                                               (##structure-ref
                                                (let ((__tmp226189
                                                       (let ((__tmp226190
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id221774_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp226190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp226189
                                                   _klass-id221871_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super221775_
                                         'get-precedence-list:
                                         __tmp226191
                                         'struct:
                                         __tmp226188
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g226187_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g226186_)
                                               (##vector-length _g226186_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g226187_ 2)))
                                        (error "Context expects 2 values"
                                               _g226187_)))
                                  (let ((_precedence-list221873_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226186_ 0)))
                                        (_base-struct221874_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g226186_ 1))))
                                    (let ((_fields221876_
                                           (let ((__tmp226195
                                                  (let ((__tmp226196
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id221774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp226196))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp226195
                                              _base-struct221874_
                                              _precedence-list221873_
                                              _slots221776_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self221773_
                                         _id221774_
                                         __id226052
                                         __t226048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self221773_
                                         _super221775_
                                         __super226058
                                         __t226048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self221773_
                                         _precedence-list221873_
                                         __precedence-list226049
                                         __t226048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self221773_
                                         _slots221776_
                                         __slots226053
                                         __t226048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self221773_
                                         _fields221876_
                                         __fields226056
                                         __t226048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self221773_
                                         _ctor-method221867_
                                         __constructor226051
                                         __t226048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self221773_
                                         _struct?221778_
                                         __struct?226050
                                         __t226048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self221773_
                                         _final?221779_
                                         __final?226055
                                         __t226048
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self221773_
                                         _metaclass221780_
                                         __metaclass226057
                                         __t226048
                                         '#f)))))))
                            _g226177_))
                    ((let () (declare (not safe)) (##fx= _g226176_ 11))
                     (apply (lambda (_self221879_
                                     _id221880_
                                     _super221881_
                                     _precedence-list221882_
                                     _slots221883_
                                     _fields221884_
                                     _constructor221885_
                                     _struct?221886_
                                     _final?221887_
                                     _metaclass221888_
                                     _methods221889_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self221879_
                                 _id221880_
                                 __id226052
                                 __t226048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self221879_
                                 _super221881_
                                 __super226058
                                 __t226048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self221879_
                                 _precedence-list221882_
                                 __precedence-list226049
                                 __t226048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self221879_
                                 _slots221883_
                                 __slots226053
                                 __t226048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self221879_
                                 _fields221884_
                                 __fields226056
                                 __t226048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self221879_
                                 _constructor221885_
                                 __constructor226051
                                 __t226048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self221879_
                                 _struct?221886_
                                 __struct?226050
                                 __t226048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self221879_
                                 _final?221887_
                                 __final?226055
                                 __t226048
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self221879_
                                 _metaclass221888_
                                 __metaclass226057
                                 __t226048
                                 '#f))
                              (if _methods221889_
                                  (let ((__tmp226197
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods221889_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self221879_
                                     __tmp226197
                                     __methods226054
                                     __t226048
                                     '#f))
                                  '#!void))
                            _g226177_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g226177_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where221625_
               _base-struct221626_
               _precedence-list221627_
               _direct-slots221628_)
        (let* ((_base-fields221630_
                (if _base-struct221626_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where221625_
                        _base-struct221626_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields221632_ (reverse _base-fields221630_))
               (_seen-slots221640_
                (let ((_tab221634_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g221635221637_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab221634_ _g221635221637_ '#t)))
                   _base-fields221630_)
                  _tab221634_))
               (_process-slot221644_
                (lambda (_slot221642_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots221640_ _slot221642_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots221640_ _slot221642_ '#t))
                        (set! _r-fields221632_
                              (let ()
                                (declare (not safe))
                                (cons _slot221642_ _r-fields221632_))))))))
          (for-each
           (lambda (_mixin221647_)
             (let ((_klass221649_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where221625_
                       _mixin221647_))))
               (if (##structure-ref _klass221649_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot221644_
                    (##structure-ref _klass221649_ '5 gxc#!class::t '#f)))))
           _precedence-list221627_)
          (for-each _process-slot221644_ _direct-slots221628_)
          (reverse _r-fields221632_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass221584_ _slot221585_)
        (let _lp221587_ ((_rest221589_
                          (##structure-ref _klass221584_ '5 gxc#!class::t '#f))
                         (_offset221590_ '1))
          (let* ((_rest221591221599_ _rest221589_)
                 (_else221593221607_
                  (lambda ()
                    (let ((__tmp226199
                           (##structure-ref _klass221584_ '1 gxc#!type::t '#f))
                          (__tmp226198
                           (##structure-ref
                            _klass221584_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp226199
                       __tmp226198
                       _slot221585_))))
                 (_K221595221613_
                  (lambda (_rest221610_ _s221611_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s221611_ _slot221585_))
                        _offset221590_
                        (let ((__tmp226200
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset221590_ '1))))
                          (declare (not safe))
                          (_lp221587_ _rest221610_ __tmp226200))))))
            (if (let () (declare (not safe)) (##pair? _rest221591221599_))
                (let ((_hd221596221616_
                       (let ()
                         (declare (not safe))
                         (##car _rest221591221599_)))
                      (_tl221597221618_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest221591221599_))))
                  (let* ((_s221621_ _hd221596221616_)
                         (_rest221623_ _tl221597221618_))
                    (declare (not safe))
                    (_K221595221613_ _rest221623_ _s221621_)))
                (let () (declare (not safe)) (_else221593221607_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass221542_ _slot221543_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass221542_ _slot221543_))
            _klass221542_
            (let _lp221545_ ((_rest221547_
                              (##structure-ref
                               _klass221542_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest221548221556_ _rest221547_)
                     (_else221550221564_ (lambda () '#f))
                     (_K221552221572_
                      (lambda (_rest221567_ _super221568_)
                        (let ((_super-class221570_
                               (let ((__tmp226201
                                      (let ((__tmp226202
                                             (let ((__tmp226204
                                                    (##structure-ref
                                                     _klass221542_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp226203
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot221543_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp226204
                                                     __tmp226203))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp226202))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp226201
                                  _super221568_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class221570_
                                 _slot221543_))
                              _super-class221570_
                              (let ()
                                (declare (not safe))
                                (_lp221545_ _rest221567_)))))))
                (if (let () (declare (not safe)) (##pair? _rest221548221556_))
                    (let ((_hd221553221575_
                           (let ()
                             (declare (not safe))
                             (##car _rest221548221556_)))
                          (_tl221554221577_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest221548221556_))))
                      (let* ((_super221580_ _hd221553221575_)
                             (_rest221582_ _tl221554221577_))
                        (declare (not safe))
                        (_K221552221572_ _rest221582_ _super221580_)))
                    (let () (declare (not safe)) (_else221550221564_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass221539_ _slot221540_)
        (if (##structure-ref _klass221539_ '7 gxc#!class::t '#f)
            (memq _slot221540_
                  (##structure-ref _klass221539_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self221536_ _id221537_)
        (##structure-set! _self221536_ _id221537_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t226069)
        (let ((__id226070
               (let ((__tmp226071
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226069 'id))))
                 (if __tmp226071
                     __tmp226071
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self221536_ _id221537_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self221536_
               _id221537_
               __id226070
               __t226069
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
      (lambda (_self221411_ _id221412_)
        (##structure-set! _self221411_ _id221412_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t226072)
        (let ((__id226073
               (let ((__tmp226074
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226072 'id))))
                 (if __tmp226074
                     __tmp226074
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self221411_ _id221412_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self221411_
               _id221412_
               __id226073
               __t226072
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
      (lambda (_self221284_ _id221285_ _slot221286_ _checked?221287_)
        (##structure-set! _self221284_ _id221285_ '1 gxc#!type::t '#f)
        (##structure-set! _self221284_ _slot221286_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self221284_
         _checked?221287_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t226075)
        (let ((__checked?226076
               (let ((__tmp226079
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226075 'checked?))))
                 (if __tmp226079
                     __tmp226079
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot226077
               (let ((__tmp226080
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226075 'slot))))
                 (if __tmp226080
                     __tmp226080
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id226078
               (let ((__tmp226081
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226075 'id))))
                 (if __tmp226081
                     __tmp226081
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self221284_ _id221285_ _slot221286_ _checked?221287_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self221284_
               _id221285_
               __id226078
               __t226075
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self221284_
               _slot221286_
               __slot226077
               __t226075
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self221284_
               _checked?221287_
               __checked?226076
               __t226075
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
      (lambda (_self221157_ _id221158_ _slot221159_ _checked?221160_)
        (##structure-set! _self221157_ _id221158_ '1 gxc#!type::t '#f)
        (##structure-set! _self221157_ _slot221159_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self221157_
         _checked?221160_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t226082)
        (let ((__slot226083
               (let ((__tmp226086
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226082 'slot))))
                 (if __tmp226086
                     __tmp226086
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id226084
               (let ((__tmp226087
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226082 'id))))
                 (if __tmp226087
                     __tmp226087
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?226085
               (let ((__tmp226088
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226082 'checked?))))
                 (if __tmp226088
                     __tmp226088
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self221157_ _id221158_ _slot221159_ _checked?221160_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self221157_
               _id221158_
               __id226084
               __t226082
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self221157_
               _slot221159_
               __slot226083
               __t226082
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self221157_
               _checked?221160_
               __checked?226085
               __t226082
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
      (lambda (_self221001_
               _id221002_
               _arity221003_
               _dispatch221004_
               _inline221005_
               _typedecl221006_)
        (if (let ((__tmp226211
                   (let ()
                     (declare (not safe))
                     (##structure-length _self221001_))))
              (declare (not safe))
              (##fx< '5 __tmp226211))
            (begin
              (let ((__tmp226206
                     (let ()
                       (declare (not safe))
                       (##structure-type _self221001_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self221001_
                 _id221002_
                 '1
                 __tmp226206
                 '#f))
              (let ((__tmp226207
                     (let ()
                       (declare (not safe))
                       (##structure-type _self221001_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self221001_
                 _arity221003_
                 '2
                 __tmp226207
                 '#f))
              (let ((__tmp226208
                     (let ()
                       (declare (not safe))
                       (##structure-type _self221001_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self221001_
                 _dispatch221004_
                 '3
                 __tmp226208
                 '#f))
              (let ((__tmp226209
                     (let ()
                       (declare (not safe))
                       (##structure-type _self221001_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self221001_
                 _inline221005_
                 '4
                 __tmp226209
                 '#f))
              (let ((__tmp226210
                     (let ()
                       (declare (not safe))
                       (##structure-type _self221001_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self221001_
                 _typedecl221006_
                 '5
                 __tmp226210
                 '#f)))
            (let ((__tmp226205
                   (let ()
                     (declare (not safe))
                     (##vector-length _self221001_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self221001_
                     '5
                     __tmp226205)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self221011_ _id221012_ _arity221013_ _dispatch221014_)
        (let* ((_inline221016_ '#f) (_typedecl221018_ '#f))
          (if (let ((__tmp226218
                     (let ()
                       (declare (not safe))
                       (##structure-length _self221011_))))
                (declare (not safe))
                (##fx< '5 __tmp226218))
              (begin
                (let ((__tmp226213
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221011_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221011_
                   _id221012_
                   '1
                   __tmp226213
                   '#f))
                (let ((__tmp226214
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221011_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221011_
                   _arity221013_
                   '2
                   __tmp226214
                   '#f))
                (let ((__tmp226215
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221011_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221011_
                   _dispatch221014_
                   '3
                   __tmp226215
                   '#f))
                (let ((__tmp226216
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221011_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221011_
                   _inline221016_
                   '4
                   __tmp226216
                   '#f))
                (let ((__tmp226217
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221011_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221011_
                   _typedecl221018_
                   '5
                   __tmp226217
                   '#f)))
              (let ((__tmp226212
                     (let ()
                       (declare (not safe))
                       (##vector-length _self221011_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self221011_
                       '5
                       __tmp226212))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self221020_
               _id221021_
               _arity221022_
               _dispatch221023_
               _inline221024_)
        (let ((_typedecl221026_ '#f))
          (if (let ((__tmp226225
                     (let ()
                       (declare (not safe))
                       (##structure-length _self221020_))))
                (declare (not safe))
                (##fx< '5 __tmp226225))
              (begin
                (let ((__tmp226220
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221020_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221020_
                   _id221021_
                   '1
                   __tmp226220
                   '#f))
                (let ((__tmp226221
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221020_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221020_
                   _arity221022_
                   '2
                   __tmp226221
                   '#f))
                (let ((__tmp226222
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221020_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221020_
                   _dispatch221023_
                   '3
                   __tmp226222
                   '#f))
                (let ((__tmp226223
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221020_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221020_
                   _inline221024_
                   '4
                   __tmp226223
                   '#f))
                (let ((__tmp226224
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221020_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221020_
                   _typedecl221026_
                   '5
                   __tmp226224
                   '#f)))
              (let ((__tmp226219
                     (let ()
                       (declare (not safe))
                       (##vector-length _self221020_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self221020_
                       '5
                       __tmp226219))))))
    (define gxc#!lambda:::init!
      (lambda _g226227_
        (let ((_g226226_ (let () (declare (not safe)) (##length _g226227_))))
          (cond ((let () (declare (not safe)) (##fx= _g226226_ 4))
                 (apply (lambda (_self221011_
                                 _id221012_
                                 _arity221013_
                                 _dispatch221014_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self221011_
                             _id221012_
                             _arity221013_
                             _dispatch221014_)))
                        _g226227_))
                ((let () (declare (not safe)) (##fx= _g226226_ 5))
                 (apply (lambda (_self221020_
                                 _id221021_
                                 _arity221022_
                                 _dispatch221023_
                                 _inline221024_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self221020_
                             _id221021_
                             _arity221022_
                             _dispatch221023_
                             _inline221024_)))
                        _g226227_))
                ((let () (declare (not safe)) (##fx= _g226226_ 6))
                 (apply (lambda (_self221028_
                                 _id221029_
                                 _arity221030_
                                 _dispatch221031_
                                 _inline221032_
                                 _typedecl221033_)
                          (if (let ((__tmp226234
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self221028_))))
                                (declare (not safe))
                                (##fx< '5 __tmp226234))
                              (begin
                                (let ((__tmp226229
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self221028_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self221028_
                                   _id221029_
                                   '1
                                   __tmp226229
                                   '#f))
                                (let ((__tmp226230
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self221028_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self221028_
                                   _arity221030_
                                   '2
                                   __tmp226230
                                   '#f))
                                (let ((__tmp226231
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self221028_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self221028_
                                   _dispatch221031_
                                   '3
                                   __tmp226231
                                   '#f))
                                (let ((__tmp226232
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self221028_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self221028_
                                   _inline221032_
                                   '4
                                   __tmp226232
                                   '#f))
                                (let ((__tmp226233
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self221028_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self221028_
                                   _typedecl221033_
                                   '5
                                   __tmp226233
                                   '#f)))
                              (let ((__tmp226228
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self221028_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self221028_
                                       '5
                                       __tmp226228))))
                        _g226227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g226227_))))))
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
      (lambda (_self220753_ . _args220754_)
        (apply struct-instance-init! _self220753_ _args220754_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type220628_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type220628_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type220628_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass220621_)
        (let ((_$e220623_
               (##structure-ref _klass220621_ '10 gxc#!class::t '#f)))
          (if _$e220623_
              _$e220623_
              (let ((_tab220626_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass220621_
                 _tab220626_
                 '10
                 gxc#!class::t
                 '#f)
                _tab220626_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass220612_ _method220613_)
        (let ((_tab220614220616_
               (##structure-ref _klass220612_ '10 gxc#!class::t '#f)))
          (if _tab220614220616_
              (let ((_tab220619_ _tab220614220616_))
                (declare (not safe))
                (hash-get _tab220619_ _method220613_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type220609_ _method220610_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type220609_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type220609_ _method220610_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym220593_ _type220594_ _local?220595_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type220594_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym220593_
                     _type220594_)))
        (let ((__tmp226235
               (let () (declare (not safe)) (struct->list _type220594_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym220593_ '" " __tmp226235))
        (let ((__tmp226236
               (if _local?220595_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp226236 _sym220593_ _type220594_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym220600_ _type220601_)
        (let ((_local?220603_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym220600_
           _type220601_
           _local?220603_))))
    (define gxc#optimizer-declare-type!
      (lambda _g226238_
        (let ((_g226237_ (let () (declare (not safe)) (##length _g226238_))))
          (cond ((let () (declare (not safe)) (##fx= _g226237_ 2))
                 (apply (lambda (_sym220600_ _type220601_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym220600_
                             _type220601_)))
                        _g226238_))
                ((let () (declare (not safe)) (##fx= _g226237_ 3))
                 (apply (lambda (_sym220605_ _type220606_ _local?220607_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym220605_
                             _type220606_
                             _local?220607_)))
                        _g226238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g226238_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym220579_ _local?220580_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym220579_))
        (let ((__tmp226239
               (if _local?220580_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp226239 _sym220579_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym220585_)
        (let ((_local?220587_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym220585_ _local?220587_))))
    (define gxc#optimizer-clear-type!
      (lambda _g226241_
        (let ((_g226240_ (let () (declare (not safe)) (##length _g226241_))))
          (cond ((let () (declare (not safe)) (##fx= _g226240_ 1))
                 (apply (lambda (_sym220585_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym220585_)))
                        _g226241_))
                ((let () (declare (not safe)) (##fx= _g226240_ 2))
                 (apply (lambda (_sym220589_ _local?220590_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym220589_
                             _local?220590_)))
                        _g226241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g226241_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t220552_ _method220553_ _sym220554_ _rebind?220555_)
        (let* ((_type220557_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t220552_)))
               (_$e220559_
                (let () (declare (not safe)) (gxc#!type-vtab _type220557_))))
          (if _$e220559_
              ((lambda (_vtab220562_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab220562_ _method220553_))
                     (if _rebind?220555_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t220552_
                              '" "
                              _method220553_))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              _vtab220562_
                              _method220553_
                              _sym220554_)))
                         (let ((__tmp226246
                                (let ((__tmp226247
                                       (let ((__tmp226248
                                              (let ((__tmp226249
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym220554_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method220553_
                                                      __tmp226249))))
                                         (declare (not safe))
                                         (cons _type-t220552_ __tmp226248))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp226247))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp226246
                            _method220553_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t220552_
                          '" "
                          _method220553_
                          '" => "
                          _sym220554_))
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _vtab220562_
                          _method220553_
                          _sym220554_)))))
               _$e220559_)
              (if (let () (declare (not safe)) (not _type220557_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t220552_))
                  (let ((__tmp226242
                         (let ((__tmp226243
                                (let ((__tmp226244
                                       (let ((__tmp226245
                                              (let ()
                                                (declare (not safe))
                                                (cons _method220553_ '()))))
                                         (declare (not safe))
                                         (cons _sym220554_ __tmp226245))))
                                  (declare (not safe))
                                  (cons _type-t220552_ __tmp226244))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp226243))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp226242
                     _type220557_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t220567_ _method220568_ _sym220569_)
        (let ((_rebind?220571_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t220567_
           _method220568_
           _sym220569_
           _rebind?220571_))))
    (define gxc#optimizer-declare-method!
      (lambda _g226251_
        (let ((_g226250_ (let () (declare (not safe)) (##length _g226251_))))
          (cond ((let () (declare (not safe)) (##fx= _g226250_ 3))
                 (apply (lambda (_type-t220567_ _method220568_ _sym220569_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t220567_
                             _method220568_
                             _sym220569_)))
                        _g226251_))
                ((let () (declare (not safe)) (##fx= _g226250_ 4))
                 (apply (lambda (_type-t220573_
                                 _method220574_
                                 _sym220575_
                                 _rebind?220576_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t220573_
                             _method220574_
                             _sym220575_
                             _rebind?220576_)))
                        _g226251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g226251_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym220540_)
        (let ((_$e220548_
               (let ((_ht220541220543_ (gxc#current-compile-local-type)))
                 (if _ht220541220543_
                     (let ((_ht220546_ _ht220541220543_))
                       (declare (not safe))
                       (hash-get _ht220546_ _sym220540_))
                     '#f))))
          (if _$e220548_
              _$e220548_
              (let ((__tmp226252
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp226252 _sym220540_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym220532_)
        (let ((_type220533220535_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym220532_))))
          (if _type220533220535_
              (let ((_type220538_ _type220533220535_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type220538_ 'gxc#!alias::t))
                    (let ((__tmp226253
                           (##structure-ref _type220538_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp226253))
                    _type220538_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where220524_ _klass-id220525_)
        (let ((_$e220527_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id220525_))))
          (if _$e220527_
              ((lambda (_klass220530_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass220530_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where220524_
                        _klass-id220525_
                        _klass220530_)))
                 _klass220530_)
               _$e220527_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where220524_
                 _klass-id220525_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t220521_ _method220522_)
        (let ((__tmp226254
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t220521_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp226254 _method220522_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym220519_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym220519_))
        (let ((__tmp226255
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp226255 _sym220519_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym220517_)
        (let ((__tmp226256
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp226256 _sym220517_))))
    (define gxc#identifier-symbol
      (lambda (_stx220515_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx220515_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx220515_))
            (let () (declare (not safe)) (gx#stx-e _stx220515_)))))))
