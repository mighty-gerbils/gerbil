(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710677339)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp116844 (list))
            (__tmp116842
             (let ((__tmp116843
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116843 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp116844
         '(type ssxi methods)
         __tmp116842
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args116778_
        (apply make-instance gxc#optimizer-info::t _$args116778_)))
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
      (lambda (_self116776_)
        (if (let ((__tmp116852
                   (let ()
                     (declare (not safe))
                     (##structure-length _self116776_))))
              (declare (not safe))
              (##fx< '3 __tmp116852))
            (begin
              (let ((__tmp116847
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp116846
                     (let ()
                       (declare (not safe))
                       (##structure-type _self116776_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self116776_
                 __tmp116847
                 '1
                 __tmp116846
                 '#f))
              (let ((__tmp116849
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp116848
                     (let ()
                       (declare (not safe))
                       (##structure-type _self116776_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self116776_
                 __tmp116849
                 '2
                 __tmp116848
                 '#f))
              (let ((__tmp116851
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp116850
                     (let ()
                       (declare (not safe))
                       (##structure-type _self116776_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self116776_
                 __tmp116851
                 '3
                 __tmp116850
                 '#f)))
            (let ((__tmp116845
                   (let ()
                     (declare (not safe))
                     (##vector-length _self116776_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self116776_
                     '3
                     __tmp116845)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp116855 (list))
            (__tmp116853
             (let ((__tmp116854
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116854 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp116855
         '(id)
         __tmp116853
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args116651_ (apply make-instance gxc#!type::t _$args116651_)))
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
      (let ((__tmp116858 (list gxc#!type::t))
            (__tmp116856
             (let ((__tmp116857
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116857 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp116858
         '()
         __tmp116856
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args116648_ (apply make-instance gxc#!alias::t _$args116648_)))
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
      (let ((__tmp116861 (list gxc#!type::t))
            (__tmp116859
             (let ((__tmp116860
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116860 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp116861
         '()
         __tmp116859
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args116645_
        (apply make-instance gxc#!procedure::t _$args116645_)))
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
      (let ((__tmp116864 (list gxc#!type::t))
            (__tmp116862
             (let ((__tmp116863
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116863 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp116864
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp116862
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args116642_ (apply make-instance gxc#!class::t _$args116642_)))
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
      (let ((__tmp116867 (list gxc#!procedure::t))
            (__tmp116865
             (let ((__tmp116866
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116866 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp116867
         '()
         __tmp116865
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args116639_
        (apply make-instance gxc#!predicate::t _$args116639_)))
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
      (let ((__tmp116870 (list gxc#!procedure::t))
            (__tmp116868
             (let ((__tmp116869
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116869 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp116870
         '()
         __tmp116868
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args116636_
        (apply make-instance gxc#!constructor::t _$args116636_)))
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
      (let ((__tmp116873 (list gxc#!procedure::t))
            (__tmp116871
             (let ((__tmp116872
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116872 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp116873
         '(slot checked?)
         __tmp116871
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args116633_
        (apply make-instance gxc#!accessor::t _$args116633_)))
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
      (let ((__tmp116876 (list gxc#!procedure::t))
            (__tmp116874
             (let ((__tmp116875
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116875 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp116876
         '(slot checked?)
         __tmp116874
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args116630_
        (apply make-instance gxc#!mutator::t _$args116630_)))
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
      (let ((__tmp116879 (list gxc#!procedure::t))
            (__tmp116877
             (let ((__tmp116878
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116878 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp116879
         '(arity dispatch inline inline-typedecl)
         __tmp116877
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args116627_
        (apply make-instance gxc#!lambda::t _$args116627_)))
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
      (let ((__tmp116882 (list gxc#!procedure::t))
            (__tmp116880
             (let ((__tmp116881
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116881 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp116882
         '(clauses)
         __tmp116880
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args116624_
        (apply make-instance gxc#!case-lambda::t _$args116624_)))
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
      (let ((__tmp116885 (list gxc#!procedure::t))
            (__tmp116883
             (let ((__tmp116884
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116884 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp116885
         '(table dispatch)
         __tmp116883
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args116621_
        (apply make-instance gxc#!kw-lambda::t _$args116621_)))
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
      (let ((__tmp116888 (list gxc#!procedure::t))
            (__tmp116886
             (let ((__tmp116887
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp116887 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp116888
         '(keys main)
         __tmp116886
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args116618_
        (apply make-instance gxc#!kw-lambda-primary::t _$args116618_)))
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
      (let ((__tmp116889 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp116889
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args116615_
        (apply make-instance gxc#!primitive::t _$args116615_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp116890 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp116890
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args116612_
        (apply make-instance gxc#!primitive-lambda::t _$args116612_)))
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
      (let ((__tmp116891 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp116891
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args116609_
        (apply make-instance gxc#!primitive-case-lambda::t _$args116609_)))
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
      (lambda (_self116489_
               _id116490_
               _super116491_
               _slots116492_
               _ctor-method116493_
               _struct?116494_
               _final?116495_
               _system?116496_
               _metaclass116497_)
        (let _lp116499_ ((_rest116501_ _super116491_))
          (let* ((_rest116502116510_ _rest116501_)
                 (_else116504116518_ (lambda () '#!void))
                 (_K116506116524_
                  (lambda (_rest116521_ _super-id116522_)
                    (if (##structure-ref
                         (let ((__tmp116894
                                (let ((__tmp116895
                                       (let ()
                                         (declare (not safe))
                                         (cons _id116490_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp116895))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp116894
                            _super-id116522_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp116892
                               (let ((__tmp116893
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116490_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp116893))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp116892
                           _super-id116522_))
                        '#!void)
                    (let () (declare (not safe)) (_lp116499_ _rest116521_)))))
            (if (let () (declare (not safe)) (##pair? _rest116502116510_))
                (let ((_hd116507116527_
                       (let ()
                         (declare (not safe))
                         (##car _rest116502116510_)))
                      (_tl116508116529_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116502116510_))))
                  (let* ((_super-id116532_ _hd116507116527_)
                         (_rest116534_ _tl116508116529_))
                    (declare (not safe))
                    (_K116506116524_ _rest116534_ _super-id116532_)))
                '#!void)))
        (let* ((_ctor-method116584_
                (let ((_$e116536_ _ctor-method116493_))
                  (if _$e116536_
                      _$e116536_
                      (let _lp116539_ ((_rest116541_ _super116491_)
                                       (_method116542_ '#f))
                        (let* ((_rest116543116551_ _rest116541_)
                               (_else116545116559_ (lambda () _method116542_))
                               (_K116547116572_
                                (lambda (_rest116562_ _super-id116563_)
                                  (let* ((_klass116565_
                                          (let ((__tmp116896
                                                 (let ((__tmp116897
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id116490_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp116897))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp116896
                                             _super-id116563_)))
                                         (_$e116567_
                                          (##structure-ref
                                           _klass116565_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e116567_
                                        ((lambda (_ctor-method116570_)
                                           (if _method116542_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method116570_
                                                          _method116542_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp116539_
                                                      _rest116562_
                                                      _ctor-method116570_))
                                                   (let ((__tmp116898
                                                          (let ((__tmp116899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id116490_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp116899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp116898
                                                      _method116542_
                                                      _ctor-method116570_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp116539_
                                                  _rest116562_
                                                  _ctor-method116570_))))
                                         _$e116567_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp116539_
                                           _rest116562_
                                           _method116542_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest116543116551_))
                              (let ((_hd116548116575_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest116543116551_)))
                                    (_tl116549116577_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest116543116551_))))
                                (let* ((_super-id116580_ _hd116548116575_)
                                       (_rest116582_ _tl116549116577_))
                                  (declare (not safe))
                                  (_K116547116572_
                                   _rest116582_
                                   _super-id116580_)))
                              (let ()
                                (declare (not safe))
                                (_else116545116559_))))))))
               (_g116900_
                (let ((__tmp116905
                       (lambda (_klass-id116586_)
                         (let ((__tmp116906
                                (##structure-ref
                                 (let ((__tmp116907
                                        (let ((__tmp116908
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116490_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp116908))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp116907
                                    _klass-id116586_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id116586_ __tmp116906))))
                      (__tmp116902
                       (lambda (_klass-id116588_)
                         (##structure-ref
                          (let ((__tmp116903
                                 (let ((__tmp116904
                                        (let ()
                                          (declare (not safe))
                                          (cons _id116490_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp116904))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp116903
                             _klass-id116588_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super116491_
                   'get-precedence-list:
                   __tmp116905
                   'struct:
                   __tmp116902
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g116901_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g116900_)
                         (##vector-length _g116900_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g116901_ 2)))
                  (error "Context expects 2 values" _g116901_)))
            (let ((_precedence-list116590_
                   (let () (declare (not safe)) (##vector-ref _g116900_ 0)))
                  (_base-struct116591_
                   (let () (declare (not safe)) (##vector-ref _g116900_ 1))))
              (let ((_fields116593_
                     (let ((__tmp116909
                            (let ((__tmp116910
                                   (let ()
                                     (declare (not safe))
                                     (cons _id116490_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp116910))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp116909
                        _base-struct116591_
                        _precedence-list116590_
                        _slots116492_))))
                (##structure-set! _self116489_ _id116490_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self116489_
                 _super116491_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116489_
                 _precedence-list116590_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116489_
                 _slots116492_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116489_
                 _fields116593_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116489_
                 _ctor-method116584_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116489_
                 _struct?116494_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116489_
                 _final?116495_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self116489_
                 _metaclass116497_
                 '10
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self116596_
               _id116597_
               _super116598_
               _precedence-list116599_
               _slots116600_
               _fields116601_
               _constructor116602_
               _struct?116603_
               _final?116604_
               _system?116605_
               _metaclass116606_
               _methods116607_)
        (##structure-set! _self116596_ _id116597_ '1 gxc#!type::t '#f)
        (##structure-set! _self116596_ _super116598_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self116596_
         _precedence-list116599_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self116596_ _slots116600_ '4 gxc#!class::t '#f)
        (##structure-set! _self116596_ _fields116601_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self116596_
         _constructor116602_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self116596_ _struct?116603_ '7 gxc#!class::t '#f)
        (##structure-set! _self116596_ _final?116604_ '8 gxc#!class::t '#f)
        (##structure-set! _self116596_ _metaclass116606_ '10 gxc#!class::t '#f)
        (if _methods116607_
            (##structure-set!
             _self116596_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods116607_))
             '11
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g116912_
        (let ((_g116911_ (let () (declare (not safe)) (##length _g116912_))))
          (cond ((let () (declare (not safe)) (##fx= _g116911_ 9))
                 (apply (lambda (_self116489_
                                 _id116490_
                                 _super116491_
                                 _slots116492_
                                 _ctor-method116493_
                                 _struct?116494_
                                 _final?116495_
                                 _system?116496_
                                 _metaclass116497_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self116489_
                             _id116490_
                             _super116491_
                             _slots116492_
                             _ctor-method116493_
                             _struct?116494_
                             _final?116495_
                             _system?116496_
                             _metaclass116497_)))
                        _g116912_))
                ((let () (declare (not safe)) (##fx= _g116911_ 12))
                 (apply (lambda (_self116596_
                                 _id116597_
                                 _super116598_
                                 _precedence-list116599_
                                 _slots116600_
                                 _fields116601_
                                 _constructor116602_
                                 _struct?116603_
                                 _final?116604_
                                 _system?116605_
                                 _metaclass116606_
                                 _methods116607_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self116596_
                             _id116597_
                             _super116598_
                             _precedence-list116599_
                             _slots116600_
                             _fields116601_
                             _constructor116602_
                             _struct?116603_
                             _final?116604_
                             _system?116605_
                             _metaclass116606_
                             _methods116607_)))
                        _g116912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g116912_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass116780 __method-table116781)
        (let ((__slots116782
               (let ((__slot116792
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116780 'slots))))
                 (if __slot116792
                     __slot116792
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__struct?116783
               (let ((__slot116793
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116780 'struct?))))
                 (if __slot116793
                     __slot116793
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__constructor116784
               (let ((__slot116794
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116780 'constructor))))
                 (if __slot116794
                     __slot116794
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__id116785
               (let ((__slot116795
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116780 'id))))
                 (if __slot116795
                     __slot116795
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super116786
               (let ((__slot116796
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116780 'super))))
                 (if __slot116796
                     __slot116796
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__final?116787
               (let ((__slot116797
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116780 'final?))))
                 (if __slot116797
                     __slot116797
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__metaclass116788
               (let ((__slot116798
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116780 'metaclass))))
                 (if __slot116798
                     __slot116798
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__fields116789
               (let ((__slot116799
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116780 'fields))))
                 (if __slot116799
                     __slot116799
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__methods116790
               (let ((__slot116800
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116780 'methods))))
                 (if __slot116800
                     __slot116800
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__precedence-list116791
               (let ((__slot116801
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116780 'precedence-list))))
                 (if __slot116801
                     __slot116801
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list))))))
          (lambda _g116914_
            (let ((_g116913_
                   (let () (declare (not safe)) (##length _g116914_))))
              (cond ((let () (declare (not safe)) (##fx= _g116913_ 9))
                     (apply (lambda (_self116489_
                                     _id116490_
                                     _super116491_
                                     _slots116492_
                                     _ctor-method116493_
                                     _struct?116494_
                                     _final?116495_
                                     _system?116496_
                                     _metaclass116497_)
                              (let _lp116499_ ((_rest116501_ _super116491_))
                                (let* ((_rest116502116510_ _rest116501_)
                                       (_else116504116518_ (lambda () '#!void))
                                       (_K116506116524_
                                        (lambda (_rest116521_ _super-id116522_)
                                          (if (##structure-ref
                                               (let ((__tmp116917
                                                      (let ((__tmp116918
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id116490_ '()))))
                (declare (not safe))
                (cons '!class __tmp116918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp116917
                                                  _super-id116522_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp116915
                                                     (let ((__tmp116916
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id116490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp116916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp116915
                                                 _super-id116522_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp116499_ _rest116521_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest116502116510_))
                                      (let ((_hd116507116527_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest116502116510_)))
                                            (_tl116508116529_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest116502116510_))))
                                        (let* ((_super-id116532_
                                                _hd116507116527_)
                                               (_rest116534_ _tl116508116529_))
                                          (declare (not safe))
                                          (_K116506116524_
                                           _rest116534_
                                           _super-id116532_)))
                                      '#!void)))
                              (let* ((_ctor-method116584_
                                      (let ((_$e116536_ _ctor-method116493_))
                                        (if _$e116536_
                                            _$e116536_
                                            (let _lp116539_ ((_rest116541_
                                                              _super116491_)
                                                             (_method116542_
                                                              '#f))
                                              (let* ((_rest116543116551_
                                                      _rest116541_)
                                                     (_else116545116559_
                                                      (lambda ()
                                                        _method116542_))
                                                     (_K116547116572_
                                                      (lambda (_rest116562_
                                                               _super-id116563_)
                                                        (let* ((_klass116565_
                                                                (let ((__tmp116919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp116920
                                      (let ()
                                        (declare (not safe))
                                        (cons _id116490_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp116920))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp116919
                           _super-id116563_)))
                       (_$e116567_
                        (##structure-ref _klass116565_ '6 gxc#!class::t '#f)))
                  (if _$e116567_
                      ((lambda (_ctor-method116570_)
                         (if _method116542_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method116570_ _method116542_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp116539_
                                    _rest116562_
                                    _ctor-method116570_))
                                 (let ((__tmp116921
                                        (let ((__tmp116922
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id116490_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp116922))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp116921
                                    _method116542_
                                    _ctor-method116570_)))
                             (let ()
                               (declare (not safe))
                               (_lp116539_ _rest116562_ _ctor-method116570_))))
                       _$e116567_)
                      (let ()
                        (declare (not safe))
                        (_lp116539_ _rest116562_ _method116542_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest116543116551_))
                                                    (let ((_hd116548116575_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest116543116551_)))
                                                          (_tl116549116577_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest116543116551_))))
                                                      (let* ((_super-id116580_
                                                              _hd116548116575_)
                                                             (_rest116582_
                                                              _tl116549116577_))
                                                        (declare (not safe))
                                                        (_K116547116572_
                                                         _rest116582_
                                                         _super-id116580_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else116545116559_))))))))
                                     (_g116923_
                                      (let ((__tmp116928
                                             (lambda (_klass-id116586_)
                                               (let ((__tmp116929
                                                      (##structure-ref
                                                       (let ((__tmp116930
                                                              (let ((__tmp116931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id116490_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp116931))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp116930 _klass-id116586_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id116586_
                                                       __tmp116929))))
                                            (__tmp116925
                                             (lambda (_klass-id116588_)
                                               (##structure-ref
                                                (let ((__tmp116926
                                                       (let ((__tmp116927
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id116490_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp116927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp116926
                                                   _klass-id116588_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super116491_
                                         'get-precedence-list:
                                         __tmp116928
                                         'struct:
                                         __tmp116925
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g116924_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g116923_)
                                               (##vector-length _g116923_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g116924_ 2)))
                                        (error "Context expects 2 values"
                                               _g116924_)))
                                  (let ((_precedence-list116590_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g116923_ 0)))
                                        (_base-struct116591_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g116923_ 1))))
                                    (let ((_fields116593_
                                           (let ((__tmp116932
                                                  (let ((__tmp116933
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id116490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp116933))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp116932
                                              _base-struct116591_
                                              _precedence-list116590_
                                              _slots116492_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116489_
                                         _id116490_
                                         __id116785
                                         __klass116780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116489_
                                         _super116491_
                                         __super116786
                                         __klass116780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116489_
                                         _precedence-list116590_
                                         __precedence-list116791
                                         __klass116780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116489_
                                         _slots116492_
                                         __slots116782
                                         __klass116780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116489_
                                         _fields116593_
                                         __fields116789
                                         __klass116780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116489_
                                         _ctor-method116584_
                                         __constructor116784
                                         __klass116780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116489_
                                         _struct?116494_
                                         __struct?116783
                                         __klass116780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116489_
                                         _final?116495_
                                         __final?116787
                                         __klass116780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self116489_
                                         _metaclass116497_
                                         __metaclass116788
                                         __klass116780
                                         '#f)))))))
                            _g116914_))
                    ((let () (declare (not safe)) (##fx= _g116913_ 12))
                     (apply (lambda (_self116596_
                                     _id116597_
                                     _super116598_
                                     _precedence-list116599_
                                     _slots116600_
                                     _fields116601_
                                     _constructor116602_
                                     _struct?116603_
                                     _final?116604_
                                     _system?116605_
                                     _metaclass116606_
                                     _methods116607_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116596_
                                 _id116597_
                                 __id116785
                                 __klass116780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116596_
                                 _super116598_
                                 __super116786
                                 __klass116780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116596_
                                 _precedence-list116599_
                                 __precedence-list116791
                                 __klass116780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116596_
                                 _slots116600_
                                 __slots116782
                                 __klass116780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116596_
                                 _fields116601_
                                 __fields116789
                                 __klass116780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116596_
                                 _constructor116602_
                                 __constructor116784
                                 __klass116780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116596_
                                 _struct?116603_
                                 __struct?116783
                                 __klass116780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116596_
                                 _final?116604_
                                 __final?116787
                                 __klass116780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self116596_
                                 _metaclass116606_
                                 __metaclass116788
                                 __klass116780
                                 '#f))
                              (if _methods116607_
                                  (let ((__tmp116934
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods116607_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self116596_
                                     __tmp116934
                                     __methods116790
                                     __klass116780
                                     '#f))
                                  '#!void))
                            _g116914_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g116914_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where116341_
               _base-struct116342_
               _precedence-list116343_
               _direct-slots116344_)
        (let* ((_base-fields116346_
                (if _base-struct116342_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where116341_
                        _base-struct116342_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields116348_ (reverse _base-fields116346_))
               (_seen-slots116356_
                (let ((_tab116350_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g116351116353_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab116350_ _g116351116353_ '#t)))
                   _base-fields116346_)
                  _tab116350_))
               (_process-slot116360_
                (lambda (_slot116358_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots116356_ _slot116358_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots116356_ _slot116358_ '#t))
                        (set! _r-fields116348_
                              (let ()
                                (declare (not safe))
                                (cons _slot116358_ _r-fields116348_))))))))
          (for-each
           (lambda (_mixin116363_)
             (let ((_klass116365_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where116341_
                       _mixin116363_))))
               (if (##structure-ref _klass116365_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot116360_
                    (##structure-ref _klass116365_ '5 gxc#!class::t '#f)))))
           _precedence-list116343_)
          (for-each _process-slot116360_ _direct-slots116344_)
          (reverse _r-fields116348_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass116300_ _slot116301_)
        (let _lp116303_ ((_rest116305_
                          (##structure-ref _klass116300_ '5 gxc#!class::t '#f))
                         (_offset116306_ '1))
          (let* ((_rest116307116315_ _rest116305_)
                 (_else116309116323_
                  (lambda ()
                    (let ((__tmp116936
                           (##structure-ref _klass116300_ '1 gxc#!type::t '#f))
                          (__tmp116935
                           (##structure-ref
                            _klass116300_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp116936
                       __tmp116935
                       _slot116301_))))
                 (_K116311116329_
                  (lambda (_rest116326_ _s116327_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s116327_ _slot116301_))
                        _offset116306_
                        (let ((__tmp116937
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset116306_ '1))))
                          (declare (not safe))
                          (_lp116303_ _rest116326_ __tmp116937))))))
            (if (let () (declare (not safe)) (##pair? _rest116307116315_))
                (let ((_hd116312116332_
                       (let ()
                         (declare (not safe))
                         (##car _rest116307116315_)))
                      (_tl116313116334_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest116307116315_))))
                  (let* ((_s116337_ _hd116312116332_)
                         (_rest116339_ _tl116313116334_))
                    (declare (not safe))
                    (_K116311116329_ _rest116339_ _s116337_)))
                (let () (declare (not safe)) (_else116309116323_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass116258_ _slot116259_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass116258_ _slot116259_))
            _klass116258_
            (let _lp116261_ ((_rest116263_
                              (##structure-ref
                               _klass116258_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest116264116272_ _rest116263_)
                     (_else116266116280_ (lambda () '#f))
                     (_K116268116288_
                      (lambda (_rest116283_ _super116284_)
                        (let ((_super-class116286_
                               (let ((__tmp116938
                                      (let ((__tmp116939
                                             (let ((__tmp116941
                                                    (##structure-ref
                                                     _klass116258_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp116940
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot116259_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp116941
                                                     __tmp116940))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp116939))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp116938
                                  _super116284_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class116286_
                                 _slot116259_))
                              _super-class116286_
                              (let ()
                                (declare (not safe))
                                (_lp116261_ _rest116283_)))))))
                (if (let () (declare (not safe)) (##pair? _rest116264116272_))
                    (let ((_hd116269116291_
                           (let ()
                             (declare (not safe))
                             (##car _rest116264116272_)))
                          (_tl116270116293_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest116264116272_))))
                      (let* ((_super116296_ _hd116269116291_)
                             (_rest116298_ _tl116270116293_))
                        (declare (not safe))
                        (_K116268116288_ _rest116298_ _super116296_)))
                    (let () (declare (not safe)) (_else116266116280_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass116255_ _slot116256_)
        (if (##structure-ref _klass116255_ '7 gxc#!class::t '#f)
            (memq _slot116256_
                  (##structure-ref _klass116255_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self116252_ _id116253_)
        (##structure-set! _self116252_ _id116253_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass116802 __method-table116803)
        (let ((__id116804
               (let ((__slot116805
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116802 'id))))
                 (if __slot116805
                     __slot116805
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116252_ _id116253_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116252_
               _id116253_
               __id116804
               __klass116802
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
      (lambda (_self116127_ _id116128_)
        (##structure-set! _self116127_ _id116128_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass116806 __method-table116807)
        (let ((__id116808
               (let ((__slot116809
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116806 'id))))
                 (if __slot116809
                     __slot116809
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self116127_ _id116128_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116127_
               _id116128_
               __id116808
               __klass116806
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
      (lambda (_self116000_ _id116001_ _slot116002_ _checked?116003_)
        (##structure-set! _self116000_ _id116001_ '1 gxc#!type::t '#f)
        (##structure-set! _self116000_ _slot116002_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self116000_
         _checked?116003_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass116810 __method-table116811)
        (let ((__id116812
               (let ((__slot116815
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116810 'id))))
                 (if __slot116815
                     __slot116815
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?116813
               (let ((__slot116816
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116810 'checked?))))
                 (if __slot116816
                     __slot116816
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot116814
               (let ((__slot116817
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116810 'slot))))
                 (if __slot116817
                     __slot116817
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self116000_ _id116001_ _slot116002_ _checked?116003_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116000_
               _id116001_
               __id116812
               __klass116810
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116000_
               _slot116002_
               __slot116814
               __klass116810
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self116000_
               _checked?116003_
               __checked?116813
               __klass116810
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
      (lambda (_self115873_ _id115874_ _slot115875_ _checked?115876_)
        (##structure-set! _self115873_ _id115874_ '1 gxc#!type::t '#f)
        (##structure-set! _self115873_ _slot115875_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self115873_
         _checked?115876_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass116818 __method-table116819)
        (let ((__id116820
               (let ((__slot116823
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116818 'id))))
                 (if __slot116823
                     __slot116823
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?116821
               (let ((__slot116824
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116818 'checked?))))
                 (if __slot116824
                     __slot116824
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot116822
               (let ((__slot116825
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass116818 'slot))))
                 (if __slot116825
                     __slot116825
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self115873_ _id115874_ _slot115875_ _checked?115876_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self115873_
               _id115874_
               __id116820
               __klass116818
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self115873_
               _slot115875_
               __slot116822
               __klass116818
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self115873_
               _checked?115876_
               __checked?116821
               __klass116818
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
      (lambda (_self115717_
               _id115718_
               _arity115719_
               _dispatch115720_
               _inline115721_
               _typedecl115722_)
        (if (let ((__tmp116948
                   (let ()
                     (declare (not safe))
                     (##structure-length _self115717_))))
              (declare (not safe))
              (##fx< '5 __tmp116948))
            (begin
              (let ((__tmp116943
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115717_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115717_
                 _id115718_
                 '1
                 __tmp116943
                 '#f))
              (let ((__tmp116944
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115717_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115717_
                 _arity115719_
                 '2
                 __tmp116944
                 '#f))
              (let ((__tmp116945
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115717_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115717_
                 _dispatch115720_
                 '3
                 __tmp116945
                 '#f))
              (let ((__tmp116946
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115717_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115717_
                 _inline115721_
                 '4
                 __tmp116946
                 '#f))
              (let ((__tmp116947
                     (let ()
                       (declare (not safe))
                       (##structure-type _self115717_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self115717_
                 _typedecl115722_
                 '5
                 __tmp116947
                 '#f)))
            (let ((__tmp116942
                   (let ()
                     (declare (not safe))
                     (##vector-length _self115717_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self115717_
                     '5
                     __tmp116942)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self115727_ _id115728_ _arity115729_ _dispatch115730_)
        (let* ((_inline115732_ '#f) (_typedecl115734_ '#f))
          (if (let ((__tmp116955
                     (let ()
                       (declare (not safe))
                       (##structure-length _self115727_))))
                (declare (not safe))
                (##fx< '5 __tmp116955))
              (begin
                (let ((__tmp116950
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115727_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115727_
                   _id115728_
                   '1
                   __tmp116950
                   '#f))
                (let ((__tmp116951
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115727_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115727_
                   _arity115729_
                   '2
                   __tmp116951
                   '#f))
                (let ((__tmp116952
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115727_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115727_
                   _dispatch115730_
                   '3
                   __tmp116952
                   '#f))
                (let ((__tmp116953
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115727_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115727_
                   _inline115732_
                   '4
                   __tmp116953
                   '#f))
                (let ((__tmp116954
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115727_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115727_
                   _typedecl115734_
                   '5
                   __tmp116954
                   '#f)))
              (let ((__tmp116949
                     (let ()
                       (declare (not safe))
                       (##vector-length _self115727_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self115727_
                       '5
                       __tmp116949))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self115736_
               _id115737_
               _arity115738_
               _dispatch115739_
               _inline115740_)
        (let ((_typedecl115742_ '#f))
          (if (let ((__tmp116962
                     (let ()
                       (declare (not safe))
                       (##structure-length _self115736_))))
                (declare (not safe))
                (##fx< '5 __tmp116962))
              (begin
                (let ((__tmp116957
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115736_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115736_
                   _id115737_
                   '1
                   __tmp116957
                   '#f))
                (let ((__tmp116958
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115736_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115736_
                   _arity115738_
                   '2
                   __tmp116958
                   '#f))
                (let ((__tmp116959
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115736_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115736_
                   _dispatch115739_
                   '3
                   __tmp116959
                   '#f))
                (let ((__tmp116960
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115736_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115736_
                   _inline115740_
                   '4
                   __tmp116960
                   '#f))
                (let ((__tmp116961
                       (let ()
                         (declare (not safe))
                         (##structure-type _self115736_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self115736_
                   _typedecl115742_
                   '5
                   __tmp116961
                   '#f)))
              (let ((__tmp116956
                     (let ()
                       (declare (not safe))
                       (##vector-length _self115736_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self115736_
                       '5
                       __tmp116956))))))
    (define gxc#!lambda:::init!
      (lambda _g116964_
        (let ((_g116963_ (let () (declare (not safe)) (##length _g116964_))))
          (cond ((let () (declare (not safe)) (##fx= _g116963_ 4))
                 (apply (lambda (_self115727_
                                 _id115728_
                                 _arity115729_
                                 _dispatch115730_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self115727_
                             _id115728_
                             _arity115729_
                             _dispatch115730_)))
                        _g116964_))
                ((let () (declare (not safe)) (##fx= _g116963_ 5))
                 (apply (lambda (_self115736_
                                 _id115737_
                                 _arity115738_
                                 _dispatch115739_
                                 _inline115740_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self115736_
                             _id115737_
                             _arity115738_
                             _dispatch115739_
                             _inline115740_)))
                        _g116964_))
                ((let () (declare (not safe)) (##fx= _g116963_ 6))
                 (apply (lambda (_self115744_
                                 _id115745_
                                 _arity115746_
                                 _dispatch115747_
                                 _inline115748_
                                 _typedecl115749_)
                          (if (let ((__tmp116971
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self115744_))))
                                (declare (not safe))
                                (##fx< '5 __tmp116971))
                              (begin
                                (let ((__tmp116966
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115744_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115744_
                                   _id115745_
                                   '1
                                   __tmp116966
                                   '#f))
                                (let ((__tmp116967
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115744_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115744_
                                   _arity115746_
                                   '2
                                   __tmp116967
                                   '#f))
                                (let ((__tmp116968
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115744_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115744_
                                   _dispatch115747_
                                   '3
                                   __tmp116968
                                   '#f))
                                (let ((__tmp116969
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115744_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115744_
                                   _inline115748_
                                   '4
                                   __tmp116969
                                   '#f))
                                (let ((__tmp116970
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self115744_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self115744_
                                   _typedecl115749_
                                   '5
                                   __tmp116970
                                   '#f)))
                              (let ((__tmp116965
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self115744_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self115744_
                                       '5
                                       __tmp116965))))
                        _g116964_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g116964_))))))
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
      (lambda (_self115469_ . _args115470_)
        (apply struct-instance-init! _self115469_ _args115470_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type115344_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115344_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type115344_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass115337_)
        (let ((_$e115339_
               (##structure-ref _klass115337_ '11 gxc#!class::t '#f)))
          (if _$e115339_
              _$e115339_
              (let ((_tab115342_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass115337_
                 _tab115342_
                 '11
                 gxc#!class::t
                 '#f)
                _tab115342_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass115328_ _method115329_)
        (let ((_tab115330115332_
               (##structure-ref _klass115328_ '11 gxc#!class::t '#f)))
          (if _tab115330115332_
              (let ((_tab115335_ _tab115330115332_))
                (declare (not safe))
                (hash-get _tab115335_ _method115329_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type115325_ _method115326_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115325_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type115325_ _method115326_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym115309_ _type115310_ _local?115311_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type115310_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym115309_
                     _type115310_)))
        (let ((__tmp116972
               (let () (declare (not safe)) (struct->list _type115310_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym115309_ '" " __tmp116972))
        (let ((__tmp116973
               (if _local?115311_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp116973 _sym115309_ _type115310_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym115316_ _type115317_)
        (let ((_local?115319_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym115316_
           _type115317_
           _local?115319_))))
    (define gxc#optimizer-declare-type!
      (lambda _g116975_
        (let ((_g116974_ (let () (declare (not safe)) (##length _g116975_))))
          (cond ((let () (declare (not safe)) (##fx= _g116974_ 2))
                 (apply (lambda (_sym115316_ _type115317_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym115316_
                             _type115317_)))
                        _g116975_))
                ((let () (declare (not safe)) (##fx= _g116974_ 3))
                 (apply (lambda (_sym115321_ _type115322_ _local?115323_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym115321_
                             _type115322_
                             _local?115323_)))
                        _g116975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g116975_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym115295_ _local?115296_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym115295_))
        (let ((__tmp116976
               (if _local?115296_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp116976 _sym115295_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym115301_)
        (let ((_local?115303_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym115301_ _local?115303_))))
    (define gxc#optimizer-clear-type!
      (lambda _g116978_
        (let ((_g116977_ (let () (declare (not safe)) (##length _g116978_))))
          (cond ((let () (declare (not safe)) (##fx= _g116977_ 1))
                 (apply (lambda (_sym115301_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym115301_)))
                        _g116978_))
                ((let () (declare (not safe)) (##fx= _g116977_ 2))
                 (apply (lambda (_sym115305_ _local?115306_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym115305_
                             _local?115306_)))
                        _g116978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g116978_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t115263_ _method115264_ _sym115265_ _rebind?115266_)
        (let* ((_type115268_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t115263_)))
               (_$e115270_
                (let () (declare (not safe)) (gxc#!type-vtab _type115268_))))
          (if _$e115270_
              ((lambda (_vtab115273_)
                 (let ((_$e115275_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab115273_ _method115264_))))
                   (if _$e115275_
                       ((lambda (_existing115278_)
                          (if _rebind?115266_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t115263_
                                   '" "
                                   _method115264_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab115273_
                                   _method115264_
                                   _sym115265_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing115278_ _sym115265_))
                                  '#!void
                                  (let ((__tmp116983
                                         (let ((__tmp116984
                                                (let ((__tmp116985
                                                       (let ((__tmp116986
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym115265_ '()))))
                 (declare (not safe))
                 (cons _method115264_ __tmp116986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t115263_
                                                        __tmp116985))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp116984))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp116983
                                     _method115264_)))))
                        _$e115275_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t115263_
                            '" "
                            _method115264_
                            '" => "
                            _sym115265_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab115273_
                            _method115264_
                            _sym115265_))))))
               _$e115270_)
              (if (let () (declare (not safe)) (not _type115268_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t115263_))
                  (let ((__tmp116979
                         (let ((__tmp116980
                                (let ((__tmp116981
                                       (let ((__tmp116982
                                              (let ()
                                                (declare (not safe))
                                                (cons _method115264_ '()))))
                                         (declare (not safe))
                                         (cons _sym115265_ __tmp116982))))
                                  (declare (not safe))
                                  (cons _type-t115263_ __tmp116981))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp116980))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp116979
                     _type115268_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t115283_ _method115284_ _sym115285_)
        (let ((_rebind?115287_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t115283_
           _method115284_
           _sym115285_
           _rebind?115287_))))
    (define gxc#optimizer-declare-method!
      (lambda _g116988_
        (let ((_g116987_ (let () (declare (not safe)) (##length _g116988_))))
          (cond ((let () (declare (not safe)) (##fx= _g116987_ 3))
                 (apply (lambda (_type-t115283_ _method115284_ _sym115285_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t115283_
                             _method115284_
                             _sym115285_)))
                        _g116988_))
                ((let () (declare (not safe)) (##fx= _g116987_ 4))
                 (apply (lambda (_type-t115289_
                                 _method115290_
                                 _sym115291_
                                 _rebind?115292_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t115289_
                             _method115290_
                             _sym115291_
                             _rebind?115292_)))
                        _g116988_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g116988_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym115251_)
        (let ((_$e115259_
               (let ((_ht115252115254_ (gxc#current-compile-local-type)))
                 (if _ht115252115254_
                     (let ((_ht115257_ _ht115252115254_))
                       (declare (not safe))
                       (hash-get _ht115257_ _sym115251_))
                     '#f))))
          (if _$e115259_
              _$e115259_
              (let ((__tmp116989
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp116989 _sym115251_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym115243_)
        (let ((_type115244115246_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym115243_))))
          (if _type115244115246_
              (let ((_type115249_ _type115244115246_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type115249_ 'gxc#!alias::t))
                    (let ((__tmp116990
                           (##structure-ref _type115249_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp116990))
                    _type115249_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where115235_ _klass-id115236_)
        (let ((_$e115238_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id115236_))))
          (if _$e115238_
              ((lambda (_klass115241_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass115241_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where115235_
                        _klass-id115236_
                        _klass115241_)))
                 _klass115241_)
               _$e115238_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where115235_
                 _klass-id115236_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t115232_ _method115233_)
        (let ((__tmp116991
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t115232_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp116991 _method115233_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym115230_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym115230_))
        (let ((__tmp116992
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp116992 _sym115230_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym115228_)
        (let ((__tmp116993
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp116993 _sym115228_))))
    (define gxc#identifier-symbol
      (lambda (_stx115226_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx115226_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx115226_))
            (let () (declare (not safe)) (gx#stx-e _stx115226_)))))))
