(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708510102)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp113636 (list))
            (__tmp113634
             (let ((__tmp113635
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113635 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp113636
         '(type ssxi methods)
         __tmp113634
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args113570_
        (apply make-instance gxc#optimizer-info::t _$args113570_)))
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
      (lambda (_self113568_)
        (if (let ((__tmp113644
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113568_))))
              (declare (not safe))
              (##fx< '3 __tmp113644))
            (begin
              (let ((__tmp113639
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113638
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113568_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113568_
                 __tmp113639
                 '1
                 __tmp113638
                 '#f))
              (let ((__tmp113641
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113640
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113568_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113568_
                 __tmp113641
                 '2
                 __tmp113640
                 '#f))
              (let ((__tmp113643
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113642
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113568_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113568_
                 __tmp113643
                 '3
                 __tmp113642
                 '#f)))
            (let ((__tmp113637
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113568_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113568_
                     '3
                     __tmp113637)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp113647 (list))
            (__tmp113645
             (let ((__tmp113646
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113646 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp113647
         '(id)
         __tmp113645
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args113443_ (apply make-instance gxc#!type::t _$args113443_)))
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
      (let ((__tmp113650 (list gxc#!type::t))
            (__tmp113648
             (let ((__tmp113649
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113649 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp113650
         '()
         __tmp113648
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args113440_ (apply make-instance gxc#!alias::t _$args113440_)))
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
      (let ((__tmp113653 (list gxc#!type::t))
            (__tmp113651
             (let ((__tmp113652
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113652 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp113653
         '()
         __tmp113651
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args113437_
        (apply make-instance gxc#!procedure::t _$args113437_)))
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
      (let ((__tmp113656 (list gxc#!type::t))
            (__tmp113654
             (let ((__tmp113655
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113655 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp113656
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp113654
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args113434_ (apply make-instance gxc#!class::t _$args113434_)))
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
      (let ((__tmp113659 (list gxc#!procedure::t))
            (__tmp113657
             (let ((__tmp113658
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113658 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp113659
         '()
         __tmp113657
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args113431_
        (apply make-instance gxc#!predicate::t _$args113431_)))
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
      (let ((__tmp113662 (list gxc#!procedure::t))
            (__tmp113660
             (let ((__tmp113661
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113661 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp113662
         '()
         __tmp113660
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args113428_
        (apply make-instance gxc#!constructor::t _$args113428_)))
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
      (let ((__tmp113665 (list gxc#!procedure::t))
            (__tmp113663
             (let ((__tmp113664
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113664 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp113665
         '(slot checked?)
         __tmp113663
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args113425_
        (apply make-instance gxc#!accessor::t _$args113425_)))
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
      (let ((__tmp113668 (list gxc#!procedure::t))
            (__tmp113666
             (let ((__tmp113667
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113667 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp113668
         '(slot checked?)
         __tmp113666
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args113422_
        (apply make-instance gxc#!mutator::t _$args113422_)))
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
      (let ((__tmp113671 (list gxc#!procedure::t))
            (__tmp113669
             (let ((__tmp113670
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113670 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp113671
         '(arity dispatch inline inline-typedecl)
         __tmp113669
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args113419_
        (apply make-instance gxc#!lambda::t _$args113419_)))
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
      (let ((__tmp113674 (list gxc#!procedure::t))
            (__tmp113672
             (let ((__tmp113673
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113673 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp113674
         '(clauses)
         __tmp113672
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args113416_
        (apply make-instance gxc#!case-lambda::t _$args113416_)))
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
      (let ((__tmp113677 (list gxc#!procedure::t))
            (__tmp113675
             (let ((__tmp113676
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113676 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp113677
         '(table dispatch)
         __tmp113675
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args113413_
        (apply make-instance gxc#!kw-lambda::t _$args113413_)))
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
      (let ((__tmp113680 (list gxc#!procedure::t))
            (__tmp113678
             (let ((__tmp113679
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113679 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp113680
         '(keys main)
         __tmp113678
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args113410_
        (apply make-instance gxc#!kw-lambda-primary::t _$args113410_)))
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
      (let ((__tmp113681 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp113681
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args113407_
        (apply make-instance gxc#!primitive::t _$args113407_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp113682 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp113682
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args113404_
        (apply make-instance gxc#!primitive-lambda::t _$args113404_)))
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
      (let ((__tmp113683 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp113683
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args113401_
        (apply make-instance gxc#!primitive-case-lambda::t _$args113401_)))
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
      (lambda (_self113283_
               _id113284_
               _super113285_
               _slots113286_
               _ctor-method113287_
               _struct?113288_
               _final?113289_
               _metaclass113290_)
        (let _lp113292_ ((_rest113294_ _super113285_))
          (let* ((_rest113295113303_ _rest113294_)
                 (_else113297113311_ (lambda () '#!void))
                 (_K113299113317_
                  (lambda (_rest113314_ _super-id113315_)
                    (if (##structure-ref
                         (let ((__tmp113686
                                (let ((__tmp113687
                                       (let ()
                                         (declare (not safe))
                                         (cons _id113284_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp113687))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp113686
                            _super-id113315_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp113684
                               (let ((__tmp113685
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113284_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp113685))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp113684
                           _super-id113315_))
                        '#!void)
                    (let () (declare (not safe)) (_lp113292_ _rest113314_)))))
            (if (let () (declare (not safe)) (##pair? _rest113295113303_))
                (let ((_hd113300113320_
                       (let ()
                         (declare (not safe))
                         (##car _rest113295113303_)))
                      (_tl113301113322_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113295113303_))))
                  (let* ((_super-id113325_ _hd113300113320_)
                         (_rest113327_ _tl113301113322_))
                    (declare (not safe))
                    (_K113299113317_ _rest113327_ _super-id113325_)))
                '#!void)))
        (let* ((_ctor-method113377_
                (let ((_$e113329_ _ctor-method113287_))
                  (if _$e113329_
                      _$e113329_
                      (let _lp113332_ ((_rest113334_ _super113285_)
                                       (_method113335_ '#f))
                        (let* ((_rest113336113344_ _rest113334_)
                               (_else113338113352_ (lambda () _method113335_))
                               (_K113340113365_
                                (lambda (_rest113355_ _super-id113356_)
                                  (let* ((_klass113358_
                                          (let ((__tmp113688
                                                 (let ((__tmp113689
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id113284_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp113689))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp113688
                                             _super-id113356_)))
                                         (_$e113360_
                                          (##structure-ref
                                           _klass113358_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e113360_
                                        ((lambda (_ctor-method113363_)
                                           (if _method113335_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method113363_
                                                          _method113335_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp113332_
                                                      _rest113355_
                                                      _ctor-method113363_))
                                                   (let ((__tmp113690
                                                          (let ((__tmp113691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id113284_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp113691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp113690
                                                      _method113335_
                                                      _ctor-method113363_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp113332_
                                                  _rest113355_
                                                  _ctor-method113363_))))
                                         _$e113360_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp113332_
                                           _rest113355_
                                           _method113335_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest113336113344_))
                              (let ((_hd113341113368_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest113336113344_)))
                                    (_tl113342113370_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest113336113344_))))
                                (let* ((_super-id113373_ _hd113341113368_)
                                       (_rest113375_ _tl113342113370_))
                                  (declare (not safe))
                                  (_K113340113365_
                                   _rest113375_
                                   _super-id113373_)))
                              (let ()
                                (declare (not safe))
                                (_else113338113352_))))))))
               (_g113692_
                (let ((__tmp113697
                       (lambda (_klass-id113379_)
                         (let ((__tmp113698
                                (##structure-ref
                                 (let ((__tmp113699
                                        (let ((__tmp113700
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113284_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp113700))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp113699
                                    _klass-id113379_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id113379_ __tmp113698))))
                      (__tmp113694
                       (lambda (_klass-id113381_)
                         (##structure-ref
                          (let ((__tmp113695
                                 (let ((__tmp113696
                                        (let ()
                                          (declare (not safe))
                                          (cons _id113284_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp113696))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp113695
                             _klass-id113381_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super113285_
                   'get-precedence-list:
                   __tmp113697
                   'struct:
                   __tmp113694
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g113693_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g113692_)
                         (##vector-length _g113692_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g113693_ 2)))
                  (error "Context expects 2 values" _g113693_)))
            (let ((_precedence-list113383_
                   (let () (declare (not safe)) (##vector-ref _g113692_ 0)))
                  (_base-struct113384_
                   (let () (declare (not safe)) (##vector-ref _g113692_ 1))))
              (let ((_fields113386_
                     (let ((__tmp113701
                            (let ((__tmp113702
                                   (let ()
                                     (declare (not safe))
                                     (cons _id113284_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp113702))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp113701
                        _base-struct113384_
                        _precedence-list113383_
                        _slots113286_))))
                (##structure-set! _self113283_ _id113284_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self113283_
                 _super113285_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113283_
                 _precedence-list113383_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113283_
                 _slots113286_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113283_
                 _fields113386_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113283_
                 _ctor-method113377_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113283_
                 _struct?113288_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113283_
                 _final?113289_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113283_
                 _metaclass113290_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self113389_
               _id113390_
               _super113391_
               _precedence-list113392_
               _slots113393_
               _fields113394_
               _constructor113395_
               _struct?113396_
               _final?113397_
               _metaclass113398_
               _methods113399_)
        (##structure-set! _self113389_ _id113390_ '1 gxc#!type::t '#f)
        (##structure-set! _self113389_ _super113391_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self113389_
         _precedence-list113392_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self113389_ _slots113393_ '4 gxc#!class::t '#f)
        (##structure-set! _self113389_ _fields113394_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self113389_
         _constructor113395_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self113389_ _struct?113396_ '7 gxc#!class::t '#f)
        (##structure-set! _self113389_ _final?113397_ '8 gxc#!class::t '#f)
        (##structure-set! _self113389_ _metaclass113398_ '9 gxc#!class::t '#f)
        (if _methods113399_
            (##structure-set!
             _self113389_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods113399_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g113704_
        (let ((_g113703_ (let () (declare (not safe)) (##length _g113704_))))
          (cond ((let () (declare (not safe)) (##fx= _g113703_ 8))
                 (apply (lambda (_self113283_
                                 _id113284_
                                 _super113285_
                                 _slots113286_
                                 _ctor-method113287_
                                 _struct?113288_
                                 _final?113289_
                                 _metaclass113290_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self113283_
                             _id113284_
                             _super113285_
                             _slots113286_
                             _ctor-method113287_
                             _struct?113288_
                             _final?113289_
                             _metaclass113290_)))
                        _g113704_))
                ((let () (declare (not safe)) (##fx= _g113703_ 11))
                 (apply (lambda (_self113389_
                                 _id113390_
                                 _super113391_
                                 _precedence-list113392_
                                 _slots113393_
                                 _fields113394_
                                 _constructor113395_
                                 _struct?113396_
                                 _final?113397_
                                 _metaclass113398_
                                 _methods113399_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self113389_
                             _id113390_
                             _super113391_
                             _precedence-list113392_
                             _slots113393_
                             _fields113394_
                             _constructor113395_
                             _struct?113396_
                             _final?113397_
                             _metaclass113398_
                             _methods113399_)))
                        _g113704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g113704_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass113572 __method-table113573)
        (let ((__fields113574
               (let ((__slot113584
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113572 'fields))))
                 (if __slot113584
                     __slot113584
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__methods113575
               (let ((__slot113585
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113572 'methods))))
                 (if __slot113585
                     __slot113585
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__final?113576
               (let ((__slot113586
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113572 'final?))))
                 (if __slot113586
                     __slot113586
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__super113577
               (let ((__slot113587
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113572 'super))))
                 (if __slot113587
                     __slot113587
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__metaclass113578
               (let ((__slot113588
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113572 'metaclass))))
                 (if __slot113588
                     __slot113588
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__struct?113579
               (let ((__slot113589
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113572 'struct?))))
                 (if __slot113589
                     __slot113589
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__constructor113580
               (let ((__slot113590
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113572 'constructor))))
                 (if __slot113590
                     __slot113590
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__precedence-list113581
               (let ((__slot113591
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113572 'precedence-list))))
                 (if __slot113591
                     __slot113591
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__slots113582
               (let ((__slot113592
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113572 'slots))))
                 (if __slot113592
                     __slot113592
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__id113583
               (let ((__slot113593
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113572 'id))))
                 (if __slot113593
                     __slot113593
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda _g113706_
            (let ((_g113705_
                   (let () (declare (not safe)) (##length _g113706_))))
              (cond ((let () (declare (not safe)) (##fx= _g113705_ 8))
                     (apply (lambda (_self113283_
                                     _id113284_
                                     _super113285_
                                     _slots113286_
                                     _ctor-method113287_
                                     _struct?113288_
                                     _final?113289_
                                     _metaclass113290_)
                              (let _lp113292_ ((_rest113294_ _super113285_))
                                (let* ((_rest113295113303_ _rest113294_)
                                       (_else113297113311_ (lambda () '#!void))
                                       (_K113299113317_
                                        (lambda (_rest113314_ _super-id113315_)
                                          (if (##structure-ref
                                               (let ((__tmp113709
                                                      (let ((__tmp113710
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id113284_ '()))))
                (declare (not safe))
                (cons '!class __tmp113710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp113709
                                                  _super-id113315_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp113707
                                                     (let ((__tmp113708
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id113284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp113708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp113707
                                                 _super-id113315_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp113292_ _rest113314_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest113295113303_))
                                      (let ((_hd113300113320_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest113295113303_)))
                                            (_tl113301113322_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest113295113303_))))
                                        (let* ((_super-id113325_
                                                _hd113300113320_)
                                               (_rest113327_ _tl113301113322_))
                                          (declare (not safe))
                                          (_K113299113317_
                                           _rest113327_
                                           _super-id113325_)))
                                      '#!void)))
                              (let* ((_ctor-method113377_
                                      (let ((_$e113329_ _ctor-method113287_))
                                        (if _$e113329_
                                            _$e113329_
                                            (let _lp113332_ ((_rest113334_
                                                              _super113285_)
                                                             (_method113335_
                                                              '#f))
                                              (let* ((_rest113336113344_
                                                      _rest113334_)
                                                     (_else113338113352_
                                                      (lambda ()
                                                        _method113335_))
                                                     (_K113340113365_
                                                      (lambda (_rest113355_
                                                               _super-id113356_)
                                                        (let* ((_klass113358_
                                                                (let ((__tmp113711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113712
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113284_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp113712))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp113711
                           _super-id113356_)))
                       (_$e113360_
                        (##structure-ref _klass113358_ '6 gxc#!class::t '#f)))
                  (if _$e113360_
                      ((lambda (_ctor-method113363_)
                         (if _method113335_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method113363_ _method113335_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp113332_
                                    _rest113355_
                                    _ctor-method113363_))
                                 (let ((__tmp113713
                                        (let ((__tmp113714
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113284_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp113714))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp113713
                                    _method113335_
                                    _ctor-method113363_)))
                             (let ()
                               (declare (not safe))
                               (_lp113332_ _rest113355_ _ctor-method113363_))))
                       _$e113360_)
                      (let ()
                        (declare (not safe))
                        (_lp113332_ _rest113355_ _method113335_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest113336113344_))
                                                    (let ((_hd113341113368_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest113336113344_)))
                                                          (_tl113342113370_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest113336113344_))))
                                                      (let* ((_super-id113373_
                                                              _hd113341113368_)
                                                             (_rest113375_
                                                              _tl113342113370_))
                                                        (declare (not safe))
                                                        (_K113340113365_
                                                         _rest113375_
                                                         _super-id113373_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else113338113352_))))))))
                                     (_g113715_
                                      (let ((__tmp113720
                                             (lambda (_klass-id113379_)
                                               (let ((__tmp113721
                                                      (##structure-ref
                                                       (let ((__tmp113722
                                                              (let ((__tmp113723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id113284_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp113723))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp113722 _klass-id113379_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id113379_
                                                       __tmp113721))))
                                            (__tmp113717
                                             (lambda (_klass-id113381_)
                                               (##structure-ref
                                                (let ((__tmp113718
                                                       (let ((__tmp113719
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id113284_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp113719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp113718
                                                   _klass-id113381_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super113285_
                                         'get-precedence-list:
                                         __tmp113720
                                         'struct:
                                         __tmp113717
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g113716_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g113715_)
                                               (##vector-length _g113715_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g113716_ 2)))
                                        (error "Context expects 2 values"
                                               _g113716_)))
                                  (let ((_precedence-list113383_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113715_ 0)))
                                        (_base-struct113384_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113715_ 1))))
                                    (let ((_fields113386_
                                           (let ((__tmp113724
                                                  (let ((__tmp113725
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id113284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp113725))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp113724
                                              _base-struct113384_
                                              _precedence-list113383_
                                              _slots113286_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113283_
                                         _id113284_
                                         __id113583
                                         __klass113572
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113283_
                                         _super113285_
                                         __super113577
                                         __klass113572
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113283_
                                         _precedence-list113383_
                                         __precedence-list113581
                                         __klass113572
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113283_
                                         _slots113286_
                                         __slots113582
                                         __klass113572
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113283_
                                         _fields113386_
                                         __fields113574
                                         __klass113572
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113283_
                                         _ctor-method113377_
                                         __constructor113580
                                         __klass113572
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113283_
                                         _struct?113288_
                                         __struct?113579
                                         __klass113572
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113283_
                                         _final?113289_
                                         __final?113576
                                         __klass113572
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113283_
                                         _metaclass113290_
                                         __metaclass113578
                                         __klass113572
                                         '#f)))))))
                            _g113706_))
                    ((let () (declare (not safe)) (##fx= _g113705_ 11))
                     (apply (lambda (_self113389_
                                     _id113390_
                                     _super113391_
                                     _precedence-list113392_
                                     _slots113393_
                                     _fields113394_
                                     _constructor113395_
                                     _struct?113396_
                                     _final?113397_
                                     _metaclass113398_
                                     _methods113399_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113389_
                                 _id113390_
                                 __id113583
                                 __klass113572
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113389_
                                 _super113391_
                                 __super113577
                                 __klass113572
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113389_
                                 _precedence-list113392_
                                 __precedence-list113581
                                 __klass113572
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113389_
                                 _slots113393_
                                 __slots113582
                                 __klass113572
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113389_
                                 _fields113394_
                                 __fields113574
                                 __klass113572
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113389_
                                 _constructor113395_
                                 __constructor113580
                                 __klass113572
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113389_
                                 _struct?113396_
                                 __struct?113579
                                 __klass113572
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113389_
                                 _final?113397_
                                 __final?113576
                                 __klass113572
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113389_
                                 _metaclass113398_
                                 __metaclass113578
                                 __klass113572
                                 '#f))
                              (if _methods113399_
                                  (let ((__tmp113726
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods113399_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self113389_
                                     __tmp113726
                                     __methods113575
                                     __klass113572
                                     '#f))
                                  '#!void))
                            _g113706_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g113706_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where113135_
               _base-struct113136_
               _precedence-list113137_
               _direct-slots113138_)
        (let* ((_base-fields113140_
                (if _base-struct113136_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where113135_
                        _base-struct113136_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields113142_ (reverse _base-fields113140_))
               (_seen-slots113150_
                (let ((_tab113144_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g113145113147_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab113144_ _g113145113147_ '#t)))
                   _base-fields113140_)
                  _tab113144_))
               (_process-slot113154_
                (lambda (_slot113152_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots113150_ _slot113152_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots113150_ _slot113152_ '#t))
                        (set! _r-fields113142_
                              (let ()
                                (declare (not safe))
                                (cons _slot113152_ _r-fields113142_))))))))
          (for-each
           (lambda (_mixin113157_)
             (let ((_klass113159_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where113135_
                       _mixin113157_))))
               (if (##structure-ref _klass113159_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot113154_
                    (##structure-ref _klass113159_ '5 gxc#!class::t '#f)))))
           _precedence-list113137_)
          (for-each _process-slot113154_ _direct-slots113138_)
          (reverse _r-fields113142_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass113094_ _slot113095_)
        (let _lp113097_ ((_rest113099_
                          (##structure-ref _klass113094_ '5 gxc#!class::t '#f))
                         (_offset113100_ '1))
          (let* ((_rest113101113109_ _rest113099_)
                 (_else113103113117_
                  (lambda ()
                    (let ((__tmp113728
                           (##structure-ref _klass113094_ '1 gxc#!type::t '#f))
                          (__tmp113727
                           (##structure-ref
                            _klass113094_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp113728
                       __tmp113727
                       _slot113095_))))
                 (_K113105113123_
                  (lambda (_rest113120_ _s113121_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s113121_ _slot113095_))
                        _offset113100_
                        (let ((__tmp113729
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset113100_ '1))))
                          (declare (not safe))
                          (_lp113097_ _rest113120_ __tmp113729))))))
            (if (let () (declare (not safe)) (##pair? _rest113101113109_))
                (let ((_hd113106113126_
                       (let ()
                         (declare (not safe))
                         (##car _rest113101113109_)))
                      (_tl113107113128_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113101113109_))))
                  (let* ((_s113131_ _hd113106113126_)
                         (_rest113133_ _tl113107113128_))
                    (declare (not safe))
                    (_K113105113123_ _rest113133_ _s113131_)))
                (let () (declare (not safe)) (_else113103113117_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass113052_ _slot113053_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass113052_ _slot113053_))
            _klass113052_
            (let _lp113055_ ((_rest113057_
                              (##structure-ref
                               _klass113052_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest113058113066_ _rest113057_)
                     (_else113060113074_ (lambda () '#f))
                     (_K113062113082_
                      (lambda (_rest113077_ _super113078_)
                        (let ((_super-class113080_
                               (let ((__tmp113730
                                      (let ((__tmp113731
                                             (let ((__tmp113733
                                                    (##structure-ref
                                                     _klass113052_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp113732
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot113053_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp113733
                                                     __tmp113732))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp113731))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp113730
                                  _super113078_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class113080_
                                 _slot113053_))
                              _super-class113080_
                              (let ()
                                (declare (not safe))
                                (_lp113055_ _rest113077_)))))))
                (if (let () (declare (not safe)) (##pair? _rest113058113066_))
                    (let ((_hd113063113085_
                           (let ()
                             (declare (not safe))
                             (##car _rest113058113066_)))
                          (_tl113064113087_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest113058113066_))))
                      (let* ((_super113090_ _hd113063113085_)
                             (_rest113092_ _tl113064113087_))
                        (declare (not safe))
                        (_K113062113082_ _rest113092_ _super113090_)))
                    (let () (declare (not safe)) (_else113060113074_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass113049_ _slot113050_)
        (if (##structure-ref _klass113049_ '7 gxc#!class::t '#f)
            (memq _slot113050_
                  (##structure-ref _klass113049_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self113046_ _id113047_)
        (##structure-set! _self113046_ _id113047_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass113594 __method-table113595)
        (let ((__id113596
               (let ((__slot113597
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113594 'id))))
                 (if __slot113597
                     __slot113597
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113046_ _id113047_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113046_
               _id113047_
               __id113596
               __klass113594
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
      (lambda (_self112921_ _id112922_)
        (##structure-set! _self112921_ _id112922_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass113598 __method-table113599)
        (let ((__id113600
               (let ((__slot113601
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113598 'id))))
                 (if __slot113601
                     __slot113601
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self112921_ _id112922_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112921_
               _id112922_
               __id113600
               __klass113598
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
      (lambda (_self112794_ _id112795_ _slot112796_ _checked?112797_)
        (##structure-set! _self112794_ _id112795_ '1 gxc#!type::t '#f)
        (##structure-set! _self112794_ _slot112796_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self112794_
         _checked?112797_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass113602 __method-table113603)
        (let ((__id113604
               (let ((__slot113607
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113602 'id))))
                 (if __slot113607
                     __slot113607
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot113605
               (let ((__slot113608
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113602 'slot))))
                 (if __slot113608
                     __slot113608
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?113606
               (let ((__slot113609
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113602 'checked?))))
                 (if __slot113609
                     __slot113609
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self112794_ _id112795_ _slot112796_ _checked?112797_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112794_
               _id112795_
               __id113604
               __klass113602
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112794_
               _slot112796_
               __slot113605
               __klass113602
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112794_
               _checked?112797_
               __checked?113606
               __klass113602
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
      (lambda (_self112667_ _id112668_ _slot112669_ _checked?112670_)
        (##structure-set! _self112667_ _id112668_ '1 gxc#!type::t '#f)
        (##structure-set! _self112667_ _slot112669_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self112667_
         _checked?112670_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass113610 __method-table113611)
        (let ((__checked?113612
               (let ((__slot113615
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113610 'checked?))))
                 (if __slot113615
                     __slot113615
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id113613
               (let ((__slot113616
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113610 'id))))
                 (if __slot113616
                     __slot113616
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot113614
               (let ((__slot113617
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113610 'slot))))
                 (if __slot113617
                     __slot113617
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self112667_ _id112668_ _slot112669_ _checked?112670_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112667_
               _id112668_
               __id113613
               __klass113610
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112667_
               _slot112669_
               __slot113614
               __klass113610
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112667_
               _checked?112670_
               __checked?113612
               __klass113610
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
      (lambda (_self112511_
               _id112512_
               _arity112513_
               _dispatch112514_
               _inline112515_
               _typedecl112516_)
        (if (let ((__tmp113740
                   (let ()
                     (declare (not safe))
                     (##structure-length _self112511_))))
              (declare (not safe))
              (##fx< '5 __tmp113740))
            (begin
              (let ((__tmp113735
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112511_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112511_
                 _id112512_
                 '1
                 __tmp113735
                 '#f))
              (let ((__tmp113736
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112511_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112511_
                 _arity112513_
                 '2
                 __tmp113736
                 '#f))
              (let ((__tmp113737
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112511_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112511_
                 _dispatch112514_
                 '3
                 __tmp113737
                 '#f))
              (let ((__tmp113738
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112511_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112511_
                 _inline112515_
                 '4
                 __tmp113738
                 '#f))
              (let ((__tmp113739
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112511_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112511_
                 _typedecl112516_
                 '5
                 __tmp113739
                 '#f)))
            (let ((__tmp113734
                   (let ()
                     (declare (not safe))
                     (##vector-length _self112511_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self112511_
                     '5
                     __tmp113734)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self112521_ _id112522_ _arity112523_ _dispatch112524_)
        (let* ((_inline112526_ '#f) (_typedecl112528_ '#f))
          (if (let ((__tmp113747
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112521_))))
                (declare (not safe))
                (##fx< '5 __tmp113747))
              (begin
                (let ((__tmp113742
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112521_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112521_
                   _id112522_
                   '1
                   __tmp113742
                   '#f))
                (let ((__tmp113743
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112521_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112521_
                   _arity112523_
                   '2
                   __tmp113743
                   '#f))
                (let ((__tmp113744
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112521_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112521_
                   _dispatch112524_
                   '3
                   __tmp113744
                   '#f))
                (let ((__tmp113745
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112521_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112521_
                   _inline112526_
                   '4
                   __tmp113745
                   '#f))
                (let ((__tmp113746
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112521_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112521_
                   _typedecl112528_
                   '5
                   __tmp113746
                   '#f)))
              (let ((__tmp113741
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112521_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112521_
                       '5
                       __tmp113741))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self112530_
               _id112531_
               _arity112532_
               _dispatch112533_
               _inline112534_)
        (let ((_typedecl112536_ '#f))
          (if (let ((__tmp113754
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112530_))))
                (declare (not safe))
                (##fx< '5 __tmp113754))
              (begin
                (let ((__tmp113749
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112530_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112530_
                   _id112531_
                   '1
                   __tmp113749
                   '#f))
                (let ((__tmp113750
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112530_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112530_
                   _arity112532_
                   '2
                   __tmp113750
                   '#f))
                (let ((__tmp113751
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112530_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112530_
                   _dispatch112533_
                   '3
                   __tmp113751
                   '#f))
                (let ((__tmp113752
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112530_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112530_
                   _inline112534_
                   '4
                   __tmp113752
                   '#f))
                (let ((__tmp113753
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112530_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112530_
                   _typedecl112536_
                   '5
                   __tmp113753
                   '#f)))
              (let ((__tmp113748
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112530_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112530_
                       '5
                       __tmp113748))))))
    (define gxc#!lambda:::init!
      (lambda _g113756_
        (let ((_g113755_ (let () (declare (not safe)) (##length _g113756_))))
          (cond ((let () (declare (not safe)) (##fx= _g113755_ 4))
                 (apply (lambda (_self112521_
                                 _id112522_
                                 _arity112523_
                                 _dispatch112524_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self112521_
                             _id112522_
                             _arity112523_
                             _dispatch112524_)))
                        _g113756_))
                ((let () (declare (not safe)) (##fx= _g113755_ 5))
                 (apply (lambda (_self112530_
                                 _id112531_
                                 _arity112532_
                                 _dispatch112533_
                                 _inline112534_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self112530_
                             _id112531_
                             _arity112532_
                             _dispatch112533_
                             _inline112534_)))
                        _g113756_))
                ((let () (declare (not safe)) (##fx= _g113755_ 6))
                 (apply (lambda (_self112538_
                                 _id112539_
                                 _arity112540_
                                 _dispatch112541_
                                 _inline112542_
                                 _typedecl112543_)
                          (if (let ((__tmp113763
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self112538_))))
                                (declare (not safe))
                                (##fx< '5 __tmp113763))
                              (begin
                                (let ((__tmp113758
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112538_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112538_
                                   _id112539_
                                   '1
                                   __tmp113758
                                   '#f))
                                (let ((__tmp113759
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112538_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112538_
                                   _arity112540_
                                   '2
                                   __tmp113759
                                   '#f))
                                (let ((__tmp113760
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112538_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112538_
                                   _dispatch112541_
                                   '3
                                   __tmp113760
                                   '#f))
                                (let ((__tmp113761
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112538_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112538_
                                   _inline112542_
                                   '4
                                   __tmp113761
                                   '#f))
                                (let ((__tmp113762
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112538_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112538_
                                   _typedecl112543_
                                   '5
                                   __tmp113762
                                   '#f)))
                              (let ((__tmp113757
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self112538_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self112538_
                                       '5
                                       __tmp113757))))
                        _g113756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g113756_))))))
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
      (lambda (_self112263_ . _args112264_)
        (apply struct-instance-init! _self112263_ _args112264_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type112138_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112138_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type112138_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass112131_)
        (let ((_$e112133_
               (##structure-ref _klass112131_ '10 gxc#!class::t '#f)))
          (if _$e112133_
              _$e112133_
              (let ((_tab112136_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass112131_
                 _tab112136_
                 '10
                 gxc#!class::t
                 '#f)
                _tab112136_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass112122_ _method112123_)
        (let ((_tab112124112126_
               (##structure-ref _klass112122_ '10 gxc#!class::t '#f)))
          (if _tab112124112126_
              (let ((_tab112129_ _tab112124112126_))
                (declare (not safe))
                (hash-get _tab112129_ _method112123_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type112119_ _method112120_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112119_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type112119_ _method112120_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym112103_ _type112104_ _local?112105_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112104_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym112103_
                     _type112104_)))
        (let ((__tmp113764
               (let () (declare (not safe)) (struct->list _type112104_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym112103_ '" " __tmp113764))
        (let ((__tmp113765
               (if _local?112105_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp113765 _sym112103_ _type112104_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym112110_ _type112111_)
        (let ((_local?112113_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym112110_
           _type112111_
           _local?112113_))))
    (define gxc#optimizer-declare-type!
      (lambda _g113767_
        (let ((_g113766_ (let () (declare (not safe)) (##length _g113767_))))
          (cond ((let () (declare (not safe)) (##fx= _g113766_ 2))
                 (apply (lambda (_sym112110_ _type112111_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym112110_
                             _type112111_)))
                        _g113767_))
                ((let () (declare (not safe)) (##fx= _g113766_ 3))
                 (apply (lambda (_sym112115_ _type112116_ _local?112117_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym112115_
                             _type112116_
                             _local?112117_)))
                        _g113767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g113767_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym112089_ _local?112090_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym112089_))
        (let ((__tmp113768
               (if _local?112090_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp113768 _sym112089_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym112095_)
        (let ((_local?112097_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym112095_ _local?112097_))))
    (define gxc#optimizer-clear-type!
      (lambda _g113770_
        (let ((_g113769_ (let () (declare (not safe)) (##length _g113770_))))
          (cond ((let () (declare (not safe)) (##fx= _g113769_ 1))
                 (apply (lambda (_sym112095_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym112095_)))
                        _g113770_))
                ((let () (declare (not safe)) (##fx= _g113769_ 2))
                 (apply (lambda (_sym112099_ _local?112100_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym112099_
                             _local?112100_)))
                        _g113770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g113770_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t112062_ _method112063_ _sym112064_ _rebind?112065_)
        (let* ((_type112067_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t112062_)))
               (_$e112069_
                (let () (declare (not safe)) (gxc#!type-vtab _type112067_))))
          (if _$e112069_
              ((lambda (_vtab112072_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab112072_ _method112063_))
                     (if _rebind?112065_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t112062_
                              '" "
                              _method112063_))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              _vtab112072_
                              _method112063_
                              _sym112064_)))
                         (let ((__tmp113775
                                (let ((__tmp113776
                                       (let ((__tmp113777
                                              (let ((__tmp113778
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym112064_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method112063_
                                                      __tmp113778))))
                                         (declare (not safe))
                                         (cons _type-t112062_ __tmp113777))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp113776))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp113775
                            _method112063_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t112062_
                          '" "
                          _method112063_
                          '" => "
                          _sym112064_))
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _vtab112072_
                          _method112063_
                          _sym112064_)))))
               _$e112069_)
              (if (let () (declare (not safe)) (not _type112067_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t112062_))
                  (let ((__tmp113771
                         (let ((__tmp113772
                                (let ((__tmp113773
                                       (let ((__tmp113774
                                              (let ()
                                                (declare (not safe))
                                                (cons _method112063_ '()))))
                                         (declare (not safe))
                                         (cons _sym112064_ __tmp113774))))
                                  (declare (not safe))
                                  (cons _type-t112062_ __tmp113773))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp113772))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp113771
                     _type112067_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t112077_ _method112078_ _sym112079_)
        (let ((_rebind?112081_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t112077_
           _method112078_
           _sym112079_
           _rebind?112081_))))
    (define gxc#optimizer-declare-method!
      (lambda _g113780_
        (let ((_g113779_ (let () (declare (not safe)) (##length _g113780_))))
          (cond ((let () (declare (not safe)) (##fx= _g113779_ 3))
                 (apply (lambda (_type-t112077_ _method112078_ _sym112079_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t112077_
                             _method112078_
                             _sym112079_)))
                        _g113780_))
                ((let () (declare (not safe)) (##fx= _g113779_ 4))
                 (apply (lambda (_type-t112083_
                                 _method112084_
                                 _sym112085_
                                 _rebind?112086_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t112083_
                             _method112084_
                             _sym112085_
                             _rebind?112086_)))
                        _g113780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g113780_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym112050_)
        (let ((_$e112058_
               (let ((_ht112051112053_ (gxc#current-compile-local-type)))
                 (if _ht112051112053_
                     (let ((_ht112056_ _ht112051112053_))
                       (declare (not safe))
                       (hash-get _ht112056_ _sym112050_))
                     '#f))))
          (if _$e112058_
              _$e112058_
              (let ((__tmp113781
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp113781 _sym112050_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym112042_)
        (let ((_type112043112045_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym112042_))))
          (if _type112043112045_
              (let ((_type112048_ _type112043112045_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type112048_ 'gxc#!alias::t))
                    (let ((__tmp113782
                           (##structure-ref _type112048_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp113782))
                    _type112048_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where112034_ _klass-id112035_)
        (let ((_$e112037_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id112035_))))
          (if _$e112037_
              ((lambda (_klass112040_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass112040_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where112034_
                        _klass-id112035_
                        _klass112040_)))
                 _klass112040_)
               _$e112037_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where112034_
                 _klass-id112035_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t112031_ _method112032_)
        (let ((__tmp113783
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t112031_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp113783 _method112032_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym112029_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym112029_))
        (let ((__tmp113784
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp113784 _sym112029_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym112027_)
        (let ((__tmp113785
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp113785 _sym112027_))))
    (define gxc#identifier-symbol
      (lambda (_stx112025_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx112025_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx112025_))
            (let () (declare (not safe)) (gx#stx-e _stx112025_)))))))
