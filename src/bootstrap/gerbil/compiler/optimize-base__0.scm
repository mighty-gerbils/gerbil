(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710106262)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp114746 (list))
            (__tmp114744
             (let ((__tmp114745
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114745 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp114746
         '(type ssxi methods)
         __tmp114744
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args114680_
        (apply make-instance gxc#optimizer-info::t _$args114680_)))
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
      (lambda (_self114678_)
        (if (let ((__tmp114754
                   (let ()
                     (declare (not safe))
                     (##structure-length _self114678_))))
              (declare (not safe))
              (##fx< '3 __tmp114754))
            (begin
              (let ((__tmp114749
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114748
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114678_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114678_
                 __tmp114749
                 '1
                 __tmp114748
                 '#f))
              (let ((__tmp114751
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114750
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114678_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114678_
                 __tmp114751
                 '2
                 __tmp114750
                 '#f))
              (let ((__tmp114753
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114752
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114678_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114678_
                 __tmp114753
                 '3
                 __tmp114752
                 '#f)))
            (let ((__tmp114747
                   (let ()
                     (declare (not safe))
                     (##vector-length _self114678_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self114678_
                     '3
                     __tmp114747)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp114757 (list))
            (__tmp114755
             (let ((__tmp114756
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114756 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp114757
         '(id)
         __tmp114755
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args114553_ (apply make-instance gxc#!type::t _$args114553_)))
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
      (let ((__tmp114760 (list gxc#!type::t))
            (__tmp114758
             (let ((__tmp114759
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114759 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp114760
         '()
         __tmp114758
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args114550_ (apply make-instance gxc#!alias::t _$args114550_)))
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
      (let ((__tmp114763 (list gxc#!type::t))
            (__tmp114761
             (let ((__tmp114762
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114762 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp114763
         '()
         __tmp114761
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args114547_
        (apply make-instance gxc#!procedure::t _$args114547_)))
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
      (let ((__tmp114766 (list gxc#!type::t))
            (__tmp114764
             (let ((__tmp114765
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114765 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp114766
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp114764
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args114544_ (apply make-instance gxc#!class::t _$args114544_)))
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
      (let ((__tmp114769 (list gxc#!procedure::t))
            (__tmp114767
             (let ((__tmp114768
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114768 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp114769
         '()
         __tmp114767
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args114541_
        (apply make-instance gxc#!predicate::t _$args114541_)))
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
      (let ((__tmp114772 (list gxc#!procedure::t))
            (__tmp114770
             (let ((__tmp114771
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114771 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp114772
         '()
         __tmp114770
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args114538_
        (apply make-instance gxc#!constructor::t _$args114538_)))
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
      (let ((__tmp114775 (list gxc#!procedure::t))
            (__tmp114773
             (let ((__tmp114774
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114774 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp114775
         '(slot checked?)
         __tmp114773
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args114535_
        (apply make-instance gxc#!accessor::t _$args114535_)))
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
      (let ((__tmp114778 (list gxc#!procedure::t))
            (__tmp114776
             (let ((__tmp114777
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114777 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp114778
         '(slot checked?)
         __tmp114776
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args114532_
        (apply make-instance gxc#!mutator::t _$args114532_)))
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
      (let ((__tmp114781 (list gxc#!procedure::t))
            (__tmp114779
             (let ((__tmp114780
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114780 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp114781
         '(arity dispatch inline inline-typedecl)
         __tmp114779
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args114529_
        (apply make-instance gxc#!lambda::t _$args114529_)))
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
      (let ((__tmp114784 (list gxc#!procedure::t))
            (__tmp114782
             (let ((__tmp114783
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114783 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp114784
         '(clauses)
         __tmp114782
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args114526_
        (apply make-instance gxc#!case-lambda::t _$args114526_)))
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
      (let ((__tmp114787 (list gxc#!procedure::t))
            (__tmp114785
             (let ((__tmp114786
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114786 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp114787
         '(table dispatch)
         __tmp114785
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args114523_
        (apply make-instance gxc#!kw-lambda::t _$args114523_)))
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
      (let ((__tmp114790 (list gxc#!procedure::t))
            (__tmp114788
             (let ((__tmp114789
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114789 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp114790
         '(keys main)
         __tmp114788
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args114520_
        (apply make-instance gxc#!kw-lambda-primary::t _$args114520_)))
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
      (let ((__tmp114791 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp114791
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args114517_
        (apply make-instance gxc#!primitive::t _$args114517_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp114792 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp114792
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args114514_
        (apply make-instance gxc#!primitive-lambda::t _$args114514_)))
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
      (let ((__tmp114793 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp114793
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args114511_
        (apply make-instance gxc#!primitive-case-lambda::t _$args114511_)))
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
      (lambda (_self114393_
               _id114394_
               _super114395_
               _slots114396_
               _ctor-method114397_
               _struct?114398_
               _final?114399_
               _metaclass114400_)
        (let _lp114402_ ((_rest114404_ _super114395_))
          (let* ((_rest114405114413_ _rest114404_)
                 (_else114407114421_ (lambda () '#!void))
                 (_K114409114427_
                  (lambda (_rest114424_ _super-id114425_)
                    (if (##structure-ref
                         (let ((__tmp114796
                                (let ((__tmp114797
                                       (let ()
                                         (declare (not safe))
                                         (cons _id114394_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp114797))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp114796
                            _super-id114425_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp114794
                               (let ((__tmp114795
                                      (let ()
                                        (declare (not safe))
                                        (cons _id114394_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114795))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp114794
                           _super-id114425_))
                        '#!void)
                    (let () (declare (not safe)) (_lp114402_ _rest114424_)))))
            (if (let () (declare (not safe)) (##pair? _rest114405114413_))
                (let ((_hd114410114430_
                       (let ()
                         (declare (not safe))
                         (##car _rest114405114413_)))
                      (_tl114411114432_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest114405114413_))))
                  (let* ((_super-id114435_ _hd114410114430_)
                         (_rest114437_ _tl114411114432_))
                    (declare (not safe))
                    (_K114409114427_ _rest114437_ _super-id114435_)))
                '#!void)))
        (let* ((_ctor-method114487_
                (let ((_$e114439_ _ctor-method114397_))
                  (if _$e114439_
                      _$e114439_
                      (let _lp114442_ ((_rest114444_ _super114395_)
                                       (_method114445_ '#f))
                        (let* ((_rest114446114454_ _rest114444_)
                               (_else114448114462_ (lambda () _method114445_))
                               (_K114450114475_
                                (lambda (_rest114465_ _super-id114466_)
                                  (let* ((_klass114468_
                                          (let ((__tmp114798
                                                 (let ((__tmp114799
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id114394_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp114799))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp114798
                                             _super-id114466_)))
                                         (_$e114470_
                                          (##structure-ref
                                           _klass114468_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e114470_
                                        ((lambda (_ctor-method114473_)
                                           (if _method114445_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method114473_
                                                          _method114445_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp114442_
                                                      _rest114465_
                                                      _ctor-method114473_))
                                                   (let ((__tmp114800
                                                          (let ((__tmp114801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id114394_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp114801))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp114800
                                                      _method114445_
                                                      _ctor-method114473_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp114442_
                                                  _rest114465_
                                                  _ctor-method114473_))))
                                         _$e114470_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp114442_
                                           _rest114465_
                                           _method114445_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest114446114454_))
                              (let ((_hd114451114478_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest114446114454_)))
                                    (_tl114452114480_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest114446114454_))))
                                (let* ((_super-id114483_ _hd114451114478_)
                                       (_rest114485_ _tl114452114480_))
                                  (declare (not safe))
                                  (_K114450114475_
                                   _rest114485_
                                   _super-id114483_)))
                              (let ()
                                (declare (not safe))
                                (_else114448114462_))))))))
               (_g114802_
                (let ((__tmp114807
                       (lambda (_klass-id114489_)
                         (let ((__tmp114808
                                (##structure-ref
                                 (let ((__tmp114809
                                        (let ((__tmp114810
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id114394_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114810))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp114809
                                    _klass-id114489_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id114489_ __tmp114808))))
                      (__tmp114804
                       (lambda (_klass-id114491_)
                         (##structure-ref
                          (let ((__tmp114805
                                 (let ((__tmp114806
                                        (let ()
                                          (declare (not safe))
                                          (cons _id114394_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp114806))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp114805
                             _klass-id114491_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super114395_
                   'get-precedence-list:
                   __tmp114807
                   'struct:
                   __tmp114804
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g114803_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g114802_)
                         (##vector-length _g114802_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g114803_ 2)))
                  (error "Context expects 2 values" _g114803_)))
            (let ((_precedence-list114493_
                   (let () (declare (not safe)) (##vector-ref _g114802_ 0)))
                  (_base-struct114494_
                   (let () (declare (not safe)) (##vector-ref _g114802_ 1))))
              (let ((_fields114496_
                     (let ((__tmp114811
                            (let ((__tmp114812
                                   (let ()
                                     (declare (not safe))
                                     (cons _id114394_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp114812))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp114811
                        _base-struct114494_
                        _precedence-list114493_
                        _slots114396_))))
                (##structure-set! _self114393_ _id114394_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self114393_
                 _super114395_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114393_
                 _precedence-list114493_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114393_
                 _slots114396_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114393_
                 _fields114496_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114393_
                 _ctor-method114487_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114393_
                 _struct?114398_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114393_
                 _final?114399_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114393_
                 _metaclass114400_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self114499_
               _id114500_
               _super114501_
               _precedence-list114502_
               _slots114503_
               _fields114504_
               _constructor114505_
               _struct?114506_
               _final?114507_
               _metaclass114508_
               _methods114509_)
        (##structure-set! _self114499_ _id114500_ '1 gxc#!type::t '#f)
        (##structure-set! _self114499_ _super114501_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self114499_
         _precedence-list114502_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self114499_ _slots114503_ '4 gxc#!class::t '#f)
        (##structure-set! _self114499_ _fields114504_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self114499_
         _constructor114505_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self114499_ _struct?114506_ '7 gxc#!class::t '#f)
        (##structure-set! _self114499_ _final?114507_ '8 gxc#!class::t '#f)
        (##structure-set! _self114499_ _metaclass114508_ '9 gxc#!class::t '#f)
        (if _methods114509_
            (##structure-set!
             _self114499_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods114509_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g114814_
        (let ((_g114813_ (let () (declare (not safe)) (##length _g114814_))))
          (cond ((let () (declare (not safe)) (##fx= _g114813_ 8))
                 (apply (lambda (_self114393_
                                 _id114394_
                                 _super114395_
                                 _slots114396_
                                 _ctor-method114397_
                                 _struct?114398_
                                 _final?114399_
                                 _metaclass114400_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self114393_
                             _id114394_
                             _super114395_
                             _slots114396_
                             _ctor-method114397_
                             _struct?114398_
                             _final?114399_
                             _metaclass114400_)))
                        _g114814_))
                ((let () (declare (not safe)) (##fx= _g114813_ 11))
                 (apply (lambda (_self114499_
                                 _id114500_
                                 _super114501_
                                 _precedence-list114502_
                                 _slots114503_
                                 _fields114504_
                                 _constructor114505_
                                 _struct?114506_
                                 _final?114507_
                                 _metaclass114508_
                                 _methods114509_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self114499_
                             _id114500_
                             _super114501_
                             _precedence-list114502_
                             _slots114503_
                             _fields114504_
                             _constructor114505_
                             _struct?114506_
                             _final?114507_
                             _metaclass114508_
                             _methods114509_)))
                        _g114814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g114814_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass114682 __method-table114683)
        (let ((__struct?114684
               (let ((__slot114694
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114682 'struct?))))
                 (if __slot114694
                     __slot114694
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__fields114685
               (let ((__slot114695
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114682 'fields))))
                 (if __slot114695
                     __slot114695
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__precedence-list114686
               (let ((__slot114696
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114682 'precedence-list))))
                 (if __slot114696
                     __slot114696
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__slots114687
               (let ((__slot114697
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114682 'slots))))
                 (if __slot114697
                     __slot114697
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__methods114688
               (let ((__slot114698
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114682 'methods))))
                 (if __slot114698
                     __slot114698
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__id114689
               (let ((__slot114699
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114682 'id))))
                 (if __slot114699
                     __slot114699
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super114690
               (let ((__slot114700
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114682 'super))))
                 (if __slot114700
                     __slot114700
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__constructor114691
               (let ((__slot114701
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114682 'constructor))))
                 (if __slot114701
                     __slot114701
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__final?114692
               (let ((__slot114702
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114682 'final?))))
                 (if __slot114702
                     __slot114702
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__metaclass114693
               (let ((__slot114703
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114682 'metaclass))))
                 (if __slot114703
                     __slot114703
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass))))))
          (lambda _g114816_
            (let ((_g114815_
                   (let () (declare (not safe)) (##length _g114816_))))
              (cond ((let () (declare (not safe)) (##fx= _g114815_ 8))
                     (apply (lambda (_self114393_
                                     _id114394_
                                     _super114395_
                                     _slots114396_
                                     _ctor-method114397_
                                     _struct?114398_
                                     _final?114399_
                                     _metaclass114400_)
                              (let _lp114402_ ((_rest114404_ _super114395_))
                                (let* ((_rest114405114413_ _rest114404_)
                                       (_else114407114421_ (lambda () '#!void))
                                       (_K114409114427_
                                        (lambda (_rest114424_ _super-id114425_)
                                          (if (##structure-ref
                                               (let ((__tmp114819
                                                      (let ((__tmp114820
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id114394_ '()))))
                (declare (not safe))
                (cons '!class __tmp114820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp114819
                                                  _super-id114425_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp114817
                                                     (let ((__tmp114818
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id114394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp114818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp114817
                                                 _super-id114425_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp114402_ _rest114424_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest114405114413_))
                                      (let ((_hd114410114430_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest114405114413_)))
                                            (_tl114411114432_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest114405114413_))))
                                        (let* ((_super-id114435_
                                                _hd114410114430_)
                                               (_rest114437_ _tl114411114432_))
                                          (declare (not safe))
                                          (_K114409114427_
                                           _rest114437_
                                           _super-id114435_)))
                                      '#!void)))
                              (let* ((_ctor-method114487_
                                      (let ((_$e114439_ _ctor-method114397_))
                                        (if _$e114439_
                                            _$e114439_
                                            (let _lp114442_ ((_rest114444_
                                                              _super114395_)
                                                             (_method114445_
                                                              '#f))
                                              (let* ((_rest114446114454_
                                                      _rest114444_)
                                                     (_else114448114462_
                                                      (lambda ()
                                                        _method114445_))
                                                     (_K114450114475_
                                                      (lambda (_rest114465_
                                                               _super-id114466_)
                                                        (let* ((_klass114468_
                                                                (let ((__tmp114821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114822
                                      (let ()
                                        (declare (not safe))
                                        (cons _id114394_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114822))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp114821
                           _super-id114466_)))
                       (_$e114470_
                        (##structure-ref _klass114468_ '6 gxc#!class::t '#f)))
                  (if _$e114470_
                      ((lambda (_ctor-method114473_)
                         (if _method114445_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method114473_ _method114445_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp114442_
                                    _rest114465_
                                    _ctor-method114473_))
                                 (let ((__tmp114823
                                        (let ((__tmp114824
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id114394_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114824))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp114823
                                    _method114445_
                                    _ctor-method114473_)))
                             (let ()
                               (declare (not safe))
                               (_lp114442_ _rest114465_ _ctor-method114473_))))
                       _$e114470_)
                      (let ()
                        (declare (not safe))
                        (_lp114442_ _rest114465_ _method114445_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest114446114454_))
                                                    (let ((_hd114451114478_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest114446114454_)))
                                                          (_tl114452114480_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest114446114454_))))
                                                      (let* ((_super-id114483_
                                                              _hd114451114478_)
                                                             (_rest114485_
                                                              _tl114452114480_))
                                                        (declare (not safe))
                                                        (_K114450114475_
                                                         _rest114485_
                                                         _super-id114483_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else114448114462_))))))))
                                     (_g114825_
                                      (let ((__tmp114830
                                             (lambda (_klass-id114489_)
                                               (let ((__tmp114831
                                                      (##structure-ref
                                                       (let ((__tmp114832
                                                              (let ((__tmp114833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id114394_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp114833))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp114832 _klass-id114489_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id114489_
                                                       __tmp114831))))
                                            (__tmp114827
                                             (lambda (_klass-id114491_)
                                               (##structure-ref
                                                (let ((__tmp114828
                                                       (let ((__tmp114829
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id114394_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp114829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp114828
                                                   _klass-id114491_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super114395_
                                         'get-precedence-list:
                                         __tmp114830
                                         'struct:
                                         __tmp114827
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g114826_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g114825_)
                                               (##vector-length _g114825_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g114826_ 2)))
                                        (error "Context expects 2 values"
                                               _g114826_)))
                                  (let ((_precedence-list114493_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114825_ 0)))
                                        (_base-struct114494_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114825_ 1))))
                                    (let ((_fields114496_
                                           (let ((__tmp114834
                                                  (let ((__tmp114835
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id114394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp114835))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp114834
                                              _base-struct114494_
                                              _precedence-list114493_
                                              _slots114396_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114393_
                                         _id114394_
                                         __id114689
                                         __klass114682
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114393_
                                         _super114395_
                                         __super114690
                                         __klass114682
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114393_
                                         _precedence-list114493_
                                         __precedence-list114686
                                         __klass114682
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114393_
                                         _slots114396_
                                         __slots114687
                                         __klass114682
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114393_
                                         _fields114496_
                                         __fields114685
                                         __klass114682
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114393_
                                         _ctor-method114487_
                                         __constructor114691
                                         __klass114682
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114393_
                                         _struct?114398_
                                         __struct?114684
                                         __klass114682
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114393_
                                         _final?114399_
                                         __final?114692
                                         __klass114682
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114393_
                                         _metaclass114400_
                                         __metaclass114693
                                         __klass114682
                                         '#f)))))))
                            _g114816_))
                    ((let () (declare (not safe)) (##fx= _g114815_ 11))
                     (apply (lambda (_self114499_
                                     _id114500_
                                     _super114501_
                                     _precedence-list114502_
                                     _slots114503_
                                     _fields114504_
                                     _constructor114505_
                                     _struct?114506_
                                     _final?114507_
                                     _metaclass114508_
                                     _methods114509_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114499_
                                 _id114500_
                                 __id114689
                                 __klass114682
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114499_
                                 _super114501_
                                 __super114690
                                 __klass114682
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114499_
                                 _precedence-list114502_
                                 __precedence-list114686
                                 __klass114682
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114499_
                                 _slots114503_
                                 __slots114687
                                 __klass114682
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114499_
                                 _fields114504_
                                 __fields114685
                                 __klass114682
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114499_
                                 _constructor114505_
                                 __constructor114691
                                 __klass114682
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114499_
                                 _struct?114506_
                                 __struct?114684
                                 __klass114682
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114499_
                                 _final?114507_
                                 __final?114692
                                 __klass114682
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114499_
                                 _metaclass114508_
                                 __metaclass114693
                                 __klass114682
                                 '#f))
                              (if _methods114509_
                                  (let ((__tmp114836
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods114509_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self114499_
                                     __tmp114836
                                     __methods114688
                                     __klass114682
                                     '#f))
                                  '#!void))
                            _g114816_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g114816_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where114245_
               _base-struct114246_
               _precedence-list114247_
               _direct-slots114248_)
        (let* ((_base-fields114250_
                (if _base-struct114246_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where114245_
                        _base-struct114246_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields114252_ (reverse _base-fields114250_))
               (_seen-slots114260_
                (let ((_tab114254_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g114255114257_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab114254_ _g114255114257_ '#t)))
                   _base-fields114250_)
                  _tab114254_))
               (_process-slot114264_
                (lambda (_slot114262_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots114260_ _slot114262_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots114260_ _slot114262_ '#t))
                        (set! _r-fields114252_
                              (let ()
                                (declare (not safe))
                                (cons _slot114262_ _r-fields114252_))))))))
          (for-each
           (lambda (_mixin114267_)
             (let ((_klass114269_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where114245_
                       _mixin114267_))))
               (if (##structure-ref _klass114269_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot114264_
                    (##structure-ref _klass114269_ '5 gxc#!class::t '#f)))))
           _precedence-list114247_)
          (for-each _process-slot114264_ _direct-slots114248_)
          (reverse _r-fields114252_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass114204_ _slot114205_)
        (let _lp114207_ ((_rest114209_
                          (##structure-ref _klass114204_ '5 gxc#!class::t '#f))
                         (_offset114210_ '1))
          (let* ((_rest114211114219_ _rest114209_)
                 (_else114213114227_
                  (lambda ()
                    (let ((__tmp114838
                           (##structure-ref _klass114204_ '1 gxc#!type::t '#f))
                          (__tmp114837
                           (##structure-ref
                            _klass114204_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp114838
                       __tmp114837
                       _slot114205_))))
                 (_K114215114233_
                  (lambda (_rest114230_ _s114231_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s114231_ _slot114205_))
                        _offset114210_
                        (let ((__tmp114839
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset114210_ '1))))
                          (declare (not safe))
                          (_lp114207_ _rest114230_ __tmp114839))))))
            (if (let () (declare (not safe)) (##pair? _rest114211114219_))
                (let ((_hd114216114236_
                       (let ()
                         (declare (not safe))
                         (##car _rest114211114219_)))
                      (_tl114217114238_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest114211114219_))))
                  (let* ((_s114241_ _hd114216114236_)
                         (_rest114243_ _tl114217114238_))
                    (declare (not safe))
                    (_K114215114233_ _rest114243_ _s114241_)))
                (let () (declare (not safe)) (_else114213114227_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass114162_ _slot114163_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass114162_ _slot114163_))
            _klass114162_
            (let _lp114165_ ((_rest114167_
                              (##structure-ref
                               _klass114162_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest114168114176_ _rest114167_)
                     (_else114170114184_ (lambda () '#f))
                     (_K114172114192_
                      (lambda (_rest114187_ _super114188_)
                        (let ((_super-class114190_
                               (let ((__tmp114840
                                      (let ((__tmp114841
                                             (let ((__tmp114843
                                                    (##structure-ref
                                                     _klass114162_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp114842
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot114163_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp114843
                                                     __tmp114842))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp114841))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp114840
                                  _super114188_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class114190_
                                 _slot114163_))
                              _super-class114190_
                              (let ()
                                (declare (not safe))
                                (_lp114165_ _rest114187_)))))))
                (if (let () (declare (not safe)) (##pair? _rest114168114176_))
                    (let ((_hd114173114195_
                           (let ()
                             (declare (not safe))
                             (##car _rest114168114176_)))
                          (_tl114174114197_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest114168114176_))))
                      (let* ((_super114200_ _hd114173114195_)
                             (_rest114202_ _tl114174114197_))
                        (declare (not safe))
                        (_K114172114192_ _rest114202_ _super114200_)))
                    (let () (declare (not safe)) (_else114170114184_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass114159_ _slot114160_)
        (if (##structure-ref _klass114159_ '7 gxc#!class::t '#f)
            (memq _slot114160_
                  (##structure-ref _klass114159_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self114156_ _id114157_)
        (##structure-set! _self114156_ _id114157_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass114704 __method-table114705)
        (let ((__id114706
               (let ((__slot114707
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114704 'id))))
                 (if __slot114707
                     __slot114707
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self114156_ _id114157_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114156_
               _id114157_
               __id114706
               __klass114704
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
      (lambda (_self114031_ _id114032_)
        (##structure-set! _self114031_ _id114032_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass114708 __method-table114709)
        (let ((__id114710
               (let ((__slot114711
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114708 'id))))
                 (if __slot114711
                     __slot114711
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self114031_ _id114032_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self114031_
               _id114032_
               __id114710
               __klass114708
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
      (lambda (_self113904_ _id113905_ _slot113906_ _checked?113907_)
        (##structure-set! _self113904_ _id113905_ '1 gxc#!type::t '#f)
        (##structure-set! _self113904_ _slot113906_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self113904_
         _checked?113907_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass114712 __method-table114713)
        (let ((__slot114714
               (let ((__slot114717
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114712 'slot))))
                 (if __slot114717
                     __slot114717
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id114715
               (let ((__slot114718
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114712 'id))))
                 (if __slot114718
                     __slot114718
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?114716
               (let ((__slot114719
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114712 'checked?))))
                 (if __slot114719
                     __slot114719
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self113904_ _id113905_ _slot113906_ _checked?113907_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113904_
               _id113905_
               __id114715
               __klass114712
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113904_
               _slot113906_
               __slot114714
               __klass114712
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113904_
               _checked?113907_
               __checked?114716
               __klass114712
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
      (lambda (_self113777_ _id113778_ _slot113779_ _checked?113780_)
        (##structure-set! _self113777_ _id113778_ '1 gxc#!type::t '#f)
        (##structure-set! _self113777_ _slot113779_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self113777_
         _checked?113780_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass114720 __method-table114721)
        (let ((__slot114722
               (let ((__slot114725
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114720 'slot))))
                 (if __slot114725
                     __slot114725
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id114723
               (let ((__slot114726
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114720 'id))))
                 (if __slot114726
                     __slot114726
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?114724
               (let ((__slot114727
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114720 'checked?))))
                 (if __slot114727
                     __slot114727
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self113777_ _id113778_ _slot113779_ _checked?113780_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113777_
               _id113778_
               __id114723
               __klass114720
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113777_
               _slot113779_
               __slot114722
               __klass114720
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113777_
               _checked?113780_
               __checked?114724
               __klass114720
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
      (lambda (_self113621_
               _id113622_
               _arity113623_
               _dispatch113624_
               _inline113625_
               _typedecl113626_)
        (if (let ((__tmp114850
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113621_))))
              (declare (not safe))
              (##fx< '5 __tmp114850))
            (begin
              (let ((__tmp114845
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113621_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113621_
                 _id113622_
                 '1
                 __tmp114845
                 '#f))
              (let ((__tmp114846
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113621_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113621_
                 _arity113623_
                 '2
                 __tmp114846
                 '#f))
              (let ((__tmp114847
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113621_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113621_
                 _dispatch113624_
                 '3
                 __tmp114847
                 '#f))
              (let ((__tmp114848
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113621_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113621_
                 _inline113625_
                 '4
                 __tmp114848
                 '#f))
              (let ((__tmp114849
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113621_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113621_
                 _typedecl113626_
                 '5
                 __tmp114849
                 '#f)))
            (let ((__tmp114844
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113621_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113621_
                     '5
                     __tmp114844)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self113631_ _id113632_ _arity113633_ _dispatch113634_)
        (let* ((_inline113636_ '#f) (_typedecl113638_ '#f))
          (if (let ((__tmp114857
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113631_))))
                (declare (not safe))
                (##fx< '5 __tmp114857))
              (begin
                (let ((__tmp114852
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113631_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113631_
                   _id113632_
                   '1
                   __tmp114852
                   '#f))
                (let ((__tmp114853
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113631_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113631_
                   _arity113633_
                   '2
                   __tmp114853
                   '#f))
                (let ((__tmp114854
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113631_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113631_
                   _dispatch113634_
                   '3
                   __tmp114854
                   '#f))
                (let ((__tmp114855
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113631_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113631_
                   _inline113636_
                   '4
                   __tmp114855
                   '#f))
                (let ((__tmp114856
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113631_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113631_
                   _typedecl113638_
                   '5
                   __tmp114856
                   '#f)))
              (let ((__tmp114851
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113631_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113631_
                       '5
                       __tmp114851))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self113640_
               _id113641_
               _arity113642_
               _dispatch113643_
               _inline113644_)
        (let ((_typedecl113646_ '#f))
          (if (let ((__tmp114864
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113640_))))
                (declare (not safe))
                (##fx< '5 __tmp114864))
              (begin
                (let ((__tmp114859
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113640_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113640_
                   _id113641_
                   '1
                   __tmp114859
                   '#f))
                (let ((__tmp114860
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113640_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113640_
                   _arity113642_
                   '2
                   __tmp114860
                   '#f))
                (let ((__tmp114861
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113640_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113640_
                   _dispatch113643_
                   '3
                   __tmp114861
                   '#f))
                (let ((__tmp114862
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113640_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113640_
                   _inline113644_
                   '4
                   __tmp114862
                   '#f))
                (let ((__tmp114863
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113640_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113640_
                   _typedecl113646_
                   '5
                   __tmp114863
                   '#f)))
              (let ((__tmp114858
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113640_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113640_
                       '5
                       __tmp114858))))))
    (define gxc#!lambda:::init!
      (lambda _g114866_
        (let ((_g114865_ (let () (declare (not safe)) (##length _g114866_))))
          (cond ((let () (declare (not safe)) (##fx= _g114865_ 4))
                 (apply (lambda (_self113631_
                                 _id113632_
                                 _arity113633_
                                 _dispatch113634_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self113631_
                             _id113632_
                             _arity113633_
                             _dispatch113634_)))
                        _g114866_))
                ((let () (declare (not safe)) (##fx= _g114865_ 5))
                 (apply (lambda (_self113640_
                                 _id113641_
                                 _arity113642_
                                 _dispatch113643_
                                 _inline113644_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self113640_
                             _id113641_
                             _arity113642_
                             _dispatch113643_
                             _inline113644_)))
                        _g114866_))
                ((let () (declare (not safe)) (##fx= _g114865_ 6))
                 (apply (lambda (_self113648_
                                 _id113649_
                                 _arity113650_
                                 _dispatch113651_
                                 _inline113652_
                                 _typedecl113653_)
                          (if (let ((__tmp114873
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self113648_))))
                                (declare (not safe))
                                (##fx< '5 __tmp114873))
                              (begin
                                (let ((__tmp114868
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113648_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113648_
                                   _id113649_
                                   '1
                                   __tmp114868
                                   '#f))
                                (let ((__tmp114869
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113648_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113648_
                                   _arity113650_
                                   '2
                                   __tmp114869
                                   '#f))
                                (let ((__tmp114870
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113648_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113648_
                                   _dispatch113651_
                                   '3
                                   __tmp114870
                                   '#f))
                                (let ((__tmp114871
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113648_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113648_
                                   _inline113652_
                                   '4
                                   __tmp114871
                                   '#f))
                                (let ((__tmp114872
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113648_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113648_
                                   _typedecl113653_
                                   '5
                                   __tmp114872
                                   '#f)))
                              (let ((__tmp114867
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self113648_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self113648_
                                       '5
                                       __tmp114867))))
                        _g114866_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g114866_))))))
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
      (lambda (_self113373_ . _args113374_)
        (apply struct-instance-init! _self113373_ _args113374_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type113248_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113248_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type113248_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass113241_)
        (let ((_$e113243_
               (##structure-ref _klass113241_ '10 gxc#!class::t '#f)))
          (if _$e113243_
              _$e113243_
              (let ((_tab113246_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass113241_
                 _tab113246_
                 '10
                 gxc#!class::t
                 '#f)
                _tab113246_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass113232_ _method113233_)
        (let ((_tab113234113236_
               (##structure-ref _klass113232_ '10 gxc#!class::t '#f)))
          (if _tab113234113236_
              (let ((_tab113239_ _tab113234113236_))
                (declare (not safe))
                (hash-get _tab113239_ _method113233_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type113229_ _method113230_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113229_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type113229_ _method113230_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym113213_ _type113214_ _local?113215_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113214_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym113213_
                     _type113214_)))
        (let ((__tmp114874
               (let () (declare (not safe)) (struct->list _type113214_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym113213_ '" " __tmp114874))
        (let ((__tmp114875
               (if _local?113215_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp114875 _sym113213_ _type113214_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym113220_ _type113221_)
        (let ((_local?113223_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym113220_
           _type113221_
           _local?113223_))))
    (define gxc#optimizer-declare-type!
      (lambda _g114877_
        (let ((_g114876_ (let () (declare (not safe)) (##length _g114877_))))
          (cond ((let () (declare (not safe)) (##fx= _g114876_ 2))
                 (apply (lambda (_sym113220_ _type113221_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym113220_
                             _type113221_)))
                        _g114877_))
                ((let () (declare (not safe)) (##fx= _g114876_ 3))
                 (apply (lambda (_sym113225_ _type113226_ _local?113227_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym113225_
                             _type113226_
                             _local?113227_)))
                        _g114877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g114877_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym113199_ _local?113200_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym113199_))
        (let ((__tmp114878
               (if _local?113200_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp114878 _sym113199_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym113205_)
        (let ((_local?113207_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym113205_ _local?113207_))))
    (define gxc#optimizer-clear-type!
      (lambda _g114880_
        (let ((_g114879_ (let () (declare (not safe)) (##length _g114880_))))
          (cond ((let () (declare (not safe)) (##fx= _g114879_ 1))
                 (apply (lambda (_sym113205_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym113205_)))
                        _g114880_))
                ((let () (declare (not safe)) (##fx= _g114879_ 2))
                 (apply (lambda (_sym113209_ _local?113210_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym113209_
                             _local?113210_)))
                        _g114880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g114880_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t113167_ _method113168_ _sym113169_ _rebind?113170_)
        (let* ((_type113172_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t113167_)))
               (_$e113174_
                (let () (declare (not safe)) (gxc#!type-vtab _type113172_))))
          (if _$e113174_
              ((lambda (_vtab113177_)
                 (let ((_$e113179_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab113177_ _method113168_))))
                   (if _$e113179_
                       ((lambda (_existing113182_)
                          (if _rebind?113170_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t113167_
                                   '" "
                                   _method113168_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab113177_
                                   _method113168_
                                   _sym113169_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing113182_ _sym113169_))
                                  '#!void
                                  (let ((__tmp114885
                                         (let ((__tmp114886
                                                (let ((__tmp114887
                                                       (let ((__tmp114888
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym113169_ '()))))
                 (declare (not safe))
                 (cons _method113168_ __tmp114888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t113167_
                                                        __tmp114887))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp114886))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp114885
                                     _method113168_)))))
                        _$e113179_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t113167_
                            '" "
                            _method113168_
                            '" => "
                            _sym113169_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab113177_
                            _method113168_
                            _sym113169_))))))
               _$e113174_)
              (if (let () (declare (not safe)) (not _type113172_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t113167_))
                  (let ((__tmp114881
                         (let ((__tmp114882
                                (let ((__tmp114883
                                       (let ((__tmp114884
                                              (let ()
                                                (declare (not safe))
                                                (cons _method113168_ '()))))
                                         (declare (not safe))
                                         (cons _sym113169_ __tmp114884))))
                                  (declare (not safe))
                                  (cons _type-t113167_ __tmp114883))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp114882))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp114881
                     _type113172_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t113187_ _method113188_ _sym113189_)
        (let ((_rebind?113191_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t113187_
           _method113188_
           _sym113189_
           _rebind?113191_))))
    (define gxc#optimizer-declare-method!
      (lambda _g114890_
        (let ((_g114889_ (let () (declare (not safe)) (##length _g114890_))))
          (cond ((let () (declare (not safe)) (##fx= _g114889_ 3))
                 (apply (lambda (_type-t113187_ _method113188_ _sym113189_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t113187_
                             _method113188_
                             _sym113189_)))
                        _g114890_))
                ((let () (declare (not safe)) (##fx= _g114889_ 4))
                 (apply (lambda (_type-t113193_
                                 _method113194_
                                 _sym113195_
                                 _rebind?113196_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t113193_
                             _method113194_
                             _sym113195_
                             _rebind?113196_)))
                        _g114890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g114890_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym113155_)
        (let ((_$e113163_
               (let ((_ht113156113158_ (gxc#current-compile-local-type)))
                 (if _ht113156113158_
                     (let ((_ht113161_ _ht113156113158_))
                       (declare (not safe))
                       (hash-get _ht113161_ _sym113155_))
                     '#f))))
          (if _$e113163_
              _$e113163_
              (let ((__tmp114891
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp114891 _sym113155_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym113147_)
        (let ((_type113148113150_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym113147_))))
          (if _type113148113150_
              (let ((_type113153_ _type113148113150_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type113153_ 'gxc#!alias::t))
                    (let ((__tmp114892
                           (##structure-ref _type113153_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp114892))
                    _type113153_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where113139_ _klass-id113140_)
        (let ((_$e113142_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id113140_))))
          (if _$e113142_
              ((lambda (_klass113145_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass113145_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where113139_
                        _klass-id113140_
                        _klass113145_)))
                 _klass113145_)
               _$e113142_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where113139_
                 _klass-id113140_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t113136_ _method113137_)
        (let ((__tmp114893
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t113136_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp114893 _method113137_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym113134_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym113134_))
        (let ((__tmp114894
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp114894 _sym113134_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym113132_)
        (let ((__tmp114895
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp114895 _sym113132_))))
    (define gxc#identifier-symbol
      (lambda (_stx113130_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx113130_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx113130_))
            (let () (declare (not safe)) (gx#stx-e _stx113130_)))))))
