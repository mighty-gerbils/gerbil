(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710694205)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp114085 (list))
            (__tmp114083
             (let ((__tmp114084
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114084 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp114085
         '(type ssxi methods)
         __tmp114083
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args114019_
        (apply make-instance gxc#optimizer-info::t _$args114019_)))
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
      (lambda (_self114017_)
        (if (let ((__tmp114086
                   (let ()
                     (declare (not safe))
                     (##structure-length _self114017_))))
              (declare (not safe))
              (##fx< '3 __tmp114086))
            (begin
              (let ((__tmp114088
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114087
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114017_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114017_
                 __tmp114088
                 '1
                 __tmp114087
                 '#f))
              (let ((__tmp114090
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114089
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114017_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114017_
                 __tmp114090
                 '2
                 __tmp114089
                 '#f))
              (let ((__tmp114092
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114091
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114017_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114017_
                 __tmp114092
                 '3
                 __tmp114091
                 '#f)))
            (let ((__tmp114093
                   (let ()
                     (declare (not safe))
                     (##vector-length _self114017_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self114017_
                     '3
                     __tmp114093)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp114096 (list))
            (__tmp114094
             (let ((__tmp114095
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114095 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp114096
         '(id)
         __tmp114094
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args113892_ (apply make-instance gxc#!type::t _$args113892_)))
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
      (let ((__tmp114099 (list gxc#!type::t))
            (__tmp114097
             (let ((__tmp114098
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114098 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp114099
         '()
         __tmp114097
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args113889_ (apply make-instance gxc#!alias::t _$args113889_)))
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
      (let ((__tmp114102 (list gxc#!type::t))
            (__tmp114100
             (let ((__tmp114101
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114101 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp114102
         '()
         __tmp114100
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args113886_
        (apply make-instance gxc#!procedure::t _$args113886_)))
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
      (let ((__tmp114105 (list gxc#!type::t))
            (__tmp114103
             (let ((__tmp114104
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114104 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp114105
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp114103
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args113883_ (apply make-instance gxc#!class::t _$args113883_)))
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
      (let ((__tmp114108 (list gxc#!procedure::t))
            (__tmp114106
             (let ((__tmp114107
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114107 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp114108
         '()
         __tmp114106
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args113880_
        (apply make-instance gxc#!predicate::t _$args113880_)))
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
      (let ((__tmp114111 (list gxc#!procedure::t))
            (__tmp114109
             (let ((__tmp114110
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114110 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp114111
         '()
         __tmp114109
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args113877_
        (apply make-instance gxc#!constructor::t _$args113877_)))
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
      (let ((__tmp114114 (list gxc#!procedure::t))
            (__tmp114112
             (let ((__tmp114113
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114113 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp114114
         '(slot checked?)
         __tmp114112
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args113874_
        (apply make-instance gxc#!accessor::t _$args113874_)))
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
      (let ((__tmp114117 (list gxc#!procedure::t))
            (__tmp114115
             (let ((__tmp114116
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114116 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp114117
         '(slot checked?)
         __tmp114115
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args113871_
        (apply make-instance gxc#!mutator::t _$args113871_)))
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
      (let ((__tmp114120 (list gxc#!procedure::t))
            (__tmp114118
             (let ((__tmp114119
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114119 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp114120
         '(arity dispatch inline inline-typedecl)
         __tmp114118
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args113868_
        (apply make-instance gxc#!lambda::t _$args113868_)))
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
      (let ((__tmp114123 (list gxc#!procedure::t))
            (__tmp114121
             (let ((__tmp114122
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114122 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp114123
         '(clauses)
         __tmp114121
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args113865_
        (apply make-instance gxc#!case-lambda::t _$args113865_)))
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
      (let ((__tmp114126 (list gxc#!procedure::t))
            (__tmp114124
             (let ((__tmp114125
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114125 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp114126
         '(table dispatch)
         __tmp114124
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args113862_
        (apply make-instance gxc#!kw-lambda::t _$args113862_)))
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
      (let ((__tmp114129 (list gxc#!procedure::t))
            (__tmp114127
             (let ((__tmp114128
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114128 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp114129
         '(keys main)
         __tmp114127
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args113859_
        (apply make-instance gxc#!kw-lambda-primary::t _$args113859_)))
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
      (let ((__tmp114130 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp114130
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args113856_
        (apply make-instance gxc#!primitive::t _$args113856_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp114131 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp114131
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args113853_
        (apply make-instance gxc#!primitive-lambda::t _$args113853_)))
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
      (let ((__tmp114132 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp114132
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args113850_
        (apply make-instance gxc#!primitive-case-lambda::t _$args113850_)))
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
      (lambda (_self113730_
               _id113731_
               _super113732_
               _slots113733_
               _ctor-method113734_
               _struct?113735_
               _final?113736_
               _system?113737_
               _metaclass113738_)
        (let _lp113740_ ((_rest113742_ _super113732_))
          (let* ((_rest113743113751_ _rest113742_)
                 (_else113745113759_ (lambda () '#!void))
                 (_K113747113765_
                  (lambda (_rest113762_ _super-id113763_)
                    (if (##structure-ref
                         (let ((__tmp114133
                                (let ((__tmp114134
                                       (let ()
                                         (declare (not safe))
                                         (cons _id113731_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp114134))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp114133
                            _super-id113763_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp114135
                               (let ((__tmp114136
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113731_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114136))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp114135
                           _super-id113763_))
                        '#!void)
                    (let () (declare (not safe)) (_lp113740_ _rest113762_)))))
            (if (let () (declare (not safe)) (##pair? _rest113743113751_))
                (let ((_hd113748113768_
                       (let ()
                         (declare (not safe))
                         (##car _rest113743113751_)))
                      (_tl113749113770_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113743113751_))))
                  (let* ((_super-id113773_ _hd113748113768_)
                         (_rest113775_ _tl113749113770_))
                    (declare (not safe))
                    (_K113747113765_ _rest113775_ _super-id113773_)))
                '#!void)))
        (let* ((_ctor-method113825_
                (let ((_$e113777_ _ctor-method113734_))
                  (if _$e113777_
                      _$e113777_
                      (let _lp113780_ ((_rest113782_ _super113732_)
                                       (_method113783_ '#f))
                        (let* ((_rest113784113792_ _rest113782_)
                               (_else113786113800_ (lambda () _method113783_))
                               (_K113788113813_
                                (lambda (_rest113803_ _super-id113804_)
                                  (let* ((_klass113806_
                                          (let ((__tmp114137
                                                 (let ((__tmp114138
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id113731_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp114138))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp114137
                                             _super-id113804_)))
                                         (_$e113808_
                                          (##structure-ref
                                           _klass113806_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e113808_
                                        ((lambda (_ctor-method113811_)
                                           (if _method113783_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method113811_
                                                          _method113783_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp113780_
                                                      _rest113803_
                                                      _ctor-method113811_))
                                                   (let ((__tmp114139
                                                          (let ((__tmp114140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id113731_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp114140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp114139
                                                      _method113783_
                                                      _ctor-method113811_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp113780_
                                                  _rest113803_
                                                  _ctor-method113811_))))
                                         _$e113808_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp113780_
                                           _rest113803_
                                           _method113783_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest113784113792_))
                              (let ((_hd113789113816_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest113784113792_)))
                                    (_tl113790113818_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest113784113792_))))
                                (let* ((_super-id113821_ _hd113789113816_)
                                       (_rest113823_ _tl113790113818_))
                                  (declare (not safe))
                                  (_K113788113813_
                                   _rest113823_
                                   _super-id113821_)))
                              (let ()
                                (declare (not safe))
                                (_else113786113800_))))))))
               (_g114141_
                (let ((__tmp114146
                       (lambda (_klass-id113827_)
                         (let ((__tmp114147
                                (##structure-ref
                                 (let ((__tmp114148
                                        (let ((__tmp114149
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113731_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114149))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp114148
                                    _klass-id113827_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id113827_ __tmp114147))))
                      (__tmp114143
                       (lambda (_klass-id113829_)
                         (##structure-ref
                          (let ((__tmp114144
                                 (let ((__tmp114145
                                        (let ()
                                          (declare (not safe))
                                          (cons _id113731_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp114145))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp114144
                             _klass-id113829_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super113732_
                   'get-precedence-list:
                   __tmp114146
                   'struct:
                   __tmp114143
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g114142_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g114141_)
                         (##vector-length _g114141_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g114142_ 2)))
                  (error "Context expects 2 values" _g114142_)))
            (let ((_precedence-list113831_
                   (let () (declare (not safe)) (##vector-ref _g114141_ 0)))
                  (_base-struct113832_
                   (let () (declare (not safe)) (##vector-ref _g114141_ 1))))
              (let ((_fields113834_
                     (let ((__tmp114150
                            (let ((__tmp114151
                                   (let ()
                                     (declare (not safe))
                                     (cons _id113731_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp114151))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp114150
                        _base-struct113832_
                        _precedence-list113831_
                        _slots113733_))))
                (##structure-set! _self113730_ _id113731_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self113730_
                 _super113732_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113730_
                 _precedence-list113831_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113730_
                 _slots113733_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113730_
                 _fields113834_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113730_
                 _ctor-method113825_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113730_
                 _struct?113735_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113730_
                 _final?113736_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113730_
                 _metaclass113738_
                 '10
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self113837_
               _id113838_
               _super113839_
               _precedence-list113840_
               _slots113841_
               _fields113842_
               _constructor113843_
               _struct?113844_
               _final?113845_
               _system?113846_
               _metaclass113847_
               _methods113848_)
        (##structure-set! _self113837_ _id113838_ '1 gxc#!type::t '#f)
        (##structure-set! _self113837_ _super113839_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self113837_
         _precedence-list113840_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self113837_ _slots113841_ '4 gxc#!class::t '#f)
        (##structure-set! _self113837_ _fields113842_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self113837_
         _constructor113843_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self113837_ _struct?113844_ '7 gxc#!class::t '#f)
        (##structure-set! _self113837_ _final?113845_ '8 gxc#!class::t '#f)
        (##structure-set! _self113837_ _metaclass113847_ '10 gxc#!class::t '#f)
        (if _methods113848_
            (##structure-set!
             _self113837_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods113848_))
             '11
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g114153_
        (let ((_g114152_ (let () (declare (not safe)) (##length _g114153_))))
          (cond ((let () (declare (not safe)) (##fx= _g114152_ 9))
                 (apply (lambda (_self113730_
                                 _id113731_
                                 _super113732_
                                 _slots113733_
                                 _ctor-method113734_
                                 _struct?113735_
                                 _final?113736_
                                 _system?113737_
                                 _metaclass113738_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self113730_
                             _id113731_
                             _super113732_
                             _slots113733_
                             _ctor-method113734_
                             _struct?113735_
                             _final?113736_
                             _system?113737_
                             _metaclass113738_)))
                        _g114153_))
                ((let () (declare (not safe)) (##fx= _g114152_ 12))
                 (apply (lambda (_self113837_
                                 _id113838_
                                 _super113839_
                                 _precedence-list113840_
                                 _slots113841_
                                 _fields113842_
                                 _constructor113843_
                                 _struct?113844_
                                 _final?113845_
                                 _system?113846_
                                 _metaclass113847_
                                 _methods113848_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self113837_
                             _id113838_
                             _super113839_
                             _precedence-list113840_
                             _slots113841_
                             _fields113842_
                             _constructor113843_
                             _struct?113844_
                             _final?113845_
                             _system?113846_
                             _metaclass113847_
                             _methods113848_)))
                        _g114153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g114153_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass114021 __method-table114022)
        (let ((__slots114023
               (let ((__slot114033
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114021 'slots))))
                 (if __slot114033
                     __slot114033
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__final?114024
               (let ((__slot114034
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114021 'final?))))
                 (if __slot114034
                     __slot114034
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__constructor114025
               (let ((__slot114035
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114021 'constructor))))
                 (if __slot114035
                     __slot114035
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__id114026
               (let ((__slot114036
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114021 'id))))
                 (if __slot114036
                     __slot114036
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super114027
               (let ((__slot114037
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114021 'super))))
                 (if __slot114037
                     __slot114037
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__precedence-list114028
               (let ((__slot114038
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114021 'precedence-list))))
                 (if __slot114038
                     __slot114038
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__struct?114029
               (let ((__slot114039
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114021 'struct?))))
                 (if __slot114039
                     __slot114039
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__metaclass114030
               (let ((__slot114040
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114021 'metaclass))))
                 (if __slot114040
                     __slot114040
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__fields114031
               (let ((__slot114041
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114021 'fields))))
                 (if __slot114041
                     __slot114041
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__methods114032
               (let ((__slot114042
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114021 'methods))))
                 (if __slot114042
                     __slot114042
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods))))))
          (lambda _g114155_
            (let ((_g114154_
                   (let () (declare (not safe)) (##length _g114155_))))
              (cond ((let () (declare (not safe)) (##fx= _g114154_ 9))
                     (apply (lambda (_self113730_
                                     _id113731_
                                     _super113732_
                                     _slots113733_
                                     _ctor-method113734_
                                     _struct?113735_
                                     _final?113736_
                                     _system?113737_
                                     _metaclass113738_)
                              (let _lp113740_ ((_rest113742_ _super113732_))
                                (let* ((_rest113743113751_ _rest113742_)
                                       (_else113745113759_ (lambda () '#!void))
                                       (_K113747113765_
                                        (lambda (_rest113762_ _super-id113763_)
                                          (if (##structure-ref
                                               (let ((__tmp114156
                                                      (let ((__tmp114157
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id113731_ '()))))
                (declare (not safe))
                (cons '!class __tmp114157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp114156
                                                  _super-id113763_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp114158
                                                     (let ((__tmp114159
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id113731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp114159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp114158
                                                 _super-id113763_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp113740_ _rest113762_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest113743113751_))
                                      (let ((_hd113748113768_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest113743113751_)))
                                            (_tl113749113770_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest113743113751_))))
                                        (let* ((_super-id113773_
                                                _hd113748113768_)
                                               (_rest113775_ _tl113749113770_))
                                          (declare (not safe))
                                          (_K113747113765_
                                           _rest113775_
                                           _super-id113773_)))
                                      '#!void)))
                              (let* ((_ctor-method113825_
                                      (let ((_$e113777_ _ctor-method113734_))
                                        (if _$e113777_
                                            _$e113777_
                                            (let _lp113780_ ((_rest113782_
                                                              _super113732_)
                                                             (_method113783_
                                                              '#f))
                                              (let* ((_rest113784113792_
                                                      _rest113782_)
                                                     (_else113786113800_
                                                      (lambda ()
                                                        _method113783_))
                                                     (_K113788113813_
                                                      (lambda (_rest113803_
                                                               _super-id113804_)
                                                        (let* ((_klass113806_
                                                                (let ((__tmp114160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114161
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113731_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114161))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp114160
                           _super-id113804_)))
                       (_$e113808_
                        (##structure-ref _klass113806_ '6 gxc#!class::t '#f)))
                  (if _$e113808_
                      ((lambda (_ctor-method113811_)
                         (if _method113783_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method113811_ _method113783_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp113780_
                                    _rest113803_
                                    _ctor-method113811_))
                                 (let ((__tmp114162
                                        (let ((__tmp114163
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113731_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114163))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp114162
                                    _method113783_
                                    _ctor-method113811_)))
                             (let ()
                               (declare (not safe))
                               (_lp113780_ _rest113803_ _ctor-method113811_))))
                       _$e113808_)
                      (let ()
                        (declare (not safe))
                        (_lp113780_ _rest113803_ _method113783_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest113784113792_))
                                                    (let ((_hd113789113816_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest113784113792_)))
                                                          (_tl113790113818_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest113784113792_))))
                                                      (let* ((_super-id113821_
                                                              _hd113789113816_)
                                                             (_rest113823_
                                                              _tl113790113818_))
                                                        (declare (not safe))
                                                        (_K113788113813_
                                                         _rest113823_
                                                         _super-id113821_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else113786113800_))))))))
                                     (_g114164_
                                      (let ((__tmp114169
                                             (lambda (_klass-id113827_)
                                               (let ((__tmp114170
                                                      (##structure-ref
                                                       (let ((__tmp114171
                                                              (let ((__tmp114172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id113731_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp114172))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp114171 _klass-id113827_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id113827_
                                                       __tmp114170))))
                                            (__tmp114166
                                             (lambda (_klass-id113829_)
                                               (##structure-ref
                                                (let ((__tmp114167
                                                       (let ((__tmp114168
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id113731_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp114168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp114167
                                                   _klass-id113829_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super113732_
                                         'get-precedence-list:
                                         __tmp114169
                                         'struct:
                                         __tmp114166
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g114165_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g114164_)
                                               (##vector-length _g114164_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g114165_ 2)))
                                        (error "Context expects 2 values"
                                               _g114165_)))
                                  (let ((_precedence-list113831_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114164_ 0)))
                                        (_base-struct113832_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114164_ 1))))
                                    (let ((_fields113834_
                                           (let ((__tmp114173
                                                  (let ((__tmp114174
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id113731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp114174))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp114173
                                              _base-struct113832_
                                              _precedence-list113831_
                                              _slots113733_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113730_
                                         _id113731_
                                         __id114026
                                         __klass114021
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113730_
                                         _super113732_
                                         __super114027
                                         __klass114021
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113730_
                                         _precedence-list113831_
                                         __precedence-list114028
                                         __klass114021
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113730_
                                         _slots113733_
                                         __slots114023
                                         __klass114021
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113730_
                                         _fields113834_
                                         __fields114031
                                         __klass114021
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113730_
                                         _ctor-method113825_
                                         __constructor114025
                                         __klass114021
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113730_
                                         _struct?113735_
                                         __struct?114029
                                         __klass114021
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113730_
                                         _final?113736_
                                         __final?114024
                                         __klass114021
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113730_
                                         _metaclass113738_
                                         __metaclass114030
                                         __klass114021
                                         '#f)))))))
                            _g114155_))
                    ((let () (declare (not safe)) (##fx= _g114154_ 12))
                     (apply (lambda (_self113837_
                                     _id113838_
                                     _super113839_
                                     _precedence-list113840_
                                     _slots113841_
                                     _fields113842_
                                     _constructor113843_
                                     _struct?113844_
                                     _final?113845_
                                     _system?113846_
                                     _metaclass113847_
                                     _methods113848_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113837_
                                 _id113838_
                                 __id114026
                                 __klass114021
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113837_
                                 _super113839_
                                 __super114027
                                 __klass114021
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113837_
                                 _precedence-list113840_
                                 __precedence-list114028
                                 __klass114021
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113837_
                                 _slots113841_
                                 __slots114023
                                 __klass114021
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113837_
                                 _fields113842_
                                 __fields114031
                                 __klass114021
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113837_
                                 _constructor113843_
                                 __constructor114025
                                 __klass114021
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113837_
                                 _struct?113844_
                                 __struct?114029
                                 __klass114021
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113837_
                                 _final?113845_
                                 __final?114024
                                 __klass114021
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113837_
                                 _metaclass113847_
                                 __metaclass114030
                                 __klass114021
                                 '#f))
                              (if _methods113848_
                                  (let ((__tmp114175
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods113848_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self113837_
                                     __tmp114175
                                     __methods114032
                                     __klass114021
                                     '#f))
                                  '#!void))
                            _g114155_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g114155_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where113582_
               _base-struct113583_
               _precedence-list113584_
               _direct-slots113585_)
        (let* ((_base-fields113587_
                (if _base-struct113583_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where113582_
                        _base-struct113583_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields113589_ (reverse _base-fields113587_))
               (_seen-slots113597_
                (let ((_tab113591_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g113592113594_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab113591_ _g113592113594_ '#t)))
                   _base-fields113587_)
                  _tab113591_))
               (_process-slot113601_
                (lambda (_slot113599_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots113597_ _slot113599_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots113597_ _slot113599_ '#t))
                        (set! _r-fields113589_
                              (let ()
                                (declare (not safe))
                                (cons _slot113599_ _r-fields113589_))))))))
          (for-each
           (lambda (_mixin113604_)
             (let ((_klass113606_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where113582_
                       _mixin113604_))))
               (if (##structure-ref _klass113606_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot113601_
                    (##structure-ref _klass113606_ '5 gxc#!class::t '#f)))))
           _precedence-list113584_)
          (for-each _process-slot113601_ _direct-slots113585_)
          (reverse _r-fields113589_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass113541_ _slot113542_)
        (let _lp113544_ ((_rest113546_
                          (##structure-ref _klass113541_ '5 gxc#!class::t '#f))
                         (_offset113547_ '1))
          (let* ((_rest113548113556_ _rest113546_)
                 (_else113550113564_
                  (lambda ()
                    (let ((__tmp114177
                           (##structure-ref _klass113541_ '1 gxc#!type::t '#f))
                          (__tmp114176
                           (##structure-ref
                            _klass113541_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp114177
                       __tmp114176
                       _slot113542_))))
                 (_K113552113570_
                  (lambda (_rest113567_ _s113568_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s113568_ _slot113542_))
                        _offset113547_
                        (let ((__tmp114178
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset113547_ '1))))
                          (declare (not safe))
                          (_lp113544_ _rest113567_ __tmp114178))))))
            (if (let () (declare (not safe)) (##pair? _rest113548113556_))
                (let ((_hd113553113573_
                       (let ()
                         (declare (not safe))
                         (##car _rest113548113556_)))
                      (_tl113554113575_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113548113556_))))
                  (let* ((_s113578_ _hd113553113573_)
                         (_rest113580_ _tl113554113575_))
                    (declare (not safe))
                    (_K113552113570_ _rest113580_ _s113578_)))
                (let () (declare (not safe)) (_else113550113564_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass113499_ _slot113500_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass113499_ _slot113500_))
            _klass113499_
            (let _lp113502_ ((_rest113504_
                              (##structure-ref
                               _klass113499_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest113505113513_ _rest113504_)
                     (_else113507113521_ (lambda () '#f))
                     (_K113509113529_
                      (lambda (_rest113524_ _super113525_)
                        (let ((_super-class113527_
                               (let ((__tmp114179
                                      (let ((__tmp114180
                                             (let ((__tmp114182
                                                    (##structure-ref
                                                     _klass113499_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp114181
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot113500_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp114182
                                                     __tmp114181))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp114180))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp114179
                                  _super113525_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class113527_
                                 _slot113500_))
                              _super-class113527_
                              (let ()
                                (declare (not safe))
                                (_lp113502_ _rest113524_)))))))
                (if (let () (declare (not safe)) (##pair? _rest113505113513_))
                    (let ((_hd113510113532_
                           (let ()
                             (declare (not safe))
                             (##car _rest113505113513_)))
                          (_tl113511113534_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest113505113513_))))
                      (let* ((_super113537_ _hd113510113532_)
                             (_rest113539_ _tl113511113534_))
                        (declare (not safe))
                        (_K113509113529_ _rest113539_ _super113537_)))
                    (let () (declare (not safe)) (_else113507113521_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass113496_ _slot113497_)
        (if (##structure-ref _klass113496_ '7 gxc#!class::t '#f)
            (memq _slot113497_
                  (##structure-ref _klass113496_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self113493_ _id113494_)
        (##structure-set! _self113493_ _id113494_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass114043 __method-table114044)
        (let ((__id114045
               (let ((__slot114046
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114043 'id))))
                 (if __slot114046
                     __slot114046
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113493_ _id113494_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113493_
               _id113494_
               __id114045
               __klass114043
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
      (lambda (_self113368_ _id113369_)
        (##structure-set! _self113368_ _id113369_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass114047 __method-table114048)
        (let ((__id114049
               (let ((__slot114050
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114047 'id))))
                 (if __slot114050
                     __slot114050
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113368_ _id113369_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113368_
               _id113369_
               __id114049
               __klass114047
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
      (lambda (_self113241_ _id113242_ _slot113243_ _checked?113244_)
        (##structure-set! _self113241_ _id113242_ '1 gxc#!type::t '#f)
        (##structure-set! _self113241_ _slot113243_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self113241_
         _checked?113244_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass114051 __method-table114052)
        (let ((__slot114053
               (let ((__slot114056
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114051 'slot))))
                 (if __slot114056
                     __slot114056
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id114054
               (let ((__slot114057
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114051 'id))))
                 (if __slot114057
                     __slot114057
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?114055
               (let ((__slot114058
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114051 'checked?))))
                 (if __slot114058
                     __slot114058
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self113241_ _id113242_ _slot113243_ _checked?113244_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113241_
               _id113242_
               __id114054
               __klass114051
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113241_
               _slot113243_
               __slot114053
               __klass114051
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113241_
               _checked?113244_
               __checked?114055
               __klass114051
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
      (lambda (_self113114_ _id113115_ _slot113116_ _checked?113117_)
        (##structure-set! _self113114_ _id113115_ '1 gxc#!type::t '#f)
        (##structure-set! _self113114_ _slot113116_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self113114_
         _checked?113117_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass114059 __method-table114060)
        (let ((__slot114061
               (let ((__slot114064
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114059 'slot))))
                 (if __slot114064
                     __slot114064
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id114062
               (let ((__slot114065
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114059 'id))))
                 (if __slot114065
                     __slot114065
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?114063
               (let ((__slot114066
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114059 'checked?))))
                 (if __slot114066
                     __slot114066
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self113114_ _id113115_ _slot113116_ _checked?113117_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113114_
               _id113115_
               __id114062
               __klass114059
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113114_
               _slot113116_
               __slot114061
               __klass114059
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113114_
               _checked?113117_
               __checked?114063
               __klass114059
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
      (lambda (_self112958_
               _id112959_
               _arity112960_
               _dispatch112961_
               _inline112962_
               _typedecl112963_)
        (if (let ((__tmp114183
                   (let ()
                     (declare (not safe))
                     (##structure-length _self112958_))))
              (declare (not safe))
              (##fx< '5 __tmp114183))
            (begin
              (let ((__tmp114184
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112958_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112958_
                 _id112959_
                 '1
                 __tmp114184
                 '#f))
              (let ((__tmp114185
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112958_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112958_
                 _arity112960_
                 '2
                 __tmp114185
                 '#f))
              (let ((__tmp114186
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112958_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112958_
                 _dispatch112961_
                 '3
                 __tmp114186
                 '#f))
              (let ((__tmp114187
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112958_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112958_
                 _inline112962_
                 '4
                 __tmp114187
                 '#f))
              (let ((__tmp114188
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112958_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112958_
                 _typedecl112963_
                 '5
                 __tmp114188
                 '#f)))
            (let ((__tmp114189
                   (let ()
                     (declare (not safe))
                     (##vector-length _self112958_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self112958_
                     '5
                     __tmp114189)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self112968_ _id112969_ _arity112970_ _dispatch112971_)
        (let* ((_inline112973_ '#f) (_typedecl112975_ '#f))
          (if (let ((__tmp114190
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112968_))))
                (declare (not safe))
                (##fx< '5 __tmp114190))
              (begin
                (let ((__tmp114191
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112968_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112968_
                   _id112969_
                   '1
                   __tmp114191
                   '#f))
                (let ((__tmp114192
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112968_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112968_
                   _arity112970_
                   '2
                   __tmp114192
                   '#f))
                (let ((__tmp114193
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112968_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112968_
                   _dispatch112971_
                   '3
                   __tmp114193
                   '#f))
                (let ((__tmp114194
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112968_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112968_
                   _inline112973_
                   '4
                   __tmp114194
                   '#f))
                (let ((__tmp114195
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112968_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112968_
                   _typedecl112975_
                   '5
                   __tmp114195
                   '#f)))
              (let ((__tmp114196
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112968_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112968_
                       '5
                       __tmp114196))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self112977_
               _id112978_
               _arity112979_
               _dispatch112980_
               _inline112981_)
        (let ((_typedecl112983_ '#f))
          (if (let ((__tmp114197
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112977_))))
                (declare (not safe))
                (##fx< '5 __tmp114197))
              (begin
                (let ((__tmp114198
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112977_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112977_
                   _id112978_
                   '1
                   __tmp114198
                   '#f))
                (let ((__tmp114199
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112977_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112977_
                   _arity112979_
                   '2
                   __tmp114199
                   '#f))
                (let ((__tmp114200
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112977_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112977_
                   _dispatch112980_
                   '3
                   __tmp114200
                   '#f))
                (let ((__tmp114201
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112977_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112977_
                   _inline112981_
                   '4
                   __tmp114201
                   '#f))
                (let ((__tmp114202
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112977_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112977_
                   _typedecl112983_
                   '5
                   __tmp114202
                   '#f)))
              (let ((__tmp114203
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112977_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112977_
                       '5
                       __tmp114203))))))
    (define gxc#!lambda:::init!
      (lambda _g114205_
        (let ((_g114204_ (let () (declare (not safe)) (##length _g114205_))))
          (cond ((let () (declare (not safe)) (##fx= _g114204_ 4))
                 (apply (lambda (_self112968_
                                 _id112969_
                                 _arity112970_
                                 _dispatch112971_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self112968_
                             _id112969_
                             _arity112970_
                             _dispatch112971_)))
                        _g114205_))
                ((let () (declare (not safe)) (##fx= _g114204_ 5))
                 (apply (lambda (_self112977_
                                 _id112978_
                                 _arity112979_
                                 _dispatch112980_
                                 _inline112981_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self112977_
                             _id112978_
                             _arity112979_
                             _dispatch112980_
                             _inline112981_)))
                        _g114205_))
                ((let () (declare (not safe)) (##fx= _g114204_ 6))
                 (apply (lambda (_self112985_
                                 _id112986_
                                 _arity112987_
                                 _dispatch112988_
                                 _inline112989_
                                 _typedecl112990_)
                          (if (let ((__tmp114206
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self112985_))))
                                (declare (not safe))
                                (##fx< '5 __tmp114206))
                              (begin
                                (let ((__tmp114207
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112985_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112985_
                                   _id112986_
                                   '1
                                   __tmp114207
                                   '#f))
                                (let ((__tmp114208
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112985_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112985_
                                   _arity112987_
                                   '2
                                   __tmp114208
                                   '#f))
                                (let ((__tmp114209
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112985_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112985_
                                   _dispatch112988_
                                   '3
                                   __tmp114209
                                   '#f))
                                (let ((__tmp114210
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112985_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112985_
                                   _inline112989_
                                   '4
                                   __tmp114210
                                   '#f))
                                (let ((__tmp114211
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112985_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112985_
                                   _typedecl112990_
                                   '5
                                   __tmp114211
                                   '#f)))
                              (let ((__tmp114212
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self112985_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self112985_
                                       '5
                                       __tmp114212))))
                        _g114205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g114205_))))))
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
      (lambda (_self112710_ . _args112711_)
        (apply struct-instance-init! _self112710_ _args112711_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type112585_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112585_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type112585_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass112578_)
        (let ((_$e112580_
               (##structure-ref _klass112578_ '11 gxc#!class::t '#f)))
          (if _$e112580_
              _$e112580_
              (let ((_tab112583_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass112578_
                 _tab112583_
                 '11
                 gxc#!class::t
                 '#f)
                _tab112583_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass112569_ _method112570_)
        (let ((_tab112571112573_
               (##structure-ref _klass112569_ '11 gxc#!class::t '#f)))
          (if _tab112571112573_
              (let ((_tab112576_ _tab112571112573_))
                (declare (not safe))
                (hash-get _tab112576_ _method112570_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type112566_ _method112567_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112566_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type112566_ _method112567_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym112550_ _type112551_ _local?112552_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112551_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym112550_
                     _type112551_)))
        (let ((__tmp114213
               (let () (declare (not safe)) (struct->list _type112551_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym112550_ '" " __tmp114213))
        (let ((__tmp114214
               (if _local?112552_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp114214 _sym112550_ _type112551_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym112557_ _type112558_)
        (let ((_local?112560_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym112557_
           _type112558_
           _local?112560_))))
    (define gxc#optimizer-declare-type!
      (lambda _g114216_
        (let ((_g114215_ (let () (declare (not safe)) (##length _g114216_))))
          (cond ((let () (declare (not safe)) (##fx= _g114215_ 2))
                 (apply (lambda (_sym112557_ _type112558_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym112557_
                             _type112558_)))
                        _g114216_))
                ((let () (declare (not safe)) (##fx= _g114215_ 3))
                 (apply (lambda (_sym112562_ _type112563_ _local?112564_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym112562_
                             _type112563_
                             _local?112564_)))
                        _g114216_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g114216_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym112536_ _local?112537_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym112536_))
        (let ((__tmp114217
               (if _local?112537_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp114217 _sym112536_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym112542_)
        (let ((_local?112544_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym112542_ _local?112544_))))
    (define gxc#optimizer-clear-type!
      (lambda _g114219_
        (let ((_g114218_ (let () (declare (not safe)) (##length _g114219_))))
          (cond ((let () (declare (not safe)) (##fx= _g114218_ 1))
                 (apply (lambda (_sym112542_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym112542_)))
                        _g114219_))
                ((let () (declare (not safe)) (##fx= _g114218_ 2))
                 (apply (lambda (_sym112546_ _local?112547_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym112546_
                             _local?112547_)))
                        _g114219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g114219_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t112504_ _method112505_ _sym112506_ _rebind?112507_)
        (let* ((_type112509_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t112504_)))
               (_$e112511_
                (let () (declare (not safe)) (gxc#!type-vtab _type112509_))))
          (if _$e112511_
              ((lambda (_vtab112514_)
                 (let ((_$e112516_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab112514_ _method112505_))))
                   (if _$e112516_
                       ((lambda (_existing112519_)
                          (if _rebind?112507_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t112504_
                                   '" "
                                   _method112505_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab112514_
                                   _method112505_
                                   _sym112506_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing112519_ _sym112506_))
                                  '#!void
                                  (let ((__tmp114220
                                         (let ((__tmp114221
                                                (let ((__tmp114222
                                                       (let ((__tmp114223
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym112506_ '()))))
                 (declare (not safe))
                 (cons _method112505_ __tmp114223))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t112504_
                                                        __tmp114222))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp114221))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp114220
                                     _method112505_)))))
                        _$e112516_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t112504_
                            '" "
                            _method112505_
                            '" => "
                            _sym112506_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab112514_
                            _method112505_
                            _sym112506_))))))
               _$e112511_)
              (if (let () (declare (not safe)) (not _type112509_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t112504_))
                  (let ((__tmp114224
                         (let ((__tmp114225
                                (let ((__tmp114226
                                       (let ((__tmp114227
                                              (let ()
                                                (declare (not safe))
                                                (cons _method112505_ '()))))
                                         (declare (not safe))
                                         (cons _sym112506_ __tmp114227))))
                                  (declare (not safe))
                                  (cons _type-t112504_ __tmp114226))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp114225))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp114224
                     _type112509_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t112524_ _method112525_ _sym112526_)
        (let ((_rebind?112528_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t112524_
           _method112525_
           _sym112526_
           _rebind?112528_))))
    (define gxc#optimizer-declare-method!
      (lambda _g114229_
        (let ((_g114228_ (let () (declare (not safe)) (##length _g114229_))))
          (cond ((let () (declare (not safe)) (##fx= _g114228_ 3))
                 (apply (lambda (_type-t112524_ _method112525_ _sym112526_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t112524_
                             _method112525_
                             _sym112526_)))
                        _g114229_))
                ((let () (declare (not safe)) (##fx= _g114228_ 4))
                 (apply (lambda (_type-t112530_
                                 _method112531_
                                 _sym112532_
                                 _rebind?112533_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t112530_
                             _method112531_
                             _sym112532_
                             _rebind?112533_)))
                        _g114229_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g114229_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym112492_)
        (let ((_$e112500_
               (let ((_ht112493112495_ (gxc#current-compile-local-type)))
                 (if _ht112493112495_
                     (let ((_ht112498_ _ht112493112495_))
                       (declare (not safe))
                       (hash-get _ht112498_ _sym112492_))
                     '#f))))
          (if _$e112500_
              _$e112500_
              (let ((__tmp114230
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp114230 _sym112492_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym112484_)
        (let ((_type112485112487_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym112484_))))
          (if _type112485112487_
              (let ((_type112490_ _type112485112487_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type112490_ 'gxc#!alias::t))
                    (let ((__tmp114231
                           (##structure-ref _type112490_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp114231))
                    _type112490_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where112476_ _klass-id112477_)
        (let ((_$e112479_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id112477_))))
          (if _$e112479_
              ((lambda (_klass112482_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass112482_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where112476_
                        _klass-id112477_
                        _klass112482_)))
                 _klass112482_)
               _$e112479_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where112476_
                 _klass-id112477_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t112473_ _method112474_)
        (let ((__tmp114232
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t112473_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp114232 _method112474_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym112471_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym112471_))
        (let ((__tmp114233
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp114233 _sym112471_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym112469_)
        (let ((__tmp114234
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp114234 _sym112469_))))
    (define gxc#identifier-symbol
      (lambda (_stx112467_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx112467_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx112467_))
            (let () (declare (not safe)) (gx#stx-e _stx112467_)))))))
