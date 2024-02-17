(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708165432)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp227666 (list))
            (__tmp227664
             (let ((__tmp227665
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227665 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp227666
         '(type ssxi methods)
         __tmp227664
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args223037_
        (apply make-instance gxc#optimizer-info::t _$args223037_)))
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
      (lambda (_self223035_)
        (if (let ((__tmp227673
                   (let ()
                     (declare (not safe))
                     (##structure-length _self223035_))))
              (declare (not safe))
              (##fx< '3 __tmp227673))
            (begin
              (let ((__tmp227668
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp227667
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223035_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223035_
                 __tmp227668
                 '1
                 __tmp227667
                 '#f))
              (let ((__tmp227670
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp227669
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223035_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223035_
                 __tmp227670
                 '2
                 __tmp227669
                 '#f))
              (let ((__tmp227672
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp227671
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223035_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223035_
                 __tmp227672
                 '3
                 __tmp227671
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self223035_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self223035_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp227676 (list))
            (__tmp227674
             (let ((__tmp227675
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227675 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp227676
         '(id)
         __tmp227674
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args222910_ (apply make-instance gxc#!type::t _$args222910_)))
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
      (let ((__tmp227679 (list gxc#!type::t))
            (__tmp227677
             (let ((__tmp227678
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227678 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp227679
         '()
         __tmp227677
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args222907_ (apply make-instance gxc#!alias::t _$args222907_)))
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
      (let ((__tmp227682 (list gxc#!type::t))
            (__tmp227680
             (let ((__tmp227681
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227681 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp227682
         '()
         __tmp227680
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args222904_
        (apply make-instance gxc#!procedure::t _$args222904_)))
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
      (let ((__tmp227685 (list gxc#!type::t))
            (__tmp227683
             (let ((__tmp227684
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227684 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp227685
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp227683
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args222901_ (apply make-instance gxc#!class::t _$args222901_)))
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
      (let ((__tmp227688 (list gxc#!procedure::t))
            (__tmp227686
             (let ((__tmp227687
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227687 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp227688
         '()
         __tmp227686
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args222898_
        (apply make-instance gxc#!predicate::t _$args222898_)))
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
      (let ((__tmp227691 (list gxc#!procedure::t))
            (__tmp227689
             (let ((__tmp227690
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227690 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp227691
         '()
         __tmp227689
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args222895_
        (apply make-instance gxc#!constructor::t _$args222895_)))
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
      (let ((__tmp227694 (list gxc#!procedure::t))
            (__tmp227692
             (let ((__tmp227693
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227693 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp227694
         '(slot checked?)
         __tmp227692
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args222892_
        (apply make-instance gxc#!accessor::t _$args222892_)))
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
      (let ((__tmp227697 (list gxc#!procedure::t))
            (__tmp227695
             (let ((__tmp227696
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227696 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp227697
         '(slot checked?)
         __tmp227695
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args222889_
        (apply make-instance gxc#!mutator::t _$args222889_)))
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
      (let ((__tmp227700 (list gxc#!procedure::t))
            (__tmp227698
             (let ((__tmp227699
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227699 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp227700
         '(arity dispatch inline inline-typedecl)
         __tmp227698
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args222886_
        (apply make-instance gxc#!lambda::t _$args222886_)))
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
      (let ((__tmp227703 (list gxc#!procedure::t))
            (__tmp227701
             (let ((__tmp227702
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227702 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp227703
         '(clauses)
         __tmp227701
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args222883_
        (apply make-instance gxc#!case-lambda::t _$args222883_)))
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
      (let ((__tmp227706 (list gxc#!procedure::t))
            (__tmp227704
             (let ((__tmp227705
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227705 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp227706
         '(table dispatch)
         __tmp227704
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args222880_
        (apply make-instance gxc#!kw-lambda::t _$args222880_)))
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
      (let ((__tmp227709 (list gxc#!procedure::t))
            (__tmp227707
             (let ((__tmp227708
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp227708 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp227709
         '(keys main)
         __tmp227707
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args222877_
        (apply make-instance gxc#!kw-lambda-primary::t _$args222877_)))
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
      (let ((__tmp227710 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp227710
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args222874_
        (apply make-instance gxc#!primitive::t _$args222874_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp227711 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp227711
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args222871_
        (apply make-instance gxc#!primitive-lambda::t _$args222871_)))
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
      (let ((__tmp227712 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp227712
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args222868_
        (apply make-instance gxc#!primitive-case-lambda::t _$args222868_)))
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
      (lambda (_self222750_
               _id222751_
               _super222752_
               _slots222753_
               _ctor-method222754_
               _struct?222755_
               _final?222756_
               _metaclass222757_)
        (let _lp222759_ ((_rest222761_ _super222752_))
          (let* ((_rest222762222770_ _rest222761_)
                 (_else222764222778_ (lambda () '#!void))
                 (_K222766222784_
                  (lambda (_rest222781_ _super-id222782_)
                    (if (##structure-ref
                         (let ((__tmp227715
                                (let ((__tmp227716
                                       (let ()
                                         (declare (not safe))
                                         (cons _id222751_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp227716))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp227715
                            _super-id222782_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp227713
                               (let ((__tmp227714
                                      (let ()
                                        (declare (not safe))
                                        (cons _id222751_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp227714))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp227713
                           _super-id222782_))
                        '#!void)
                    (let () (declare (not safe)) (_lp222759_ _rest222781_)))))
            (if (let () (declare (not safe)) (##pair? _rest222762222770_))
                (let ((_hd222767222787_
                       (let ()
                         (declare (not safe))
                         (##car _rest222762222770_)))
                      (_tl222768222789_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest222762222770_))))
                  (let* ((_super-id222792_ _hd222767222787_)
                         (_rest222794_ _tl222768222789_))
                    (declare (not safe))
                    (_K222766222784_ _rest222794_ _super-id222792_)))
                '#!void)))
        (let* ((_ctor-method222844_
                (let ((_$e222796_ _ctor-method222754_))
                  (if _$e222796_
                      _$e222796_
                      (let _lp222799_ ((_rest222801_ _super222752_)
                                       (_method222802_ '#f))
                        (let* ((_rest222803222811_ _rest222801_)
                               (_else222805222819_ (lambda () _method222802_))
                               (_K222807222832_
                                (lambda (_rest222822_ _super-id222823_)
                                  (let* ((_klass222825_
                                          (let ((__tmp227717
                                                 (let ((__tmp227718
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id222751_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp227718))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp227717
                                             _super-id222823_)))
                                         (_$e222827_
                                          (##structure-ref
                                           _klass222825_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e222827_
                                        ((lambda (_ctor-method222830_)
                                           (if _method222802_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method222830_
                                                          _method222802_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp222799_
                                                      _rest222822_
                                                      _ctor-method222830_))
                                                   (let ((__tmp227719
                                                          (let ((__tmp227720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id222751_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp227720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp227719
                                                      _method222802_
                                                      _ctor-method222830_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp222799_
                                                  _rest222822_
                                                  _ctor-method222830_))))
                                         _$e222827_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp222799_
                                           _rest222822_
                                           _method222802_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest222803222811_))
                              (let ((_hd222808222835_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest222803222811_)))
                                    (_tl222809222837_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest222803222811_))))
                                (let* ((_super-id222840_ _hd222808222835_)
                                       (_rest222842_ _tl222809222837_))
                                  (declare (not safe))
                                  (_K222807222832_
                                   _rest222842_
                                   _super-id222840_)))
                              (let ()
                                (declare (not safe))
                                (_else222805222819_))))))))
               (_g227721_
                (let ((__tmp227726
                       (lambda (_klass-id222846_)
                         (let ((__tmp227727
                                (##structure-ref
                                 (let ((__tmp227728
                                        (let ((__tmp227729
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id222751_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp227729))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp227728
                                    _klass-id222846_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id222846_ __tmp227727))))
                      (__tmp227723
                       (lambda (_klass-id222848_)
                         (##structure-ref
                          (let ((__tmp227724
                                 (let ((__tmp227725
                                        (let ()
                                          (declare (not safe))
                                          (cons _id222751_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp227725))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp227724
                             _klass-id222848_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp227726
                   __tmp227723
                   eq?
                   identity
                   '()
                   _super222752_))))
          (begin
            (let ((_g227722_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g227721_)
                         (##vector-length _g227721_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g227722_ 2)))
                  (error "Context expects 2 values" _g227722_)))
            (let ((_precedence-list222850_
                   (let () (declare (not safe)) (##vector-ref _g227721_ 0)))
                  (_base-struct222851_
                   (let () (declare (not safe)) (##vector-ref _g227721_ 1))))
              (let ((_fields222853_
                     (let ((__tmp227730
                            (let ((__tmp227731
                                   (let ()
                                     (declare (not safe))
                                     (cons _id222751_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp227731))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp227730
                        _base-struct222851_
                        _precedence-list222850_
                        _slots222753_))))
                (##structure-set! _self222750_ _id222751_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self222750_
                 _super222752_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self222750_
                 _precedence-list222850_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self222750_
                 _slots222753_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self222750_
                 _fields222853_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self222750_
                 _ctor-method222844_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self222750_
                 _struct?222755_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self222750_
                 _final?222756_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self222750_
                 _metaclass222757_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self222856_
               _id222857_
               _super222858_
               _precedence-list222859_
               _slots222860_
               _fields222861_
               _constructor222862_
               _struct?222863_
               _final?222864_
               _metaclass222865_
               _methods222866_)
        (##structure-set! _self222856_ _id222857_ '1 gxc#!type::t '#f)
        (##structure-set! _self222856_ _super222858_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self222856_
         _precedence-list222859_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self222856_ _slots222860_ '4 gxc#!class::t '#f)
        (##structure-set! _self222856_ _fields222861_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self222856_
         _constructor222862_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self222856_ _struct?222863_ '7 gxc#!class::t '#f)
        (##structure-set! _self222856_ _final?222864_ '8 gxc#!class::t '#f)
        (##structure-set! _self222856_ _metaclass222865_ '9 gxc#!class::t '#f)
        (if _methods222866_
            (##structure-set!
             _self222856_
             (let ()
               (declare (not safe))
               (list->table _methods222866_ 'test: eq?))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g227733_
        (let ((_g227732_ (let () (declare (not safe)) (##length _g227733_))))
          (cond ((let () (declare (not safe)) (##fx= _g227732_ 8))
                 (apply (lambda (_self222750_
                                 _id222751_
                                 _super222752_
                                 _slots222753_
                                 _ctor-method222754_
                                 _struct?222755_
                                 _final?222756_
                                 _metaclass222757_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self222750_
                             _id222751_
                             _super222752_
                             _slots222753_
                             _ctor-method222754_
                             _struct?222755_
                             _final?222756_
                             _metaclass222757_)))
                        _g227733_))
                ((let () (declare (not safe)) (##fx= _g227732_ 11))
                 (apply (lambda (_self222856_
                                 _id222857_
                                 _super222858_
                                 _precedence-list222859_
                                 _slots222860_
                                 _fields222861_
                                 _constructor222862_
                                 _struct?222863_
                                 _final?222864_
                                 _metaclass222865_
                                 _methods222866_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self222856_
                             _id222857_
                             _super222858_
                             _precedence-list222859_
                             _slots222860_
                             _fields222861_
                             _constructor222862_
                             _struct?222863_
                             _final?222864_
                             _metaclass222865_
                             _methods222866_)))
                        _g227733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g227733_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t227607)
        (let ((__final?227608
               (let ((__tmp227618
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227607 'final?))))
                 (if __tmp227618 __tmp227618 (error '"Unknown slot" 'final?))))
              (__precedence-list227609
               (let ((__tmp227619
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227607 'precedence-list))))
                 (if __tmp227619
                     __tmp227619
                     (error '"Unknown slot" 'precedence-list))))
              (__fields227610
               (let ((__tmp227620
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227607 'fields))))
                 (if __tmp227620 __tmp227620 (error '"Unknown slot" 'fields))))
              (__constructor227611
               (let ((__tmp227621
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227607 'constructor))))
                 (if __tmp227621
                     __tmp227621
                     (error '"Unknown slot" 'constructor))))
              (__slots227612
               (let ((__tmp227622
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227607 'slots))))
                 (if __tmp227622 __tmp227622 (error '"Unknown slot" 'slots))))
              (__metaclass227613
               (let ((__tmp227623
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227607 'metaclass))))
                 (if __tmp227623
                     __tmp227623
                     (error '"Unknown slot" 'metaclass))))
              (__id227614
               (let ((__tmp227624
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227607 'id))))
                 (if __tmp227624 __tmp227624 (error '"Unknown slot" 'id))))
              (__super227615
               (let ((__tmp227625
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227607 'super))))
                 (if __tmp227625 __tmp227625 (error '"Unknown slot" 'super))))
              (__struct?227616
               (let ((__tmp227626
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227607 'struct?))))
                 (if __tmp227626
                     __tmp227626
                     (error '"Unknown slot" 'struct?))))
              (__methods227617
               (let ((__tmp227627
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227607 'methods))))
                 (if __tmp227627
                     __tmp227627
                     (error '"Unknown slot" 'methods)))))
          (lambda _g227735_
            (let ((_g227734_
                   (let () (declare (not safe)) (##length _g227735_))))
              (cond ((let () (declare (not safe)) (##fx= _g227734_ 8))
                     (apply (lambda (_self222750_
                                     _id222751_
                                     _super222752_
                                     _slots222753_
                                     _ctor-method222754_
                                     _struct?222755_
                                     _final?222756_
                                     _metaclass222757_)
                              (let _lp222759_ ((_rest222761_ _super222752_))
                                (let* ((_rest222762222770_ _rest222761_)
                                       (_else222764222778_ (lambda () '#!void))
                                       (_K222766222784_
                                        (lambda (_rest222781_ _super-id222782_)
                                          (if (##structure-ref
                                               (let ((__tmp227738
                                                      (let ((__tmp227739
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id222751_ '()))))
                (declare (not safe))
                (cons '!class __tmp227739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp227738
                                                  _super-id222782_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp227736
                                                     (let ((__tmp227737
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id222751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp227737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp227736
                                                 _super-id222782_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp222759_ _rest222781_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest222762222770_))
                                      (let ((_hd222767222787_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest222762222770_)))
                                            (_tl222768222789_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest222762222770_))))
                                        (let* ((_super-id222792_
                                                _hd222767222787_)
                                               (_rest222794_ _tl222768222789_))
                                          (declare (not safe))
                                          (_K222766222784_
                                           _rest222794_
                                           _super-id222792_)))
                                      '#!void)))
                              (let* ((_ctor-method222844_
                                      (let ((_$e222796_ _ctor-method222754_))
                                        (if _$e222796_
                                            _$e222796_
                                            (let _lp222799_ ((_rest222801_
                                                              _super222752_)
                                                             (_method222802_
                                                              '#f))
                                              (let* ((_rest222803222811_
                                                      _rest222801_)
                                                     (_else222805222819_
                                                      (lambda ()
                                                        _method222802_))
                                                     (_K222807222832_
                                                      (lambda (_rest222822_
                                                               _super-id222823_)
                                                        (let* ((_klass222825_
                                                                (let ((__tmp227740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp227741
                                      (let ()
                                        (declare (not safe))
                                        (cons _id222751_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp227741))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp227740
                           _super-id222823_)))
                       (_$e222827_
                        (##structure-ref _klass222825_ '6 gxc#!class::t '#f)))
                  (if _$e222827_
                      ((lambda (_ctor-method222830_)
                         (if _method222802_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method222830_ _method222802_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp222799_
                                    _rest222822_
                                    _ctor-method222830_))
                                 (let ((__tmp227742
                                        (let ((__tmp227743
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id222751_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp227743))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp227742
                                    _method222802_
                                    _ctor-method222830_)))
                             (let ()
                               (declare (not safe))
                               (_lp222799_ _rest222822_ _ctor-method222830_))))
                       _$e222827_)
                      (let ()
                        (declare (not safe))
                        (_lp222799_ _rest222822_ _method222802_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest222803222811_))
                                                    (let ((_hd222808222835_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest222803222811_)))
                                                          (_tl222809222837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest222803222811_))))
                                                      (let* ((_super-id222840_
                                                              _hd222808222835_)
                                                             (_rest222842_
                                                              _tl222809222837_))
                                                        (declare (not safe))
                                                        (_K222807222832_
                                                         _rest222842_
                                                         _super-id222840_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else222805222819_))))))))
                                     (_g227744_
                                      (let ((__tmp227749
                                             (lambda (_klass-id222846_)
                                               (let ((__tmp227750
                                                      (##structure-ref
                                                       (let ((__tmp227751
                                                              (let ((__tmp227752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id222751_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp227752))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp227751 _klass-id222846_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id222846_
                                                       __tmp227750))))
                                            (__tmp227746
                                             (lambda (_klass-id222848_)
                                               (##structure-ref
                                                (let ((__tmp227747
                                                       (let ((__tmp227748
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id222751_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp227748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp227747
                                                   _klass-id222848_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp227749
                                         __tmp227746
                                         eq?
                                         identity
                                         '()
                                         _super222752_))))
                                (begin
                                  (let ((_g227745_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g227744_)
                                               (##vector-length _g227744_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g227745_ 2)))
                                        (error "Context expects 2 values"
                                               _g227745_)))
                                  (let ((_precedence-list222850_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g227744_ 0)))
                                        (_base-struct222851_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g227744_ 1))))
                                    (let ((_fields222853_
                                           (let ((__tmp227753
                                                  (let ((__tmp227754
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id222751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp227754))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp227753
                                              _base-struct222851_
                                              _precedence-list222850_
                                              _slots222753_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222750_
                                         _id222751_
                                         __id227614
                                         __t227607
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222750_
                                         _super222752_
                                         __super227615
                                         __t227607
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222750_
                                         _precedence-list222850_
                                         __precedence-list227609
                                         __t227607
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222750_
                                         _slots222753_
                                         __slots227612
                                         __t227607
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222750_
                                         _fields222853_
                                         __fields227610
                                         __t227607
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222750_
                                         _ctor-method222844_
                                         __constructor227611
                                         __t227607
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222750_
                                         _struct?222755_
                                         __struct?227616
                                         __t227607
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222750_
                                         _final?222756_
                                         __final?227608
                                         __t227607
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222750_
                                         _metaclass222757_
                                         __metaclass227613
                                         __t227607
                                         '#f)))))))
                            _g227735_))
                    ((let () (declare (not safe)) (##fx= _g227734_ 11))
                     (apply (lambda (_self222856_
                                     _id222857_
                                     _super222858_
                                     _precedence-list222859_
                                     _slots222860_
                                     _fields222861_
                                     _constructor222862_
                                     _struct?222863_
                                     _final?222864_
                                     _metaclass222865_
                                     _methods222866_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222856_
                                 _id222857_
                                 __id227614
                                 __t227607
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222856_
                                 _super222858_
                                 __super227615
                                 __t227607
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222856_
                                 _precedence-list222859_
                                 __precedence-list227609
                                 __t227607
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222856_
                                 _slots222860_
                                 __slots227612
                                 __t227607
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222856_
                                 _fields222861_
                                 __fields227610
                                 __t227607
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222856_
                                 _constructor222862_
                                 __constructor227611
                                 __t227607
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222856_
                                 _struct?222863_
                                 __struct?227616
                                 __t227607
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222856_
                                 _final?222864_
                                 __final?227608
                                 __t227607
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222856_
                                 _metaclass222865_
                                 __metaclass227613
                                 __t227607
                                 '#f))
                              (if _methods222866_
                                  (let ((__tmp227755
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods222866_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self222856_
                                     __tmp227755
                                     __methods227617
                                     __t227607
                                     '#f))
                                  '#!void))
                            _g227735_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g227735_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where222602_
               _base-struct222603_
               _precedence-list222604_
               _direct-slots222605_)
        (let* ((_base-fields222607_
                (if _base-struct222603_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where222602_
                        _base-struct222603_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields222609_ (reverse _base-fields222607_))
               (_seen-slots222617_
                (let ((_tab222611_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g222612222614_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab222611_ _g222612222614_ '#t)))
                   _base-fields222607_)
                  _tab222611_))
               (_process-slot222621_
                (lambda (_slot222619_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots222617_ _slot222619_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots222617_ _slot222619_ '#t))
                        (set! _r-fields222609_
                              (let ()
                                (declare (not safe))
                                (cons _slot222619_ _r-fields222609_))))))))
          (for-each
           (lambda (_mixin222624_)
             (let ((_klass222626_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where222602_
                       _mixin222624_))))
               (if (##structure-ref _klass222626_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot222621_
                    (##structure-ref _klass222626_ '5 gxc#!class::t '#f)))))
           _precedence-list222604_)
          (for-each _process-slot222621_ _direct-slots222605_)
          (reverse _r-fields222609_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass222561_ _slot222562_)
        (let _lp222564_ ((_rest222566_
                          (##structure-ref _klass222561_ '5 gxc#!class::t '#f))
                         (_offset222567_ '1))
          (let* ((_rest222568222576_ _rest222566_)
                 (_else222570222584_
                  (lambda ()
                    (let ((__tmp227757
                           (##structure-ref _klass222561_ '1 gxc#!type::t '#f))
                          (__tmp227756
                           (##structure-ref
                            _klass222561_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp227757
                       __tmp227756
                       _slot222562_))))
                 (_K222572222590_
                  (lambda (_rest222587_ _s222588_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s222588_ _slot222562_))
                        _offset222567_
                        (let ((__tmp227758
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset222567_ '1))))
                          (declare (not safe))
                          (_lp222564_ _rest222587_ __tmp227758))))))
            (if (let () (declare (not safe)) (##pair? _rest222568222576_))
                (let ((_hd222573222593_
                       (let ()
                         (declare (not safe))
                         (##car _rest222568222576_)))
                      (_tl222574222595_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest222568222576_))))
                  (let* ((_s222598_ _hd222573222593_)
                         (_rest222600_ _tl222574222595_))
                    (declare (not safe))
                    (_K222572222590_ _rest222600_ _s222598_)))
                (let () (declare (not safe)) (_else222570222584_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass222519_ _slot222520_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass222519_ _slot222520_))
            _klass222519_
            (let _lp222522_ ((_rest222524_
                              (##structure-ref
                               _klass222519_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest222525222533_ _rest222524_)
                     (_else222527222541_ (lambda () '#f))
                     (_K222529222549_
                      (lambda (_rest222544_ _super222545_)
                        (let ((_super-class222547_
                               (let ((__tmp227759
                                      (let ((__tmp227760
                                             (let ((__tmp227762
                                                    (##structure-ref
                                                     _klass222519_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp227761
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot222520_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp227762
                                                     __tmp227761))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp227760))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp227759
                                  _super222545_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class222547_
                                 _slot222520_))
                              _super-class222547_
                              (let ()
                                (declare (not safe))
                                (_lp222522_ _rest222544_)))))))
                (if (let () (declare (not safe)) (##pair? _rest222525222533_))
                    (let ((_hd222530222552_
                           (let ()
                             (declare (not safe))
                             (##car _rest222525222533_)))
                          (_tl222531222554_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest222525222533_))))
                      (let* ((_super222557_ _hd222530222552_)
                             (_rest222559_ _tl222531222554_))
                        (declare (not safe))
                        (_K222529222549_ _rest222559_ _super222557_)))
                    (let () (declare (not safe)) (_else222527222541_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass222516_ _slot222517_)
        (if (##structure-ref _klass222516_ '7 gxc#!class::t '#f)
            (memq _slot222517_
                  (##structure-ref _klass222516_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self222513_ _id222514_)
        (##structure-set! _self222513_ _id222514_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t227628)
        (let ((__id227629
               (let ((__tmp227630
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227628 'id))))
                 (if __tmp227630 __tmp227630 (error '"Unknown slot" 'id)))))
          (lambda (_self222513_ _id222514_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222513_
               _id222514_
               __id227629
               __t227628
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!predicate:::init!
       gxc#!predicate:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_self222388_ _id222389_)
        (##structure-set! _self222388_ _id222389_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t227631)
        (let ((__id227632
               (let ((__tmp227633
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227631 'id))))
                 (if __tmp227633 __tmp227633 (error '"Unknown slot" 'id)))))
          (lambda (_self222388_ _id222389_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222388_
               _id222389_
               __id227632
               __t227631
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!constructor:::init!
       gxc#!constructor:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!constructor::t ':init! gxc#!constructor:::init! '#f))
    (define gxc#!accessor:::init!
      (lambda (_self222261_ _id222262_ _slot222263_ _checked?222264_)
        (##structure-set! _self222261_ _id222262_ '1 gxc#!type::t '#f)
        (##structure-set! _self222261_ _slot222263_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self222261_
         _checked?222264_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t227634)
        (let ((__id227635
               (let ((__tmp227638
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227634 'id))))
                 (if __tmp227638 __tmp227638 (error '"Unknown slot" 'id))))
              (__slot227636
               (let ((__tmp227639
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227634 'slot))))
                 (if __tmp227639 __tmp227639 (error '"Unknown slot" 'slot))))
              (__checked?227637
               (let ((__tmp227640
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227634 'checked?))))
                 (if __tmp227640
                     __tmp227640
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self222261_ _id222262_ _slot222263_ _checked?222264_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222261_
               _id222262_
               __id227635
               __t227634
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222261_
               _slot222263_
               __slot227636
               __t227634
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222261_
               _checked?222264_
               __checked?227637
               __t227634
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor:::init!
       gxc#!accessor:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_self222134_ _id222135_ _slot222136_ _checked?222137_)
        (##structure-set! _self222134_ _id222135_ '1 gxc#!type::t '#f)
        (##structure-set! _self222134_ _slot222136_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self222134_
         _checked?222137_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t227641)
        (let ((__id227642
               (let ((__tmp227645
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227641 'id))))
                 (if __tmp227645 __tmp227645 (error '"Unknown slot" 'id))))
              (__slot227643
               (let ((__tmp227646
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227641 'slot))))
                 (if __tmp227646 __tmp227646 (error '"Unknown slot" 'slot))))
              (__checked?227644
               (let ((__tmp227647
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t227641 'checked?))))
                 (if __tmp227647
                     __tmp227647
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self222134_ _id222135_ _slot222136_ _checked?222137_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222134_
               _id222135_
               __id227642
               __t227641
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222134_
               _slot222136_
               __slot227643
               __t227641
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222134_
               _checked?222137_
               __checked?227644
               __t227641
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator:::init!
       gxc#!mutator:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_self221978_
               _id221979_
               _arity221980_
               _dispatch221981_
               _inline221982_
               _typedecl221983_)
        (if (let ((__tmp227768
                   (let ()
                     (declare (not safe))
                     (##structure-length _self221978_))))
              (declare (not safe))
              (##fx< '5 __tmp227768))
            (begin
              (let ((__tmp227763
                     (let ()
                       (declare (not safe))
                       (##structure-type _self221978_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self221978_
                 _id221979_
                 '1
                 __tmp227763
                 '#f))
              (let ((__tmp227764
                     (let ()
                       (declare (not safe))
                       (##structure-type _self221978_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self221978_
                 _arity221980_
                 '2
                 __tmp227764
                 '#f))
              (let ((__tmp227765
                     (let ()
                       (declare (not safe))
                       (##structure-type _self221978_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self221978_
                 _dispatch221981_
                 '3
                 __tmp227765
                 '#f))
              (let ((__tmp227766
                     (let ()
                       (declare (not safe))
                       (##structure-type _self221978_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self221978_
                 _inline221982_
                 '4
                 __tmp227766
                 '#f))
              (let ((__tmp227767
                     (let ()
                       (declare (not safe))
                       (##structure-type _self221978_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self221978_
                 _typedecl221983_
                 '5
                 __tmp227767
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self221978_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self221978_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self221988_ _id221989_ _arity221990_ _dispatch221991_)
        (let* ((_inline221993_ '#f) (_typedecl221995_ '#f))
          (if (let ((__tmp227774
                     (let ()
                       (declare (not safe))
                       (##structure-length _self221988_))))
                (declare (not safe))
                (##fx< '5 __tmp227774))
              (begin
                (let ((__tmp227769
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221988_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221988_
                   _id221989_
                   '1
                   __tmp227769
                   '#f))
                (let ((__tmp227770
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221988_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221988_
                   _arity221990_
                   '2
                   __tmp227770
                   '#f))
                (let ((__tmp227771
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221988_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221988_
                   _dispatch221991_
                   '3
                   __tmp227771
                   '#f))
                (let ((__tmp227772
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221988_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221988_
                   _inline221993_
                   '4
                   __tmp227772
                   '#f))
                (let ((__tmp227773
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221988_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221988_
                   _typedecl221995_
                   '5
                   __tmp227773
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self221988_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self221988_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self221997_
               _id221998_
               _arity221999_
               _dispatch222000_
               _inline222001_)
        (let ((_typedecl222003_ '#f))
          (if (let ((__tmp227780
                     (let ()
                       (declare (not safe))
                       (##structure-length _self221997_))))
                (declare (not safe))
                (##fx< '5 __tmp227780))
              (begin
                (let ((__tmp227775
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221997_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221997_
                   _id221998_
                   '1
                   __tmp227775
                   '#f))
                (let ((__tmp227776
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221997_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221997_
                   _arity221999_
                   '2
                   __tmp227776
                   '#f))
                (let ((__tmp227777
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221997_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221997_
                   _dispatch222000_
                   '3
                   __tmp227777
                   '#f))
                (let ((__tmp227778
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221997_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221997_
                   _inline222001_
                   '4
                   __tmp227778
                   '#f))
                (let ((__tmp227779
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221997_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221997_
                   _typedecl222003_
                   '5
                   __tmp227779
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self221997_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self221997_)))))))
    (define gxc#!lambda:::init!
      (lambda _g227782_
        (let ((_g227781_ (let () (declare (not safe)) (##length _g227782_))))
          (cond ((let () (declare (not safe)) (##fx= _g227781_ 4))
                 (apply (lambda (_self221988_
                                 _id221989_
                                 _arity221990_
                                 _dispatch221991_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self221988_
                             _id221989_
                             _arity221990_
                             _dispatch221991_)))
                        _g227782_))
                ((let () (declare (not safe)) (##fx= _g227781_ 5))
                 (apply (lambda (_self221997_
                                 _id221998_
                                 _arity221999_
                                 _dispatch222000_
                                 _inline222001_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self221997_
                             _id221998_
                             _arity221999_
                             _dispatch222000_
                             _inline222001_)))
                        _g227782_))
                ((let () (declare (not safe)) (##fx= _g227781_ 6))
                 (apply (lambda (_self222005_
                                 _id222006_
                                 _arity222007_
                                 _dispatch222008_
                                 _inline222009_
                                 _typedecl222010_)
                          (if (let ((__tmp227788
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self222005_))))
                                (declare (not safe))
                                (##fx< '5 __tmp227788))
                              (begin
                                (let ((__tmp227783
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self222005_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self222005_
                                   _id222006_
                                   '1
                                   __tmp227783
                                   '#f))
                                (let ((__tmp227784
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self222005_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self222005_
                                   _arity222007_
                                   '2
                                   __tmp227784
                                   '#f))
                                (let ((__tmp227785
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self222005_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self222005_
                                   _dispatch222008_
                                   '3
                                   __tmp227785
                                   '#f))
                                (let ((__tmp227786
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self222005_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self222005_
                                   _inline222009_
                                   '4
                                   __tmp227786
                                   '#f))
                                (let ((__tmp227787
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self222005_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self222005_
                                   _typedecl222010_
                                   '5
                                   __tmp227787
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self222005_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self222005_)))))
                        _g227782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g227782_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!primitive-lambda:::init! gxc#!lambda:::init!)
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-lambda::t
       ':init!
       gxc#!primitive-lambda:::init!
       '#f))
    (define gxc#!primitive-case-lambda:::init!
      (lambda (_self221730_ . _args221731_)
        (apply struct-instance-init! _self221730_ _args221731_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type221605_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type221605_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type221605_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass221598_)
        (let ((_$e221600_
               (##structure-ref _klass221598_ '10 gxc#!class::t '#f)))
          (if _$e221600_
              _$e221600_
              (let ((_tab221603_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass221598_
                 _tab221603_
                 '10
                 gxc#!class::t
                 '#f)
                _tab221603_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass221589_ _method221590_)
        (let ((_tab221591221593_
               (##structure-ref _klass221589_ '10 gxc#!class::t '#f)))
          (if _tab221591221593_
              (let ((_tab221596_ _tab221591221593_))
                (declare (not safe))
                (table-ref _tab221596_ _method221590_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type221586_ _method221587_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type221586_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type221586_ _method221587_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym221570_ _type221571_ _local?221572_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type221571_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym221570_
                   _type221571_))
        (let ((__tmp227789
               (let () (declare (not safe)) (struct->list _type221571_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym221570_ '" " __tmp227789))
        (let ((__tmp227790
               (if _local?221572_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp227790 _sym221570_ _type221571_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym221577_ _type221578_)
        (let ((_local?221580_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym221577_
           _type221578_
           _local?221580_))))
    (define gxc#optimizer-declare-type!
      (lambda _g227792_
        (let ((_g227791_ (let () (declare (not safe)) (##length _g227792_))))
          (cond ((let () (declare (not safe)) (##fx= _g227791_ 2))
                 (apply (lambda (_sym221577_ _type221578_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym221577_
                             _type221578_)))
                        _g227792_))
                ((let () (declare (not safe)) (##fx= _g227791_ 3))
                 (apply (lambda (_sym221582_ _type221583_ _local?221584_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym221582_
                             _type221583_
                             _local?221584_)))
                        _g227792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g227792_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym221556_ _local?221557_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym221556_))
        (let ((__tmp227793
               (if _local?221557_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp227793 _sym221556_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym221562_)
        (let ((_local?221564_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym221562_ _local?221564_))))
    (define gxc#optimizer-clear-type!
      (lambda _g227795_
        (let ((_g227794_ (let () (declare (not safe)) (##length _g227795_))))
          (cond ((let () (declare (not safe)) (##fx= _g227794_ 1))
                 (apply (lambda (_sym221562_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym221562_)))
                        _g227795_))
                ((let () (declare (not safe)) (##fx= _g227794_ 2))
                 (apply (lambda (_sym221566_ _local?221567_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym221566_
                             _local?221567_)))
                        _g227795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g227795_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t221529_ _method221530_ _sym221531_ _rebind?221532_)
        (let* ((_type221534_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t221529_)))
               (_$e221536_
                (let () (declare (not safe)) (gxc#!type-vtab _type221534_))))
          (if _$e221536_
              ((lambda (_vtab221539_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab221539_ _method221530_))
                     (if _rebind?221532_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t221529_
                              '" "
                              _method221530_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab221539_
                              _method221530_
                              _sym221531_)))
                         (let ((__tmp227800
                                (let ((__tmp227801
                                       (let ((__tmp227802
                                              (let ((__tmp227803
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym221531_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method221530_
                                                      __tmp227803))))
                                         (declare (not safe))
                                         (cons _type-t221529_ __tmp227802))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp227801))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp227800
                            _method221530_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t221529_
                          '" "
                          _method221530_
                          '" => "
                          _sym221531_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab221539_
                          _method221530_
                          _sym221531_)))))
               _$e221536_)
              (if (let () (declare (not safe)) (not _type221534_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t221529_))
                  (let ((__tmp227796
                         (let ((__tmp227797
                                (let ((__tmp227798
                                       (let ((__tmp227799
                                              (let ()
                                                (declare (not safe))
                                                (cons _method221530_ '()))))
                                         (declare (not safe))
                                         (cons _sym221531_ __tmp227799))))
                                  (declare (not safe))
                                  (cons _type-t221529_ __tmp227798))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp227797))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp227796
                     _type221534_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t221544_ _method221545_ _sym221546_)
        (let ((_rebind?221548_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t221544_
           _method221545_
           _sym221546_
           _rebind?221548_))))
    (define gxc#optimizer-declare-method!
      (lambda _g227805_
        (let ((_g227804_ (let () (declare (not safe)) (##length _g227805_))))
          (cond ((let () (declare (not safe)) (##fx= _g227804_ 3))
                 (apply (lambda (_type-t221544_ _method221545_ _sym221546_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t221544_
                             _method221545_
                             _sym221546_)))
                        _g227805_))
                ((let () (declare (not safe)) (##fx= _g227804_ 4))
                 (apply (lambda (_type-t221550_
                                 _method221551_
                                 _sym221552_
                                 _rebind?221553_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t221550_
                             _method221551_
                             _sym221552_
                             _rebind?221553_)))
                        _g227805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g227805_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym221517_)
        (let ((_$e221525_
               (let ((_ht221518221520_ (gxc#current-compile-local-type)))
                 (if _ht221518221520_
                     (let ((_ht221523_ _ht221518221520_))
                       (declare (not safe))
                       (table-ref _ht221523_ _sym221517_ '#f))
                     '#f))))
          (if _$e221525_
              _$e221525_
              (let ((__tmp227806
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp227806 _sym221517_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym221509_)
        (let ((_type221510221512_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym221509_))))
          (if _type221510221512_
              (let ((_type221515_ _type221510221512_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type221515_ 'gxc#!alias::t))
                    (let ((__tmp227807
                           (##structure-ref _type221515_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp227807))
                    _type221515_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where221501_ _klass-id221502_)
        (let ((_$e221504_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id221502_))))
          (if _$e221504_
              ((lambda (_klass221507_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass221507_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where221501_
                        _klass-id221502_
                        _klass221507_)))
                 _klass221507_)
               _$e221504_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where221501_
                 _klass-id221502_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t221498_ _method221499_)
        (let ((__tmp227808
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t221498_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp227808 _method221499_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym221496_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym221496_))
        (let ((__tmp227809
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp227809 _sym221496_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym221494_)
        (let ((__tmp227810
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp227810 _sym221494_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx221492_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx221492_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx221492_))
            (let () (declare (not safe)) (gx#stx-e _stx221492_)))))))
