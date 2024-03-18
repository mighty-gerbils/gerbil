(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710715076)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp116765 (list))
            (__tmp116763
             (let ((__tmp116764
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116764 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp116765
         '(type ssxi methods)
         __tmp116763
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args116699_
        (apply make-instance gxc#optimizer-info::t _$args116699_)))
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
      (lambda (_self116697_)
        (if (let ((__tmp116773
                   (let ()
                     (declare (not safe))
                     (##structure-length _self116697_))))
              (declare (not safe))
              (##fx< '3 __tmp116773))
            (begin
              (let ((__tmp116768
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp116767
                     (let ()
                       (declare (not safe))
                       (##structure-type _self116697_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self116697_
                 __tmp116768
                 '1
                 __tmp116767
                 '#f))
              (let ((__tmp116770
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp116769
                     (let ()
                       (declare (not safe))
                       (##structure-type _self116697_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self116697_
                 __tmp116770
                 '2
                 __tmp116769
                 '#f))
              (let ((__tmp116772
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp116771
                     (let ()
                       (declare (not safe))
                       (##structure-type _self116697_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self116697_
                 __tmp116772
                 '3
                 __tmp116771
                 '#f)))
            (let ((__tmp116766
                   (let ()
                     (declare (not safe))
                     (##vector-length _self116697_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self116697_
                     '3
                     __tmp116766)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp116776 (list))
            (__tmp116774
             (let ((__tmp116775
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116775 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp116776
         '(id)
         __tmp116774
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args116572_ (apply make-instance gxc#!type::t _$args116572_)))
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
      (let ((__tmp116779 (list gxc#!type::t))
            (__tmp116777
             (let ((__tmp116778
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116778 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp116779
         '()
         __tmp116777
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args116569_ (apply make-instance gxc#!alias::t _$args116569_)))
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
      (let ((__tmp116782 (list gxc#!type::t))
            (__tmp116780
             (let ((__tmp116781
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116781 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp116782
         '()
         __tmp116780
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args116566_
        (apply make-instance gxc#!procedure::t _$args116566_)))
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
      (let ((__tmp116785 (list gxc#!type::t))
            (__tmp116783
             (let ((__tmp116784
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116784 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp116785
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp116783
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args116563_ (apply make-instance gxc#!class::t _$args116563_)))
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
      (let ((__tmp116788 (list gxc#!procedure::t))
            (__tmp116786
             (let ((__tmp116787
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116787 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp116788
         '()
         __tmp116786
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args116560_
        (apply make-instance gxc#!predicate::t _$args116560_)))
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
      (let ((__tmp116791 (list gxc#!procedure::t))
            (__tmp116789
             (let ((__tmp116790
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116790 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp116791
         '()
         __tmp116789
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args116557_
        (apply make-instance gxc#!constructor::t _$args116557_)))
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
      (let ((__tmp116794 (list gxc#!procedure::t))
            (__tmp116792
             (let ((__tmp116793
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116793 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp116794
         '(slot checked?)
         __tmp116792
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args116554_
        (apply make-instance gxc#!accessor::t _$args116554_)))
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
      (let ((__tmp116797 (list gxc#!procedure::t))
            (__tmp116795
             (let ((__tmp116796
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116796 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp116797
         '(slot checked?)
         __tmp116795
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args116551_
        (apply make-instance gxc#!mutator::t _$args116551_)))
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
      (let ((__tmp116800 (list gxc#!procedure::t))
            (__tmp116798
             (let ((__tmp116799
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116799 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp116800
         '(arity dispatch inline inline-typedecl)
         __tmp116798
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args116548_
        (apply make-instance gxc#!lambda::t _$args116548_)))
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
      (let ((__tmp116803 (list gxc#!procedure::t))
            (__tmp116801
             (let ((__tmp116802
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116802 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp116803
         '(clauses)
         __tmp116801
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args116545_
        (apply make-instance gxc#!case-lambda::t _$args116545_)))
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
      (let ((__tmp116806 (list gxc#!procedure::t))
            (__tmp116804
             (let ((__tmp116805
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116805 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp116806
         '(table dispatch)
         __tmp116804
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args116542_
        (apply make-instance gxc#!kw-lambda::t _$args116542_)))
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
      (let ((__tmp116809 (list gxc#!procedure::t))
            (__tmp116807
             (let ((__tmp116808
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116808 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp116809
         '(keys main)
         __tmp116807
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args116539_
        (apply make-instance gxc#!kw-lambda-primary::t _$args116539_)))
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
      (let ((__tmp116810 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp116810
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args116536_
        (apply make-instance gxc#!primitive::t _$args116536_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp116811 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp116811
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args116533_
        (apply make-instance gxc#!primitive-lambda::t _$args116533_)))
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
      (let ((__tmp116812 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp116812
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args116530_
        (apply make-instance gxc#!primitive-case-lambda::t _$args116530_)))
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
      (lambda (_self116410_
               _id116411_
               _super116412_
               _slots116413_
               _ctor-method116414_
               _struct?116415_
               _final?116416_
               _system?116417_
               _metaclass116418_)
        (let _lp116420_ ((_rest116422_ _super116412_))
          (let* ((_rest116423116431_ _rest116422_)
                 (_else116425116439_ (lambda () '#!void))
                 (_K116427116445_
                  (lambda (_rest116442_ _super-id116443_)
                    (if (##structure-ref
                         (let ((__tmp116815
                                (let ((__tmp116816
                                       (let ()
                                         (declare (not safe))
                                         (cons _id116411_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp116816))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp116815
                            _super-id116443_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp116813
                               (let ((__tmp116814
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116411_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp116814))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp116813
                           _super-id116443_))
                        '#!void)
                    (let () (declare (not safe)) (_lp116420_ _rest116442_)))))
            (if (let () (declare (not safe)) (##pair? _rest116423116431_))
                (let ((_hd116428116448_
                       (let ()
                         (declare (not safe))
                         (##car _rest116423116431_)))
                      (_tl116429116450_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116423116431_))))
                  (let* ((_super-id116453_ _hd116428116448_)
                         (_rest116455_ _tl116429116450_))
                    (declare (not safe))
                    (_K116427116445_ _rest116455_ _super-id116453_)))
                '#!void)))
        (let* ((_ctor-method116505_
                (let ((_$e116457_ _ctor-method116414_))
                  (if _$e116457_
                      _$e116457_
                      (let _lp116460_ ((_rest116462_ _super116412_)
                                       (_method116463_ '#f))
                        (let* ((_rest116464116472_ _rest116462_)
                               (_else116466116480_ (lambda () _method116463_))
                               (_K116468116493_
                                (lambda (_rest116483_ _super-id116484_)
                                  (let* ((_klass116486_
                                          (let ((__tmp116817
                                                 (let ((__tmp116818
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id116411_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp116818))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp116817
                                             _super-id116484_)))
                                         (_$e116488_
                                          (##structure-ref
                                           _klass116486_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e116488_
                                        ((lambda (_ctor-method116491_)
                                           (if _method116463_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method116491_
                                                          _method116463_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp116460_
                                                      _rest116483_
                                                      _ctor-method116491_))
                                                   (let ((__tmp116819
                                                          (let ((__tmp116820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id116411_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp116820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp116819
                                                      _method116463_
                                                      _ctor-method116491_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp116460_
                                                  _rest116483_
                                                  _ctor-method116491_))))
                                         _$e116488_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp116460_
                                           _rest116483_
                                           _method116463_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest116464116472_))
                              (let ((_hd116469116496_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest116464116472_)))
                                    (_tl116470116498_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest116464116472_))))
                                (let* ((_super-id116501_ _hd116469116496_)
                                       (_rest116503_ _tl116470116498_))
                                  (declare (not safe))
                                  (_K116468116493_
                                   _rest116503_
                                   _super-id116501_)))
                              (let ()
                                (declare (not safe))
                                (_else116466116480_))))))))
               (_g116821_
                (let ((__tmp116826
                       (lambda (_klass-id116507_)
                         (let ((__tmp116827
                                (##structure-ref
                                 (let ((__tmp116828
                                        (let ((__tmp116829
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116411_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp116829))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp116828
                                    _klass-id116507_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id116507_ __tmp116827))))
                      (__tmp116823
                       (lambda (_klass-id116509_)
                         (##structure-ref
                          (let ((__tmp116824
                                 (let ((__tmp116825
                                        (let ()
                                          (declare (not safe))
                                          (cons _id116411_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp116825))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp116824
                             _klass-id116509_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super116412_
                   'get-precedence-list:
                   __tmp116826
                   'struct:
                   __tmp116823
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g116822_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g116821_)
                         (##vector-length _g116821_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g116822_ 2)))
                  (error "Context expects 2 values" _g116822_)))
            (let ((_precedence-list116511_
                   (let () (declare (not safe)) (##vector-ref _g116821_ 0)))
                  (_base-struct116512_
                   (let () (declare (not safe)) (##vector-ref _g116821_ 1))))
              (let ((_fields116514_
                     (let ((__tmp116830
                            (let ((__tmp116831
                                   (let ()
                                     (declare (not safe))
                                     (cons _id116411_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp116831))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp116830
                        _base-struct116512_
                        _precedence-list116511_
                        _slots116413_))))
                (##structure-set! _self116410_ _id116411_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self116410_
                 _super116412_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116410_
                 _precedence-list116511_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116410_
                 _slots116413_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116410_
                 _fields116514_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116410_
                 _ctor-method116505_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116410_
                 _struct?116415_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116410_
                 _final?116416_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116410_
                 _metaclass116418_
                 '10
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self116517_
               _id116518_
               _super116519_
               _precedence-list116520_
               _slots116521_
               _fields116522_
               _constructor116523_
               _struct?116524_
               _final?116525_
               _system?116526_
               _metaclass116527_
               _methods116528_)
        (##structure-set! _self116517_ _id116518_ '1 gxc#!type::t '#f)
        (##structure-set! _self116517_ _super116519_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self116517_
         _precedence-list116520_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self116517_ _slots116521_ '4 gxc#!class::t '#f)
        (##structure-set! _self116517_ _fields116522_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self116517_
         _constructor116523_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self116517_ _struct?116524_ '7 gxc#!class::t '#f)
        (##structure-set! _self116517_ _final?116525_ '8 gxc#!class::t '#f)
        (##structure-set! _self116517_ _metaclass116527_ '10 gxc#!class::t '#f)
        (if _methods116528_
            (##structure-set!
             _self116517_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods116528_))
             '11
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g116833_
        (let ((_g116832_ (let () (declare (not safe)) (##length _g116833_))))
          (cond ((let () (declare (not safe)) (##fx= _g116832_ 9))
                 (apply (lambda (_self116410_
                                 _id116411_
                                 _super116412_
                                 _slots116413_
                                 _ctor-method116414_
                                 _struct?116415_
                                 _final?116416_
                                 _system?116417_
                                 _metaclass116418_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self116410_
                             _id116411_
                             _super116412_
                             _slots116413_
                             _ctor-method116414_
                             _struct?116415_
                             _final?116416_
                             _system?116417_
                             _metaclass116418_)))
                        _g116833_))
                ((let () (declare (not safe)) (##fx= _g116832_ 12))
                 (apply (lambda (_self116517_
                                 _id116518_
                                 _super116519_
                                 _precedence-list116520_
                                 _slots116521_
                                 _fields116522_
                                 _constructor116523_
                                 _struct?116524_
                                 _final?116525_
                                 _system?116526_
                                 _metaclass116527_
                                 _methods116528_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self116517_
                             _id116518_
                             _super116519_
                             _precedence-list116520_
                             _slots116521_
                             _fields116522_
                             _constructor116523_
                             _struct?116524_
                             _final?116525_
                             _system?116526_
                             _metaclass116527_
                             _methods116528_)))
                        _g116833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g116833_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass116701 __method-table116702)
        (let ((__constructor116703
               (let ((__slot116713
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116701 'constructor))))
                 (if __slot116713
                     __slot116713
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__fields116704
               (let ((__slot116714
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116701 'fields))))
                 (if __slot116714
                     __slot116714
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__metaclass116705
               (let ((__slot116715
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116701 'metaclass))))
                 (if __slot116715
                     __slot116715
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__precedence-list116706
               (let ((__slot116716
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116701 'precedence-list))))
                 (if __slot116716
                     __slot116716
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__slots116707
               (let ((__slot116717
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116701 'slots))))
                 (if __slot116717
                     __slot116717
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__struct?116708
               (let ((__slot116718
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116701 'struct?))))
                 (if __slot116718
                     __slot116718
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__final?116709
               (let ((__slot116719
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116701 'final?))))
                 (if __slot116719
                     __slot116719
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__id116710
               (let ((__slot116720
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116701 'id))))
                 (if __slot116720
                     __slot116720
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super116711
               (let ((__slot116721
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116701 'super))))
                 (if __slot116721
                     __slot116721
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__methods116712
               (let ((__slot116722
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116701 'methods))))
                 (if __slot116722
                     __slot116722
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods))))))
          (lambda _g116835_
            (let ((_g116834_
                   (let () (declare (not safe)) (##length _g116835_))))
              (cond ((let () (declare (not safe)) (##fx= _g116834_ 9))
                     (apply (lambda (_self116410_
                                     _id116411_
                                     _super116412_
                                     _slots116413_
                                     _ctor-method116414_
                                     _struct?116415_
                                     _final?116416_
                                     _system?116417_
                                     _metaclass116418_)
                              (let _lp116420_ ((_rest116422_ _super116412_))
                                (let* ((_rest116423116431_ _rest116422_)
                                       (_else116425116439_ (lambda () '#!void))
                                       (_K116427116445_
                                        (lambda (_rest116442_ _super-id116443_)
                                          (if (##structure-ref
                                               (let ((__tmp116838
                                                      (let ((__tmp116839
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id116411_ '()))))
                (declare (not safe))
                (cons '!class __tmp116839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp116838
                                                  _super-id116443_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp116836
                                                     (let ((__tmp116837
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id116411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp116837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp116836
                                                 _super-id116443_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp116420_ _rest116442_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest116423116431_))
                                      (let ((_hd116428116448_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest116423116431_)))
                                            (_tl116429116450_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest116423116431_))))
                                        (let* ((_super-id116453_
                                                _hd116428116448_)
                                               (_rest116455_ _tl116429116450_))
                                          (declare (not safe))
                                          (_K116427116445_
                                           _rest116455_
                                           _super-id116453_)))
                                      '#!void)))
                              (let* ((_ctor-method116505_
                                      (let ((_$e116457_ _ctor-method116414_))
                                        (if _$e116457_
                                            _$e116457_
                                            (let _lp116460_ ((_rest116462_
                                                              _super116412_)
                                                             (_method116463_
                                                              '#f))
                                              (let* ((_rest116464116472_
                                                      _rest116462_)
                                                     (_else116466116480_
                                                      (lambda ()
                                                        _method116463_))
                                                     (_K116468116493_
                                                      (lambda (_rest116483_
                                                               _super-id116484_)
                                                        (let* ((_klass116486_
                                                                (let ((__tmp116840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp116841
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116411_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp116841))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp116840
                           _super-id116484_)))
                       (_$e116488_
                        (##structure-ref _klass116486_ '6 gxc#!class::t '#f)))
                  (if _$e116488_
                      ((lambda (_ctor-method116491_)
                         (if _method116463_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method116491_ _method116463_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp116460_
                                    _rest116483_
                                    _ctor-method116491_))
                                 (let ((__tmp116842
                                        (let ((__tmp116843
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116411_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp116843))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp116842
                                    _method116463_
                                    _ctor-method116491_)))
                             (let ()
                               (declare (not safe))
                               (_lp116460_ _rest116483_ _ctor-method116491_))))
                       _$e116488_)
                      (let ()
                        (declare (not safe))
                        (_lp116460_ _rest116483_ _method116463_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest116464116472_))
                                                    (let ((_hd116469116496_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest116464116472_)))
                                                          (_tl116470116498_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest116464116472_))))
                                                      (let* ((_super-id116501_
                                                              _hd116469116496_)
                                                             (_rest116503_
                                                              _tl116470116498_))
                                                        (declare (not safe))
                                                        (_K116468116493_
                                                         _rest116503_
                                                         _super-id116501_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else116466116480_))))))))
                                     (_g116844_
                                      (let ((__tmp116849
                                             (lambda (_klass-id116507_)
                                               (let ((__tmp116850
                                                      (##structure-ref
                                                       (let ((__tmp116851
                                                              (let ((__tmp116852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id116411_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp116852))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp116851 _klass-id116507_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id116507_
                                                       __tmp116850))))
                                            (__tmp116846
                                             (lambda (_klass-id116509_)
                                               (##structure-ref
                                                (let ((__tmp116847
                                                       (let ((__tmp116848
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id116411_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp116848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp116847
                                                   _klass-id116509_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super116412_
                                         'get-precedence-list:
                                         __tmp116849
                                         'struct:
                                         __tmp116846
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g116845_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g116844_)
                                               (##vector-length _g116844_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g116845_ 2)))
                                        (error "Context expects 2 values"
                                               _g116845_)))
                                  (let ((_precedence-list116511_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g116844_ 0)))
                                        (_base-struct116512_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g116844_ 1))))
                                    (let ((_fields116514_
                                           (let ((__tmp116853
                                                  (let ((__tmp116854
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id116411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp116854))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp116853
                                              _base-struct116512_
                                              _precedence-list116511_
                                              _slots116413_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116410_
                                         _id116411_
                                         __id116710
                                         __klass116701
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116410_
                                         _super116412_
                                         __super116711
                                         __klass116701
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116410_
                                         _precedence-list116511_
                                         __precedence-list116706
                                         __klass116701
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116410_
                                         _slots116413_
                                         __slots116707
                                         __klass116701
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116410_
                                         _fields116514_
                                         __fields116704
                                         __klass116701
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116410_
                                         _ctor-method116505_
                                         __constructor116703
                                         __klass116701
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116410_
                                         _struct?116415_
                                         __struct?116708
                                         __klass116701
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116410_
                                         _final?116416_
                                         __final?116709
                                         __klass116701
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116410_
                                         _metaclass116418_
                                         __metaclass116705
                                         __klass116701
                                         '#f)))))))
                            _g116835_))
                    ((let () (declare (not safe)) (##fx= _g116834_ 12))
                     (apply (lambda (_self116517_
                                     _id116518_
                                     _super116519_
                                     _precedence-list116520_
                                     _slots116521_
                                     _fields116522_
                                     _constructor116523_
                                     _struct?116524_
                                     _final?116525_
                                     _system?116526_
                                     _metaclass116527_
                                     _methods116528_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116517_
                                 _id116518_
                                 __id116710
                                 __klass116701
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116517_
                                 _super116519_
                                 __super116711
                                 __klass116701
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116517_
                                 _precedence-list116520_
                                 __precedence-list116706
                                 __klass116701
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116517_
                                 _slots116521_
                                 __slots116707
                                 __klass116701
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116517_
                                 _fields116522_
                                 __fields116704
                                 __klass116701
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116517_
                                 _constructor116523_
                                 __constructor116703
                                 __klass116701
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116517_
                                 _struct?116524_
                                 __struct?116708
                                 __klass116701
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116517_
                                 _final?116525_
                                 __final?116709
                                 __klass116701
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116517_
                                 _metaclass116527_
                                 __metaclass116705
                                 __klass116701
                                 '#f))
                              (if _methods116528_
                                  (let ((__tmp116855
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods116528_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self116517_
                                     __tmp116855
                                     __methods116712
                                     __klass116701
                                     '#f))
                                  '#!void))
                            _g116835_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g116835_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where116262_
               _base-struct116263_
               _precedence-list116264_
               _direct-slots116265_)
        (let* ((_base-fields116267_
                (if _base-struct116263_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where116262_
                        _base-struct116263_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields116269_ (reverse _base-fields116267_))
               (_seen-slots116277_
                (let ((_tab116271_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g116272116274_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab116271_ _g116272116274_ '#t)))
                   _base-fields116267_)
                  _tab116271_))
               (_process-slot116281_
                (lambda (_slot116279_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots116277_ _slot116279_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots116277_ _slot116279_ '#t))
                        (set! _r-fields116269_
                              (let ()
                                (declare (not safe))
                                (cons _slot116279_ _r-fields116269_))))))))
          (for-each
           (lambda (_mixin116284_)
             (let ((_klass116286_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where116262_
                       _mixin116284_))))
               (if (##structure-ref _klass116286_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot116281_
                    (##structure-ref _klass116286_ '5 gxc#!class::t '#f)))))
           _precedence-list116264_)
          (for-each _process-slot116281_ _direct-slots116265_)
          (reverse _r-fields116269_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass116221_ _slot116222_)
        (let _lp116224_ ((_rest116226_
                          (##structure-ref _klass116221_ '5 gxc#!class::t '#f))
                         (_offset116227_ '1))
          (let* ((_rest116228116236_ _rest116226_)
                 (_else116230116244_
                  (lambda ()
                    (let ((__tmp116857
                           (##structure-ref _klass116221_ '1 gxc#!type::t '#f))
                          (__tmp116856
                           (##structure-ref
                            _klass116221_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp116857
                       __tmp116856
                       _slot116222_))))
                 (_K116232116250_
                  (lambda (_rest116247_ _s116248_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s116248_ _slot116222_))
                        _offset116227_
                        (let ((__tmp116858
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset116227_ '1))))
                          (declare (not safe))
                          (_lp116224_ _rest116247_ __tmp116858))))))
            (if (let () (declare (not safe)) (##pair? _rest116228116236_))
                (let ((_hd116233116253_
                       (let ()
                         (declare (not safe))
                         (##car _rest116228116236_)))
                      (_tl116234116255_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116228116236_))))
                  (let* ((_s116258_ _hd116233116253_)
                         (_rest116260_ _tl116234116255_))
                    (declare (not safe))
                    (_K116232116250_ _rest116260_ _s116258_)))
                (let () (declare (not safe)) (_else116230116244_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass116179_ _slot116180_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass116179_ _slot116180_))
            _klass116179_
            (let _lp116182_ ((_rest116184_
                              (##structure-ref
                               _klass116179_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest116185116193_ _rest116184_)
                     (_else116187116201_ (lambda () '#f))
                     (_K116189116209_
                      (lambda (_rest116204_ _super116205_)
                        (let ((_super-class116207_
                               (let ((__tmp116859
                                      (let ((__tmp116860
                                             (let ((__tmp116862
                                                    (##structure-ref
                                                     _klass116179_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp116861
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot116180_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp116862
                                                     __tmp116861))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp116860))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp116859
                                  _super116205_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class116207_
                                 _slot116180_))
                              _super-class116207_
                              (let ()
                                (declare (not safe))
                                (_lp116182_ _rest116204_)))))))
                (if (let () (declare (not safe)) (##pair? _rest116185116193_))
                    (let ((_hd116190116212_
                           (let ()
                             (declare (not safe))
                             (##car _rest116185116193_)))
                          (_tl116191116214_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest116185116193_))))
                      (let* ((_super116217_ _hd116190116212_)
                             (_rest116219_ _tl116191116214_))
                        (declare (not safe))
                        (_K116189116209_ _rest116219_ _super116217_)))
                    (let () (declare (not safe)) (_else116187116201_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass116176_ _slot116177_)
        (if (##structure-ref _klass116176_ '7 gxc#!class::t '#f)
            (memq _slot116177_
                  (##structure-ref _klass116176_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self116173_ _id116174_)
        (##structure-set! _self116173_ _id116174_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass116723 __method-table116724)
        (let ((__id116725
               (let ((__slot116726
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116723 'id))))
                 (if __slot116726
                     __slot116726
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116173_ _id116174_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116173_
               _id116174_
               __id116725
               __klass116723
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
      (lambda (_self116048_ _id116049_)
        (##structure-set! _self116048_ _id116049_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass116727 __method-table116728)
        (let ((__id116729
               (let ((__slot116730
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116727 'id))))
                 (if __slot116730
                     __slot116730
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116048_ _id116049_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116048_
               _id116049_
               __id116729
               __klass116727
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
      (lambda (_self115921_ _id115922_ _slot115923_ _checked?115924_)
        (##structure-set! _self115921_ _id115922_ '1 gxc#!type::t '#f)
        (##structure-set! _self115921_ _slot115923_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self115921_
         _checked?115924_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass116731 __method-table116732)
        (let ((__checked?116733
               (let ((__slot116736
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116731 'checked?))))
                 (if __slot116736
                     __slot116736
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id116734
               (let ((__slot116737
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116731 'id))))
                 (if __slot116737
                     __slot116737
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot116735
               (let ((__slot116738
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116731 'slot))))
                 (if __slot116738
                     __slot116738
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self115921_ _id115922_ _slot115923_ _checked?115924_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self115921_
               _id115922_
               __id116734
               __klass116731
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self115921_
               _slot115923_
               __slot116735
               __klass116731
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self115921_
               _checked?115924_
               __checked?116733
               __klass116731
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
      (lambda (_self115794_ _id115795_ _slot115796_ _checked?115797_)
        (##structure-set! _self115794_ _id115795_ '1 gxc#!type::t '#f)
        (##structure-set! _self115794_ _slot115796_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self115794_
         _checked?115797_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass116739 __method-table116740)
        (let ((__checked?116741
               (let ((__slot116744
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116739 'checked?))))
                 (if __slot116744
                     __slot116744
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id116742
               (let ((__slot116745
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116739 'id))))
                 (if __slot116745
                     __slot116745
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot116743
               (let ((__slot116746
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116739 'slot))))
                 (if __slot116746
                     __slot116746
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self115794_ _id115795_ _slot115796_ _checked?115797_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self115794_
               _id115795_
               __id116742
               __klass116739
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self115794_
               _slot115796_
               __slot116743
               __klass116739
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self115794_
               _checked?115797_
               __checked?116741
               __klass116739
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
      (lambda (_self115638_
               _id115639_
               _arity115640_
               _dispatch115641_
               _inline115642_
               _typedecl115643_)
        (if (let ((__tmp116869
                   (let ()
                     (declare (not safe))
                     (##structure-length _self115638_))))
              (declare (not safe))
              (##fx< '5 __tmp116869))
            (begin
              (let ((__tmp116864
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115638_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115638_
                 _id115639_
                 '1
                 __tmp116864
                 '#f))
              (let ((__tmp116865
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115638_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115638_
                 _arity115640_
                 '2
                 __tmp116865
                 '#f))
              (let ((__tmp116866
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115638_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115638_
                 _dispatch115641_
                 '3
                 __tmp116866
                 '#f))
              (let ((__tmp116867
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115638_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115638_
                 _inline115642_
                 '4
                 __tmp116867
                 '#f))
              (let ((__tmp116868
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115638_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115638_
                 _typedecl115643_
                 '5
                 __tmp116868
                 '#f)))
            (let ((__tmp116863
                   (let ()
                     (declare (not safe))
                     (##vector-length _self115638_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self115638_
                     '5
                     __tmp116863)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self115648_ _id115649_ _arity115650_ _dispatch115651_)
        (let* ((_inline115653_ '#f) (_typedecl115655_ '#f))
          (if (let ((__tmp116876
                     (let ()
                       (declare (not safe))
                       (##structure-length _self115648_))))
                (declare (not safe))
                (##fx< '5 __tmp116876))
              (begin
                (let ((__tmp116871
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115648_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115648_
                   _id115649_
                   '1
                   __tmp116871
                   '#f))
                (let ((__tmp116872
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115648_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115648_
                   _arity115650_
                   '2
                   __tmp116872
                   '#f))
                (let ((__tmp116873
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115648_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115648_
                   _dispatch115651_
                   '3
                   __tmp116873
                   '#f))
                (let ((__tmp116874
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115648_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115648_
                   _inline115653_
                   '4
                   __tmp116874
                   '#f))
                (let ((__tmp116875
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115648_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115648_
                   _typedecl115655_
                   '5
                   __tmp116875
                   '#f)))
              (let ((__tmp116870
                     (let ()
                       (declare (not safe))
                       (##vector-length _self115648_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self115648_
                       '5
                       __tmp116870))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self115657_
               _id115658_
               _arity115659_
               _dispatch115660_
               _inline115661_)
        (let ((_typedecl115663_ '#f))
          (if (let ((__tmp116883
                     (let ()
                       (declare (not safe))
                       (##structure-length _self115657_))))
                (declare (not safe))
                (##fx< '5 __tmp116883))
              (begin
                (let ((__tmp116878
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115657_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115657_
                   _id115658_
                   '1
                   __tmp116878
                   '#f))
                (let ((__tmp116879
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115657_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115657_
                   _arity115659_
                   '2
                   __tmp116879
                   '#f))
                (let ((__tmp116880
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115657_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115657_
                   _dispatch115660_
                   '3
                   __tmp116880
                   '#f))
                (let ((__tmp116881
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115657_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115657_
                   _inline115661_
                   '4
                   __tmp116881
                   '#f))
                (let ((__tmp116882
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115657_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115657_
                   _typedecl115663_
                   '5
                   __tmp116882
                   '#f)))
              (let ((__tmp116877
                     (let ()
                       (declare (not safe))
                       (##vector-length _self115657_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self115657_
                       '5
                       __tmp116877))))))
    (define gxc#!lambda:::init!
      (lambda _g116885_
        (let ((_g116884_ (let () (declare (not safe)) (##length _g116885_))))
          (cond ((let () (declare (not safe)) (##fx= _g116884_ 4))
                 (apply (lambda (_self115648_
                                 _id115649_
                                 _arity115650_
                                 _dispatch115651_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self115648_
                             _id115649_
                             _arity115650_
                             _dispatch115651_)))
                        _g116885_))
                ((let () (declare (not safe)) (##fx= _g116884_ 5))
                 (apply (lambda (_self115657_
                                 _id115658_
                                 _arity115659_
                                 _dispatch115660_
                                 _inline115661_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self115657_
                             _id115658_
                             _arity115659_
                             _dispatch115660_
                             _inline115661_)))
                        _g116885_))
                ((let () (declare (not safe)) (##fx= _g116884_ 6))
                 (apply (lambda (_self115665_
                                 _id115666_
                                 _arity115667_
                                 _dispatch115668_
                                 _inline115669_
                                 _typedecl115670_)
                          (if (let ((__tmp116892
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self115665_))))
                                (declare (not safe))
                                (##fx< '5 __tmp116892))
                              (begin
                                (let ((__tmp116887
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115665_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115665_
                                   _id115666_
                                   '1
                                   __tmp116887
                                   '#f))
                                (let ((__tmp116888
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115665_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115665_
                                   _arity115667_
                                   '2
                                   __tmp116888
                                   '#f))
                                (let ((__tmp116889
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115665_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115665_
                                   _dispatch115668_
                                   '3
                                   __tmp116889
                                   '#f))
                                (let ((__tmp116890
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115665_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115665_
                                   _inline115669_
                                   '4
                                   __tmp116890
                                   '#f))
                                (let ((__tmp116891
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115665_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115665_
                                   _typedecl115670_
                                   '5
                                   __tmp116891
                                   '#f)))
                              (let ((__tmp116886
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self115665_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self115665_
                                       '5
                                       __tmp116886))))
                        _g116885_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g116885_))))))
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
      (lambda (_self115390_ . _args115391_)
        (apply struct-instance-init! _self115390_ _args115391_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type115265_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115265_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type115265_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass115258_)
        (let ((_$e115260_
               (##structure-ref _klass115258_ '11 gxc#!class::t '#f)))
          (if _$e115260_
              _$e115260_
              (let ((_tab115263_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass115258_
                 _tab115263_
                 '11
                 gxc#!class::t
                 '#f)
                _tab115263_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass115249_ _method115250_)
        (let ((_tab115251115253_
               (##structure-ref _klass115249_ '11 gxc#!class::t '#f)))
          (if _tab115251115253_
              (let ((_tab115256_ _tab115251115253_))
                (declare (not safe))
                (hash-get _tab115256_ _method115250_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type115246_ _method115247_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115246_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type115246_ _method115247_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym115230_ _type115231_ _local?115232_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115231_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym115230_
                     _type115231_)))
        (let ((__tmp116893
               (let () (declare (not safe)) (struct->list _type115231_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym115230_ '" " __tmp116893))
        (let ((__tmp116894
               (if _local?115232_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp116894 _sym115230_ _type115231_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym115237_ _type115238_)
        (let ((_local?115240_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym115237_
           _type115238_
           _local?115240_))))
    (define gxc#optimizer-declare-type!
      (lambda _g116896_
        (let ((_g116895_ (let () (declare (not safe)) (##length _g116896_))))
          (cond ((let () (declare (not safe)) (##fx= _g116895_ 2))
                 (apply (lambda (_sym115237_ _type115238_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym115237_
                             _type115238_)))
                        _g116896_))
                ((let () (declare (not safe)) (##fx= _g116895_ 3))
                 (apply (lambda (_sym115242_ _type115243_ _local?115244_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym115242_
                             _type115243_
                             _local?115244_)))
                        _g116896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g116896_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym115216_ _local?115217_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym115216_))
        (let ((__tmp116897
               (if _local?115217_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp116897 _sym115216_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym115222_)
        (let ((_local?115224_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym115222_ _local?115224_))))
    (define gxc#optimizer-clear-type!
      (lambda _g116899_
        (let ((_g116898_ (let () (declare (not safe)) (##length _g116899_))))
          (cond ((let () (declare (not safe)) (##fx= _g116898_ 1))
                 (apply (lambda (_sym115222_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym115222_)))
                        _g116899_))
                ((let () (declare (not safe)) (##fx= _g116898_ 2))
                 (apply (lambda (_sym115226_ _local?115227_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym115226_
                             _local?115227_)))
                        _g116899_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g116899_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t115184_ _method115185_ _sym115186_ _rebind?115187_)
        (let* ((_type115189_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t115184_)))
               (_$e115191_
                (let () (declare (not safe)) (gxc#!type-vtab _type115189_))))
          (if _$e115191_
              ((lambda (_vtab115194_)
                 (let ((_$e115196_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab115194_ _method115185_))))
                   (if _$e115196_
                       ((lambda (_existing115199_)
                          (if _rebind?115187_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t115184_
                                   '" "
                                   _method115185_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab115194_
                                   _method115185_
                                   _sym115186_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing115199_ _sym115186_))
                                  '#!void
                                  (let ((__tmp116904
                                         (let ((__tmp116905
                                                (let ((__tmp116906
                                                       (let ((__tmp116907
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym115186_ '()))))
                 (declare (not safe))
                 (cons _method115185_ __tmp116907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t115184_
                                                        __tmp116906))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp116905))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp116904
                                     _method115185_)))))
                        _$e115196_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t115184_
                            '" "
                            _method115185_
                            '" => "
                            _sym115186_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab115194_
                            _method115185_
                            _sym115186_))))))
               _$e115191_)
              (if (let () (declare (not safe)) (not _type115189_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t115184_))
                  (let ((__tmp116900
                         (let ((__tmp116901
                                (let ((__tmp116902
                                       (let ((__tmp116903
                                              (let ()
                                                (declare (not safe))
                                                (cons _method115185_ '()))))
                                         (declare (not safe))
                                         (cons _sym115186_ __tmp116903))))
                                  (declare (not safe))
                                  (cons _type-t115184_ __tmp116902))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp116901))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp116900
                     _type115189_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t115204_ _method115205_ _sym115206_)
        (let ((_rebind?115208_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t115204_
           _method115205_
           _sym115206_
           _rebind?115208_))))
    (define gxc#optimizer-declare-method!
      (lambda _g116909_
        (let ((_g116908_ (let () (declare (not safe)) (##length _g116909_))))
          (cond ((let () (declare (not safe)) (##fx= _g116908_ 3))
                 (apply (lambda (_type-t115204_ _method115205_ _sym115206_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t115204_
                             _method115205_
                             _sym115206_)))
                        _g116909_))
                ((let () (declare (not safe)) (##fx= _g116908_ 4))
                 (apply (lambda (_type-t115210_
                                 _method115211_
                                 _sym115212_
                                 _rebind?115213_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t115210_
                             _method115211_
                             _sym115212_
                             _rebind?115213_)))
                        _g116909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g116909_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym115172_)
        (let ((_$e115180_
               (let ((_ht115173115175_ (gxc#current-compile-local-type)))
                 (if _ht115173115175_
                     (let ((_ht115178_ _ht115173115175_))
                       (declare (not safe))
                       (hash-get _ht115178_ _sym115172_))
                     '#f))))
          (if _$e115180_
              _$e115180_
              (let ((__tmp116910
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp116910 _sym115172_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym115164_)
        (let ((_type115165115167_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym115164_))))
          (if _type115165115167_
              (let ((_type115170_ _type115165115167_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type115170_ 'gxc#!alias::t))
                    (let ((__tmp116911
                           (##structure-ref _type115170_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp116911))
                    _type115170_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where115156_ _klass-id115157_)
        (let ((_$e115159_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id115157_))))
          (if _$e115159_
              ((lambda (_klass115162_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass115162_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where115156_
                        _klass-id115157_
                        _klass115162_)))
                 _klass115162_)
               _$e115159_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where115156_
                 _klass-id115157_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t115153_ _method115154_)
        (let ((__tmp116912
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t115153_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp116912 _method115154_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym115151_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym115151_))
        (let ((__tmp116913
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp116913 _sym115151_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym115149_)
        (let ((__tmp116914
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp116914 _sym115149_))))
    (define gxc#identifier-symbol
      (lambda (_stx115147_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx115147_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx115147_))
            (let () (declare (not safe)) (gx#stx-e _stx115147_)))))))
