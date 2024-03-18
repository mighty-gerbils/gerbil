(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710776832)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp117071 (list))
            (__tmp117069
             (let ((__tmp117070
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117070 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp117071
         '(type ssxi methods)
         __tmp117069
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args117005_
        (apply make-instance gxc#optimizer-info::t _$args117005_)))
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
      (lambda (_self117003_)
        (if (let ((__tmp117079
                   (let ()
                     (declare (not safe))
                     (##structure-length _self117003_))))
              (declare (not safe))
              (##fx< '3 __tmp117079))
            (begin
              (let ((__tmp117074
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117073
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117003_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117003_
                 __tmp117074
                 '1
                 __tmp117073
                 '#f))
              (let ((__tmp117076
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117075
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117003_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117003_
                 __tmp117076
                 '2
                 __tmp117075
                 '#f))
              (let ((__tmp117078
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp117077
                     (let ()
                       (declare (not safe))
                       (##structure-type _self117003_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self117003_
                 __tmp117078
                 '3
                 __tmp117077
                 '#f)))
            (let ((__tmp117072
                   (let ()
                     (declare (not safe))
                     (##vector-length _self117003_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self117003_
                     '3
                     __tmp117072)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp117082 (list))
            (__tmp117080
             (let ((__tmp117081
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117081 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp117082
         '(id)
         __tmp117080
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args116878_ (apply make-instance gxc#!type::t _$args116878_)))
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
      (let ((__tmp117085 (list gxc#!type::t))
            (__tmp117083
             (let ((__tmp117084
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117084 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp117085
         '()
         __tmp117083
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args116875_ (apply make-instance gxc#!alias::t _$args116875_)))
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
      (let ((__tmp117088 (list gxc#!type::t))
            (__tmp117086
             (let ((__tmp117087
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117087 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp117088
         '()
         __tmp117086
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args116872_
        (apply make-instance gxc#!procedure::t _$args116872_)))
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
      (let ((__tmp117091 (list gxc#!type::t))
            (__tmp117089
             (let ((__tmp117090
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117090 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp117091
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp117089
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args116869_ (apply make-instance gxc#!class::t _$args116869_)))
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
      (let ((__tmp117094 (list gxc#!procedure::t))
            (__tmp117092
             (let ((__tmp117093
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117093 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp117094
         '()
         __tmp117092
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args116866_
        (apply make-instance gxc#!predicate::t _$args116866_)))
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
      (let ((__tmp117097 (list gxc#!procedure::t))
            (__tmp117095
             (let ((__tmp117096
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117096 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp117097
         '()
         __tmp117095
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args116863_
        (apply make-instance gxc#!constructor::t _$args116863_)))
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
      (let ((__tmp117100 (list gxc#!procedure::t))
            (__tmp117098
             (let ((__tmp117099
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117099 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp117100
         '(slot checked?)
         __tmp117098
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args116860_
        (apply make-instance gxc#!accessor::t _$args116860_)))
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
      (let ((__tmp117103 (list gxc#!procedure::t))
            (__tmp117101
             (let ((__tmp117102
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117102 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp117103
         '(slot checked?)
         __tmp117101
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args116857_
        (apply make-instance gxc#!mutator::t _$args116857_)))
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
      (let ((__tmp117106 (list gxc#!procedure::t))
            (__tmp117104
             (let ((__tmp117105
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117105 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp117106
         '(arity dispatch inline inline-typedecl)
         __tmp117104
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args116854_
        (apply make-instance gxc#!lambda::t _$args116854_)))
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
      (let ((__tmp117109 (list gxc#!procedure::t))
            (__tmp117107
             (let ((__tmp117108
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117108 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp117109
         '(clauses)
         __tmp117107
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args116851_
        (apply make-instance gxc#!case-lambda::t _$args116851_)))
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
      (let ((__tmp117112 (list gxc#!procedure::t))
            (__tmp117110
             (let ((__tmp117111
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117111 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp117112
         '(table dispatch)
         __tmp117110
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args116848_
        (apply make-instance gxc#!kw-lambda::t _$args116848_)))
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
      (let ((__tmp117115 (list gxc#!procedure::t))
            (__tmp117113
             (let ((__tmp117114
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp117114 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp117115
         '(keys main)
         __tmp117113
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args116845_
        (apply make-instance gxc#!kw-lambda-primary::t _$args116845_)))
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
      (let ((__tmp117116 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp117116
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args116842_
        (apply make-instance gxc#!primitive::t _$args116842_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp117117 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp117117
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args116839_
        (apply make-instance gxc#!primitive-lambda::t _$args116839_)))
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
      (let ((__tmp117118 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp117118
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args116836_
        (apply make-instance gxc#!primitive-case-lambda::t _$args116836_)))
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
      (lambda (_self116716_
               _id116717_
               _super116718_
               _slots116719_
               _ctor-method116720_
               _struct?116721_
               _final?116722_
               _system?116723_
               _metaclass116724_)
        (let _lp116726_ ((_rest116728_ _super116718_))
          (let* ((_rest116729116737_ _rest116728_)
                 (_else116731116745_ (lambda () '#!void))
                 (_K116733116751_
                  (lambda (_rest116748_ _super-id116749_)
                    (if (##structure-ref
                         (let ((__tmp117121
                                (let ((__tmp117122
                                       (let ()
                                         (declare (not safe))
                                         (cons _id116717_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp117122))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp117121
                            _super-id116749_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp117119
                               (let ((__tmp117120
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116717_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp117120))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp117119
                           _super-id116749_))
                        '#!void)
                    (let () (declare (not safe)) (_lp116726_ _rest116748_)))))
            (if (let () (declare (not safe)) (##pair? _rest116729116737_))
                (let ((_hd116734116754_
                       (let ()
                         (declare (not safe))
                         (##car _rest116729116737_)))
                      (_tl116735116756_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116729116737_))))
                  (let* ((_super-id116759_ _hd116734116754_)
                         (_rest116761_ _tl116735116756_))
                    (declare (not safe))
                    (_K116733116751_ _rest116761_ _super-id116759_)))
                '#!void)))
        (let* ((_ctor-method116811_
                (let ((_$e116763_ _ctor-method116720_))
                  (if _$e116763_
                      _$e116763_
                      (let _lp116766_ ((_rest116768_ _super116718_)
                                       (_method116769_ '#f))
                        (let* ((_rest116770116778_ _rest116768_)
                               (_else116772116786_ (lambda () _method116769_))
                               (_K116774116799_
                                (lambda (_rest116789_ _super-id116790_)
                                  (let* ((_klass116792_
                                          (let ((__tmp117123
                                                 (let ((__tmp117124
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id116717_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp117124))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp117123
                                             _super-id116790_)))
                                         (_$e116794_
                                          (##structure-ref
                                           _klass116792_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e116794_
                                        ((lambda (_ctor-method116797_)
                                           (if _method116769_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method116797_
                                                          _method116769_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp116766_
                                                      _rest116789_
                                                      _ctor-method116797_))
                                                   (let ((__tmp117125
                                                          (let ((__tmp117126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id116717_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp117126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp117125
                                                      _method116769_
                                                      _ctor-method116797_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp116766_
                                                  _rest116789_
                                                  _ctor-method116797_))))
                                         _$e116794_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp116766_
                                           _rest116789_
                                           _method116769_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest116770116778_))
                              (let ((_hd116775116802_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest116770116778_)))
                                    (_tl116776116804_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest116770116778_))))
                                (let* ((_super-id116807_ _hd116775116802_)
                                       (_rest116809_ _tl116776116804_))
                                  (declare (not safe))
                                  (_K116774116799_
                                   _rest116809_
                                   _super-id116807_)))
                              (let ()
                                (declare (not safe))
                                (_else116772116786_))))))))
               (_g117127_
                (let ((__tmp117132
                       (lambda (_klass-id116813_)
                         (let ((__tmp117133
                                (##structure-ref
                                 (let ((__tmp117134
                                        (let ((__tmp117135
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116717_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp117135))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp117134
                                    _klass-id116813_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id116813_ __tmp117133))))
                      (__tmp117129
                       (lambda (_klass-id116815_)
                         (##structure-ref
                          (let ((__tmp117130
                                 (let ((__tmp117131
                                        (let ()
                                          (declare (not safe))
                                          (cons _id116717_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp117131))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp117130
                             _klass-id116815_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super116718_
                   'get-precedence-list:
                   __tmp117132
                   'struct:
                   __tmp117129
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g117128_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g117127_)
                         (##vector-length _g117127_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g117128_ 2)))
                  (error "Context expects 2 values" _g117128_)))
            (let ((_precedence-list116817_
                   (let () (declare (not safe)) (##vector-ref _g117127_ 0)))
                  (_base-struct116818_
                   (let () (declare (not safe)) (##vector-ref _g117127_ 1))))
              (let ((_fields116820_
                     (let ((__tmp117136
                            (let ((__tmp117137
                                   (let ()
                                     (declare (not safe))
                                     (cons _id116717_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp117137))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp117136
                        _base-struct116818_
                        _precedence-list116817_
                        _slots116719_))))
                (##structure-set! _self116716_ _id116717_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self116716_
                 _super116718_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116716_
                 _precedence-list116817_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116716_
                 _slots116719_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116716_
                 _fields116820_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116716_
                 _ctor-method116811_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116716_
                 _struct?116721_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116716_
                 _final?116722_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116716_
                 _metaclass116724_
                 '10
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self116823_
               _id116824_
               _super116825_
               _precedence-list116826_
               _slots116827_
               _fields116828_
               _constructor116829_
               _struct?116830_
               _final?116831_
               _system?116832_
               _metaclass116833_
               _methods116834_)
        (##structure-set! _self116823_ _id116824_ '1 gxc#!type::t '#f)
        (##structure-set! _self116823_ _super116825_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self116823_
         _precedence-list116826_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self116823_ _slots116827_ '4 gxc#!class::t '#f)
        (##structure-set! _self116823_ _fields116828_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self116823_
         _constructor116829_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self116823_ _struct?116830_ '7 gxc#!class::t '#f)
        (##structure-set! _self116823_ _final?116831_ '8 gxc#!class::t '#f)
        (##structure-set! _self116823_ _metaclass116833_ '10 gxc#!class::t '#f)
        (if _methods116834_
            (##structure-set!
             _self116823_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods116834_))
             '11
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g117139_
        (let ((_g117138_ (let () (declare (not safe)) (##length _g117139_))))
          (cond ((let () (declare (not safe)) (##fx= _g117138_ 9))
                 (apply (lambda (_self116716_
                                 _id116717_
                                 _super116718_
                                 _slots116719_
                                 _ctor-method116720_
                                 _struct?116721_
                                 _final?116722_
                                 _system?116723_
                                 _metaclass116724_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self116716_
                             _id116717_
                             _super116718_
                             _slots116719_
                             _ctor-method116720_
                             _struct?116721_
                             _final?116722_
                             _system?116723_
                             _metaclass116724_)))
                        _g117139_))
                ((let () (declare (not safe)) (##fx= _g117138_ 12))
                 (apply (lambda (_self116823_
                                 _id116824_
                                 _super116825_
                                 _precedence-list116826_
                                 _slots116827_
                                 _fields116828_
                                 _constructor116829_
                                 _struct?116830_
                                 _final?116831_
                                 _system?116832_
                                 _metaclass116833_
                                 _methods116834_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self116823_
                             _id116824_
                             _super116825_
                             _precedence-list116826_
                             _slots116827_
                             _fields116828_
                             _constructor116829_
                             _struct?116830_
                             _final?116831_
                             _system?116832_
                             _metaclass116833_
                             _methods116834_)))
                        _g117139_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g117139_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass117007 __method-table117008)
        (let ((__id117009
               (let ((__slot117019
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117007 'id))))
                 (if __slot117019
                     __slot117019
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super117010
               (let ((__slot117020
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117007 'super))))
                 (if __slot117020
                     __slot117020
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__fields117011
               (let ((__slot117021
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117007 'fields))))
                 (if __slot117021
                     __slot117021
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__precedence-list117012
               (let ((__slot117022
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117007 'precedence-list))))
                 (if __slot117022
                     __slot117022
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__final?117013
               (let ((__slot117023
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117007 'final?))))
                 (if __slot117023
                     __slot117023
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__constructor117014
               (let ((__slot117024
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117007 'constructor))))
                 (if __slot117024
                     __slot117024
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__metaclass117015
               (let ((__slot117025
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117007 'metaclass))))
                 (if __slot117025
                     __slot117025
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__slots117016
               (let ((__slot117026
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117007 'slots))))
                 (if __slot117026
                     __slot117026
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__struct?117017
               (let ((__slot117027
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117007 'struct?))))
                 (if __slot117027
                     __slot117027
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__methods117018
               (let ((__slot117028
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117007 'methods))))
                 (if __slot117028
                     __slot117028
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods))))))
          (lambda _g117141_
            (let ((_g117140_
                   (let () (declare (not safe)) (##length _g117141_))))
              (cond ((let () (declare (not safe)) (##fx= _g117140_ 9))
                     (apply (lambda (_self116716_
                                     _id116717_
                                     _super116718_
                                     _slots116719_
                                     _ctor-method116720_
                                     _struct?116721_
                                     _final?116722_
                                     _system?116723_
                                     _metaclass116724_)
                              (let _lp116726_ ((_rest116728_ _super116718_))
                                (let* ((_rest116729116737_ _rest116728_)
                                       (_else116731116745_ (lambda () '#!void))
                                       (_K116733116751_
                                        (lambda (_rest116748_ _super-id116749_)
                                          (if (##structure-ref
                                               (let ((__tmp117144
                                                      (let ((__tmp117145
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id116717_ '()))))
                (declare (not safe))
                (cons '!class __tmp117145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp117144
                                                  _super-id116749_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp117142
                                                     (let ((__tmp117143
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id116717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp117143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp117142
                                                 _super-id116749_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp116726_ _rest116748_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest116729116737_))
                                      (let ((_hd116734116754_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest116729116737_)))
                                            (_tl116735116756_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest116729116737_))))
                                        (let* ((_super-id116759_
                                                _hd116734116754_)
                                               (_rest116761_ _tl116735116756_))
                                          (declare (not safe))
                                          (_K116733116751_
                                           _rest116761_
                                           _super-id116759_)))
                                      '#!void)))
                              (let* ((_ctor-method116811_
                                      (let ((_$e116763_ _ctor-method116720_))
                                        (if _$e116763_
                                            _$e116763_
                                            (let _lp116766_ ((_rest116768_
                                                              _super116718_)
                                                             (_method116769_
                                                              '#f))
                                              (let* ((_rest116770116778_
                                                      _rest116768_)
                                                     (_else116772116786_
                                                      (lambda ()
                                                        _method116769_))
                                                     (_K116774116799_
                                                      (lambda (_rest116789_
                                                               _super-id116790_)
                                                        (let* ((_klass116792_
                                                                (let ((__tmp117146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp117147
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116717_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp117147))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp117146
                           _super-id116790_)))
                       (_$e116794_
                        (##structure-ref _klass116792_ '6 gxc#!class::t '#f)))
                  (if _$e116794_
                      ((lambda (_ctor-method116797_)
                         (if _method116769_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method116797_ _method116769_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp116766_
                                    _rest116789_
                                    _ctor-method116797_))
                                 (let ((__tmp117148
                                        (let ((__tmp117149
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116717_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp117149))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp117148
                                    _method116769_
                                    _ctor-method116797_)))
                             (let ()
                               (declare (not safe))
                               (_lp116766_ _rest116789_ _ctor-method116797_))))
                       _$e116794_)
                      (let ()
                        (declare (not safe))
                        (_lp116766_ _rest116789_ _method116769_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest116770116778_))
                                                    (let ((_hd116775116802_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest116770116778_)))
                                                          (_tl116776116804_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest116770116778_))))
                                                      (let* ((_super-id116807_
                                                              _hd116775116802_)
                                                             (_rest116809_
                                                              _tl116776116804_))
                                                        (declare (not safe))
                                                        (_K116774116799_
                                                         _rest116809_
                                                         _super-id116807_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else116772116786_))))))))
                                     (_g117150_
                                      (let ((__tmp117155
                                             (lambda (_klass-id116813_)
                                               (let ((__tmp117156
                                                      (##structure-ref
                                                       (let ((__tmp117157
                                                              (let ((__tmp117158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id116717_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp117158))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp117157 _klass-id116813_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id116813_
                                                       __tmp117156))))
                                            (__tmp117152
                                             (lambda (_klass-id116815_)
                                               (##structure-ref
                                                (let ((__tmp117153
                                                       (let ((__tmp117154
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id116717_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp117154))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp117153
                                                   _klass-id116815_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super116718_
                                         'get-precedence-list:
                                         __tmp117155
                                         'struct:
                                         __tmp117152
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g117151_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g117150_)
                                               (##vector-length _g117150_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g117151_ 2)))
                                        (error "Context expects 2 values"
                                               _g117151_)))
                                  (let ((_precedence-list116817_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117150_ 0)))
                                        (_base-struct116818_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g117150_ 1))))
                                    (let ((_fields116820_
                                           (let ((__tmp117159
                                                  (let ((__tmp117160
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id116717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp117160))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp117159
                                              _base-struct116818_
                                              _precedence-list116817_
                                              _slots116719_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116716_
                                         _id116717_
                                         __id117009
                                         __klass117007
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116716_
                                         _super116718_
                                         __super117010
                                         __klass117007
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116716_
                                         _precedence-list116817_
                                         __precedence-list117012
                                         __klass117007
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116716_
                                         _slots116719_
                                         __slots117016
                                         __klass117007
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116716_
                                         _fields116820_
                                         __fields117011
                                         __klass117007
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116716_
                                         _ctor-method116811_
                                         __constructor117014
                                         __klass117007
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116716_
                                         _struct?116721_
                                         __struct?117017
                                         __klass117007
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116716_
                                         _final?116722_
                                         __final?117013
                                         __klass117007
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116716_
                                         _metaclass116724_
                                         __metaclass117015
                                         __klass117007
                                         '#f)))))))
                            _g117141_))
                    ((let () (declare (not safe)) (##fx= _g117140_ 12))
                     (apply (lambda (_self116823_
                                     _id116824_
                                     _super116825_
                                     _precedence-list116826_
                                     _slots116827_
                                     _fields116828_
                                     _constructor116829_
                                     _struct?116830_
                                     _final?116831_
                                     _system?116832_
                                     _metaclass116833_
                                     _methods116834_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116823_
                                 _id116824_
                                 __id117009
                                 __klass117007
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116823_
                                 _super116825_
                                 __super117010
                                 __klass117007
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116823_
                                 _precedence-list116826_
                                 __precedence-list117012
                                 __klass117007
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116823_
                                 _slots116827_
                                 __slots117016
                                 __klass117007
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116823_
                                 _fields116828_
                                 __fields117011
                                 __klass117007
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116823_
                                 _constructor116829_
                                 __constructor117014
                                 __klass117007
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116823_
                                 _struct?116830_
                                 __struct?117017
                                 __klass117007
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116823_
                                 _final?116831_
                                 __final?117013
                                 __klass117007
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116823_
                                 _metaclass116833_
                                 __metaclass117015
                                 __klass117007
                                 '#f))
                              (if _methods116834_
                                  (let ((__tmp117161
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods116834_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self116823_
                                     __tmp117161
                                     __methods117018
                                     __klass117007
                                     '#f))
                                  '#!void))
                            _g117141_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g117141_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where116568_
               _base-struct116569_
               _precedence-list116570_
               _direct-slots116571_)
        (let* ((_base-fields116573_
                (if _base-struct116569_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where116568_
                        _base-struct116569_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields116575_ (reverse _base-fields116573_))
               (_seen-slots116583_
                (let ((_tab116577_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g116578116580_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab116577_ _g116578116580_ '#t)))
                   _base-fields116573_)
                  _tab116577_))
               (_process-slot116587_
                (lambda (_slot116585_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots116583_ _slot116585_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots116583_ _slot116585_ '#t))
                        (set! _r-fields116575_
                              (let ()
                                (declare (not safe))
                                (cons _slot116585_ _r-fields116575_))))))))
          (for-each
           (lambda (_mixin116590_)
             (let ((_klass116592_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where116568_
                       _mixin116590_))))
               (if (##structure-ref _klass116592_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot116587_
                    (##structure-ref _klass116592_ '5 gxc#!class::t '#f)))))
           _precedence-list116570_)
          (for-each _process-slot116587_ _direct-slots116571_)
          (reverse _r-fields116575_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass116527_ _slot116528_)
        (let _lp116530_ ((_rest116532_
                          (##structure-ref _klass116527_ '5 gxc#!class::t '#f))
                         (_offset116533_ '1))
          (let* ((_rest116534116542_ _rest116532_)
                 (_else116536116550_
                  (lambda ()
                    (let ((__tmp117163
                           (##structure-ref _klass116527_ '1 gxc#!type::t '#f))
                          (__tmp117162
                           (##structure-ref
                            _klass116527_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp117163
                       __tmp117162
                       _slot116528_))))
                 (_K116538116556_
                  (lambda (_rest116553_ _s116554_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s116554_ _slot116528_))
                        _offset116533_
                        (let ((__tmp117164
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset116533_ '1))))
                          (declare (not safe))
                          (_lp116530_ _rest116553_ __tmp117164))))))
            (if (let () (declare (not safe)) (##pair? _rest116534116542_))
                (let ((_hd116539116559_
                       (let ()
                         (declare (not safe))
                         (##car _rest116534116542_)))
                      (_tl116540116561_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116534116542_))))
                  (let* ((_s116564_ _hd116539116559_)
                         (_rest116566_ _tl116540116561_))
                    (declare (not safe))
                    (_K116538116556_ _rest116566_ _s116564_)))
                (let () (declare (not safe)) (_else116536116550_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass116485_ _slot116486_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass116485_ _slot116486_))
            _klass116485_
            (let _lp116488_ ((_rest116490_
                              (##structure-ref
                               _klass116485_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest116491116499_ _rest116490_)
                     (_else116493116507_ (lambda () '#f))
                     (_K116495116515_
                      (lambda (_rest116510_ _super116511_)
                        (let ((_super-class116513_
                               (let ((__tmp117165
                                      (let ((__tmp117166
                                             (let ((__tmp117168
                                                    (##structure-ref
                                                     _klass116485_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp117167
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot116486_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp117168
                                                     __tmp117167))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp117166))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp117165
                                  _super116511_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class116513_
                                 _slot116486_))
                              _super-class116513_
                              (let ()
                                (declare (not safe))
                                (_lp116488_ _rest116510_)))))))
                (if (let () (declare (not safe)) (##pair? _rest116491116499_))
                    (let ((_hd116496116518_
                           (let ()
                             (declare (not safe))
                             (##car _rest116491116499_)))
                          (_tl116497116520_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest116491116499_))))
                      (let* ((_super116523_ _hd116496116518_)
                             (_rest116525_ _tl116497116520_))
                        (declare (not safe))
                        (_K116495116515_ _rest116525_ _super116523_)))
                    (let () (declare (not safe)) (_else116493116507_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass116482_ _slot116483_)
        (if (##structure-ref _klass116482_ '7 gxc#!class::t '#f)
            (memq _slot116483_
                  (##structure-ref _klass116482_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self116479_ _id116480_)
        (##structure-set! _self116479_ _id116480_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass117029 __method-table117030)
        (let ((__id117031
               (let ((__slot117032
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117029 'id))))
                 (if __slot117032
                     __slot117032
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116479_ _id116480_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116479_
               _id116480_
               __id117031
               __klass117029
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
      (lambda (_self116354_ _id116355_)
        (##structure-set! _self116354_ _id116355_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass117033 __method-table117034)
        (let ((__id117035
               (let ((__slot117036
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117033 'id))))
                 (if __slot117036
                     __slot117036
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116354_ _id116355_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116354_
               _id116355_
               __id117035
               __klass117033
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
      (lambda (_self116227_ _id116228_ _slot116229_ _checked?116230_)
        (##structure-set! _self116227_ _id116228_ '1 gxc#!type::t '#f)
        (##structure-set! _self116227_ _slot116229_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self116227_
         _checked?116230_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass117037 __method-table117038)
        (let ((__id117039
               (let ((__slot117042
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117037 'id))))
                 (if __slot117042
                     __slot117042
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?117040
               (let ((__slot117043
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117037 'checked?))))
                 (if __slot117043
                     __slot117043
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot117041
               (let ((__slot117044
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117037 'slot))))
                 (if __slot117044
                     __slot117044
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self116227_ _id116228_ _slot116229_ _checked?116230_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116227_
               _id116228_
               __id117039
               __klass117037
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116227_
               _slot116229_
               __slot117041
               __klass117037
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116227_
               _checked?116230_
               __checked?117040
               __klass117037
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
      (lambda (_self116100_ _id116101_ _slot116102_ _checked?116103_)
        (##structure-set! _self116100_ _id116101_ '1 gxc#!type::t '#f)
        (##structure-set! _self116100_ _slot116102_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self116100_
         _checked?116103_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass117045 __method-table117046)
        (let ((__id117047
               (let ((__slot117050
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117045 'id))))
                 (if __slot117050
                     __slot117050
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?117048
               (let ((__slot117051
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117045 'checked?))))
                 (if __slot117051
                     __slot117051
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot117049
               (let ((__slot117052
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass117045 'slot))))
                 (if __slot117052
                     __slot117052
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self116100_ _id116101_ _slot116102_ _checked?116103_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116100_
               _id116101_
               __id117047
               __klass117045
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116100_
               _slot116102_
               __slot117049
               __klass117045
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116100_
               _checked?116103_
               __checked?117048
               __klass117045
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
      (lambda (_self115944_
               _id115945_
               _arity115946_
               _dispatch115947_
               _inline115948_
               _typedecl115949_)
        (if (let ((__tmp117175
                   (let ()
                     (declare (not safe))
                     (##structure-length _self115944_))))
              (declare (not safe))
              (##fx< '5 __tmp117175))
            (begin
              (let ((__tmp117170
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115944_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115944_
                 _id115945_
                 '1
                 __tmp117170
                 '#f))
              (let ((__tmp117171
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115944_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115944_
                 _arity115946_
                 '2
                 __tmp117171
                 '#f))
              (let ((__tmp117172
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115944_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115944_
                 _dispatch115947_
                 '3
                 __tmp117172
                 '#f))
              (let ((__tmp117173
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115944_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115944_
                 _inline115948_
                 '4
                 __tmp117173
                 '#f))
              (let ((__tmp117174
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115944_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115944_
                 _typedecl115949_
                 '5
                 __tmp117174
                 '#f)))
            (let ((__tmp117169
                   (let ()
                     (declare (not safe))
                     (##vector-length _self115944_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self115944_
                     '5
                     __tmp117169)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self115954_ _id115955_ _arity115956_ _dispatch115957_)
        (let* ((_inline115959_ '#f) (_typedecl115961_ '#f))
          (if (let ((__tmp117182
                     (let ()
                       (declare (not safe))
                       (##structure-length _self115954_))))
                (declare (not safe))
                (##fx< '5 __tmp117182))
              (begin
                (let ((__tmp117177
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115954_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115954_
                   _id115955_
                   '1
                   __tmp117177
                   '#f))
                (let ((__tmp117178
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115954_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115954_
                   _arity115956_
                   '2
                   __tmp117178
                   '#f))
                (let ((__tmp117179
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115954_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115954_
                   _dispatch115957_
                   '3
                   __tmp117179
                   '#f))
                (let ((__tmp117180
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115954_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115954_
                   _inline115959_
                   '4
                   __tmp117180
                   '#f))
                (let ((__tmp117181
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115954_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115954_
                   _typedecl115961_
                   '5
                   __tmp117181
                   '#f)))
              (let ((__tmp117176
                     (let ()
                       (declare (not safe))
                       (##vector-length _self115954_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self115954_
                       '5
                       __tmp117176))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self115963_
               _id115964_
               _arity115965_
               _dispatch115966_
               _inline115967_)
        (let ((_typedecl115969_ '#f))
          (if (let ((__tmp117189
                     (let ()
                       (declare (not safe))
                       (##structure-length _self115963_))))
                (declare (not safe))
                (##fx< '5 __tmp117189))
              (begin
                (let ((__tmp117184
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115963_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115963_
                   _id115964_
                   '1
                   __tmp117184
                   '#f))
                (let ((__tmp117185
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115963_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115963_
                   _arity115965_
                   '2
                   __tmp117185
                   '#f))
                (let ((__tmp117186
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115963_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115963_
                   _dispatch115966_
                   '3
                   __tmp117186
                   '#f))
                (let ((__tmp117187
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115963_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115963_
                   _inline115967_
                   '4
                   __tmp117187
                   '#f))
                (let ((__tmp117188
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115963_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115963_
                   _typedecl115969_
                   '5
                   __tmp117188
                   '#f)))
              (let ((__tmp117183
                     (let ()
                       (declare (not safe))
                       (##vector-length _self115963_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self115963_
                       '5
                       __tmp117183))))))
    (define gxc#!lambda:::init!
      (lambda _g117191_
        (let ((_g117190_ (let () (declare (not safe)) (##length _g117191_))))
          (cond ((let () (declare (not safe)) (##fx= _g117190_ 4))
                 (apply (lambda (_self115954_
                                 _id115955_
                                 _arity115956_
                                 _dispatch115957_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self115954_
                             _id115955_
                             _arity115956_
                             _dispatch115957_)))
                        _g117191_))
                ((let () (declare (not safe)) (##fx= _g117190_ 5))
                 (apply (lambda (_self115963_
                                 _id115964_
                                 _arity115965_
                                 _dispatch115966_
                                 _inline115967_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self115963_
                             _id115964_
                             _arity115965_
                             _dispatch115966_
                             _inline115967_)))
                        _g117191_))
                ((let () (declare (not safe)) (##fx= _g117190_ 6))
                 (apply (lambda (_self115971_
                                 _id115972_
                                 _arity115973_
                                 _dispatch115974_
                                 _inline115975_
                                 _typedecl115976_)
                          (if (let ((__tmp117198
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self115971_))))
                                (declare (not safe))
                                (##fx< '5 __tmp117198))
                              (begin
                                (let ((__tmp117193
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115971_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115971_
                                   _id115972_
                                   '1
                                   __tmp117193
                                   '#f))
                                (let ((__tmp117194
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115971_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115971_
                                   _arity115973_
                                   '2
                                   __tmp117194
                                   '#f))
                                (let ((__tmp117195
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115971_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115971_
                                   _dispatch115974_
                                   '3
                                   __tmp117195
                                   '#f))
                                (let ((__tmp117196
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115971_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115971_
                                   _inline115975_
                                   '4
                                   __tmp117196
                                   '#f))
                                (let ((__tmp117197
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115971_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115971_
                                   _typedecl115976_
                                   '5
                                   __tmp117197
                                   '#f)))
                              (let ((__tmp117192
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self115971_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self115971_
                                       '5
                                       __tmp117192))))
                        _g117191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g117191_))))))
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
      (lambda (_self115696_ . _args115697_)
        (apply struct-instance-init! _self115696_ _args115697_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type115571_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115571_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type115571_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass115564_)
        (let ((_$e115566_
               (##structure-ref _klass115564_ '11 gxc#!class::t '#f)))
          (if _$e115566_
              _$e115566_
              (let ((_tab115569_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass115564_
                 _tab115569_
                 '11
                 gxc#!class::t
                 '#f)
                _tab115569_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass115555_ _method115556_)
        (let ((_tab115557115559_
               (##structure-ref _klass115555_ '11 gxc#!class::t '#f)))
          (if _tab115557115559_
              (let ((_tab115562_ _tab115557115559_))
                (declare (not safe))
                (hash-get _tab115562_ _method115556_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type115552_ _method115553_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115552_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type115552_ _method115553_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym115536_ _type115537_ _local?115538_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115537_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym115536_
                     _type115537_)))
        (let ((__tmp117199
               (let () (declare (not safe)) (struct->list _type115537_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym115536_ '" " __tmp117199))
        (let ((__tmp117200
               (if _local?115538_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp117200 _sym115536_ _type115537_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym115543_ _type115544_)
        (let ((_local?115546_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym115543_
           _type115544_
           _local?115546_))))
    (define gxc#optimizer-declare-type!
      (lambda _g117202_
        (let ((_g117201_ (let () (declare (not safe)) (##length _g117202_))))
          (cond ((let () (declare (not safe)) (##fx= _g117201_ 2))
                 (apply (lambda (_sym115543_ _type115544_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym115543_
                             _type115544_)))
                        _g117202_))
                ((let () (declare (not safe)) (##fx= _g117201_ 3))
                 (apply (lambda (_sym115548_ _type115549_ _local?115550_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym115548_
                             _type115549_
                             _local?115550_)))
                        _g117202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g117202_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym115522_ _local?115523_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym115522_))
        (let ((__tmp117203
               (if _local?115523_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp117203 _sym115522_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym115528_)
        (let ((_local?115530_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym115528_ _local?115530_))))
    (define gxc#optimizer-clear-type!
      (lambda _g117205_
        (let ((_g117204_ (let () (declare (not safe)) (##length _g117205_))))
          (cond ((let () (declare (not safe)) (##fx= _g117204_ 1))
                 (apply (lambda (_sym115528_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym115528_)))
                        _g117205_))
                ((let () (declare (not safe)) (##fx= _g117204_ 2))
                 (apply (lambda (_sym115532_ _local?115533_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym115532_
                             _local?115533_)))
                        _g117205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g117205_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t115490_ _method115491_ _sym115492_ _rebind?115493_)
        (let* ((_type115495_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t115490_)))
               (_$e115497_
                (let () (declare (not safe)) (gxc#!type-vtab _type115495_))))
          (if _$e115497_
              ((lambda (_vtab115500_)
                 (let ((_$e115502_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab115500_ _method115491_))))
                   (if _$e115502_
                       ((lambda (_existing115505_)
                          (if _rebind?115493_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t115490_
                                   '" "
                                   _method115491_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab115500_
                                   _method115491_
                                   _sym115492_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing115505_ _sym115492_))
                                  '#!void
                                  (let ((__tmp117210
                                         (let ((__tmp117211
                                                (let ((__tmp117212
                                                       (let ((__tmp117213
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym115492_ '()))))
                 (declare (not safe))
                 (cons _method115491_ __tmp117213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t115490_
                                                        __tmp117212))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp117211))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp117210
                                     _method115491_)))))
                        _$e115502_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t115490_
                            '" "
                            _method115491_
                            '" => "
                            _sym115492_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab115500_
                            _method115491_
                            _sym115492_))))))
               _$e115497_)
              (if (let () (declare (not safe)) (not _type115495_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t115490_))
                  (let ((__tmp117206
                         (let ((__tmp117207
                                (let ((__tmp117208
                                       (let ((__tmp117209
                                              (let ()
                                                (declare (not safe))
                                                (cons _method115491_ '()))))
                                         (declare (not safe))
                                         (cons _sym115492_ __tmp117209))))
                                  (declare (not safe))
                                  (cons _type-t115490_ __tmp117208))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp117207))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp117206
                     _type115495_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t115510_ _method115511_ _sym115512_)
        (let ((_rebind?115514_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t115510_
           _method115511_
           _sym115512_
           _rebind?115514_))))
    (define gxc#optimizer-declare-method!
      (lambda _g117215_
        (let ((_g117214_ (let () (declare (not safe)) (##length _g117215_))))
          (cond ((let () (declare (not safe)) (##fx= _g117214_ 3))
                 (apply (lambda (_type-t115510_ _method115511_ _sym115512_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t115510_
                             _method115511_
                             _sym115512_)))
                        _g117215_))
                ((let () (declare (not safe)) (##fx= _g117214_ 4))
                 (apply (lambda (_type-t115516_
                                 _method115517_
                                 _sym115518_
                                 _rebind?115519_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t115516_
                             _method115517_
                             _sym115518_
                             _rebind?115519_)))
                        _g117215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g117215_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym115478_)
        (let ((_$e115486_
               (let ((_ht115479115481_ (gxc#current-compile-local-type)))
                 (if _ht115479115481_
                     (let ((_ht115484_ _ht115479115481_))
                       (declare (not safe))
                       (hash-get _ht115484_ _sym115478_))
                     '#f))))
          (if _$e115486_
              _$e115486_
              (let ((__tmp117216
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp117216 _sym115478_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym115470_)
        (let ((_type115471115473_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym115470_))))
          (if _type115471115473_
              (let ((_type115476_ _type115471115473_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type115476_ 'gxc#!alias::t))
                    (let ((__tmp117217
                           (##structure-ref _type115476_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp117217))
                    _type115476_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where115462_ _klass-id115463_)
        (let ((_$e115465_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id115463_))))
          (if _$e115465_
              ((lambda (_klass115468_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass115468_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where115462_
                        _klass-id115463_
                        _klass115468_)))
                 _klass115468_)
               _$e115465_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where115462_
                 _klass-id115463_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t115459_ _method115460_)
        (let ((__tmp117218
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t115459_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp117218 _method115460_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym115457_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym115457_))
        (let ((__tmp117219
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp117219 _sym115457_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym115455_)
        (let ((__tmp117220
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp117220 _sym115455_))))
    (define gxc#identifier-symbol
      (lambda (_stx115453_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx115453_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx115453_))
            (let () (declare (not safe)) (gx#stx-e _stx115453_)))))))
