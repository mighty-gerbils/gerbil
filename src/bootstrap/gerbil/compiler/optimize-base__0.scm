(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710699092)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp116775 (list))
            (__tmp116773
             (let ((__tmp116774
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116774 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp116775
         '(type ssxi methods)
         __tmp116773
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args116709_
        (apply make-instance gxc#optimizer-info::t _$args116709_)))
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
      (lambda (_self116707_)
        (if (let ((__tmp116783
                   (let ()
                     (declare (not safe))
                     (##structure-length _self116707_))))
              (declare (not safe))
              (##fx< '3 __tmp116783))
            (begin
              (let ((__tmp116778
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp116777
                     (let ()
                       (declare (not safe))
                       (##structure-type _self116707_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self116707_
                 __tmp116778
                 '1
                 __tmp116777
                 '#f))
              (let ((__tmp116780
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp116779
                     (let ()
                       (declare (not safe))
                       (##structure-type _self116707_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self116707_
                 __tmp116780
                 '2
                 __tmp116779
                 '#f))
              (let ((__tmp116782
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp116781
                     (let ()
                       (declare (not safe))
                       (##structure-type _self116707_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self116707_
                 __tmp116782
                 '3
                 __tmp116781
                 '#f)))
            (let ((__tmp116776
                   (let ()
                     (declare (not safe))
                     (##vector-length _self116707_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self116707_
                     '3
                     __tmp116776)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp116786 (list))
            (__tmp116784
             (let ((__tmp116785
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116785 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp116786
         '(id)
         __tmp116784
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args116582_ (apply make-instance gxc#!type::t _$args116582_)))
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
      (let ((__tmp116789 (list gxc#!type::t))
            (__tmp116787
             (let ((__tmp116788
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116788 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp116789
         '()
         __tmp116787
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args116579_ (apply make-instance gxc#!alias::t _$args116579_)))
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
      (let ((__tmp116792 (list gxc#!type::t))
            (__tmp116790
             (let ((__tmp116791
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116791 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp116792
         '()
         __tmp116790
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args116576_
        (apply make-instance gxc#!procedure::t _$args116576_)))
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
      (let ((__tmp116795 (list gxc#!type::t))
            (__tmp116793
             (let ((__tmp116794
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116794 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp116795
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp116793
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args116573_ (apply make-instance gxc#!class::t _$args116573_)))
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
      (let ((__tmp116798 (list gxc#!procedure::t))
            (__tmp116796
             (let ((__tmp116797
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116797 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp116798
         '()
         __tmp116796
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args116570_
        (apply make-instance gxc#!predicate::t _$args116570_)))
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
      (let ((__tmp116801 (list gxc#!procedure::t))
            (__tmp116799
             (let ((__tmp116800
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116800 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp116801
         '()
         __tmp116799
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args116567_
        (apply make-instance gxc#!constructor::t _$args116567_)))
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
      (let ((__tmp116804 (list gxc#!procedure::t))
            (__tmp116802
             (let ((__tmp116803
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116803 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp116804
         '(slot checked?)
         __tmp116802
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args116564_
        (apply make-instance gxc#!accessor::t _$args116564_)))
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
      (let ((__tmp116807 (list gxc#!procedure::t))
            (__tmp116805
             (let ((__tmp116806
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116806 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp116807
         '(slot checked?)
         __tmp116805
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args116561_
        (apply make-instance gxc#!mutator::t _$args116561_)))
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
      (let ((__tmp116810 (list gxc#!procedure::t))
            (__tmp116808
             (let ((__tmp116809
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116809 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp116810
         '(arity dispatch inline inline-typedecl)
         __tmp116808
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args116558_
        (apply make-instance gxc#!lambda::t _$args116558_)))
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
      (let ((__tmp116813 (list gxc#!procedure::t))
            (__tmp116811
             (let ((__tmp116812
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116812 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp116813
         '(clauses)
         __tmp116811
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args116555_
        (apply make-instance gxc#!case-lambda::t _$args116555_)))
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
      (let ((__tmp116816 (list gxc#!procedure::t))
            (__tmp116814
             (let ((__tmp116815
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116815 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp116816
         '(table dispatch)
         __tmp116814
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args116552_
        (apply make-instance gxc#!kw-lambda::t _$args116552_)))
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
      (let ((__tmp116819 (list gxc#!procedure::t))
            (__tmp116817
             (let ((__tmp116818
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116818 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp116819
         '(keys main)
         __tmp116817
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args116549_
        (apply make-instance gxc#!kw-lambda-primary::t _$args116549_)))
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
      (let ((__tmp116820 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp116820
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args116546_
        (apply make-instance gxc#!primitive::t _$args116546_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp116821 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp116821
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args116543_
        (apply make-instance gxc#!primitive-lambda::t _$args116543_)))
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
      (let ((__tmp116822 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp116822
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args116540_
        (apply make-instance gxc#!primitive-case-lambda::t _$args116540_)))
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
      (lambda (_self116420_
               _id116421_
               _super116422_
               _slots116423_
               _ctor-method116424_
               _struct?116425_
               _final?116426_
               _system?116427_
               _metaclass116428_)
        (let _lp116430_ ((_rest116432_ _super116422_))
          (let* ((_rest116433116441_ _rest116432_)
                 (_else116435116449_ (lambda () '#!void))
                 (_K116437116455_
                  (lambda (_rest116452_ _super-id116453_)
                    (if (##structure-ref
                         (let ((__tmp116825
                                (let ((__tmp116826
                                       (let ()
                                         (declare (not safe))
                                         (cons _id116421_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp116826))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp116825
                            _super-id116453_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp116823
                               (let ((__tmp116824
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116421_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp116824))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp116823
                           _super-id116453_))
                        '#!void)
                    (let () (declare (not safe)) (_lp116430_ _rest116452_)))))
            (if (let () (declare (not safe)) (##pair? _rest116433116441_))
                (let ((_hd116438116458_
                       (let ()
                         (declare (not safe))
                         (##car _rest116433116441_)))
                      (_tl116439116460_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116433116441_))))
                  (let* ((_super-id116463_ _hd116438116458_)
                         (_rest116465_ _tl116439116460_))
                    (declare (not safe))
                    (_K116437116455_ _rest116465_ _super-id116463_)))
                '#!void)))
        (let* ((_ctor-method116515_
                (let ((_$e116467_ _ctor-method116424_))
                  (if _$e116467_
                      _$e116467_
                      (let _lp116470_ ((_rest116472_ _super116422_)
                                       (_method116473_ '#f))
                        (let* ((_rest116474116482_ _rest116472_)
                               (_else116476116490_ (lambda () _method116473_))
                               (_K116478116503_
                                (lambda (_rest116493_ _super-id116494_)
                                  (let* ((_klass116496_
                                          (let ((__tmp116827
                                                 (let ((__tmp116828
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id116421_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp116828))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp116827
                                             _super-id116494_)))
                                         (_$e116498_
                                          (##structure-ref
                                           _klass116496_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e116498_
                                        ((lambda (_ctor-method116501_)
                                           (if _method116473_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method116501_
                                                          _method116473_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp116470_
                                                      _rest116493_
                                                      _ctor-method116501_))
                                                   (let ((__tmp116829
                                                          (let ((__tmp116830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id116421_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp116830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp116829
                                                      _method116473_
                                                      _ctor-method116501_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp116470_
                                                  _rest116493_
                                                  _ctor-method116501_))))
                                         _$e116498_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp116470_
                                           _rest116493_
                                           _method116473_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest116474116482_))
                              (let ((_hd116479116506_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest116474116482_)))
                                    (_tl116480116508_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest116474116482_))))
                                (let* ((_super-id116511_ _hd116479116506_)
                                       (_rest116513_ _tl116480116508_))
                                  (declare (not safe))
                                  (_K116478116503_
                                   _rest116513_
                                   _super-id116511_)))
                              (let ()
                                (declare (not safe))
                                (_else116476116490_))))))))
               (_g116831_
                (let ((__tmp116836
                       (lambda (_klass-id116517_)
                         (let ((__tmp116837
                                (##structure-ref
                                 (let ((__tmp116838
                                        (let ((__tmp116839
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116421_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp116839))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp116838
                                    _klass-id116517_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id116517_ __tmp116837))))
                      (__tmp116833
                       (lambda (_klass-id116519_)
                         (##structure-ref
                          (let ((__tmp116834
                                 (let ((__tmp116835
                                        (let ()
                                          (declare (not safe))
                                          (cons _id116421_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp116835))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp116834
                             _klass-id116519_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super116422_
                   'get-precedence-list:
                   __tmp116836
                   'struct:
                   __tmp116833
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g116832_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g116831_)
                         (##vector-length _g116831_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g116832_ 2)))
                  (error "Context expects 2 values" _g116832_)))
            (let ((_precedence-list116521_
                   (let () (declare (not safe)) (##vector-ref _g116831_ 0)))
                  (_base-struct116522_
                   (let () (declare (not safe)) (##vector-ref _g116831_ 1))))
              (let ((_fields116524_
                     (let ((__tmp116840
                            (let ((__tmp116841
                                   (let ()
                                     (declare (not safe))
                                     (cons _id116421_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp116841))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp116840
                        _base-struct116522_
                        _precedence-list116521_
                        _slots116423_))))
                (##structure-set! _self116420_ _id116421_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self116420_
                 _super116422_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116420_
                 _precedence-list116521_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116420_
                 _slots116423_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116420_
                 _fields116524_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116420_
                 _ctor-method116515_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116420_
                 _struct?116425_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116420_
                 _final?116426_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116420_
                 _metaclass116428_
                 '10
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self116527_
               _id116528_
               _super116529_
               _precedence-list116530_
               _slots116531_
               _fields116532_
               _constructor116533_
               _struct?116534_
               _final?116535_
               _system?116536_
               _metaclass116537_
               _methods116538_)
        (##structure-set! _self116527_ _id116528_ '1 gxc#!type::t '#f)
        (##structure-set! _self116527_ _super116529_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self116527_
         _precedence-list116530_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self116527_ _slots116531_ '4 gxc#!class::t '#f)
        (##structure-set! _self116527_ _fields116532_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self116527_
         _constructor116533_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self116527_ _struct?116534_ '7 gxc#!class::t '#f)
        (##structure-set! _self116527_ _final?116535_ '8 gxc#!class::t '#f)
        (##structure-set! _self116527_ _metaclass116537_ '10 gxc#!class::t '#f)
        (if _methods116538_
            (##structure-set!
             _self116527_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods116538_))
             '11
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g116843_
        (let ((_g116842_ (let () (declare (not safe)) (##length _g116843_))))
          (cond ((let () (declare (not safe)) (##fx= _g116842_ 9))
                 (apply (lambda (_self116420_
                                 _id116421_
                                 _super116422_
                                 _slots116423_
                                 _ctor-method116424_
                                 _struct?116425_
                                 _final?116426_
                                 _system?116427_
                                 _metaclass116428_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self116420_
                             _id116421_
                             _super116422_
                             _slots116423_
                             _ctor-method116424_
                             _struct?116425_
                             _final?116426_
                             _system?116427_
                             _metaclass116428_)))
                        _g116843_))
                ((let () (declare (not safe)) (##fx= _g116842_ 12))
                 (apply (lambda (_self116527_
                                 _id116528_
                                 _super116529_
                                 _precedence-list116530_
                                 _slots116531_
                                 _fields116532_
                                 _constructor116533_
                                 _struct?116534_
                                 _final?116535_
                                 _system?116536_
                                 _metaclass116537_
                                 _methods116538_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self116527_
                             _id116528_
                             _super116529_
                             _precedence-list116530_
                             _slots116531_
                             _fields116532_
                             _constructor116533_
                             _struct?116534_
                             _final?116535_
                             _system?116536_
                             _metaclass116537_
                             _methods116538_)))
                        _g116843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g116843_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass116711 __method-table116712)
        (let ((__id116713
               (let ((__slot116723
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116711 'id))))
                 (if __slot116723
                     __slot116723
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super116714
               (let ((__slot116724
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116711 'super))))
                 (if __slot116724
                     __slot116724
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__slots116715
               (let ((__slot116725
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116711 'slots))))
                 (if __slot116725
                     __slot116725
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__precedence-list116716
               (let ((__slot116726
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116711 'precedence-list))))
                 (if __slot116726
                     __slot116726
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__struct?116717
               (let ((__slot116727
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116711 'struct?))))
                 (if __slot116727
                     __slot116727
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__methods116718
               (let ((__slot116728
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116711 'methods))))
                 (if __slot116728
                     __slot116728
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__metaclass116719
               (let ((__slot116729
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116711 'metaclass))))
                 (if __slot116729
                     __slot116729
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__constructor116720
               (let ((__slot116730
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116711 'constructor))))
                 (if __slot116730
                     __slot116730
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__fields116721
               (let ((__slot116731
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116711 'fields))))
                 (if __slot116731
                     __slot116731
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__final?116722
               (let ((__slot116732
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116711 'final?))))
                 (if __slot116732
                     __slot116732
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?))))))
          (lambda _g116845_
            (let ((_g116844_
                   (let () (declare (not safe)) (##length _g116845_))))
              (cond ((let () (declare (not safe)) (##fx= _g116844_ 9))
                     (apply (lambda (_self116420_
                                     _id116421_
                                     _super116422_
                                     _slots116423_
                                     _ctor-method116424_
                                     _struct?116425_
                                     _final?116426_
                                     _system?116427_
                                     _metaclass116428_)
                              (let _lp116430_ ((_rest116432_ _super116422_))
                                (let* ((_rest116433116441_ _rest116432_)
                                       (_else116435116449_ (lambda () '#!void))
                                       (_K116437116455_
                                        (lambda (_rest116452_ _super-id116453_)
                                          (if (##structure-ref
                                               (let ((__tmp116848
                                                      (let ((__tmp116849
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id116421_ '()))))
                (declare (not safe))
                (cons '!class __tmp116849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp116848
                                                  _super-id116453_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp116846
                                                     (let ((__tmp116847
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id116421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp116847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp116846
                                                 _super-id116453_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp116430_ _rest116452_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest116433116441_))
                                      (let ((_hd116438116458_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest116433116441_)))
                                            (_tl116439116460_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest116433116441_))))
                                        (let* ((_super-id116463_
                                                _hd116438116458_)
                                               (_rest116465_ _tl116439116460_))
                                          (declare (not safe))
                                          (_K116437116455_
                                           _rest116465_
                                           _super-id116463_)))
                                      '#!void)))
                              (let* ((_ctor-method116515_
                                      (let ((_$e116467_ _ctor-method116424_))
                                        (if _$e116467_
                                            _$e116467_
                                            (let _lp116470_ ((_rest116472_
                                                              _super116422_)
                                                             (_method116473_
                                                              '#f))
                                              (let* ((_rest116474116482_
                                                      _rest116472_)
                                                     (_else116476116490_
                                                      (lambda ()
                                                        _method116473_))
                                                     (_K116478116503_
                                                      (lambda (_rest116493_
                                                               _super-id116494_)
                                                        (let* ((_klass116496_
                                                                (let ((__tmp116850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp116851
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116421_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp116851))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp116850
                           _super-id116494_)))
                       (_$e116498_
                        (##structure-ref _klass116496_ '6 gxc#!class::t '#f)))
                  (if _$e116498_
                      ((lambda (_ctor-method116501_)
                         (if _method116473_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method116501_ _method116473_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp116470_
                                    _rest116493_
                                    _ctor-method116501_))
                                 (let ((__tmp116852
                                        (let ((__tmp116853
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116421_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp116853))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp116852
                                    _method116473_
                                    _ctor-method116501_)))
                             (let ()
                               (declare (not safe))
                               (_lp116470_ _rest116493_ _ctor-method116501_))))
                       _$e116498_)
                      (let ()
                        (declare (not safe))
                        (_lp116470_ _rest116493_ _method116473_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest116474116482_))
                                                    (let ((_hd116479116506_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest116474116482_)))
                                                          (_tl116480116508_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest116474116482_))))
                                                      (let* ((_super-id116511_
                                                              _hd116479116506_)
                                                             (_rest116513_
                                                              _tl116480116508_))
                                                        (declare (not safe))
                                                        (_K116478116503_
                                                         _rest116513_
                                                         _super-id116511_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else116476116490_))))))))
                                     (_g116854_
                                      (let ((__tmp116859
                                             (lambda (_klass-id116517_)
                                               (let ((__tmp116860
                                                      (##structure-ref
                                                       (let ((__tmp116861
                                                              (let ((__tmp116862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id116421_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp116862))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp116861 _klass-id116517_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id116517_
                                                       __tmp116860))))
                                            (__tmp116856
                                             (lambda (_klass-id116519_)
                                               (##structure-ref
                                                (let ((__tmp116857
                                                       (let ((__tmp116858
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id116421_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp116858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp116857
                                                   _klass-id116519_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super116422_
                                         'get-precedence-list:
                                         __tmp116859
                                         'struct:
                                         __tmp116856
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g116855_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g116854_)
                                               (##vector-length _g116854_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g116855_ 2)))
                                        (error "Context expects 2 values"
                                               _g116855_)))
                                  (let ((_precedence-list116521_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g116854_ 0)))
                                        (_base-struct116522_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g116854_ 1))))
                                    (let ((_fields116524_
                                           (let ((__tmp116863
                                                  (let ((__tmp116864
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id116421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp116864))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp116863
                                              _base-struct116522_
                                              _precedence-list116521_
                                              _slots116423_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116420_
                                         _id116421_
                                         __id116713
                                         __klass116711
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116420_
                                         _super116422_
                                         __super116714
                                         __klass116711
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116420_
                                         _precedence-list116521_
                                         __precedence-list116716
                                         __klass116711
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116420_
                                         _slots116423_
                                         __slots116715
                                         __klass116711
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116420_
                                         _fields116524_
                                         __fields116721
                                         __klass116711
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116420_
                                         _ctor-method116515_
                                         __constructor116720
                                         __klass116711
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116420_
                                         _struct?116425_
                                         __struct?116717
                                         __klass116711
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116420_
                                         _final?116426_
                                         __final?116722
                                         __klass116711
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116420_
                                         _metaclass116428_
                                         __metaclass116719
                                         __klass116711
                                         '#f)))))))
                            _g116845_))
                    ((let () (declare (not safe)) (##fx= _g116844_ 12))
                     (apply (lambda (_self116527_
                                     _id116528_
                                     _super116529_
                                     _precedence-list116530_
                                     _slots116531_
                                     _fields116532_
                                     _constructor116533_
                                     _struct?116534_
                                     _final?116535_
                                     _system?116536_
                                     _metaclass116537_
                                     _methods116538_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116527_
                                 _id116528_
                                 __id116713
                                 __klass116711
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116527_
                                 _super116529_
                                 __super116714
                                 __klass116711
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116527_
                                 _precedence-list116530_
                                 __precedence-list116716
                                 __klass116711
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116527_
                                 _slots116531_
                                 __slots116715
                                 __klass116711
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116527_
                                 _fields116532_
                                 __fields116721
                                 __klass116711
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116527_
                                 _constructor116533_
                                 __constructor116720
                                 __klass116711
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116527_
                                 _struct?116534_
                                 __struct?116717
                                 __klass116711
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116527_
                                 _final?116535_
                                 __final?116722
                                 __klass116711
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116527_
                                 _metaclass116537_
                                 __metaclass116719
                                 __klass116711
                                 '#f))
                              (if _methods116538_
                                  (let ((__tmp116865
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods116538_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self116527_
                                     __tmp116865
                                     __methods116718
                                     __klass116711
                                     '#f))
                                  '#!void))
                            _g116845_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g116845_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where116272_
               _base-struct116273_
               _precedence-list116274_
               _direct-slots116275_)
        (let* ((_base-fields116277_
                (if _base-struct116273_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where116272_
                        _base-struct116273_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields116279_ (reverse _base-fields116277_))
               (_seen-slots116287_
                (let ((_tab116281_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g116282116284_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab116281_ _g116282116284_ '#t)))
                   _base-fields116277_)
                  _tab116281_))
               (_process-slot116291_
                (lambda (_slot116289_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots116287_ _slot116289_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots116287_ _slot116289_ '#t))
                        (set! _r-fields116279_
                              (let ()
                                (declare (not safe))
                                (cons _slot116289_ _r-fields116279_))))))))
          (for-each
           (lambda (_mixin116294_)
             (let ((_klass116296_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where116272_
                       _mixin116294_))))
               (if (##structure-ref _klass116296_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot116291_
                    (##structure-ref _klass116296_ '5 gxc#!class::t '#f)))))
           _precedence-list116274_)
          (for-each _process-slot116291_ _direct-slots116275_)
          (reverse _r-fields116279_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass116231_ _slot116232_)
        (let _lp116234_ ((_rest116236_
                          (##structure-ref _klass116231_ '5 gxc#!class::t '#f))
                         (_offset116237_ '1))
          (let* ((_rest116238116246_ _rest116236_)
                 (_else116240116254_
                  (lambda ()
                    (let ((__tmp116867
                           (##structure-ref _klass116231_ '1 gxc#!type::t '#f))
                          (__tmp116866
                           (##structure-ref
                            _klass116231_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp116867
                       __tmp116866
                       _slot116232_))))
                 (_K116242116260_
                  (lambda (_rest116257_ _s116258_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s116258_ _slot116232_))
                        _offset116237_
                        (let ((__tmp116868
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset116237_ '1))))
                          (declare (not safe))
                          (_lp116234_ _rest116257_ __tmp116868))))))
            (if (let () (declare (not safe)) (##pair? _rest116238116246_))
                (let ((_hd116243116263_
                       (let ()
                         (declare (not safe))
                         (##car _rest116238116246_)))
                      (_tl116244116265_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116238116246_))))
                  (let* ((_s116268_ _hd116243116263_)
                         (_rest116270_ _tl116244116265_))
                    (declare (not safe))
                    (_K116242116260_ _rest116270_ _s116268_)))
                (let () (declare (not safe)) (_else116240116254_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass116189_ _slot116190_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass116189_ _slot116190_))
            _klass116189_
            (let _lp116192_ ((_rest116194_
                              (##structure-ref
                               _klass116189_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest116195116203_ _rest116194_)
                     (_else116197116211_ (lambda () '#f))
                     (_K116199116219_
                      (lambda (_rest116214_ _super116215_)
                        (let ((_super-class116217_
                               (let ((__tmp116869
                                      (let ((__tmp116870
                                             (let ((__tmp116872
                                                    (##structure-ref
                                                     _klass116189_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp116871
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot116190_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp116872
                                                     __tmp116871))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp116870))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp116869
                                  _super116215_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class116217_
                                 _slot116190_))
                              _super-class116217_
                              (let ()
                                (declare (not safe))
                                (_lp116192_ _rest116214_)))))))
                (if (let () (declare (not safe)) (##pair? _rest116195116203_))
                    (let ((_hd116200116222_
                           (let ()
                             (declare (not safe))
                             (##car _rest116195116203_)))
                          (_tl116201116224_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest116195116203_))))
                      (let* ((_super116227_ _hd116200116222_)
                             (_rest116229_ _tl116201116224_))
                        (declare (not safe))
                        (_K116199116219_ _rest116229_ _super116227_)))
                    (let () (declare (not safe)) (_else116197116211_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass116186_ _slot116187_)
        (if (##structure-ref _klass116186_ '7 gxc#!class::t '#f)
            (memq _slot116187_
                  (##structure-ref _klass116186_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self116183_ _id116184_)
        (##structure-set! _self116183_ _id116184_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass116733 __method-table116734)
        (let ((__id116735
               (let ((__slot116736
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116733 'id))))
                 (if __slot116736
                     __slot116736
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116183_ _id116184_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116183_
               _id116184_
               __id116735
               __klass116733
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
      (lambda (_self116058_ _id116059_)
        (##structure-set! _self116058_ _id116059_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass116737 __method-table116738)
        (let ((__id116739
               (let ((__slot116740
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116737 'id))))
                 (if __slot116740
                     __slot116740
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116058_ _id116059_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116058_
               _id116059_
               __id116739
               __klass116737
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
      (lambda (_self115931_ _id115932_ _slot115933_ _checked?115934_)
        (##structure-set! _self115931_ _id115932_ '1 gxc#!type::t '#f)
        (##structure-set! _self115931_ _slot115933_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self115931_
         _checked?115934_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass116741 __method-table116742)
        (let ((__id116743
               (let ((__slot116746
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116741 'id))))
                 (if __slot116746
                     __slot116746
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?116744
               (let ((__slot116747
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116741 'checked?))))
                 (if __slot116747
                     __slot116747
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot116745
               (let ((__slot116748
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116741 'slot))))
                 (if __slot116748
                     __slot116748
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self115931_ _id115932_ _slot115933_ _checked?115934_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self115931_
               _id115932_
               __id116743
               __klass116741
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self115931_
               _slot115933_
               __slot116745
               __klass116741
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self115931_
               _checked?115934_
               __checked?116744
               __klass116741
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
      (lambda (_self115804_ _id115805_ _slot115806_ _checked?115807_)
        (##structure-set! _self115804_ _id115805_ '1 gxc#!type::t '#f)
        (##structure-set! _self115804_ _slot115806_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self115804_
         _checked?115807_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass116749 __method-table116750)
        (let ((__id116751
               (let ((__slot116754
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116749 'id))))
                 (if __slot116754
                     __slot116754
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?116752
               (let ((__slot116755
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116749 'checked?))))
                 (if __slot116755
                     __slot116755
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot116753
               (let ((__slot116756
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116749 'slot))))
                 (if __slot116756
                     __slot116756
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self115804_ _id115805_ _slot115806_ _checked?115807_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self115804_
               _id115805_
               __id116751
               __klass116749
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self115804_
               _slot115806_
               __slot116753
               __klass116749
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self115804_
               _checked?115807_
               __checked?116752
               __klass116749
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
      (lambda (_self115648_
               _id115649_
               _arity115650_
               _dispatch115651_
               _inline115652_
               _typedecl115653_)
        (if (let ((__tmp116879
                   (let ()
                     (declare (not safe))
                     (##structure-length _self115648_))))
              (declare (not safe))
              (##fx< '5 __tmp116879))
            (begin
              (let ((__tmp116874
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115648_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115648_
                 _id115649_
                 '1
                 __tmp116874
                 '#f))
              (let ((__tmp116875
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115648_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115648_
                 _arity115650_
                 '2
                 __tmp116875
                 '#f))
              (let ((__tmp116876
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115648_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115648_
                 _dispatch115651_
                 '3
                 __tmp116876
                 '#f))
              (let ((__tmp116877
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115648_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115648_
                 _inline115652_
                 '4
                 __tmp116877
                 '#f))
              (let ((__tmp116878
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115648_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115648_
                 _typedecl115653_
                 '5
                 __tmp116878
                 '#f)))
            (let ((__tmp116873
                   (let ()
                     (declare (not safe))
                     (##vector-length _self115648_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self115648_
                     '5
                     __tmp116873)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self115658_ _id115659_ _arity115660_ _dispatch115661_)
        (let* ((_inline115663_ '#f) (_typedecl115665_ '#f))
          (if (let ((__tmp116886
                     (let ()
                       (declare (not safe))
                       (##structure-length _self115658_))))
                (declare (not safe))
                (##fx< '5 __tmp116886))
              (begin
                (let ((__tmp116881
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115658_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115658_
                   _id115659_
                   '1
                   __tmp116881
                   '#f))
                (let ((__tmp116882
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115658_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115658_
                   _arity115660_
                   '2
                   __tmp116882
                   '#f))
                (let ((__tmp116883
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115658_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115658_
                   _dispatch115661_
                   '3
                   __tmp116883
                   '#f))
                (let ((__tmp116884
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115658_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115658_
                   _inline115663_
                   '4
                   __tmp116884
                   '#f))
                (let ((__tmp116885
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115658_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115658_
                   _typedecl115665_
                   '5
                   __tmp116885
                   '#f)))
              (let ((__tmp116880
                     (let ()
                       (declare (not safe))
                       (##vector-length _self115658_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self115658_
                       '5
                       __tmp116880))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self115667_
               _id115668_
               _arity115669_
               _dispatch115670_
               _inline115671_)
        (let ((_typedecl115673_ '#f))
          (if (let ((__tmp116893
                     (let ()
                       (declare (not safe))
                       (##structure-length _self115667_))))
                (declare (not safe))
                (##fx< '5 __tmp116893))
              (begin
                (let ((__tmp116888
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115667_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115667_
                   _id115668_
                   '1
                   __tmp116888
                   '#f))
                (let ((__tmp116889
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115667_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115667_
                   _arity115669_
                   '2
                   __tmp116889
                   '#f))
                (let ((__tmp116890
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115667_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115667_
                   _dispatch115670_
                   '3
                   __tmp116890
                   '#f))
                (let ((__tmp116891
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115667_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115667_
                   _inline115671_
                   '4
                   __tmp116891
                   '#f))
                (let ((__tmp116892
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115667_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115667_
                   _typedecl115673_
                   '5
                   __tmp116892
                   '#f)))
              (let ((__tmp116887
                     (let ()
                       (declare (not safe))
                       (##vector-length _self115667_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self115667_
                       '5
                       __tmp116887))))))
    (define gxc#!lambda:::init!
      (lambda _g116895_
        (let ((_g116894_ (let () (declare (not safe)) (##length _g116895_))))
          (cond ((let () (declare (not safe)) (##fx= _g116894_ 4))
                 (apply (lambda (_self115658_
                                 _id115659_
                                 _arity115660_
                                 _dispatch115661_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self115658_
                             _id115659_
                             _arity115660_
                             _dispatch115661_)))
                        _g116895_))
                ((let () (declare (not safe)) (##fx= _g116894_ 5))
                 (apply (lambda (_self115667_
                                 _id115668_
                                 _arity115669_
                                 _dispatch115670_
                                 _inline115671_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self115667_
                             _id115668_
                             _arity115669_
                             _dispatch115670_
                             _inline115671_)))
                        _g116895_))
                ((let () (declare (not safe)) (##fx= _g116894_ 6))
                 (apply (lambda (_self115675_
                                 _id115676_
                                 _arity115677_
                                 _dispatch115678_
                                 _inline115679_
                                 _typedecl115680_)
                          (if (let ((__tmp116902
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self115675_))))
                                (declare (not safe))
                                (##fx< '5 __tmp116902))
                              (begin
                                (let ((__tmp116897
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115675_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115675_
                                   _id115676_
                                   '1
                                   __tmp116897
                                   '#f))
                                (let ((__tmp116898
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115675_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115675_
                                   _arity115677_
                                   '2
                                   __tmp116898
                                   '#f))
                                (let ((__tmp116899
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115675_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115675_
                                   _dispatch115678_
                                   '3
                                   __tmp116899
                                   '#f))
                                (let ((__tmp116900
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115675_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115675_
                                   _inline115679_
                                   '4
                                   __tmp116900
                                   '#f))
                                (let ((__tmp116901
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115675_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115675_
                                   _typedecl115680_
                                   '5
                                   __tmp116901
                                   '#f)))
                              (let ((__tmp116896
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self115675_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self115675_
                                       '5
                                       __tmp116896))))
                        _g116895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g116895_))))))
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
      (lambda (_self115400_ . _args115401_)
        (apply struct-instance-init! _self115400_ _args115401_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type115275_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115275_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type115275_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass115268_)
        (let ((_$e115270_
               (##structure-ref _klass115268_ '11 gxc#!class::t '#f)))
          (if _$e115270_
              _$e115270_
              (let ((_tab115273_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass115268_
                 _tab115273_
                 '11
                 gxc#!class::t
                 '#f)
                _tab115273_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass115259_ _method115260_)
        (let ((_tab115261115263_
               (##structure-ref _klass115259_ '11 gxc#!class::t '#f)))
          (if _tab115261115263_
              (let ((_tab115266_ _tab115261115263_))
                (declare (not safe))
                (hash-get _tab115266_ _method115260_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type115256_ _method115257_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115256_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type115256_ _method115257_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym115240_ _type115241_ _local?115242_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115241_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym115240_
                     _type115241_)))
        (let ((__tmp116903
               (let () (declare (not safe)) (struct->list _type115241_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym115240_ '" " __tmp116903))
        (let ((__tmp116904
               (if _local?115242_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp116904 _sym115240_ _type115241_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym115247_ _type115248_)
        (let ((_local?115250_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym115247_
           _type115248_
           _local?115250_))))
    (define gxc#optimizer-declare-type!
      (lambda _g116906_
        (let ((_g116905_ (let () (declare (not safe)) (##length _g116906_))))
          (cond ((let () (declare (not safe)) (##fx= _g116905_ 2))
                 (apply (lambda (_sym115247_ _type115248_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym115247_
                             _type115248_)))
                        _g116906_))
                ((let () (declare (not safe)) (##fx= _g116905_ 3))
                 (apply (lambda (_sym115252_ _type115253_ _local?115254_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym115252_
                             _type115253_
                             _local?115254_)))
                        _g116906_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g116906_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym115226_ _local?115227_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym115226_))
        (let ((__tmp116907
               (if _local?115227_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp116907 _sym115226_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym115232_)
        (let ((_local?115234_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym115232_ _local?115234_))))
    (define gxc#optimizer-clear-type!
      (lambda _g116909_
        (let ((_g116908_ (let () (declare (not safe)) (##length _g116909_))))
          (cond ((let () (declare (not safe)) (##fx= _g116908_ 1))
                 (apply (lambda (_sym115232_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym115232_)))
                        _g116909_))
                ((let () (declare (not safe)) (##fx= _g116908_ 2))
                 (apply (lambda (_sym115236_ _local?115237_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym115236_
                             _local?115237_)))
                        _g116909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g116909_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t115194_ _method115195_ _sym115196_ _rebind?115197_)
        (let* ((_type115199_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t115194_)))
               (_$e115201_
                (let () (declare (not safe)) (gxc#!type-vtab _type115199_))))
          (if _$e115201_
              ((lambda (_vtab115204_)
                 (let ((_$e115206_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab115204_ _method115195_))))
                   (if _$e115206_
                       ((lambda (_existing115209_)
                          (if _rebind?115197_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t115194_
                                   '" "
                                   _method115195_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab115204_
                                   _method115195_
                                   _sym115196_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing115209_ _sym115196_))
                                  '#!void
                                  (let ((__tmp116914
                                         (let ((__tmp116915
                                                (let ((__tmp116916
                                                       (let ((__tmp116917
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym115196_ '()))))
                 (declare (not safe))
                 (cons _method115195_ __tmp116917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t115194_
                                                        __tmp116916))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp116915))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp116914
                                     _method115195_)))))
                        _$e115206_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t115194_
                            '" "
                            _method115195_
                            '" => "
                            _sym115196_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab115204_
                            _method115195_
                            _sym115196_))))))
               _$e115201_)
              (if (let () (declare (not safe)) (not _type115199_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t115194_))
                  (let ((__tmp116910
                         (let ((__tmp116911
                                (let ((__tmp116912
                                       (let ((__tmp116913
                                              (let ()
                                                (declare (not safe))
                                                (cons _method115195_ '()))))
                                         (declare (not safe))
                                         (cons _sym115196_ __tmp116913))))
                                  (declare (not safe))
                                  (cons _type-t115194_ __tmp116912))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp116911))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp116910
                     _type115199_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t115214_ _method115215_ _sym115216_)
        (let ((_rebind?115218_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t115214_
           _method115215_
           _sym115216_
           _rebind?115218_))))
    (define gxc#optimizer-declare-method!
      (lambda _g116919_
        (let ((_g116918_ (let () (declare (not safe)) (##length _g116919_))))
          (cond ((let () (declare (not safe)) (##fx= _g116918_ 3))
                 (apply (lambda (_type-t115214_ _method115215_ _sym115216_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t115214_
                             _method115215_
                             _sym115216_)))
                        _g116919_))
                ((let () (declare (not safe)) (##fx= _g116918_ 4))
                 (apply (lambda (_type-t115220_
                                 _method115221_
                                 _sym115222_
                                 _rebind?115223_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t115220_
                             _method115221_
                             _sym115222_
                             _rebind?115223_)))
                        _g116919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g116919_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym115182_)
        (let ((_$e115190_
               (let ((_ht115183115185_ (gxc#current-compile-local-type)))
                 (if _ht115183115185_
                     (let ((_ht115188_ _ht115183115185_))
                       (declare (not safe))
                       (hash-get _ht115188_ _sym115182_))
                     '#f))))
          (if _$e115190_
              _$e115190_
              (let ((__tmp116920
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp116920 _sym115182_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym115174_)
        (let ((_type115175115177_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym115174_))))
          (if _type115175115177_
              (let ((_type115180_ _type115175115177_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type115180_ 'gxc#!alias::t))
                    (let ((__tmp116921
                           (##structure-ref _type115180_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp116921))
                    _type115180_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where115166_ _klass-id115167_)
        (let ((_$e115169_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id115167_))))
          (if _$e115169_
              ((lambda (_klass115172_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass115172_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where115166_
                        _klass-id115167_
                        _klass115172_)))
                 _klass115172_)
               _$e115169_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where115166_
                 _klass-id115167_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t115163_ _method115164_)
        (let ((__tmp116922
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t115163_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp116922 _method115164_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym115161_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym115161_))
        (let ((__tmp116923
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp116923 _sym115161_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym115159_)
        (let ((__tmp116924
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp116924 _sym115159_))))
    (define gxc#identifier-symbol
      (lambda (_stx115157_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx115157_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx115157_))
            (let () (declare (not safe)) (gx#stx-e _stx115157_)))))))
