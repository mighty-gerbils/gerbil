(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710140930)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp114674 (list))
            (__tmp114672
             (let ((__tmp114673
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114673 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp114674
         '(type ssxi methods)
         __tmp114672
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args114608_
        (apply make-instance gxc#optimizer-info::t _$args114608_)))
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
      (lambda (_self114606_)
        (if (let ((__tmp114682
                   (let ()
                     (declare (not safe))
                     (##structure-length _self114606_))))
              (declare (not safe))
              (##fx< '3 __tmp114682))
            (begin
              (let ((__tmp114677
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114676
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114606_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114606_
                 __tmp114677
                 '1
                 __tmp114676
                 '#f))
              (let ((__tmp114679
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114678
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114606_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114606_
                 __tmp114679
                 '2
                 __tmp114678
                 '#f))
              (let ((__tmp114681
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114680
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114606_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114606_
                 __tmp114681
                 '3
                 __tmp114680
                 '#f)))
            (let ((__tmp114675
                   (let ()
                     (declare (not safe))
                     (##vector-length _self114606_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self114606_
                     '3
                     __tmp114675)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp114685 (list))
            (__tmp114683
             (let ((__tmp114684
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114684 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp114685
         '(id)
         __tmp114683
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args114481_ (apply make-instance gxc#!type::t _$args114481_)))
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
      (let ((__tmp114688 (list gxc#!type::t))
            (__tmp114686
             (let ((__tmp114687
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114687 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp114688
         '()
         __tmp114686
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args114478_ (apply make-instance gxc#!alias::t _$args114478_)))
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
      (let ((__tmp114691 (list gxc#!type::t))
            (__tmp114689
             (let ((__tmp114690
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114690 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp114691
         '()
         __tmp114689
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args114475_
        (apply make-instance gxc#!procedure::t _$args114475_)))
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
      (let ((__tmp114694 (list gxc#!type::t))
            (__tmp114692
             (let ((__tmp114693
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114693 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp114694
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp114692
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args114472_ (apply make-instance gxc#!class::t _$args114472_)))
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
      (let ((__tmp114697 (list gxc#!procedure::t))
            (__tmp114695
             (let ((__tmp114696
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114696 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp114697
         '()
         __tmp114695
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args114469_
        (apply make-instance gxc#!predicate::t _$args114469_)))
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
      (let ((__tmp114700 (list gxc#!procedure::t))
            (__tmp114698
             (let ((__tmp114699
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114699 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp114700
         '()
         __tmp114698
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args114466_
        (apply make-instance gxc#!constructor::t _$args114466_)))
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
      (let ((__tmp114703 (list gxc#!procedure::t))
            (__tmp114701
             (let ((__tmp114702
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114702 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp114703
         '(slot checked?)
         __tmp114701
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args114463_
        (apply make-instance gxc#!accessor::t _$args114463_)))
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
      (let ((__tmp114706 (list gxc#!procedure::t))
            (__tmp114704
             (let ((__tmp114705
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114705 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp114706
         '(slot checked?)
         __tmp114704
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args114460_
        (apply make-instance gxc#!mutator::t _$args114460_)))
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
      (let ((__tmp114709 (list gxc#!procedure::t))
            (__tmp114707
             (let ((__tmp114708
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114708 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp114709
         '(arity dispatch inline inline-typedecl)
         __tmp114707
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args114457_
        (apply make-instance gxc#!lambda::t _$args114457_)))
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
      (let ((__tmp114712 (list gxc#!procedure::t))
            (__tmp114710
             (let ((__tmp114711
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114711 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp114712
         '(clauses)
         __tmp114710
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args114454_
        (apply make-instance gxc#!case-lambda::t _$args114454_)))
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
      (let ((__tmp114715 (list gxc#!procedure::t))
            (__tmp114713
             (let ((__tmp114714
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114714 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp114715
         '(table dispatch)
         __tmp114713
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args114451_
        (apply make-instance gxc#!kw-lambda::t _$args114451_)))
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
      (let ((__tmp114718 (list gxc#!procedure::t))
            (__tmp114716
             (let ((__tmp114717
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114717 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp114718
         '(keys main)
         __tmp114716
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args114448_
        (apply make-instance gxc#!kw-lambda-primary::t _$args114448_)))
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
      (let ((__tmp114719 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp114719
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args114445_
        (apply make-instance gxc#!primitive::t _$args114445_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp114720 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp114720
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args114442_
        (apply make-instance gxc#!primitive-lambda::t _$args114442_)))
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
      (let ((__tmp114721 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp114721
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args114439_
        (apply make-instance gxc#!primitive-case-lambda::t _$args114439_)))
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
      (lambda (_self114321_
               _id114322_
               _super114323_
               _slots114324_
               _ctor-method114325_
               _struct?114326_
               _final?114327_
               _metaclass114328_)
        (let _lp114330_ ((_rest114332_ _super114323_))
          (let* ((_rest114333114341_ _rest114332_)
                 (_else114335114349_ (lambda () '#!void))
                 (_K114337114355_
                  (lambda (_rest114352_ _super-id114353_)
                    (if (##structure-ref
                         (let ((__tmp114724
                                (let ((__tmp114725
                                       (let ()
                                         (declare (not safe))
                                         (cons _id114322_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp114725))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp114724
                            _super-id114353_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp114722
                               (let ((__tmp114723
                                      (let ()
                                        (declare (not safe))
                                        (cons _id114322_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114723))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp114722
                           _super-id114353_))
                        '#!void)
                    (let () (declare (not safe)) (_lp114330_ _rest114352_)))))
            (if (let () (declare (not safe)) (##pair? _rest114333114341_))
                (let ((_hd114338114358_
                       (let ()
                         (declare (not safe))
                         (##car _rest114333114341_)))
                      (_tl114339114360_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest114333114341_))))
                  (let* ((_super-id114363_ _hd114338114358_)
                         (_rest114365_ _tl114339114360_))
                    (declare (not safe))
                    (_K114337114355_ _rest114365_ _super-id114363_)))
                '#!void)))
        (let* ((_ctor-method114415_
                (let ((_$e114367_ _ctor-method114325_))
                  (if _$e114367_
                      _$e114367_
                      (let _lp114370_ ((_rest114372_ _super114323_)
                                       (_method114373_ '#f))
                        (let* ((_rest114374114382_ _rest114372_)
                               (_else114376114390_ (lambda () _method114373_))
                               (_K114378114403_
                                (lambda (_rest114393_ _super-id114394_)
                                  (let* ((_klass114396_
                                          (let ((__tmp114726
                                                 (let ((__tmp114727
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id114322_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp114727))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp114726
                                             _super-id114394_)))
                                         (_$e114398_
                                          (##structure-ref
                                           _klass114396_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e114398_
                                        ((lambda (_ctor-method114401_)
                                           (if _method114373_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method114401_
                                                          _method114373_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp114370_
                                                      _rest114393_
                                                      _ctor-method114401_))
                                                   (let ((__tmp114728
                                                          (let ((__tmp114729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id114322_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp114729))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp114728
                                                      _method114373_
                                                      _ctor-method114401_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp114370_
                                                  _rest114393_
                                                  _ctor-method114401_))))
                                         _$e114398_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp114370_
                                           _rest114393_
                                           _method114373_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest114374114382_))
                              (let ((_hd114379114406_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest114374114382_)))
                                    (_tl114380114408_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest114374114382_))))
                                (let* ((_super-id114411_ _hd114379114406_)
                                       (_rest114413_ _tl114380114408_))
                                  (declare (not safe))
                                  (_K114378114403_
                                   _rest114413_
                                   _super-id114411_)))
                              (let ()
                                (declare (not safe))
                                (_else114376114390_))))))))
               (_g114730_
                (let ((__tmp114735
                       (lambda (_klass-id114417_)
                         (let ((__tmp114736
                                (##structure-ref
                                 (let ((__tmp114737
                                        (let ((__tmp114738
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id114322_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114738))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp114737
                                    _klass-id114417_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id114417_ __tmp114736))))
                      (__tmp114732
                       (lambda (_klass-id114419_)
                         (##structure-ref
                          (let ((__tmp114733
                                 (let ((__tmp114734
                                        (let ()
                                          (declare (not safe))
                                          (cons _id114322_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp114734))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp114733
                             _klass-id114419_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super114323_
                   'get-precedence-list:
                   __tmp114735
                   'struct:
                   __tmp114732
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g114731_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g114730_)
                         (##vector-length _g114730_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g114731_ 2)))
                  (error "Context expects 2 values" _g114731_)))
            (let ((_precedence-list114421_
                   (let () (declare (not safe)) (##vector-ref _g114730_ 0)))
                  (_base-struct114422_
                   (let () (declare (not safe)) (##vector-ref _g114730_ 1))))
              (let ((_fields114424_
                     (let ((__tmp114739
                            (let ((__tmp114740
                                   (let ()
                                     (declare (not safe))
                                     (cons _id114322_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp114740))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp114739
                        _base-struct114422_
                        _precedence-list114421_
                        _slots114324_))))
                (##structure-set! _self114321_ _id114322_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self114321_
                 _super114323_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114321_
                 _precedence-list114421_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114321_
                 _slots114324_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114321_
                 _fields114424_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114321_
                 _ctor-method114415_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114321_
                 _struct?114326_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114321_
                 _final?114327_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114321_
                 _metaclass114328_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self114427_
               _id114428_
               _super114429_
               _precedence-list114430_
               _slots114431_
               _fields114432_
               _constructor114433_
               _struct?114434_
               _final?114435_
               _metaclass114436_
               _methods114437_)
        (##structure-set! _self114427_ _id114428_ '1 gxc#!type::t '#f)
        (##structure-set! _self114427_ _super114429_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self114427_
         _precedence-list114430_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self114427_ _slots114431_ '4 gxc#!class::t '#f)
        (##structure-set! _self114427_ _fields114432_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self114427_
         _constructor114433_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self114427_ _struct?114434_ '7 gxc#!class::t '#f)
        (##structure-set! _self114427_ _final?114435_ '8 gxc#!class::t '#f)
        (##structure-set! _self114427_ _metaclass114436_ '9 gxc#!class::t '#f)
        (if _methods114437_
            (##structure-set!
             _self114427_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods114437_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g114742_
        (let ((_g114741_ (let () (declare (not safe)) (##length _g114742_))))
          (cond ((let () (declare (not safe)) (##fx= _g114741_ 8))
                 (apply (lambda (_self114321_
                                 _id114322_
                                 _super114323_
                                 _slots114324_
                                 _ctor-method114325_
                                 _struct?114326_
                                 _final?114327_
                                 _metaclass114328_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self114321_
                             _id114322_
                             _super114323_
                             _slots114324_
                             _ctor-method114325_
                             _struct?114326_
                             _final?114327_
                             _metaclass114328_)))
                        _g114742_))
                ((let () (declare (not safe)) (##fx= _g114741_ 11))
                 (apply (lambda (_self114427_
                                 _id114428_
                                 _super114429_
                                 _precedence-list114430_
                                 _slots114431_
                                 _fields114432_
                                 _constructor114433_
                                 _struct?114434_
                                 _final?114435_
                                 _metaclass114436_
                                 _methods114437_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self114427_
                             _id114428_
                             _super114429_
                             _precedence-list114430_
                             _slots114431_
                             _fields114432_
                             _constructor114433_
                             _struct?114434_
                             _final?114435_
                             _metaclass114436_
                             _methods114437_)))
                        _g114742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g114742_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass114610 __method-table114611)
        (let ((__super114612
               (let ((__slot114622
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114610 'super))))
                 (if __slot114622
                     __slot114622
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__constructor114613
               (let ((__slot114623
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114610 'constructor))))
                 (if __slot114623
                     __slot114623
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__metaclass114614
               (let ((__slot114624
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114610 'metaclass))))
                 (if __slot114624
                     __slot114624
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__methods114615
               (let ((__slot114625
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114610 'methods))))
                 (if __slot114625
                     __slot114625
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__struct?114616
               (let ((__slot114626
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114610 'struct?))))
                 (if __slot114626
                     __slot114626
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__final?114617
               (let ((__slot114627
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114610 'final?))))
                 (if __slot114627
                     __slot114627
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__precedence-list114618
               (let ((__slot114628
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114610 'precedence-list))))
                 (if __slot114628
                     __slot114628
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__fields114619
               (let ((__slot114629
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114610 'fields))))
                 (if __slot114629
                     __slot114629
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__slots114620
               (let ((__slot114630
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114610 'slots))))
                 (if __slot114630
                     __slot114630
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__id114621
               (let ((__slot114631
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114610 'id))))
                 (if __slot114631
                     __slot114631
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda _g114744_
            (let ((_g114743_
                   (let () (declare (not safe)) (##length _g114744_))))
              (cond ((let () (declare (not safe)) (##fx= _g114743_ 8))
                     (apply (lambda (_self114321_
                                     _id114322_
                                     _super114323_
                                     _slots114324_
                                     _ctor-method114325_
                                     _struct?114326_
                                     _final?114327_
                                     _metaclass114328_)
                              (let _lp114330_ ((_rest114332_ _super114323_))
                                (let* ((_rest114333114341_ _rest114332_)
                                       (_else114335114349_ (lambda () '#!void))
                                       (_K114337114355_
                                        (lambda (_rest114352_ _super-id114353_)
                                          (if (##structure-ref
                                               (let ((__tmp114747
                                                      (let ((__tmp114748
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id114322_ '()))))
                (declare (not safe))
                (cons '!class __tmp114748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp114747
                                                  _super-id114353_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp114745
                                                     (let ((__tmp114746
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id114322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp114746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp114745
                                                 _super-id114353_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp114330_ _rest114352_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest114333114341_))
                                      (let ((_hd114338114358_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest114333114341_)))
                                            (_tl114339114360_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest114333114341_))))
                                        (let* ((_super-id114363_
                                                _hd114338114358_)
                                               (_rest114365_ _tl114339114360_))
                                          (declare (not safe))
                                          (_K114337114355_
                                           _rest114365_
                                           _super-id114363_)))
                                      '#!void)))
                              (let* ((_ctor-method114415_
                                      (let ((_$e114367_ _ctor-method114325_))
                                        (if _$e114367_
                                            _$e114367_
                                            (let _lp114370_ ((_rest114372_
                                                              _super114323_)
                                                             (_method114373_
                                                              '#f))
                                              (let* ((_rest114374114382_
                                                      _rest114372_)
                                                     (_else114376114390_
                                                      (lambda ()
                                                        _method114373_))
                                                     (_K114378114403_
                                                      (lambda (_rest114393_
                                                               _super-id114394_)
                                                        (let* ((_klass114396_
                                                                (let ((__tmp114749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114750
                                      (let ()
                                        (declare (not safe))
                                        (cons _id114322_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114750))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp114749
                           _super-id114394_)))
                       (_$e114398_
                        (##structure-ref _klass114396_ '6 gxc#!class::t '#f)))
                  (if _$e114398_
                      ((lambda (_ctor-method114401_)
                         (if _method114373_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method114401_ _method114373_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp114370_
                                    _rest114393_
                                    _ctor-method114401_))
                                 (let ((__tmp114751
                                        (let ((__tmp114752
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id114322_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114752))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp114751
                                    _method114373_
                                    _ctor-method114401_)))
                             (let ()
                               (declare (not safe))
                               (_lp114370_ _rest114393_ _ctor-method114401_))))
                       _$e114398_)
                      (let ()
                        (declare (not safe))
                        (_lp114370_ _rest114393_ _method114373_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest114374114382_))
                                                    (let ((_hd114379114406_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest114374114382_)))
                                                          (_tl114380114408_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest114374114382_))))
                                                      (let* ((_super-id114411_
                                                              _hd114379114406_)
                                                             (_rest114413_
                                                              _tl114380114408_))
                                                        (declare (not safe))
                                                        (_K114378114403_
                                                         _rest114413_
                                                         _super-id114411_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else114376114390_))))))))
                                     (_g114753_
                                      (let ((__tmp114758
                                             (lambda (_klass-id114417_)
                                               (let ((__tmp114759
                                                      (##structure-ref
                                                       (let ((__tmp114760
                                                              (let ((__tmp114761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id114322_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp114761))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp114760 _klass-id114417_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id114417_
                                                       __tmp114759))))
                                            (__tmp114755
                                             (lambda (_klass-id114419_)
                                               (##structure-ref
                                                (let ((__tmp114756
                                                       (let ((__tmp114757
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id114322_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp114757))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp114756
                                                   _klass-id114419_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super114323_
                                         'get-precedence-list:
                                         __tmp114758
                                         'struct:
                                         __tmp114755
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g114754_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g114753_)
                                               (##vector-length _g114753_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g114754_ 2)))
                                        (error "Context expects 2 values"
                                               _g114754_)))
                                  (let ((_precedence-list114421_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114753_ 0)))
                                        (_base-struct114422_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114753_ 1))))
                                    (let ((_fields114424_
                                           (let ((__tmp114762
                                                  (let ((__tmp114763
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id114322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp114763))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp114762
                                              _base-struct114422_
                                              _precedence-list114421_
                                              _slots114324_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114321_
                                         _id114322_
                                         __id114621
                                         __klass114610
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114321_
                                         _super114323_
                                         __super114612
                                         __klass114610
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114321_
                                         _precedence-list114421_
                                         __precedence-list114618
                                         __klass114610
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114321_
                                         _slots114324_
                                         __slots114620
                                         __klass114610
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114321_
                                         _fields114424_
                                         __fields114619
                                         __klass114610
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114321_
                                         _ctor-method114415_
                                         __constructor114613
                                         __klass114610
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114321_
                                         _struct?114326_
                                         __struct?114616
                                         __klass114610
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114321_
                                         _final?114327_
                                         __final?114617
                                         __klass114610
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114321_
                                         _metaclass114328_
                                         __metaclass114614
                                         __klass114610
                                         '#f)))))))
                            _g114744_))
                    ((let () (declare (not safe)) (##fx= _g114743_ 11))
                     (apply (lambda (_self114427_
                                     _id114428_
                                     _super114429_
                                     _precedence-list114430_
                                     _slots114431_
                                     _fields114432_
                                     _constructor114433_
                                     _struct?114434_
                                     _final?114435_
                                     _metaclass114436_
                                     _methods114437_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114427_
                                 _id114428_
                                 __id114621
                                 __klass114610
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114427_
                                 _super114429_
                                 __super114612
                                 __klass114610
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114427_
                                 _precedence-list114430_
                                 __precedence-list114618
                                 __klass114610
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114427_
                                 _slots114431_
                                 __slots114620
                                 __klass114610
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114427_
                                 _fields114432_
                                 __fields114619
                                 __klass114610
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114427_
                                 _constructor114433_
                                 __constructor114613
                                 __klass114610
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114427_
                                 _struct?114434_
                                 __struct?114616
                                 __klass114610
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114427_
                                 _final?114435_
                                 __final?114617
                                 __klass114610
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114427_
                                 _metaclass114436_
                                 __metaclass114614
                                 __klass114610
                                 '#f))
                              (if _methods114437_
                                  (let ((__tmp114764
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods114437_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self114427_
                                     __tmp114764
                                     __methods114615
                                     __klass114610
                                     '#f))
                                  '#!void))
                            _g114744_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g114744_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where114173_
               _base-struct114174_
               _precedence-list114175_
               _direct-slots114176_)
        (let* ((_base-fields114178_
                (if _base-struct114174_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where114173_
                        _base-struct114174_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields114180_ (reverse _base-fields114178_))
               (_seen-slots114188_
                (let ((_tab114182_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g114183114185_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab114182_ _g114183114185_ '#t)))
                   _base-fields114178_)
                  _tab114182_))
               (_process-slot114192_
                (lambda (_slot114190_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots114188_ _slot114190_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots114188_ _slot114190_ '#t))
                        (set! _r-fields114180_
                              (let ()
                                (declare (not safe))
                                (cons _slot114190_ _r-fields114180_))))))))
          (for-each
           (lambda (_mixin114195_)
             (let ((_klass114197_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where114173_
                       _mixin114195_))))
               (if (##structure-ref _klass114197_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot114192_
                    (##structure-ref _klass114197_ '5 gxc#!class::t '#f)))))
           _precedence-list114175_)
          (for-each _process-slot114192_ _direct-slots114176_)
          (reverse _r-fields114180_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass114132_ _slot114133_)
        (let _lp114135_ ((_rest114137_
                          (##structure-ref _klass114132_ '5 gxc#!class::t '#f))
                         (_offset114138_ '1))
          (let* ((_rest114139114147_ _rest114137_)
                 (_else114141114155_
                  (lambda ()
                    (let ((__tmp114766
                           (##structure-ref _klass114132_ '1 gxc#!type::t '#f))
                          (__tmp114765
                           (##structure-ref
                            _klass114132_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp114766
                       __tmp114765
                       _slot114133_))))
                 (_K114143114161_
                  (lambda (_rest114158_ _s114159_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s114159_ _slot114133_))
                        _offset114138_
                        (let ((__tmp114767
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset114138_ '1))))
                          (declare (not safe))
                          (_lp114135_ _rest114158_ __tmp114767))))))
            (if (let () (declare (not safe)) (##pair? _rest114139114147_))
                (let ((_hd114144114164_
                       (let ()
                         (declare (not safe))
                         (##car _rest114139114147_)))
                      (_tl114145114166_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest114139114147_))))
                  (let* ((_s114169_ _hd114144114164_)
                         (_rest114171_ _tl114145114166_))
                    (declare (not safe))
                    (_K114143114161_ _rest114171_ _s114169_)))
                (let () (declare (not safe)) (_else114141114155_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass114090_ _slot114091_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass114090_ _slot114091_))
            _klass114090_
            (let _lp114093_ ((_rest114095_
                              (##structure-ref
                               _klass114090_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest114096114104_ _rest114095_)
                     (_else114098114112_ (lambda () '#f))
                     (_K114100114120_
                      (lambda (_rest114115_ _super114116_)
                        (let ((_super-class114118_
                               (let ((__tmp114768
                                      (let ((__tmp114769
                                             (let ((__tmp114771
                                                    (##structure-ref
                                                     _klass114090_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp114770
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot114091_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp114771
                                                     __tmp114770))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp114769))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp114768
                                  _super114116_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class114118_
                                 _slot114091_))
                              _super-class114118_
                              (let ()
                                (declare (not safe))
                                (_lp114093_ _rest114115_)))))))
                (if (let () (declare (not safe)) (##pair? _rest114096114104_))
                    (let ((_hd114101114123_
                           (let ()
                             (declare (not safe))
                             (##car _rest114096114104_)))
                          (_tl114102114125_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest114096114104_))))
                      (let* ((_super114128_ _hd114101114123_)
                             (_rest114130_ _tl114102114125_))
                        (declare (not safe))
                        (_K114100114120_ _rest114130_ _super114128_)))
                    (let () (declare (not safe)) (_else114098114112_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass114087_ _slot114088_)
        (if (##structure-ref _klass114087_ '7 gxc#!class::t '#f)
            (memq _slot114088_
                  (##structure-ref _klass114087_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self114084_ _id114085_)
        (##structure-set! _self114084_ _id114085_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass114632 __method-table114633)
        (let ((__id114634
               (let ((__slot114635
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114632 'id))))
                 (if __slot114635
                     __slot114635
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self114084_ _id114085_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114084_
               _id114085_
               __id114634
               __klass114632
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
      (lambda (_self113959_ _id113960_)
        (##structure-set! _self113959_ _id113960_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass114636 __method-table114637)
        (let ((__id114638
               (let ((__slot114639
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114636 'id))))
                 (if __slot114639
                     __slot114639
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113959_ _id113960_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113959_
               _id113960_
               __id114638
               __klass114636
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
      (lambda (_self113832_ _id113833_ _slot113834_ _checked?113835_)
        (##structure-set! _self113832_ _id113833_ '1 gxc#!type::t '#f)
        (##structure-set! _self113832_ _slot113834_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self113832_
         _checked?113835_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass114640 __method-table114641)
        (let ((__checked?114642
               (let ((__slot114645
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114640 'checked?))))
                 (if __slot114645
                     __slot114645
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot114643
               (let ((__slot114646
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114640 'slot))))
                 (if __slot114646
                     __slot114646
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id114644
               (let ((__slot114647
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114640 'id))))
                 (if __slot114647
                     __slot114647
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113832_ _id113833_ _slot113834_ _checked?113835_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113832_
               _id113833_
               __id114644
               __klass114640
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113832_
               _slot113834_
               __slot114643
               __klass114640
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113832_
               _checked?113835_
               __checked?114642
               __klass114640
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
      (lambda (_self113705_ _id113706_ _slot113707_ _checked?113708_)
        (##structure-set! _self113705_ _id113706_ '1 gxc#!type::t '#f)
        (##structure-set! _self113705_ _slot113707_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self113705_
         _checked?113708_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass114648 __method-table114649)
        (let ((__checked?114650
               (let ((__slot114653
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114648 'checked?))))
                 (if __slot114653
                     __slot114653
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot114651
               (let ((__slot114654
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114648 'slot))))
                 (if __slot114654
                     __slot114654
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id114652
               (let ((__slot114655
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114648 'id))))
                 (if __slot114655
                     __slot114655
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113705_ _id113706_ _slot113707_ _checked?113708_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113705_
               _id113706_
               __id114652
               __klass114648
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113705_
               _slot113707_
               __slot114651
               __klass114648
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113705_
               _checked?113708_
               __checked?114650
               __klass114648
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
      (lambda (_self113549_
               _id113550_
               _arity113551_
               _dispatch113552_
               _inline113553_
               _typedecl113554_)
        (if (let ((__tmp114778
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113549_))))
              (declare (not safe))
              (##fx< '5 __tmp114778))
            (begin
              (let ((__tmp114773
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113549_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113549_
                 _id113550_
                 '1
                 __tmp114773
                 '#f))
              (let ((__tmp114774
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113549_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113549_
                 _arity113551_
                 '2
                 __tmp114774
                 '#f))
              (let ((__tmp114775
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113549_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113549_
                 _dispatch113552_
                 '3
                 __tmp114775
                 '#f))
              (let ((__tmp114776
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113549_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113549_
                 _inline113553_
                 '4
                 __tmp114776
                 '#f))
              (let ((__tmp114777
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113549_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113549_
                 _typedecl113554_
                 '5
                 __tmp114777
                 '#f)))
            (let ((__tmp114772
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113549_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113549_
                     '5
                     __tmp114772)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self113559_ _id113560_ _arity113561_ _dispatch113562_)
        (let* ((_inline113564_ '#f) (_typedecl113566_ '#f))
          (if (let ((__tmp114785
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113559_))))
                (declare (not safe))
                (##fx< '5 __tmp114785))
              (begin
                (let ((__tmp114780
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113559_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113559_
                   _id113560_
                   '1
                   __tmp114780
                   '#f))
                (let ((__tmp114781
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113559_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113559_
                   _arity113561_
                   '2
                   __tmp114781
                   '#f))
                (let ((__tmp114782
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113559_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113559_
                   _dispatch113562_
                   '3
                   __tmp114782
                   '#f))
                (let ((__tmp114783
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113559_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113559_
                   _inline113564_
                   '4
                   __tmp114783
                   '#f))
                (let ((__tmp114784
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113559_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113559_
                   _typedecl113566_
                   '5
                   __tmp114784
                   '#f)))
              (let ((__tmp114779
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113559_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113559_
                       '5
                       __tmp114779))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self113568_
               _id113569_
               _arity113570_
               _dispatch113571_
               _inline113572_)
        (let ((_typedecl113574_ '#f))
          (if (let ((__tmp114792
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113568_))))
                (declare (not safe))
                (##fx< '5 __tmp114792))
              (begin
                (let ((__tmp114787
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113568_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113568_
                   _id113569_
                   '1
                   __tmp114787
                   '#f))
                (let ((__tmp114788
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113568_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113568_
                   _arity113570_
                   '2
                   __tmp114788
                   '#f))
                (let ((__tmp114789
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113568_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113568_
                   _dispatch113571_
                   '3
                   __tmp114789
                   '#f))
                (let ((__tmp114790
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113568_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113568_
                   _inline113572_
                   '4
                   __tmp114790
                   '#f))
                (let ((__tmp114791
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113568_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113568_
                   _typedecl113574_
                   '5
                   __tmp114791
                   '#f)))
              (let ((__tmp114786
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113568_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113568_
                       '5
                       __tmp114786))))))
    (define gxc#!lambda:::init!
      (lambda _g114794_
        (let ((_g114793_ (let () (declare (not safe)) (##length _g114794_))))
          (cond ((let () (declare (not safe)) (##fx= _g114793_ 4))
                 (apply (lambda (_self113559_
                                 _id113560_
                                 _arity113561_
                                 _dispatch113562_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self113559_
                             _id113560_
                             _arity113561_
                             _dispatch113562_)))
                        _g114794_))
                ((let () (declare (not safe)) (##fx= _g114793_ 5))
                 (apply (lambda (_self113568_
                                 _id113569_
                                 _arity113570_
                                 _dispatch113571_
                                 _inline113572_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self113568_
                             _id113569_
                             _arity113570_
                             _dispatch113571_
                             _inline113572_)))
                        _g114794_))
                ((let () (declare (not safe)) (##fx= _g114793_ 6))
                 (apply (lambda (_self113576_
                                 _id113577_
                                 _arity113578_
                                 _dispatch113579_
                                 _inline113580_
                                 _typedecl113581_)
                          (if (let ((__tmp114801
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self113576_))))
                                (declare (not safe))
                                (##fx< '5 __tmp114801))
                              (begin
                                (let ((__tmp114796
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113576_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113576_
                                   _id113577_
                                   '1
                                   __tmp114796
                                   '#f))
                                (let ((__tmp114797
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113576_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113576_
                                   _arity113578_
                                   '2
                                   __tmp114797
                                   '#f))
                                (let ((__tmp114798
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113576_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113576_
                                   _dispatch113579_
                                   '3
                                   __tmp114798
                                   '#f))
                                (let ((__tmp114799
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113576_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113576_
                                   _inline113580_
                                   '4
                                   __tmp114799
                                   '#f))
                                (let ((__tmp114800
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113576_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113576_
                                   _typedecl113581_
                                   '5
                                   __tmp114800
                                   '#f)))
                              (let ((__tmp114795
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self113576_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self113576_
                                       '5
                                       __tmp114795))))
                        _g114794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g114794_))))))
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
      (lambda (_self113301_ . _args113302_)
        (apply struct-instance-init! _self113301_ _args113302_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type113176_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113176_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type113176_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass113169_)
        (let ((_$e113171_
               (##structure-ref _klass113169_ '10 gxc#!class::t '#f)))
          (if _$e113171_
              _$e113171_
              (let ((_tab113174_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass113169_
                 _tab113174_
                 '10
                 gxc#!class::t
                 '#f)
                _tab113174_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass113160_ _method113161_)
        (let ((_tab113162113164_
               (##structure-ref _klass113160_ '10 gxc#!class::t '#f)))
          (if _tab113162113164_
              (let ((_tab113167_ _tab113162113164_))
                (declare (not safe))
                (hash-get _tab113167_ _method113161_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type113157_ _method113158_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113157_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type113157_ _method113158_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym113141_ _type113142_ _local?113143_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113142_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym113141_
                     _type113142_)))
        (let ((__tmp114802
               (let () (declare (not safe)) (struct->list _type113142_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym113141_ '" " __tmp114802))
        (let ((__tmp114803
               (if _local?113143_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp114803 _sym113141_ _type113142_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym113148_ _type113149_)
        (let ((_local?113151_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym113148_
           _type113149_
           _local?113151_))))
    (define gxc#optimizer-declare-type!
      (lambda _g114805_
        (let ((_g114804_ (let () (declare (not safe)) (##length _g114805_))))
          (cond ((let () (declare (not safe)) (##fx= _g114804_ 2))
                 (apply (lambda (_sym113148_ _type113149_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym113148_
                             _type113149_)))
                        _g114805_))
                ((let () (declare (not safe)) (##fx= _g114804_ 3))
                 (apply (lambda (_sym113153_ _type113154_ _local?113155_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym113153_
                             _type113154_
                             _local?113155_)))
                        _g114805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g114805_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym113127_ _local?113128_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym113127_))
        (let ((__tmp114806
               (if _local?113128_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp114806 _sym113127_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym113133_)
        (let ((_local?113135_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym113133_ _local?113135_))))
    (define gxc#optimizer-clear-type!
      (lambda _g114808_
        (let ((_g114807_ (let () (declare (not safe)) (##length _g114808_))))
          (cond ((let () (declare (not safe)) (##fx= _g114807_ 1))
                 (apply (lambda (_sym113133_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym113133_)))
                        _g114808_))
                ((let () (declare (not safe)) (##fx= _g114807_ 2))
                 (apply (lambda (_sym113137_ _local?113138_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym113137_
                             _local?113138_)))
                        _g114808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g114808_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t113095_ _method113096_ _sym113097_ _rebind?113098_)
        (let* ((_type113100_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t113095_)))
               (_$e113102_
                (let () (declare (not safe)) (gxc#!type-vtab _type113100_))))
          (if _$e113102_
              ((lambda (_vtab113105_)
                 (let ((_$e113107_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab113105_ _method113096_))))
                   (if _$e113107_
                       ((lambda (_existing113110_)
                          (if _rebind?113098_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t113095_
                                   '" "
                                   _method113096_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab113105_
                                   _method113096_
                                   _sym113097_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing113110_ _sym113097_))
                                  '#!void
                                  (let ((__tmp114813
                                         (let ((__tmp114814
                                                (let ((__tmp114815
                                                       (let ((__tmp114816
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym113097_ '()))))
                 (declare (not safe))
                 (cons _method113096_ __tmp114816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t113095_
                                                        __tmp114815))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp114814))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp114813
                                     _method113096_)))))
                        _$e113107_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t113095_
                            '" "
                            _method113096_
                            '" => "
                            _sym113097_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab113105_
                            _method113096_
                            _sym113097_))))))
               _$e113102_)
              (if (let () (declare (not safe)) (not _type113100_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t113095_))
                  (let ((__tmp114809
                         (let ((__tmp114810
                                (let ((__tmp114811
                                       (let ((__tmp114812
                                              (let ()
                                                (declare (not safe))
                                                (cons _method113096_ '()))))
                                         (declare (not safe))
                                         (cons _sym113097_ __tmp114812))))
                                  (declare (not safe))
                                  (cons _type-t113095_ __tmp114811))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp114810))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp114809
                     _type113100_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t113115_ _method113116_ _sym113117_)
        (let ((_rebind?113119_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t113115_
           _method113116_
           _sym113117_
           _rebind?113119_))))
    (define gxc#optimizer-declare-method!
      (lambda _g114818_
        (let ((_g114817_ (let () (declare (not safe)) (##length _g114818_))))
          (cond ((let () (declare (not safe)) (##fx= _g114817_ 3))
                 (apply (lambda (_type-t113115_ _method113116_ _sym113117_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t113115_
                             _method113116_
                             _sym113117_)))
                        _g114818_))
                ((let () (declare (not safe)) (##fx= _g114817_ 4))
                 (apply (lambda (_type-t113121_
                                 _method113122_
                                 _sym113123_
                                 _rebind?113124_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t113121_
                             _method113122_
                             _sym113123_
                             _rebind?113124_)))
                        _g114818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g114818_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym113083_)
        (let ((_$e113091_
               (let ((_ht113084113086_ (gxc#current-compile-local-type)))
                 (if _ht113084113086_
                     (let ((_ht113089_ _ht113084113086_))
                       (declare (not safe))
                       (hash-get _ht113089_ _sym113083_))
                     '#f))))
          (if _$e113091_
              _$e113091_
              (let ((__tmp114819
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp114819 _sym113083_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym113075_)
        (let ((_type113076113078_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym113075_))))
          (if _type113076113078_
              (let ((_type113081_ _type113076113078_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type113081_ 'gxc#!alias::t))
                    (let ((__tmp114820
                           (##structure-ref _type113081_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp114820))
                    _type113081_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where113067_ _klass-id113068_)
        (let ((_$e113070_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id113068_))))
          (if _$e113070_
              ((lambda (_klass113073_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass113073_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where113067_
                        _klass-id113068_
                        _klass113073_)))
                 _klass113073_)
               _$e113070_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where113067_
                 _klass-id113068_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t113064_ _method113065_)
        (let ((__tmp114821
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t113064_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp114821 _method113065_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym113062_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym113062_))
        (let ((__tmp114822
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp114822 _sym113062_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym113060_)
        (let ((__tmp114823
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp114823 _sym113060_))))
    (define gxc#identifier-symbol
      (lambda (_stx113058_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx113058_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx113058_))
            (let () (declare (not safe)) (gx#stx-e _stx113058_)))))))
