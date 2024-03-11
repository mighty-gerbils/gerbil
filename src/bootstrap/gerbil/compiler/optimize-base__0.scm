(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710155059)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp114672 (list))
            (__tmp114670
             (let ((__tmp114671
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114671 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp114672
         '(type ssxi methods)
         __tmp114670
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args114606_
        (apply make-instance gxc#optimizer-info::t _$args114606_)))
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
      (lambda (_self114604_)
        (if (let ((__tmp114680
                   (let ()
                     (declare (not safe))
                     (##structure-length _self114604_))))
              (declare (not safe))
              (##fx< '3 __tmp114680))
            (begin
              (let ((__tmp114675
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114674
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114604_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114604_
                 __tmp114675
                 '1
                 __tmp114674
                 '#f))
              (let ((__tmp114677
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114676
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114604_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114604_
                 __tmp114677
                 '2
                 __tmp114676
                 '#f))
              (let ((__tmp114679
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114678
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114604_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114604_
                 __tmp114679
                 '3
                 __tmp114678
                 '#f)))
            (let ((__tmp114673
                   (let ()
                     (declare (not safe))
                     (##vector-length _self114604_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self114604_
                     '3
                     __tmp114673)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp114683 (list))
            (__tmp114681
             (let ((__tmp114682
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114682 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp114683
         '(id)
         __tmp114681
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args114479_ (apply make-instance gxc#!type::t _$args114479_)))
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
      (let ((__tmp114686 (list gxc#!type::t))
            (__tmp114684
             (let ((__tmp114685
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114685 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp114686
         '()
         __tmp114684
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args114476_ (apply make-instance gxc#!alias::t _$args114476_)))
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
      (let ((__tmp114689 (list gxc#!type::t))
            (__tmp114687
             (let ((__tmp114688
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114688 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp114689
         '()
         __tmp114687
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args114473_
        (apply make-instance gxc#!procedure::t _$args114473_)))
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
      (let ((__tmp114692 (list gxc#!type::t))
            (__tmp114690
             (let ((__tmp114691
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114691 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp114692
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp114690
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args114470_ (apply make-instance gxc#!class::t _$args114470_)))
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
      (let ((__tmp114695 (list gxc#!procedure::t))
            (__tmp114693
             (let ((__tmp114694
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114694 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp114695
         '()
         __tmp114693
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args114467_
        (apply make-instance gxc#!predicate::t _$args114467_)))
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
      (let ((__tmp114698 (list gxc#!procedure::t))
            (__tmp114696
             (let ((__tmp114697
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114697 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp114698
         '()
         __tmp114696
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args114464_
        (apply make-instance gxc#!constructor::t _$args114464_)))
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
      (let ((__tmp114701 (list gxc#!procedure::t))
            (__tmp114699
             (let ((__tmp114700
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114700 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp114701
         '(slot checked?)
         __tmp114699
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args114461_
        (apply make-instance gxc#!accessor::t _$args114461_)))
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
      (let ((__tmp114704 (list gxc#!procedure::t))
            (__tmp114702
             (let ((__tmp114703
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114703 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp114704
         '(slot checked?)
         __tmp114702
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args114458_
        (apply make-instance gxc#!mutator::t _$args114458_)))
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
      (let ((__tmp114707 (list gxc#!procedure::t))
            (__tmp114705
             (let ((__tmp114706
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114706 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp114707
         '(arity dispatch inline inline-typedecl)
         __tmp114705
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args114455_
        (apply make-instance gxc#!lambda::t _$args114455_)))
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
      (let ((__tmp114710 (list gxc#!procedure::t))
            (__tmp114708
             (let ((__tmp114709
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114709 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp114710
         '(clauses)
         __tmp114708
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args114452_
        (apply make-instance gxc#!case-lambda::t _$args114452_)))
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
      (let ((__tmp114713 (list gxc#!procedure::t))
            (__tmp114711
             (let ((__tmp114712
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114712 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp114713
         '(table dispatch)
         __tmp114711
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args114449_
        (apply make-instance gxc#!kw-lambda::t _$args114449_)))
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
      (let ((__tmp114716 (list gxc#!procedure::t))
            (__tmp114714
             (let ((__tmp114715
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114715 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp114716
         '(keys main)
         __tmp114714
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args114446_
        (apply make-instance gxc#!kw-lambda-primary::t _$args114446_)))
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
      (let ((__tmp114717 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp114717
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args114443_
        (apply make-instance gxc#!primitive::t _$args114443_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp114718 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp114718
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args114440_
        (apply make-instance gxc#!primitive-lambda::t _$args114440_)))
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
      (let ((__tmp114719 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp114719
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args114437_
        (apply make-instance gxc#!primitive-case-lambda::t _$args114437_)))
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
      (lambda (_self114319_
               _id114320_
               _super114321_
               _slots114322_
               _ctor-method114323_
               _struct?114324_
               _final?114325_
               _metaclass114326_)
        (let _lp114328_ ((_rest114330_ _super114321_))
          (let* ((_rest114331114339_ _rest114330_)
                 (_else114333114347_ (lambda () '#!void))
                 (_K114335114353_
                  (lambda (_rest114350_ _super-id114351_)
                    (if (##structure-ref
                         (let ((__tmp114722
                                (let ((__tmp114723
                                       (let ()
                                         (declare (not safe))
                                         (cons _id114320_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp114723))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp114722
                            _super-id114351_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp114720
                               (let ((__tmp114721
                                      (let ()
                                        (declare (not safe))
                                        (cons _id114320_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114721))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp114720
                           _super-id114351_))
                        '#!void)
                    (let () (declare (not safe)) (_lp114328_ _rest114350_)))))
            (if (let () (declare (not safe)) (##pair? _rest114331114339_))
                (let ((_hd114336114356_
                       (let ()
                         (declare (not safe))
                         (##car _rest114331114339_)))
                      (_tl114337114358_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest114331114339_))))
                  (let* ((_super-id114361_ _hd114336114356_)
                         (_rest114363_ _tl114337114358_))
                    (declare (not safe))
                    (_K114335114353_ _rest114363_ _super-id114361_)))
                '#!void)))
        (let* ((_ctor-method114413_
                (let ((_$e114365_ _ctor-method114323_))
                  (if _$e114365_
                      _$e114365_
                      (let _lp114368_ ((_rest114370_ _super114321_)
                                       (_method114371_ '#f))
                        (let* ((_rest114372114380_ _rest114370_)
                               (_else114374114388_ (lambda () _method114371_))
                               (_K114376114401_
                                (lambda (_rest114391_ _super-id114392_)
                                  (let* ((_klass114394_
                                          (let ((__tmp114724
                                                 (let ((__tmp114725
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id114320_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp114725))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp114724
                                             _super-id114392_)))
                                         (_$e114396_
                                          (##structure-ref
                                           _klass114394_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e114396_
                                        ((lambda (_ctor-method114399_)
                                           (if _method114371_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method114399_
                                                          _method114371_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp114368_
                                                      _rest114391_
                                                      _ctor-method114399_))
                                                   (let ((__tmp114726
                                                          (let ((__tmp114727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id114320_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp114727))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp114726
                                                      _method114371_
                                                      _ctor-method114399_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp114368_
                                                  _rest114391_
                                                  _ctor-method114399_))))
                                         _$e114396_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp114368_
                                           _rest114391_
                                           _method114371_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest114372114380_))
                              (let ((_hd114377114404_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest114372114380_)))
                                    (_tl114378114406_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest114372114380_))))
                                (let* ((_super-id114409_ _hd114377114404_)
                                       (_rest114411_ _tl114378114406_))
                                  (declare (not safe))
                                  (_K114376114401_
                                   _rest114411_
                                   _super-id114409_)))
                              (let ()
                                (declare (not safe))
                                (_else114374114388_))))))))
               (_g114728_
                (let ((__tmp114733
                       (lambda (_klass-id114415_)
                         (let ((__tmp114734
                                (##structure-ref
                                 (let ((__tmp114735
                                        (let ((__tmp114736
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id114320_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114736))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp114735
                                    _klass-id114415_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id114415_ __tmp114734))))
                      (__tmp114730
                       (lambda (_klass-id114417_)
                         (##structure-ref
                          (let ((__tmp114731
                                 (let ((__tmp114732
                                        (let ()
                                          (declare (not safe))
                                          (cons _id114320_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp114732))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp114731
                             _klass-id114417_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super114321_
                   'get-precedence-list:
                   __tmp114733
                   'struct:
                   __tmp114730
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g114729_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g114728_)
                         (##vector-length _g114728_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g114729_ 2)))
                  (error "Context expects 2 values" _g114729_)))
            (let ((_precedence-list114419_
                   (let () (declare (not safe)) (##vector-ref _g114728_ 0)))
                  (_base-struct114420_
                   (let () (declare (not safe)) (##vector-ref _g114728_ 1))))
              (let ((_fields114422_
                     (let ((__tmp114737
                            (let ((__tmp114738
                                   (let ()
                                     (declare (not safe))
                                     (cons _id114320_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp114738))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp114737
                        _base-struct114420_
                        _precedence-list114419_
                        _slots114322_))))
                (##structure-set! _self114319_ _id114320_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self114319_
                 _super114321_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114319_
                 _precedence-list114419_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114319_
                 _slots114322_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114319_
                 _fields114422_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114319_
                 _ctor-method114413_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114319_
                 _struct?114324_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114319_
                 _final?114325_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114319_
                 _metaclass114326_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self114425_
               _id114426_
               _super114427_
               _precedence-list114428_
               _slots114429_
               _fields114430_
               _constructor114431_
               _struct?114432_
               _final?114433_
               _metaclass114434_
               _methods114435_)
        (##structure-set! _self114425_ _id114426_ '1 gxc#!type::t '#f)
        (##structure-set! _self114425_ _super114427_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self114425_
         _precedence-list114428_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self114425_ _slots114429_ '4 gxc#!class::t '#f)
        (##structure-set! _self114425_ _fields114430_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self114425_
         _constructor114431_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self114425_ _struct?114432_ '7 gxc#!class::t '#f)
        (##structure-set! _self114425_ _final?114433_ '8 gxc#!class::t '#f)
        (##structure-set! _self114425_ _metaclass114434_ '9 gxc#!class::t '#f)
        (if _methods114435_
            (##structure-set!
             _self114425_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods114435_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g114740_
        (let ((_g114739_ (let () (declare (not safe)) (##length _g114740_))))
          (cond ((let () (declare (not safe)) (##fx= _g114739_ 8))
                 (apply (lambda (_self114319_
                                 _id114320_
                                 _super114321_
                                 _slots114322_
                                 _ctor-method114323_
                                 _struct?114324_
                                 _final?114325_
                                 _metaclass114326_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self114319_
                             _id114320_
                             _super114321_
                             _slots114322_
                             _ctor-method114323_
                             _struct?114324_
                             _final?114325_
                             _metaclass114326_)))
                        _g114740_))
                ((let () (declare (not safe)) (##fx= _g114739_ 11))
                 (apply (lambda (_self114425_
                                 _id114426_
                                 _super114427_
                                 _precedence-list114428_
                                 _slots114429_
                                 _fields114430_
                                 _constructor114431_
                                 _struct?114432_
                                 _final?114433_
                                 _metaclass114434_
                                 _methods114435_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self114425_
                             _id114426_
                             _super114427_
                             _precedence-list114428_
                             _slots114429_
                             _fields114430_
                             _constructor114431_
                             _struct?114432_
                             _final?114433_
                             _metaclass114434_
                             _methods114435_)))
                        _g114740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g114740_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass114608 __method-table114609)
        (let ((__precedence-list114610
               (let ((__slot114620
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114608 'precedence-list))))
                 (if __slot114620
                     __slot114620
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__super114611
               (let ((__slot114621
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114608 'super))))
                 (if __slot114621
                     __slot114621
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__id114612
               (let ((__slot114622
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114608 'id))))
                 (if __slot114622
                     __slot114622
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slots114613
               (let ((__slot114623
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114608 'slots))))
                 (if __slot114623
                     __slot114623
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__metaclass114614
               (let ((__slot114624
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114608 'metaclass))))
                 (if __slot114624
                     __slot114624
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__methods114615
               (let ((__slot114625
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114608 'methods))))
                 (if __slot114625
                     __slot114625
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__fields114616
               (let ((__slot114626
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114608 'fields))))
                 (if __slot114626
                     __slot114626
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__final?114617
               (let ((__slot114627
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114608 'final?))))
                 (if __slot114627
                     __slot114627
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__struct?114618
               (let ((__slot114628
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114608 'struct?))))
                 (if __slot114628
                     __slot114628
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__constructor114619
               (let ((__slot114629
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114608 'constructor))))
                 (if __slot114629
                     __slot114629
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor))))))
          (lambda _g114742_
            (let ((_g114741_
                   (let () (declare (not safe)) (##length _g114742_))))
              (cond ((let () (declare (not safe)) (##fx= _g114741_ 8))
                     (apply (lambda (_self114319_
                                     _id114320_
                                     _super114321_
                                     _slots114322_
                                     _ctor-method114323_
                                     _struct?114324_
                                     _final?114325_
                                     _metaclass114326_)
                              (let _lp114328_ ((_rest114330_ _super114321_))
                                (let* ((_rest114331114339_ _rest114330_)
                                       (_else114333114347_ (lambda () '#!void))
                                       (_K114335114353_
                                        (lambda (_rest114350_ _super-id114351_)
                                          (if (##structure-ref
                                               (let ((__tmp114745
                                                      (let ((__tmp114746
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id114320_ '()))))
                (declare (not safe))
                (cons '!class __tmp114746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp114745
                                                  _super-id114351_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp114743
                                                     (let ((__tmp114744
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id114320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp114744))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp114743
                                                 _super-id114351_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp114328_ _rest114350_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest114331114339_))
                                      (let ((_hd114336114356_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest114331114339_)))
                                            (_tl114337114358_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest114331114339_))))
                                        (let* ((_super-id114361_
                                                _hd114336114356_)
                                               (_rest114363_ _tl114337114358_))
                                          (declare (not safe))
                                          (_K114335114353_
                                           _rest114363_
                                           _super-id114361_)))
                                      '#!void)))
                              (let* ((_ctor-method114413_
                                      (let ((_$e114365_ _ctor-method114323_))
                                        (if _$e114365_
                                            _$e114365_
                                            (let _lp114368_ ((_rest114370_
                                                              _super114321_)
                                                             (_method114371_
                                                              '#f))
                                              (let* ((_rest114372114380_
                                                      _rest114370_)
                                                     (_else114374114388_
                                                      (lambda ()
                                                        _method114371_))
                                                     (_K114376114401_
                                                      (lambda (_rest114391_
                                                               _super-id114392_)
                                                        (let* ((_klass114394_
                                                                (let ((__tmp114747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114748
                                      (let ()
                                        (declare (not safe))
                                        (cons _id114320_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114748))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp114747
                           _super-id114392_)))
                       (_$e114396_
                        (##structure-ref _klass114394_ '6 gxc#!class::t '#f)))
                  (if _$e114396_
                      ((lambda (_ctor-method114399_)
                         (if _method114371_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method114399_ _method114371_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp114368_
                                    _rest114391_
                                    _ctor-method114399_))
                                 (let ((__tmp114749
                                        (let ((__tmp114750
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id114320_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114750))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp114749
                                    _method114371_
                                    _ctor-method114399_)))
                             (let ()
                               (declare (not safe))
                               (_lp114368_ _rest114391_ _ctor-method114399_))))
                       _$e114396_)
                      (let ()
                        (declare (not safe))
                        (_lp114368_ _rest114391_ _method114371_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest114372114380_))
                                                    (let ((_hd114377114404_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest114372114380_)))
                                                          (_tl114378114406_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest114372114380_))))
                                                      (let* ((_super-id114409_
                                                              _hd114377114404_)
                                                             (_rest114411_
                                                              _tl114378114406_))
                                                        (declare (not safe))
                                                        (_K114376114401_
                                                         _rest114411_
                                                         _super-id114409_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else114374114388_))))))))
                                     (_g114751_
                                      (let ((__tmp114756
                                             (lambda (_klass-id114415_)
                                               (let ((__tmp114757
                                                      (##structure-ref
                                                       (let ((__tmp114758
                                                              (let ((__tmp114759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id114320_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp114759))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp114758 _klass-id114415_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id114415_
                                                       __tmp114757))))
                                            (__tmp114753
                                             (lambda (_klass-id114417_)
                                               (##structure-ref
                                                (let ((__tmp114754
                                                       (let ((__tmp114755
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id114320_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp114755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp114754
                                                   _klass-id114417_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super114321_
                                         'get-precedence-list:
                                         __tmp114756
                                         'struct:
                                         __tmp114753
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g114752_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g114751_)
                                               (##vector-length _g114751_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g114752_ 2)))
                                        (error "Context expects 2 values"
                                               _g114752_)))
                                  (let ((_precedence-list114419_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114751_ 0)))
                                        (_base-struct114420_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114751_ 1))))
                                    (let ((_fields114422_
                                           (let ((__tmp114760
                                                  (let ((__tmp114761
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id114320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp114761))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp114760
                                              _base-struct114420_
                                              _precedence-list114419_
                                              _slots114322_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114319_
                                         _id114320_
                                         __id114612
                                         __klass114608
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114319_
                                         _super114321_
                                         __super114611
                                         __klass114608
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114319_
                                         _precedence-list114419_
                                         __precedence-list114610
                                         __klass114608
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114319_
                                         _slots114322_
                                         __slots114613
                                         __klass114608
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114319_
                                         _fields114422_
                                         __fields114616
                                         __klass114608
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114319_
                                         _ctor-method114413_
                                         __constructor114619
                                         __klass114608
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114319_
                                         _struct?114324_
                                         __struct?114618
                                         __klass114608
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114319_
                                         _final?114325_
                                         __final?114617
                                         __klass114608
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114319_
                                         _metaclass114326_
                                         __metaclass114614
                                         __klass114608
                                         '#f)))))))
                            _g114742_))
                    ((let () (declare (not safe)) (##fx= _g114741_ 11))
                     (apply (lambda (_self114425_
                                     _id114426_
                                     _super114427_
                                     _precedence-list114428_
                                     _slots114429_
                                     _fields114430_
                                     _constructor114431_
                                     _struct?114432_
                                     _final?114433_
                                     _metaclass114434_
                                     _methods114435_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114425_
                                 _id114426_
                                 __id114612
                                 __klass114608
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114425_
                                 _super114427_
                                 __super114611
                                 __klass114608
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114425_
                                 _precedence-list114428_
                                 __precedence-list114610
                                 __klass114608
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114425_
                                 _slots114429_
                                 __slots114613
                                 __klass114608
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114425_
                                 _fields114430_
                                 __fields114616
                                 __klass114608
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114425_
                                 _constructor114431_
                                 __constructor114619
                                 __klass114608
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114425_
                                 _struct?114432_
                                 __struct?114618
                                 __klass114608
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114425_
                                 _final?114433_
                                 __final?114617
                                 __klass114608
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114425_
                                 _metaclass114434_
                                 __metaclass114614
                                 __klass114608
                                 '#f))
                              (if _methods114435_
                                  (let ((__tmp114762
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods114435_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self114425_
                                     __tmp114762
                                     __methods114615
                                     __klass114608
                                     '#f))
                                  '#!void))
                            _g114742_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g114742_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where114171_
               _base-struct114172_
               _precedence-list114173_
               _direct-slots114174_)
        (let* ((_base-fields114176_
                (if _base-struct114172_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where114171_
                        _base-struct114172_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields114178_ (reverse _base-fields114176_))
               (_seen-slots114186_
                (let ((_tab114180_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g114181114183_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab114180_ _g114181114183_ '#t)))
                   _base-fields114176_)
                  _tab114180_))
               (_process-slot114190_
                (lambda (_slot114188_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots114186_ _slot114188_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots114186_ _slot114188_ '#t))
                        (set! _r-fields114178_
                              (let ()
                                (declare (not safe))
                                (cons _slot114188_ _r-fields114178_))))))))
          (for-each
           (lambda (_mixin114193_)
             (let ((_klass114195_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where114171_
                       _mixin114193_))))
               (if (##structure-ref _klass114195_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot114190_
                    (##structure-ref _klass114195_ '5 gxc#!class::t '#f)))))
           _precedence-list114173_)
          (for-each _process-slot114190_ _direct-slots114174_)
          (reverse _r-fields114178_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass114130_ _slot114131_)
        (let _lp114133_ ((_rest114135_
                          (##structure-ref _klass114130_ '5 gxc#!class::t '#f))
                         (_offset114136_ '1))
          (let* ((_rest114137114145_ _rest114135_)
                 (_else114139114153_
                  (lambda ()
                    (let ((__tmp114764
                           (##structure-ref _klass114130_ '1 gxc#!type::t '#f))
                          (__tmp114763
                           (##structure-ref
                            _klass114130_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp114764
                       __tmp114763
                       _slot114131_))))
                 (_K114141114159_
                  (lambda (_rest114156_ _s114157_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s114157_ _slot114131_))
                        _offset114136_
                        (let ((__tmp114765
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset114136_ '1))))
                          (declare (not safe))
                          (_lp114133_ _rest114156_ __tmp114765))))))
            (if (let () (declare (not safe)) (##pair? _rest114137114145_))
                (let ((_hd114142114162_
                       (let ()
                         (declare (not safe))
                         (##car _rest114137114145_)))
                      (_tl114143114164_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest114137114145_))))
                  (let* ((_s114167_ _hd114142114162_)
                         (_rest114169_ _tl114143114164_))
                    (declare (not safe))
                    (_K114141114159_ _rest114169_ _s114167_)))
                (let () (declare (not safe)) (_else114139114153_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass114088_ _slot114089_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass114088_ _slot114089_))
            _klass114088_
            (let _lp114091_ ((_rest114093_
                              (##structure-ref
                               _klass114088_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest114094114102_ _rest114093_)
                     (_else114096114110_ (lambda () '#f))
                     (_K114098114118_
                      (lambda (_rest114113_ _super114114_)
                        (let ((_super-class114116_
                               (let ((__tmp114766
                                      (let ((__tmp114767
                                             (let ((__tmp114769
                                                    (##structure-ref
                                                     _klass114088_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp114768
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot114089_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp114769
                                                     __tmp114768))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp114767))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp114766
                                  _super114114_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class114116_
                                 _slot114089_))
                              _super-class114116_
                              (let ()
                                (declare (not safe))
                                (_lp114091_ _rest114113_)))))))
                (if (let () (declare (not safe)) (##pair? _rest114094114102_))
                    (let ((_hd114099114121_
                           (let ()
                             (declare (not safe))
                             (##car _rest114094114102_)))
                          (_tl114100114123_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest114094114102_))))
                      (let* ((_super114126_ _hd114099114121_)
                             (_rest114128_ _tl114100114123_))
                        (declare (not safe))
                        (_K114098114118_ _rest114128_ _super114126_)))
                    (let () (declare (not safe)) (_else114096114110_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass114085_ _slot114086_)
        (if (##structure-ref _klass114085_ '7 gxc#!class::t '#f)
            (memq _slot114086_
                  (##structure-ref _klass114085_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self114082_ _id114083_)
        (##structure-set! _self114082_ _id114083_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass114630 __method-table114631)
        (let ((__id114632
               (let ((__slot114633
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114630 'id))))
                 (if __slot114633
                     __slot114633
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self114082_ _id114083_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114082_
               _id114083_
               __id114632
               __klass114630
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
      (lambda (_self113957_ _id113958_)
        (##structure-set! _self113957_ _id113958_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass114634 __method-table114635)
        (let ((__id114636
               (let ((__slot114637
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114634 'id))))
                 (if __slot114637
                     __slot114637
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113957_ _id113958_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113957_
               _id113958_
               __id114636
               __klass114634
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
      (lambda (_self113830_ _id113831_ _slot113832_ _checked?113833_)
        (##structure-set! _self113830_ _id113831_ '1 gxc#!type::t '#f)
        (##structure-set! _self113830_ _slot113832_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self113830_
         _checked?113833_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass114638 __method-table114639)
        (let ((__id114640
               (let ((__slot114643
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114638 'id))))
                 (if __slot114643
                     __slot114643
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot114641
               (let ((__slot114644
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114638 'slot))))
                 (if __slot114644
                     __slot114644
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?114642
               (let ((__slot114645
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114638 'checked?))))
                 (if __slot114645
                     __slot114645
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self113830_ _id113831_ _slot113832_ _checked?113833_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113830_
               _id113831_
               __id114640
               __klass114638
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113830_
               _slot113832_
               __slot114641
               __klass114638
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113830_
               _checked?113833_
               __checked?114642
               __klass114638
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
      (lambda (_self113703_ _id113704_ _slot113705_ _checked?113706_)
        (##structure-set! _self113703_ _id113704_ '1 gxc#!type::t '#f)
        (##structure-set! _self113703_ _slot113705_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self113703_
         _checked?113706_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass114646 __method-table114647)
        (let ((__id114648
               (let ((__slot114651
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114646 'id))))
                 (if __slot114651
                     __slot114651
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot114649
               (let ((__slot114652
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114646 'slot))))
                 (if __slot114652
                     __slot114652
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?114650
               (let ((__slot114653
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114646 'checked?))))
                 (if __slot114653
                     __slot114653
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self113703_ _id113704_ _slot113705_ _checked?113706_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113703_
               _id113704_
               __id114648
               __klass114646
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113703_
               _slot113705_
               __slot114649
               __klass114646
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113703_
               _checked?113706_
               __checked?114650
               __klass114646
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
      (lambda (_self113547_
               _id113548_
               _arity113549_
               _dispatch113550_
               _inline113551_
               _typedecl113552_)
        (if (let ((__tmp114776
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113547_))))
              (declare (not safe))
              (##fx< '5 __tmp114776))
            (begin
              (let ((__tmp114771
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113547_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113547_
                 _id113548_
                 '1
                 __tmp114771
                 '#f))
              (let ((__tmp114772
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113547_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113547_
                 _arity113549_
                 '2
                 __tmp114772
                 '#f))
              (let ((__tmp114773
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113547_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113547_
                 _dispatch113550_
                 '3
                 __tmp114773
                 '#f))
              (let ((__tmp114774
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113547_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113547_
                 _inline113551_
                 '4
                 __tmp114774
                 '#f))
              (let ((__tmp114775
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113547_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113547_
                 _typedecl113552_
                 '5
                 __tmp114775
                 '#f)))
            (let ((__tmp114770
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113547_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113547_
                     '5
                     __tmp114770)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self113557_ _id113558_ _arity113559_ _dispatch113560_)
        (let* ((_inline113562_ '#f) (_typedecl113564_ '#f))
          (if (let ((__tmp114783
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113557_))))
                (declare (not safe))
                (##fx< '5 __tmp114783))
              (begin
                (let ((__tmp114778
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113557_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113557_
                   _id113558_
                   '1
                   __tmp114778
                   '#f))
                (let ((__tmp114779
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113557_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113557_
                   _arity113559_
                   '2
                   __tmp114779
                   '#f))
                (let ((__tmp114780
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113557_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113557_
                   _dispatch113560_
                   '3
                   __tmp114780
                   '#f))
                (let ((__tmp114781
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113557_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113557_
                   _inline113562_
                   '4
                   __tmp114781
                   '#f))
                (let ((__tmp114782
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113557_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113557_
                   _typedecl113564_
                   '5
                   __tmp114782
                   '#f)))
              (let ((__tmp114777
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113557_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113557_
                       '5
                       __tmp114777))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self113566_
               _id113567_
               _arity113568_
               _dispatch113569_
               _inline113570_)
        (let ((_typedecl113572_ '#f))
          (if (let ((__tmp114790
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113566_))))
                (declare (not safe))
                (##fx< '5 __tmp114790))
              (begin
                (let ((__tmp114785
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113566_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113566_
                   _id113567_
                   '1
                   __tmp114785
                   '#f))
                (let ((__tmp114786
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113566_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113566_
                   _arity113568_
                   '2
                   __tmp114786
                   '#f))
                (let ((__tmp114787
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113566_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113566_
                   _dispatch113569_
                   '3
                   __tmp114787
                   '#f))
                (let ((__tmp114788
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113566_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113566_
                   _inline113570_
                   '4
                   __tmp114788
                   '#f))
                (let ((__tmp114789
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113566_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113566_
                   _typedecl113572_
                   '5
                   __tmp114789
                   '#f)))
              (let ((__tmp114784
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113566_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113566_
                       '5
                       __tmp114784))))))
    (define gxc#!lambda:::init!
      (lambda _g114792_
        (let ((_g114791_ (let () (declare (not safe)) (##length _g114792_))))
          (cond ((let () (declare (not safe)) (##fx= _g114791_ 4))
                 (apply (lambda (_self113557_
                                 _id113558_
                                 _arity113559_
                                 _dispatch113560_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self113557_
                             _id113558_
                             _arity113559_
                             _dispatch113560_)))
                        _g114792_))
                ((let () (declare (not safe)) (##fx= _g114791_ 5))
                 (apply (lambda (_self113566_
                                 _id113567_
                                 _arity113568_
                                 _dispatch113569_
                                 _inline113570_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self113566_
                             _id113567_
                             _arity113568_
                             _dispatch113569_
                             _inline113570_)))
                        _g114792_))
                ((let () (declare (not safe)) (##fx= _g114791_ 6))
                 (apply (lambda (_self113574_
                                 _id113575_
                                 _arity113576_
                                 _dispatch113577_
                                 _inline113578_
                                 _typedecl113579_)
                          (if (let ((__tmp114799
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self113574_))))
                                (declare (not safe))
                                (##fx< '5 __tmp114799))
                              (begin
                                (let ((__tmp114794
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113574_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113574_
                                   _id113575_
                                   '1
                                   __tmp114794
                                   '#f))
                                (let ((__tmp114795
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113574_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113574_
                                   _arity113576_
                                   '2
                                   __tmp114795
                                   '#f))
                                (let ((__tmp114796
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113574_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113574_
                                   _dispatch113577_
                                   '3
                                   __tmp114796
                                   '#f))
                                (let ((__tmp114797
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113574_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113574_
                                   _inline113578_
                                   '4
                                   __tmp114797
                                   '#f))
                                (let ((__tmp114798
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113574_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113574_
                                   _typedecl113579_
                                   '5
                                   __tmp114798
                                   '#f)))
                              (let ((__tmp114793
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self113574_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self113574_
                                       '5
                                       __tmp114793))))
                        _g114792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g114792_))))))
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
      (lambda (_self113299_ . _args113300_)
        (apply struct-instance-init! _self113299_ _args113300_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type113174_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113174_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type113174_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass113167_)
        (let ((_$e113169_
               (##structure-ref _klass113167_ '10 gxc#!class::t '#f)))
          (if _$e113169_
              _$e113169_
              (let ((_tab113172_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass113167_
                 _tab113172_
                 '10
                 gxc#!class::t
                 '#f)
                _tab113172_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass113158_ _method113159_)
        (let ((_tab113160113162_
               (##structure-ref _klass113158_ '10 gxc#!class::t '#f)))
          (if _tab113160113162_
              (let ((_tab113165_ _tab113160113162_))
                (declare (not safe))
                (hash-get _tab113165_ _method113159_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type113155_ _method113156_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113155_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type113155_ _method113156_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym113139_ _type113140_ _local?113141_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113140_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym113139_
                     _type113140_)))
        (let ((__tmp114800
               (let () (declare (not safe)) (struct->list _type113140_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym113139_ '" " __tmp114800))
        (let ((__tmp114801
               (if _local?113141_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp114801 _sym113139_ _type113140_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym113146_ _type113147_)
        (let ((_local?113149_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym113146_
           _type113147_
           _local?113149_))))
    (define gxc#optimizer-declare-type!
      (lambda _g114803_
        (let ((_g114802_ (let () (declare (not safe)) (##length _g114803_))))
          (cond ((let () (declare (not safe)) (##fx= _g114802_ 2))
                 (apply (lambda (_sym113146_ _type113147_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym113146_
                             _type113147_)))
                        _g114803_))
                ((let () (declare (not safe)) (##fx= _g114802_ 3))
                 (apply (lambda (_sym113151_ _type113152_ _local?113153_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym113151_
                             _type113152_
                             _local?113153_)))
                        _g114803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g114803_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym113125_ _local?113126_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym113125_))
        (let ((__tmp114804
               (if _local?113126_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp114804 _sym113125_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym113131_)
        (let ((_local?113133_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym113131_ _local?113133_))))
    (define gxc#optimizer-clear-type!
      (lambda _g114806_
        (let ((_g114805_ (let () (declare (not safe)) (##length _g114806_))))
          (cond ((let () (declare (not safe)) (##fx= _g114805_ 1))
                 (apply (lambda (_sym113131_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym113131_)))
                        _g114806_))
                ((let () (declare (not safe)) (##fx= _g114805_ 2))
                 (apply (lambda (_sym113135_ _local?113136_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym113135_
                             _local?113136_)))
                        _g114806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g114806_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t113093_ _method113094_ _sym113095_ _rebind?113096_)
        (let* ((_type113098_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t113093_)))
               (_$e113100_
                (let () (declare (not safe)) (gxc#!type-vtab _type113098_))))
          (if _$e113100_
              ((lambda (_vtab113103_)
                 (let ((_$e113105_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab113103_ _method113094_))))
                   (if _$e113105_
                       ((lambda (_existing113108_)
                          (if _rebind?113096_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t113093_
                                   '" "
                                   _method113094_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab113103_
                                   _method113094_
                                   _sym113095_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing113108_ _sym113095_))
                                  '#!void
                                  (let ((__tmp114811
                                         (let ((__tmp114812
                                                (let ((__tmp114813
                                                       (let ((__tmp114814
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym113095_ '()))))
                 (declare (not safe))
                 (cons _method113094_ __tmp114814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t113093_
                                                        __tmp114813))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp114812))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp114811
                                     _method113094_)))))
                        _$e113105_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t113093_
                            '" "
                            _method113094_
                            '" => "
                            _sym113095_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab113103_
                            _method113094_
                            _sym113095_))))))
               _$e113100_)
              (if (let () (declare (not safe)) (not _type113098_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t113093_))
                  (let ((__tmp114807
                         (let ((__tmp114808
                                (let ((__tmp114809
                                       (let ((__tmp114810
                                              (let ()
                                                (declare (not safe))
                                                (cons _method113094_ '()))))
                                         (declare (not safe))
                                         (cons _sym113095_ __tmp114810))))
                                  (declare (not safe))
                                  (cons _type-t113093_ __tmp114809))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp114808))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp114807
                     _type113098_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t113113_ _method113114_ _sym113115_)
        (let ((_rebind?113117_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t113113_
           _method113114_
           _sym113115_
           _rebind?113117_))))
    (define gxc#optimizer-declare-method!
      (lambda _g114816_
        (let ((_g114815_ (let () (declare (not safe)) (##length _g114816_))))
          (cond ((let () (declare (not safe)) (##fx= _g114815_ 3))
                 (apply (lambda (_type-t113113_ _method113114_ _sym113115_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t113113_
                             _method113114_
                             _sym113115_)))
                        _g114816_))
                ((let () (declare (not safe)) (##fx= _g114815_ 4))
                 (apply (lambda (_type-t113119_
                                 _method113120_
                                 _sym113121_
                                 _rebind?113122_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t113119_
                             _method113120_
                             _sym113121_
                             _rebind?113122_)))
                        _g114816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g114816_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym113081_)
        (let ((_$e113089_
               (let ((_ht113082113084_ (gxc#current-compile-local-type)))
                 (if _ht113082113084_
                     (let ((_ht113087_ _ht113082113084_))
                       (declare (not safe))
                       (hash-get _ht113087_ _sym113081_))
                     '#f))))
          (if _$e113089_
              _$e113089_
              (let ((__tmp114817
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp114817 _sym113081_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym113073_)
        (let ((_type113074113076_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym113073_))))
          (if _type113074113076_
              (let ((_type113079_ _type113074113076_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type113079_ 'gxc#!alias::t))
                    (let ((__tmp114818
                           (##structure-ref _type113079_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp114818))
                    _type113079_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where113065_ _klass-id113066_)
        (let ((_$e113068_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id113066_))))
          (if _$e113068_
              ((lambda (_klass113071_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass113071_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where113065_
                        _klass-id113066_
                        _klass113071_)))
                 _klass113071_)
               _$e113068_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where113065_
                 _klass-id113066_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t113062_ _method113063_)
        (let ((__tmp114819
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t113062_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp114819 _method113063_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym113060_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym113060_))
        (let ((__tmp114820
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp114820 _sym113060_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym113058_)
        (let ((__tmp114821
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp114821 _sym113058_))))
    (define gxc#identifier-symbol
      (lambda (_stx113056_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx113056_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx113056_))
            (let () (declare (not safe)) (gx#stx-e _stx113056_)))))))
