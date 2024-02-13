(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707831903)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp220764 (list))
            (__tmp220762
             (let ((__tmp220763
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220763 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp220764
         '(type ssxi methods)
         __tmp220762
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args216135_
        (apply make-instance gxc#optimizer-info::t _$args216135_)))
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
      (lambda (_self216133_)
        (if (let ((__tmp220765
                   (let ()
                     (declare (not safe))
                     (##structure-length _self216133_))))
              (declare (not safe))
              (##fx< '3 __tmp220765))
            (begin
              (let ((__tmp220767
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220766
                     (let ()
                       (declare (not safe))
                       (##structure-type _self216133_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self216133_
                 __tmp220767
                 '1
                 __tmp220766
                 '#f))
              (let ((__tmp220769
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220768
                     (let ()
                       (declare (not safe))
                       (##structure-type _self216133_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self216133_
                 __tmp220769
                 '2
                 __tmp220768
                 '#f))
              (let ((__tmp220771
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp220770
                     (let ()
                       (declare (not safe))
                       (##structure-type _self216133_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self216133_
                 __tmp220771
                 '3
                 __tmp220770
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self216133_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self216133_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp220774 (list))
            (__tmp220772
             (let ((__tmp220773
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220773 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp220774
         '(id)
         __tmp220772
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args216008_ (apply make-instance gxc#!type::t _$args216008_)))
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
      (let ((__tmp220777 (list gxc#!type::t))
            (__tmp220775
             (let ((__tmp220776
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220776 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp220777
         '()
         __tmp220775
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args216005_ (apply make-instance gxc#!alias::t _$args216005_)))
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
      (let ((__tmp220780 (list gxc#!type::t))
            (__tmp220778
             (let ((__tmp220779
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220779 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp220780
         '()
         __tmp220778
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args216002_
        (apply make-instance gxc#!procedure::t _$args216002_)))
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
      (let ((__tmp220783 (list gxc#!type::t))
            (__tmp220781
             (let ((__tmp220782
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220782 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp220783
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp220781
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args215999_ (apply make-instance gxc#!class::t _$args215999_)))
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
      (let ((__tmp220786 (list gxc#!procedure::t))
            (__tmp220784
             (let ((__tmp220785
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220785 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp220786
         '()
         __tmp220784
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args215996_
        (apply make-instance gxc#!predicate::t _$args215996_)))
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
      (let ((__tmp220789 (list gxc#!procedure::t))
            (__tmp220787
             (let ((__tmp220788
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220788 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp220789
         '()
         __tmp220787
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args215993_
        (apply make-instance gxc#!constructor::t _$args215993_)))
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
      (let ((__tmp220792 (list gxc#!procedure::t))
            (__tmp220790
             (let ((__tmp220791
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220791 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp220792
         '(slot checked?)
         __tmp220790
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args215990_
        (apply make-instance gxc#!accessor::t _$args215990_)))
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
      (let ((__tmp220795 (list gxc#!procedure::t))
            (__tmp220793
             (let ((__tmp220794
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220794 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp220795
         '(slot checked?)
         __tmp220793
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args215987_
        (apply make-instance gxc#!mutator::t _$args215987_)))
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
      (let ((__tmp220798 (list gxc#!procedure::t))
            (__tmp220796
             (let ((__tmp220797
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220797 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp220798
         '(arity dispatch inline inline-typedecl)
         __tmp220796
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args215984_
        (apply make-instance gxc#!lambda::t _$args215984_)))
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
      (let ((__tmp220801 (list gxc#!procedure::t))
            (__tmp220799
             (let ((__tmp220800
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220800 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp220801
         '(clauses)
         __tmp220799
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args215981_
        (apply make-instance gxc#!case-lambda::t _$args215981_)))
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
      (let ((__tmp220804 (list gxc#!procedure::t))
            (__tmp220802
             (let ((__tmp220803
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220803 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp220804
         '(table dispatch)
         __tmp220802
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args215978_
        (apply make-instance gxc#!kw-lambda::t _$args215978_)))
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
      (let ((__tmp220807 (list gxc#!procedure::t))
            (__tmp220805
             (let ((__tmp220806
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp220806 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp220807
         '(keys main)
         __tmp220805
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args215975_
        (apply make-instance gxc#!kw-lambda-primary::t _$args215975_)))
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
      (let ((__tmp220808 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp220808
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args215972_
        (apply make-instance gxc#!primitive::t _$args215972_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp220809 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp220809
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args215969_
        (apply make-instance gxc#!primitive-lambda::t _$args215969_)))
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
      (let ((__tmp220810 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp220810
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args215966_
        (apply make-instance gxc#!primitive-case-lambda::t _$args215966_)))
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
      (lambda (_self215848_
               _id215849_
               _super215850_
               _slots215851_
               _ctor-method215852_
               _struct?215853_
               _final?215854_
               _metaclass215855_)
        (let _lp215857_ ((_rest215859_ _super215850_))
          (let* ((_rest215860215868_ _rest215859_)
                 (_else215862215876_ (lambda () '#!void))
                 (_K215864215882_
                  (lambda (_rest215879_ _super-id215880_)
                    (if (##structure-ref
                         (let ((__tmp220811
                                (let ((__tmp220812
                                       (let ()
                                         (declare (not safe))
                                         (cons _id215849_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp220812))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp220811
                            _super-id215880_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp220813
                               (let ((__tmp220814
                                      (let ()
                                        (declare (not safe))
                                        (cons _id215849_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp220814))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp220813
                           _super-id215880_))
                        '#!void)
                    (let () (declare (not safe)) (_lp215857_ _rest215879_)))))
            (if (let () (declare (not safe)) (##pair? _rest215860215868_))
                (let ((_hd215865215885_
                       (let ()
                         (declare (not safe))
                         (##car _rest215860215868_)))
                      (_tl215866215887_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest215860215868_))))
                  (let* ((_super-id215890_ _hd215865215885_)
                         (_rest215892_ _tl215866215887_))
                    (declare (not safe))
                    (_K215864215882_ _rest215892_ _super-id215890_)))
                '#!void)))
        (let* ((_ctor-method215942_
                (let ((_$e215894_ _ctor-method215852_))
                  (if _$e215894_
                      _$e215894_
                      (let _lp215897_ ((_rest215899_ _super215850_)
                                       (_method215900_ '#f))
                        (let* ((_rest215901215909_ _rest215899_)
                               (_else215903215917_ (lambda () _method215900_))
                               (_K215905215930_
                                (lambda (_rest215920_ _super-id215921_)
                                  (let* ((_klass215923_
                                          (let ((__tmp220815
                                                 (let ((__tmp220816
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id215849_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp220816))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp220815
                                             _super-id215921_)))
                                         (_$e215925_
                                          (##structure-ref
                                           _klass215923_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e215925_
                                        ((lambda (_ctor-method215928_)
                                           (if _method215900_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method215928_
                                                          _method215900_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp215897_
                                                      _rest215920_
                                                      _ctor-method215928_))
                                                   (let ((__tmp220817
                                                          (let ((__tmp220818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id215849_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp220818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp220817
                                                      _method215900_
                                                      _ctor-method215928_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp215897_
                                                  _rest215920_
                                                  _ctor-method215928_))))
                                         _$e215925_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp215897_
                                           _rest215920_
                                           _method215900_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest215901215909_))
                              (let ((_hd215906215933_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest215901215909_)))
                                    (_tl215907215935_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest215901215909_))))
                                (let* ((_super-id215938_ _hd215906215933_)
                                       (_rest215940_ _tl215907215935_))
                                  (declare (not safe))
                                  (_K215905215930_
                                   _rest215940_
                                   _super-id215938_)))
                              (let ()
                                (declare (not safe))
                                (_else215903215917_))))))))
               (_g220819_
                (let ((__tmp220824
                       (lambda (_klass-id215944_)
                         (let ((__tmp220825
                                (##structure-ref
                                 (let ((__tmp220826
                                        (let ((__tmp220827
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id215849_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp220827))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp220826
                                    _klass-id215944_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id215944_ __tmp220825))))
                      (__tmp220821
                       (lambda (_klass-id215946_)
                         (##structure-ref
                          (let ((__tmp220822
                                 (let ((__tmp220823
                                        (let ()
                                          (declare (not safe))
                                          (cons _id215849_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp220823))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp220822
                             _klass-id215946_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp220824
                   __tmp220821
                   eq?
                   identity
                   '()
                   _super215850_))))
          (begin
            (let ((_g220820_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g220819_)
                         (##vector-length _g220819_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g220820_ 2)))
                  (error "Context expects 2 values" _g220820_)))
            (let ((_precedence-list215948_
                   (let () (declare (not safe)) (##vector-ref _g220819_ 0)))
                  (_base-struct215949_
                   (let () (declare (not safe)) (##vector-ref _g220819_ 1))))
              (let ((_fields215951_
                     (let ((__tmp220828
                            (let ((__tmp220829
                                   (let ()
                                     (declare (not safe))
                                     (cons _id215849_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp220829))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp220828
                        _base-struct215949_
                        _precedence-list215948_
                        _slots215851_))))
                (##structure-set! _self215848_ _id215849_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self215848_
                 _super215850_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215848_
                 _precedence-list215948_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215848_
                 _slots215851_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215848_
                 _fields215951_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215848_
                 _ctor-method215942_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215848_
                 _struct?215853_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215848_
                 _final?215854_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215848_
                 _metaclass215855_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self215954_
               _id215955_
               _super215956_
               _precedence-list215957_
               _slots215958_
               _fields215959_
               _constructor215960_
               _struct?215961_
               _final?215962_
               _metaclass215963_
               _methods215964_)
        (##structure-set! _self215954_ _id215955_ '1 gxc#!type::t '#f)
        (##structure-set! _self215954_ _super215956_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self215954_
         _precedence-list215957_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self215954_ _slots215958_ '4 gxc#!class::t '#f)
        (##structure-set! _self215954_ _fields215959_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self215954_
         _constructor215960_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self215954_ _struct?215961_ '7 gxc#!class::t '#f)
        (##structure-set! _self215954_ _final?215962_ '8 gxc#!class::t '#f)
        (##structure-set! _self215954_ _metaclass215963_ '9 gxc#!class::t '#f)
        (if _methods215964_
            (##structure-set!
             _self215954_
             (let ()
               (declare (not safe))
               (list->table _methods215964_ 'test: eq?))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g220831_
        (let ((_g220830_ (let () (declare (not safe)) (##length _g220831_))))
          (cond ((let () (declare (not safe)) (##fx= _g220830_ 8))
                 (apply (lambda (_self215848_
                                 _id215849_
                                 _super215850_
                                 _slots215851_
                                 _ctor-method215852_
                                 _struct?215853_
                                 _final?215854_
                                 _metaclass215855_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self215848_
                             _id215849_
                             _super215850_
                             _slots215851_
                             _ctor-method215852_
                             _struct?215853_
                             _final?215854_
                             _metaclass215855_)))
                        _g220831_))
                ((let () (declare (not safe)) (##fx= _g220830_ 11))
                 (apply (lambda (_self215954_
                                 _id215955_
                                 _super215956_
                                 _precedence-list215957_
                                 _slots215958_
                                 _fields215959_
                                 _constructor215960_
                                 _struct?215961_
                                 _final?215962_
                                 _metaclass215963_
                                 _methods215964_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self215954_
                             _id215955_
                             _super215956_
                             _precedence-list215957_
                             _slots215958_
                             _fields215959_
                             _constructor215960_
                             _struct?215961_
                             _final?215962_
                             _metaclass215963_
                             _methods215964_)))
                        _g220831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g220831_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t220705)
        (let ((__constructor220706
               (let ((__tmp220716
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220705 'constructor))))
                 (if __tmp220716
                     __tmp220716
                     (error '"Unknown slot" 'constructor))))
              (__methods220707
               (let ((__tmp220717
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220705 'methods))))
                 (if __tmp220717
                     __tmp220717
                     (error '"Unknown slot" 'methods))))
              (__slots220708
               (let ((__tmp220718
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220705 'slots))))
                 (if __tmp220718 __tmp220718 (error '"Unknown slot" 'slots))))
              (__metaclass220709
               (let ((__tmp220719
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220705 'metaclass))))
                 (if __tmp220719
                     __tmp220719
                     (error '"Unknown slot" 'metaclass))))
              (__id220710
               (let ((__tmp220720
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220705 'id))))
                 (if __tmp220720 __tmp220720 (error '"Unknown slot" 'id))))
              (__super220711
               (let ((__tmp220721
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220705 'super))))
                 (if __tmp220721 __tmp220721 (error '"Unknown slot" 'super))))
              (__final?220712
               (let ((__tmp220722
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220705 'final?))))
                 (if __tmp220722 __tmp220722 (error '"Unknown slot" 'final?))))
              (__fields220713
               (let ((__tmp220723
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220705 'fields))))
                 (if __tmp220723 __tmp220723 (error '"Unknown slot" 'fields))))
              (__precedence-list220714
               (let ((__tmp220724
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220705 'precedence-list))))
                 (if __tmp220724
                     __tmp220724
                     (error '"Unknown slot" 'precedence-list))))
              (__struct?220715
               (let ((__tmp220725
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220705 'struct?))))
                 (if __tmp220725
                     __tmp220725
                     (error '"Unknown slot" 'struct?)))))
          (lambda _g220833_
            (let ((_g220832_
                   (let () (declare (not safe)) (##length _g220833_))))
              (cond ((let () (declare (not safe)) (##fx= _g220832_ 8))
                     (apply (lambda (_self215848_
                                     _id215849_
                                     _super215850_
                                     _slots215851_
                                     _ctor-method215852_
                                     _struct?215853_
                                     _final?215854_
                                     _metaclass215855_)
                              (let _lp215857_ ((_rest215859_ _super215850_))
                                (let* ((_rest215860215868_ _rest215859_)
                                       (_else215862215876_ (lambda () '#!void))
                                       (_K215864215882_
                                        (lambda (_rest215879_ _super-id215880_)
                                          (if (##structure-ref
                                               (let ((__tmp220834
                                                      (let ((__tmp220835
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id215849_ '()))))
                (declare (not safe))
                (cons '!class __tmp220835))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp220834
                                                  _super-id215880_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp220836
                                                     (let ((__tmp220837
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id215849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp220837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp220836
                                                 _super-id215880_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp215857_ _rest215879_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest215860215868_))
                                      (let ((_hd215865215885_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest215860215868_)))
                                            (_tl215866215887_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest215860215868_))))
                                        (let* ((_super-id215890_
                                                _hd215865215885_)
                                               (_rest215892_ _tl215866215887_))
                                          (declare (not safe))
                                          (_K215864215882_
                                           _rest215892_
                                           _super-id215890_)))
                                      '#!void)))
                              (let* ((_ctor-method215942_
                                      (let ((_$e215894_ _ctor-method215852_))
                                        (if _$e215894_
                                            _$e215894_
                                            (let _lp215897_ ((_rest215899_
                                                              _super215850_)
                                                             (_method215900_
                                                              '#f))
                                              (let* ((_rest215901215909_
                                                      _rest215899_)
                                                     (_else215903215917_
                                                      (lambda ()
                                                        _method215900_))
                                                     (_K215905215930_
                                                      (lambda (_rest215920_
                                                               _super-id215921_)
                                                        (let* ((_klass215923_
                                                                (let ((__tmp220838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp220839
                                      (let ()
                                        (declare (not safe))
                                        (cons _id215849_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp220839))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp220838
                           _super-id215921_)))
                       (_$e215925_
                        (##structure-ref _klass215923_ '6 gxc#!class::t '#f)))
                  (if _$e215925_
                      ((lambda (_ctor-method215928_)
                         (if _method215900_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method215928_ _method215900_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp215897_
                                    _rest215920_
                                    _ctor-method215928_))
                                 (let ((__tmp220840
                                        (let ((__tmp220841
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id215849_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp220841))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp220840
                                    _method215900_
                                    _ctor-method215928_)))
                             (let ()
                               (declare (not safe))
                               (_lp215897_ _rest215920_ _ctor-method215928_))))
                       _$e215925_)
                      (let ()
                        (declare (not safe))
                        (_lp215897_ _rest215920_ _method215900_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest215901215909_))
                                                    (let ((_hd215906215933_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest215901215909_)))
                                                          (_tl215907215935_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest215901215909_))))
                                                      (let* ((_super-id215938_
                                                              _hd215906215933_)
                                                             (_rest215940_
                                                              _tl215907215935_))
                                                        (declare (not safe))
                                                        (_K215905215930_
                                                         _rest215940_
                                                         _super-id215938_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else215903215917_))))))))
                                     (_g220842_
                                      (let ((__tmp220847
                                             (lambda (_klass-id215944_)
                                               (let ((__tmp220848
                                                      (##structure-ref
                                                       (let ((__tmp220849
                                                              (let ((__tmp220850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id215849_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp220850))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp220849 _klass-id215944_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id215944_
                                                       __tmp220848))))
                                            (__tmp220844
                                             (lambda (_klass-id215946_)
                                               (##structure-ref
                                                (let ((__tmp220845
                                                       (let ((__tmp220846
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id215849_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp220846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp220845
                                                   _klass-id215946_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp220847
                                         __tmp220844
                                         eq?
                                         identity
                                         '()
                                         _super215850_))))
                                (begin
                                  (let ((_g220843_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g220842_)
                                               (##vector-length _g220842_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g220843_ 2)))
                                        (error "Context expects 2 values"
                                               _g220843_)))
                                  (let ((_precedence-list215948_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g220842_ 0)))
                                        (_base-struct215949_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g220842_ 1))))
                                    (let ((_fields215951_
                                           (let ((__tmp220851
                                                  (let ((__tmp220852
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id215849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp220852))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp220851
                                              _base-struct215949_
                                              _precedence-list215948_
                                              _slots215851_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215848_
                                         _id215849_
                                         __id220710
                                         __t220705
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215848_
                                         _super215850_
                                         __super220711
                                         __t220705
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215848_
                                         _precedence-list215948_
                                         __precedence-list220714
                                         __t220705
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215848_
                                         _slots215851_
                                         __slots220708
                                         __t220705
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215848_
                                         _fields215951_
                                         __fields220713
                                         __t220705
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215848_
                                         _ctor-method215942_
                                         __constructor220706
                                         __t220705
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215848_
                                         _struct?215853_
                                         __struct?220715
                                         __t220705
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215848_
                                         _final?215854_
                                         __final?220712
                                         __t220705
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215848_
                                         _metaclass215855_
                                         __metaclass220709
                                         __t220705
                                         '#f)))))))
                            _g220833_))
                    ((let () (declare (not safe)) (##fx= _g220832_ 11))
                     (apply (lambda (_self215954_
                                     _id215955_
                                     _super215956_
                                     _precedence-list215957_
                                     _slots215958_
                                     _fields215959_
                                     _constructor215960_
                                     _struct?215961_
                                     _final?215962_
                                     _metaclass215963_
                                     _methods215964_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215954_
                                 _id215955_
                                 __id220710
                                 __t220705
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215954_
                                 _super215956_
                                 __super220711
                                 __t220705
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215954_
                                 _precedence-list215957_
                                 __precedence-list220714
                                 __t220705
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215954_
                                 _slots215958_
                                 __slots220708
                                 __t220705
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215954_
                                 _fields215959_
                                 __fields220713
                                 __t220705
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215954_
                                 _constructor215960_
                                 __constructor220706
                                 __t220705
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215954_
                                 _struct?215961_
                                 __struct?220715
                                 __t220705
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215954_
                                 _final?215962_
                                 __final?220712
                                 __t220705
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215954_
                                 _metaclass215963_
                                 __metaclass220709
                                 __t220705
                                 '#f))
                              (if _methods215964_
                                  (let ((__tmp220853
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods215964_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self215954_
                                     __tmp220853
                                     __methods220707
                                     __t220705
                                     '#f))
                                  '#!void))
                            _g220833_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g220833_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where215700_
               _base-struct215701_
               _precedence-list215702_
               _direct-slots215703_)
        (let* ((_base-fields215705_
                (if _base-struct215701_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where215700_
                        _base-struct215701_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields215707_ (reverse _base-fields215705_))
               (_seen-slots215715_
                (let ((_tab215709_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g215710215712_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab215709_ _g215710215712_ '#t)))
                   _base-fields215705_)
                  _tab215709_))
               (_process-slot215719_
                (lambda (_slot215717_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots215715_ _slot215717_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots215715_ _slot215717_ '#t))
                        (set! _r-fields215707_
                              (let ()
                                (declare (not safe))
                                (cons _slot215717_ _r-fields215707_))))))))
          (for-each
           (lambda (_mixin215722_)
             (let ((_klass215724_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where215700_
                       _mixin215722_))))
               (if (##structure-ref _klass215724_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot215719_
                    (##structure-ref _klass215724_ '5 gxc#!class::t '#f)))))
           _precedence-list215702_)
          (for-each _process-slot215719_ _direct-slots215703_)
          (reverse _r-fields215707_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass215659_ _slot215660_)
        (let _lp215662_ ((_rest215664_
                          (##structure-ref _klass215659_ '5 gxc#!class::t '#f))
                         (_offset215665_ '1))
          (let* ((_rest215666215674_ _rest215664_)
                 (_else215668215682_
                  (lambda ()
                    (let ((__tmp220855
                           (##structure-ref _klass215659_ '1 gxc#!type::t '#f))
                          (__tmp220854
                           (##structure-ref
                            _klass215659_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp220855
                       __tmp220854
                       _slot215660_))))
                 (_K215670215688_
                  (lambda (_rest215685_ _s215686_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s215686_ _slot215660_))
                        _offset215665_
                        (let ((__tmp220856
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset215665_ '1))))
                          (declare (not safe))
                          (_lp215662_ _rest215685_ __tmp220856))))))
            (if (let () (declare (not safe)) (##pair? _rest215666215674_))
                (let ((_hd215671215691_
                       (let ()
                         (declare (not safe))
                         (##car _rest215666215674_)))
                      (_tl215672215693_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest215666215674_))))
                  (let* ((_s215696_ _hd215671215691_)
                         (_rest215698_ _tl215672215693_))
                    (declare (not safe))
                    (_K215670215688_ _rest215698_ _s215696_)))
                (let () (declare (not safe)) (_else215668215682_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass215617_ _slot215618_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass215617_ _slot215618_))
            _klass215617_
            (let _lp215620_ ((_rest215622_
                              (##structure-ref
                               _klass215617_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest215623215631_ _rest215622_)
                     (_else215625215639_ (lambda () '#f))
                     (_K215627215647_
                      (lambda (_rest215642_ _super215643_)
                        (let ((_super-class215645_
                               (let ((__tmp220857
                                      (let ((__tmp220858
                                             (let ((__tmp220860
                                                    (##structure-ref
                                                     _klass215617_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp220859
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot215618_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp220860
                                                     __tmp220859))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp220858))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp220857
                                  _super215643_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class215645_
                                 _slot215618_))
                              _super-class215645_
                              (let ()
                                (declare (not safe))
                                (_lp215620_ _rest215642_)))))))
                (if (let () (declare (not safe)) (##pair? _rest215623215631_))
                    (let ((_hd215628215650_
                           (let ()
                             (declare (not safe))
                             (##car _rest215623215631_)))
                          (_tl215629215652_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest215623215631_))))
                      (let* ((_super215655_ _hd215628215650_)
                             (_rest215657_ _tl215629215652_))
                        (declare (not safe))
                        (_K215627215647_ _rest215657_ _super215655_)))
                    (let () (declare (not safe)) (_else215625215639_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass215614_ _slot215615_)
        (if (##structure-ref _klass215614_ '7 gxc#!class::t '#f)
            (memq _slot215615_
                  (##structure-ref _klass215614_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self215611_ _id215612_)
        (##structure-set! _self215611_ _id215612_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t220726)
        (let ((__id220727
               (let ((__tmp220728
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220726 'id))))
                 (if __tmp220728 __tmp220728 (error '"Unknown slot" 'id)))))
          (lambda (_self215611_ _id215612_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215611_
               _id215612_
               __id220727
               __t220726
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
      (lambda (_self215486_ _id215487_)
        (##structure-set! _self215486_ _id215487_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t220729)
        (let ((__id220730
               (let ((__tmp220731
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220729 'id))))
                 (if __tmp220731 __tmp220731 (error '"Unknown slot" 'id)))))
          (lambda (_self215486_ _id215487_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215486_
               _id215487_
               __id220730
               __t220729
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
      (lambda (_self215359_ _id215360_ _slot215361_ _checked?215362_)
        (##structure-set! _self215359_ _id215360_ '1 gxc#!type::t '#f)
        (##structure-set! _self215359_ _slot215361_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self215359_
         _checked?215362_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t220732)
        (let ((__id220733
               (let ((__tmp220736
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220732 'id))))
                 (if __tmp220736 __tmp220736 (error '"Unknown slot" 'id))))
              (__slot220734
               (let ((__tmp220737
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220732 'slot))))
                 (if __tmp220737 __tmp220737 (error '"Unknown slot" 'slot))))
              (__checked?220735
               (let ((__tmp220738
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220732 'checked?))))
                 (if __tmp220738
                     __tmp220738
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self215359_ _id215360_ _slot215361_ _checked?215362_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215359_
               _id215360_
               __id220733
               __t220732
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215359_
               _slot215361_
               __slot220734
               __t220732
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215359_
               _checked?215362_
               __checked?220735
               __t220732
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
      (lambda (_self215232_ _id215233_ _slot215234_ _checked?215235_)
        (##structure-set! _self215232_ _id215233_ '1 gxc#!type::t '#f)
        (##structure-set! _self215232_ _slot215234_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self215232_
         _checked?215235_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t220739)
        (let ((__id220740
               (let ((__tmp220743
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220739 'id))))
                 (if __tmp220743 __tmp220743 (error '"Unknown slot" 'id))))
              (__slot220741
               (let ((__tmp220744
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220739 'slot))))
                 (if __tmp220744 __tmp220744 (error '"Unknown slot" 'slot))))
              (__checked?220742
               (let ((__tmp220745
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t220739 'checked?))))
                 (if __tmp220745
                     __tmp220745
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self215232_ _id215233_ _slot215234_ _checked?215235_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215232_
               _id215233_
               __id220740
               __t220739
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215232_
               _slot215234_
               __slot220741
               __t220739
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215232_
               _checked?215235_
               __checked?220742
               __t220739
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
      (lambda (_self215076_
               _id215077_
               _arity215078_
               _dispatch215079_
               _inline215080_
               _typedecl215081_)
        (if (let ((__tmp220861
                   (let ()
                     (declare (not safe))
                     (##structure-length _self215076_))))
              (declare (not safe))
              (##fx< '5 __tmp220861))
            (begin
              (let ((__tmp220862
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215076_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215076_
                 _id215077_
                 '1
                 __tmp220862
                 '#f))
              (let ((__tmp220863
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215076_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215076_
                 _arity215078_
                 '2
                 __tmp220863
                 '#f))
              (let ((__tmp220864
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215076_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215076_
                 _dispatch215079_
                 '3
                 __tmp220864
                 '#f))
              (let ((__tmp220865
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215076_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215076_
                 _inline215080_
                 '4
                 __tmp220865
                 '#f))
              (let ((__tmp220866
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215076_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215076_
                 _typedecl215081_
                 '5
                 __tmp220866
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self215076_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self215076_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self215086_ _id215087_ _arity215088_ _dispatch215089_)
        (let* ((_inline215091_ '#f) (_typedecl215093_ '#f))
          (if (let ((__tmp220867
                     (let ()
                       (declare (not safe))
                       (##structure-length _self215086_))))
                (declare (not safe))
                (##fx< '5 __tmp220867))
              (begin
                (let ((__tmp220868
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215086_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215086_
                   _id215087_
                   '1
                   __tmp220868
                   '#f))
                (let ((__tmp220869
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215086_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215086_
                   _arity215088_
                   '2
                   __tmp220869
                   '#f))
                (let ((__tmp220870
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215086_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215086_
                   _dispatch215089_
                   '3
                   __tmp220870
                   '#f))
                (let ((__tmp220871
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215086_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215086_
                   _inline215091_
                   '4
                   __tmp220871
                   '#f))
                (let ((__tmp220872
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215086_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215086_
                   _typedecl215093_
                   '5
                   __tmp220872
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self215086_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self215086_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self215095_
               _id215096_
               _arity215097_
               _dispatch215098_
               _inline215099_)
        (let ((_typedecl215101_ '#f))
          (if (let ((__tmp220873
                     (let ()
                       (declare (not safe))
                       (##structure-length _self215095_))))
                (declare (not safe))
                (##fx< '5 __tmp220873))
              (begin
                (let ((__tmp220874
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215095_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215095_
                   _id215096_
                   '1
                   __tmp220874
                   '#f))
                (let ((__tmp220875
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215095_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215095_
                   _arity215097_
                   '2
                   __tmp220875
                   '#f))
                (let ((__tmp220876
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215095_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215095_
                   _dispatch215098_
                   '3
                   __tmp220876
                   '#f))
                (let ((__tmp220877
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215095_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215095_
                   _inline215099_
                   '4
                   __tmp220877
                   '#f))
                (let ((__tmp220878
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215095_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215095_
                   _typedecl215101_
                   '5
                   __tmp220878
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self215095_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self215095_)))))))
    (define gxc#!lambda:::init!
      (lambda _g220880_
        (let ((_g220879_ (let () (declare (not safe)) (##length _g220880_))))
          (cond ((let () (declare (not safe)) (##fx= _g220879_ 4))
                 (apply (lambda (_self215086_
                                 _id215087_
                                 _arity215088_
                                 _dispatch215089_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self215086_
                             _id215087_
                             _arity215088_
                             _dispatch215089_)))
                        _g220880_))
                ((let () (declare (not safe)) (##fx= _g220879_ 5))
                 (apply (lambda (_self215095_
                                 _id215096_
                                 _arity215097_
                                 _dispatch215098_
                                 _inline215099_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self215095_
                             _id215096_
                             _arity215097_
                             _dispatch215098_
                             _inline215099_)))
                        _g220880_))
                ((let () (declare (not safe)) (##fx= _g220879_ 6))
                 (apply (lambda (_self215103_
                                 _id215104_
                                 _arity215105_
                                 _dispatch215106_
                                 _inline215107_
                                 _typedecl215108_)
                          (if (let ((__tmp220881
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self215103_))))
                                (declare (not safe))
                                (##fx< '5 __tmp220881))
                              (begin
                                (let ((__tmp220882
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215103_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215103_
                                   _id215104_
                                   '1
                                   __tmp220882
                                   '#f))
                                (let ((__tmp220883
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215103_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215103_
                                   _arity215105_
                                   '2
                                   __tmp220883
                                   '#f))
                                (let ((__tmp220884
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215103_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215103_
                                   _dispatch215106_
                                   '3
                                   __tmp220884
                                   '#f))
                                (let ((__tmp220885
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215103_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215103_
                                   _inline215107_
                                   '4
                                   __tmp220885
                                   '#f))
                                (let ((__tmp220886
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215103_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215103_
                                   _typedecl215108_
                                   '5
                                   __tmp220886
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self215103_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self215103_)))))
                        _g220880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g220880_))))))
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
      (lambda (_self214828_ . _args214829_)
        (apply struct-instance-init! _self214828_ _args214829_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type214703_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type214703_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type214703_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass214696_)
        (let ((_$e214698_
               (##structure-ref _klass214696_ '10 gxc#!class::t '#f)))
          (if _$e214698_
              _$e214698_
              (let ((_tab214701_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass214696_
                 _tab214701_
                 '10
                 gxc#!class::t
                 '#f)
                _tab214701_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass214687_ _method214688_)
        (let ((_tab214689214691_
               (##structure-ref _klass214687_ '10 gxc#!class::t '#f)))
          (if _tab214689214691_
              (let ((_tab214694_ _tab214689214691_))
                (declare (not safe))
                (table-ref _tab214694_ _method214688_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type214684_ _method214685_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type214684_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type214684_ _method214685_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym214668_ _type214669_ _local?214670_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type214669_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym214668_
                   _type214669_))
        (let ((__tmp220887
               (let () (declare (not safe)) (struct->list _type214669_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym214668_ '" " __tmp220887))
        (let ((__tmp220888
               (if _local?214670_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp220888 _sym214668_ _type214669_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym214675_ _type214676_)
        (let ((_local?214678_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym214675_
           _type214676_
           _local?214678_))))
    (define gxc#optimizer-declare-type!
      (lambda _g220890_
        (let ((_g220889_ (let () (declare (not safe)) (##length _g220890_))))
          (cond ((let () (declare (not safe)) (##fx= _g220889_ 2))
                 (apply (lambda (_sym214675_ _type214676_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym214675_
                             _type214676_)))
                        _g220890_))
                ((let () (declare (not safe)) (##fx= _g220889_ 3))
                 (apply (lambda (_sym214680_ _type214681_ _local?214682_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym214680_
                             _type214681_
                             _local?214682_)))
                        _g220890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g220890_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym214654_ _local?214655_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym214654_))
        (let ((__tmp220891
               (if _local?214655_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp220891 _sym214654_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym214660_)
        (let ((_local?214662_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym214660_ _local?214662_))))
    (define gxc#optimizer-clear-type!
      (lambda _g220893_
        (let ((_g220892_ (let () (declare (not safe)) (##length _g220893_))))
          (cond ((let () (declare (not safe)) (##fx= _g220892_ 1))
                 (apply (lambda (_sym214660_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym214660_)))
                        _g220893_))
                ((let () (declare (not safe)) (##fx= _g220892_ 2))
                 (apply (lambda (_sym214664_ _local?214665_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym214664_
                             _local?214665_)))
                        _g220893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g220893_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t214627_ _method214628_ _sym214629_ _rebind?214630_)
        (let* ((_type214632_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t214627_)))
               (_$e214634_
                (let () (declare (not safe)) (gxc#!type-vtab _type214632_))))
          (if _$e214634_
              ((lambda (_vtab214637_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab214637_ _method214628_))
                     (if _rebind?214630_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t214627_
                              '" "
                              _method214628_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab214637_
                              _method214628_
                              _sym214629_)))
                         (let ((__tmp220894
                                (let ((__tmp220895
                                       (let ((__tmp220896
                                              (let ((__tmp220897
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym214629_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method214628_
                                                      __tmp220897))))
                                         (declare (not safe))
                                         (cons _type-t214627_ __tmp220896))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp220895))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp220894
                            _method214628_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t214627_
                          '" "
                          _method214628_
                          '" => "
                          _sym214629_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab214637_
                          _method214628_
                          _sym214629_)))))
               _$e214634_)
              (if (let () (declare (not safe)) (not _type214632_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t214627_))
                  (let ((__tmp220898
                         (let ((__tmp220899
                                (let ((__tmp220900
                                       (let ((__tmp220901
                                              (let ()
                                                (declare (not safe))
                                                (cons _method214628_ '()))))
                                         (declare (not safe))
                                         (cons _sym214629_ __tmp220901))))
                                  (declare (not safe))
                                  (cons _type-t214627_ __tmp220900))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp220899))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp220898
                     _type214632_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t214642_ _method214643_ _sym214644_)
        (let ((_rebind?214646_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t214642_
           _method214643_
           _sym214644_
           _rebind?214646_))))
    (define gxc#optimizer-declare-method!
      (lambda _g220903_
        (let ((_g220902_ (let () (declare (not safe)) (##length _g220903_))))
          (cond ((let () (declare (not safe)) (##fx= _g220902_ 3))
                 (apply (lambda (_type-t214642_ _method214643_ _sym214644_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t214642_
                             _method214643_
                             _sym214644_)))
                        _g220903_))
                ((let () (declare (not safe)) (##fx= _g220902_ 4))
                 (apply (lambda (_type-t214648_
                                 _method214649_
                                 _sym214650_
                                 _rebind?214651_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t214648_
                             _method214649_
                             _sym214650_
                             _rebind?214651_)))
                        _g220903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g220903_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym214615_)
        (let ((_$e214623_
               (let ((_ht214616214618_ (gxc#current-compile-local-type)))
                 (if _ht214616214618_
                     (let ((_ht214621_ _ht214616214618_))
                       (declare (not safe))
                       (table-ref _ht214621_ _sym214615_ '#f))
                     '#f))))
          (if _$e214623_
              _$e214623_
              (let ((__tmp220904
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp220904 _sym214615_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym214607_)
        (let ((_type214608214610_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym214607_))))
          (if _type214608214610_
              (let ((_type214613_ _type214608214610_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type214613_ 'gxc#!alias::t))
                    (let ((__tmp220905
                           (##structure-ref _type214613_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp220905))
                    _type214613_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where214599_ _klass-id214600_)
        (let ((_$e214602_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id214600_))))
          (if _$e214602_
              ((lambda (_klass214605_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass214605_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where214599_
                        _klass-id214600_
                        _klass214605_)))
                 _klass214605_)
               _$e214602_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where214599_
                 _klass-id214600_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t214596_ _method214597_)
        (let ((__tmp220906
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t214596_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp220906 _method214597_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym214594_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym214594_))
        (let ((__tmp220907
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp220907 _sym214594_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym214592_)
        (let ((__tmp220908
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp220908 _sym214592_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx214590_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx214590_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx214590_))
            (let () (declare (not safe)) (gx#stx-e _stx214590_)))))))
