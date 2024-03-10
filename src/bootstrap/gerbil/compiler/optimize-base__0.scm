(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710067692)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp113844 (list))
            (__tmp113842
             (let ((__tmp113843
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113843 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp113844
         '(type ssxi methods)
         __tmp113842
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args113778_
        (apply make-instance gxc#optimizer-info::t _$args113778_)))
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
      (lambda (_self113776_)
        (if (let ((__tmp113852
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113776_))))
              (declare (not safe))
              (##fx< '3 __tmp113852))
            (begin
              (let ((__tmp113847
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113846
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113776_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113776_
                 __tmp113847
                 '1
                 __tmp113846
                 '#f))
              (let ((__tmp113849
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113848
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113776_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113776_
                 __tmp113849
                 '2
                 __tmp113848
                 '#f))
              (let ((__tmp113851
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113850
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113776_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113776_
                 __tmp113851
                 '3
                 __tmp113850
                 '#f)))
            (let ((__tmp113845
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113776_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113776_
                     '3
                     __tmp113845)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp113855 (list))
            (__tmp113853
             (let ((__tmp113854
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113854 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp113855
         '(id)
         __tmp113853
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args113651_ (apply make-instance gxc#!type::t _$args113651_)))
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
      (let ((__tmp113858 (list gxc#!type::t))
            (__tmp113856
             (let ((__tmp113857
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113857 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp113858
         '()
         __tmp113856
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args113648_ (apply make-instance gxc#!alias::t _$args113648_)))
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
      (let ((__tmp113861 (list gxc#!type::t))
            (__tmp113859
             (let ((__tmp113860
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113860 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp113861
         '()
         __tmp113859
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args113645_
        (apply make-instance gxc#!procedure::t _$args113645_)))
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
      (let ((__tmp113864 (list gxc#!type::t))
            (__tmp113862
             (let ((__tmp113863
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113863 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp113864
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp113862
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args113642_ (apply make-instance gxc#!class::t _$args113642_)))
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
      (let ((__tmp113867 (list gxc#!procedure::t))
            (__tmp113865
             (let ((__tmp113866
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113866 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp113867
         '()
         __tmp113865
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args113639_
        (apply make-instance gxc#!predicate::t _$args113639_)))
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
      (let ((__tmp113870 (list gxc#!procedure::t))
            (__tmp113868
             (let ((__tmp113869
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113869 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp113870
         '()
         __tmp113868
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args113636_
        (apply make-instance gxc#!constructor::t _$args113636_)))
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
      (let ((__tmp113873 (list gxc#!procedure::t))
            (__tmp113871
             (let ((__tmp113872
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113872 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp113873
         '(slot checked?)
         __tmp113871
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args113633_
        (apply make-instance gxc#!accessor::t _$args113633_)))
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
      (let ((__tmp113876 (list gxc#!procedure::t))
            (__tmp113874
             (let ((__tmp113875
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113875 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp113876
         '(slot checked?)
         __tmp113874
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args113630_
        (apply make-instance gxc#!mutator::t _$args113630_)))
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
      (let ((__tmp113879 (list gxc#!procedure::t))
            (__tmp113877
             (let ((__tmp113878
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113878 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp113879
         '(arity dispatch inline inline-typedecl)
         __tmp113877
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args113627_
        (apply make-instance gxc#!lambda::t _$args113627_)))
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
      (let ((__tmp113882 (list gxc#!procedure::t))
            (__tmp113880
             (let ((__tmp113881
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113881 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp113882
         '(clauses)
         __tmp113880
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args113624_
        (apply make-instance gxc#!case-lambda::t _$args113624_)))
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
      (let ((__tmp113885 (list gxc#!procedure::t))
            (__tmp113883
             (let ((__tmp113884
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113884 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp113885
         '(table dispatch)
         __tmp113883
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args113621_
        (apply make-instance gxc#!kw-lambda::t _$args113621_)))
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
      (let ((__tmp113888 (list gxc#!procedure::t))
            (__tmp113886
             (let ((__tmp113887
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113887 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp113888
         '(keys main)
         __tmp113886
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args113618_
        (apply make-instance gxc#!kw-lambda-primary::t _$args113618_)))
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
      (let ((__tmp113889 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp113889
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args113615_
        (apply make-instance gxc#!primitive::t _$args113615_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp113890 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp113890
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args113612_
        (apply make-instance gxc#!primitive-lambda::t _$args113612_)))
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
      (let ((__tmp113891 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp113891
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args113609_
        (apply make-instance gxc#!primitive-case-lambda::t _$args113609_)))
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
      (lambda (_self113491_
               _id113492_
               _super113493_
               _slots113494_
               _ctor-method113495_
               _struct?113496_
               _final?113497_
               _metaclass113498_)
        (let _lp113500_ ((_rest113502_ _super113493_))
          (let* ((_rest113503113511_ _rest113502_)
                 (_else113505113519_ (lambda () '#!void))
                 (_K113507113525_
                  (lambda (_rest113522_ _super-id113523_)
                    (if (##structure-ref
                         (let ((__tmp113894
                                (let ((__tmp113895
                                       (let ()
                                         (declare (not safe))
                                         (cons _id113492_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp113895))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp113894
                            _super-id113523_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp113892
                               (let ((__tmp113893
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113492_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp113893))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp113892
                           _super-id113523_))
                        '#!void)
                    (let () (declare (not safe)) (_lp113500_ _rest113522_)))))
            (if (let () (declare (not safe)) (##pair? _rest113503113511_))
                (let ((_hd113508113528_
                       (let ()
                         (declare (not safe))
                         (##car _rest113503113511_)))
                      (_tl113509113530_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113503113511_))))
                  (let* ((_super-id113533_ _hd113508113528_)
                         (_rest113535_ _tl113509113530_))
                    (declare (not safe))
                    (_K113507113525_ _rest113535_ _super-id113533_)))
                '#!void)))
        (let* ((_ctor-method113585_
                (let ((_$e113537_ _ctor-method113495_))
                  (if _$e113537_
                      _$e113537_
                      (let _lp113540_ ((_rest113542_ _super113493_)
                                       (_method113543_ '#f))
                        (let* ((_rest113544113552_ _rest113542_)
                               (_else113546113560_ (lambda () _method113543_))
                               (_K113548113573_
                                (lambda (_rest113563_ _super-id113564_)
                                  (let* ((_klass113566_
                                          (let ((__tmp113896
                                                 (let ((__tmp113897
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id113492_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp113897))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp113896
                                             _super-id113564_)))
                                         (_$e113568_
                                          (##structure-ref
                                           _klass113566_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e113568_
                                        ((lambda (_ctor-method113571_)
                                           (if _method113543_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method113571_
                                                          _method113543_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp113540_
                                                      _rest113563_
                                                      _ctor-method113571_))
                                                   (let ((__tmp113898
                                                          (let ((__tmp113899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id113492_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp113899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp113898
                                                      _method113543_
                                                      _ctor-method113571_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp113540_
                                                  _rest113563_
                                                  _ctor-method113571_))))
                                         _$e113568_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp113540_
                                           _rest113563_
                                           _method113543_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest113544113552_))
                              (let ((_hd113549113576_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest113544113552_)))
                                    (_tl113550113578_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest113544113552_))))
                                (let* ((_super-id113581_ _hd113549113576_)
                                       (_rest113583_ _tl113550113578_))
                                  (declare (not safe))
                                  (_K113548113573_
                                   _rest113583_
                                   _super-id113581_)))
                              (let ()
                                (declare (not safe))
                                (_else113546113560_))))))))
               (_g113900_
                (let ((__tmp113905
                       (lambda (_klass-id113587_)
                         (let ((__tmp113906
                                (##structure-ref
                                 (let ((__tmp113907
                                        (let ((__tmp113908
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113492_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp113908))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp113907
                                    _klass-id113587_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id113587_ __tmp113906))))
                      (__tmp113902
                       (lambda (_klass-id113589_)
                         (##structure-ref
                          (let ((__tmp113903
                                 (let ((__tmp113904
                                        (let ()
                                          (declare (not safe))
                                          (cons _id113492_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp113904))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp113903
                             _klass-id113589_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super113493_
                   'get-precedence-list:
                   __tmp113905
                   'struct:
                   __tmp113902
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g113901_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g113900_)
                         (##vector-length _g113900_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g113901_ 2)))
                  (error "Context expects 2 values" _g113901_)))
            (let ((_precedence-list113591_
                   (let () (declare (not safe)) (##vector-ref _g113900_ 0)))
                  (_base-struct113592_
                   (let () (declare (not safe)) (##vector-ref _g113900_ 1))))
              (let ((_fields113594_
                     (let ((__tmp113909
                            (let ((__tmp113910
                                   (let ()
                                     (declare (not safe))
                                     (cons _id113492_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp113910))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp113909
                        _base-struct113592_
                        _precedence-list113591_
                        _slots113494_))))
                (##structure-set! _self113491_ _id113492_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self113491_
                 _super113493_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113491_
                 _precedence-list113591_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113491_
                 _slots113494_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113491_
                 _fields113594_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113491_
                 _ctor-method113585_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113491_
                 _struct?113496_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113491_
                 _final?113497_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113491_
                 _metaclass113498_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self113597_
               _id113598_
               _super113599_
               _precedence-list113600_
               _slots113601_
               _fields113602_
               _constructor113603_
               _struct?113604_
               _final?113605_
               _metaclass113606_
               _methods113607_)
        (##structure-set! _self113597_ _id113598_ '1 gxc#!type::t '#f)
        (##structure-set! _self113597_ _super113599_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self113597_
         _precedence-list113600_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self113597_ _slots113601_ '4 gxc#!class::t '#f)
        (##structure-set! _self113597_ _fields113602_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self113597_
         _constructor113603_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self113597_ _struct?113604_ '7 gxc#!class::t '#f)
        (##structure-set! _self113597_ _final?113605_ '8 gxc#!class::t '#f)
        (##structure-set! _self113597_ _metaclass113606_ '9 gxc#!class::t '#f)
        (if _methods113607_
            (##structure-set!
             _self113597_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods113607_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g113912_
        (let ((_g113911_ (let () (declare (not safe)) (##length _g113912_))))
          (cond ((let () (declare (not safe)) (##fx= _g113911_ 8))
                 (apply (lambda (_self113491_
                                 _id113492_
                                 _super113493_
                                 _slots113494_
                                 _ctor-method113495_
                                 _struct?113496_
                                 _final?113497_
                                 _metaclass113498_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self113491_
                             _id113492_
                             _super113493_
                             _slots113494_
                             _ctor-method113495_
                             _struct?113496_
                             _final?113497_
                             _metaclass113498_)))
                        _g113912_))
                ((let () (declare (not safe)) (##fx= _g113911_ 11))
                 (apply (lambda (_self113597_
                                 _id113598_
                                 _super113599_
                                 _precedence-list113600_
                                 _slots113601_
                                 _fields113602_
                                 _constructor113603_
                                 _struct?113604_
                                 _final?113605_
                                 _metaclass113606_
                                 _methods113607_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self113597_
                             _id113598_
                             _super113599_
                             _precedence-list113600_
                             _slots113601_
                             _fields113602_
                             _constructor113603_
                             _struct?113604_
                             _final?113605_
                             _metaclass113606_
                             _methods113607_)))
                        _g113912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g113912_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass113780 __method-table113781)
        (let ((__slots113782
               (let ((__slot113792
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113780 'slots))))
                 (if __slot113792
                     __slot113792
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__fields113783
               (let ((__slot113793
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113780 'fields))))
                 (if __slot113793
                     __slot113793
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__final?113784
               (let ((__slot113794
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113780 'final?))))
                 (if __slot113794
                     __slot113794
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__methods113785
               (let ((__slot113795
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113780 'methods))))
                 (if __slot113795
                     __slot113795
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__precedence-list113786
               (let ((__slot113796
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113780 'precedence-list))))
                 (if __slot113796
                     __slot113796
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__struct?113787
               (let ((__slot113797
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113780 'struct?))))
                 (if __slot113797
                     __slot113797
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__id113788
               (let ((__slot113798
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113780 'id))))
                 (if __slot113798
                     __slot113798
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super113789
               (let ((__slot113799
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113780 'super))))
                 (if __slot113799
                     __slot113799
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__metaclass113790
               (let ((__slot113800
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113780 'metaclass))))
                 (if __slot113800
                     __slot113800
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__constructor113791
               (let ((__slot113801
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113780 'constructor))))
                 (if __slot113801
                     __slot113801
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor))))))
          (lambda _g113914_
            (let ((_g113913_
                   (let () (declare (not safe)) (##length _g113914_))))
              (cond ((let () (declare (not safe)) (##fx= _g113913_ 8))
                     (apply (lambda (_self113491_
                                     _id113492_
                                     _super113493_
                                     _slots113494_
                                     _ctor-method113495_
                                     _struct?113496_
                                     _final?113497_
                                     _metaclass113498_)
                              (let _lp113500_ ((_rest113502_ _super113493_))
                                (let* ((_rest113503113511_ _rest113502_)
                                       (_else113505113519_ (lambda () '#!void))
                                       (_K113507113525_
                                        (lambda (_rest113522_ _super-id113523_)
                                          (if (##structure-ref
                                               (let ((__tmp113917
                                                      (let ((__tmp113918
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id113492_ '()))))
                (declare (not safe))
                (cons '!class __tmp113918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp113917
                                                  _super-id113523_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp113915
                                                     (let ((__tmp113916
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id113492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp113916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp113915
                                                 _super-id113523_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp113500_ _rest113522_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest113503113511_))
                                      (let ((_hd113508113528_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest113503113511_)))
                                            (_tl113509113530_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest113503113511_))))
                                        (let* ((_super-id113533_
                                                _hd113508113528_)
                                               (_rest113535_ _tl113509113530_))
                                          (declare (not safe))
                                          (_K113507113525_
                                           _rest113535_
                                           _super-id113533_)))
                                      '#!void)))
                              (let* ((_ctor-method113585_
                                      (let ((_$e113537_ _ctor-method113495_))
                                        (if _$e113537_
                                            _$e113537_
                                            (let _lp113540_ ((_rest113542_
                                                              _super113493_)
                                                             (_method113543_
                                                              '#f))
                                              (let* ((_rest113544113552_
                                                      _rest113542_)
                                                     (_else113546113560_
                                                      (lambda ()
                                                        _method113543_))
                                                     (_K113548113573_
                                                      (lambda (_rest113563_
                                                               _super-id113564_)
                                                        (let* ((_klass113566_
                                                                (let ((__tmp113919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113920
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113492_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp113920))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp113919
                           _super-id113564_)))
                       (_$e113568_
                        (##structure-ref _klass113566_ '6 gxc#!class::t '#f)))
                  (if _$e113568_
                      ((lambda (_ctor-method113571_)
                         (if _method113543_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method113571_ _method113543_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp113540_
                                    _rest113563_
                                    _ctor-method113571_))
                                 (let ((__tmp113921
                                        (let ((__tmp113922
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113492_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp113922))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp113921
                                    _method113543_
                                    _ctor-method113571_)))
                             (let ()
                               (declare (not safe))
                               (_lp113540_ _rest113563_ _ctor-method113571_))))
                       _$e113568_)
                      (let ()
                        (declare (not safe))
                        (_lp113540_ _rest113563_ _method113543_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest113544113552_))
                                                    (let ((_hd113549113576_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest113544113552_)))
                                                          (_tl113550113578_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest113544113552_))))
                                                      (let* ((_super-id113581_
                                                              _hd113549113576_)
                                                             (_rest113583_
                                                              _tl113550113578_))
                                                        (declare (not safe))
                                                        (_K113548113573_
                                                         _rest113583_
                                                         _super-id113581_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else113546113560_))))))))
                                     (_g113923_
                                      (let ((__tmp113928
                                             (lambda (_klass-id113587_)
                                               (let ((__tmp113929
                                                      (##structure-ref
                                                       (let ((__tmp113930
                                                              (let ((__tmp113931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id113492_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp113931))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp113930 _klass-id113587_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id113587_
                                                       __tmp113929))))
                                            (__tmp113925
                                             (lambda (_klass-id113589_)
                                               (##structure-ref
                                                (let ((__tmp113926
                                                       (let ((__tmp113927
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id113492_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp113927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp113926
                                                   _klass-id113589_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super113493_
                                         'get-precedence-list:
                                         __tmp113928
                                         'struct:
                                         __tmp113925
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g113924_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g113923_)
                                               (##vector-length _g113923_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g113924_ 2)))
                                        (error "Context expects 2 values"
                                               _g113924_)))
                                  (let ((_precedence-list113591_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113923_ 0)))
                                        (_base-struct113592_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113923_ 1))))
                                    (let ((_fields113594_
                                           (let ((__tmp113932
                                                  (let ((__tmp113933
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id113492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp113933))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp113932
                                              _base-struct113592_
                                              _precedence-list113591_
                                              _slots113494_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113491_
                                         _id113492_
                                         __id113788
                                         __klass113780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113491_
                                         _super113493_
                                         __super113789
                                         __klass113780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113491_
                                         _precedence-list113591_
                                         __precedence-list113786
                                         __klass113780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113491_
                                         _slots113494_
                                         __slots113782
                                         __klass113780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113491_
                                         _fields113594_
                                         __fields113783
                                         __klass113780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113491_
                                         _ctor-method113585_
                                         __constructor113791
                                         __klass113780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113491_
                                         _struct?113496_
                                         __struct?113787
                                         __klass113780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113491_
                                         _final?113497_
                                         __final?113784
                                         __klass113780
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113491_
                                         _metaclass113498_
                                         __metaclass113790
                                         __klass113780
                                         '#f)))))))
                            _g113914_))
                    ((let () (declare (not safe)) (##fx= _g113913_ 11))
                     (apply (lambda (_self113597_
                                     _id113598_
                                     _super113599_
                                     _precedence-list113600_
                                     _slots113601_
                                     _fields113602_
                                     _constructor113603_
                                     _struct?113604_
                                     _final?113605_
                                     _metaclass113606_
                                     _methods113607_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113597_
                                 _id113598_
                                 __id113788
                                 __klass113780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113597_
                                 _super113599_
                                 __super113789
                                 __klass113780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113597_
                                 _precedence-list113600_
                                 __precedence-list113786
                                 __klass113780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113597_
                                 _slots113601_
                                 __slots113782
                                 __klass113780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113597_
                                 _fields113602_
                                 __fields113783
                                 __klass113780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113597_
                                 _constructor113603_
                                 __constructor113791
                                 __klass113780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113597_
                                 _struct?113604_
                                 __struct?113787
                                 __klass113780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113597_
                                 _final?113605_
                                 __final?113784
                                 __klass113780
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113597_
                                 _metaclass113606_
                                 __metaclass113790
                                 __klass113780
                                 '#f))
                              (if _methods113607_
                                  (let ((__tmp113934
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods113607_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self113597_
                                     __tmp113934
                                     __methods113785
                                     __klass113780
                                     '#f))
                                  '#!void))
                            _g113914_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g113914_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where113343_
               _base-struct113344_
               _precedence-list113345_
               _direct-slots113346_)
        (let* ((_base-fields113348_
                (if _base-struct113344_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where113343_
                        _base-struct113344_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields113350_ (reverse _base-fields113348_))
               (_seen-slots113358_
                (let ((_tab113352_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g113353113355_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab113352_ _g113353113355_ '#t)))
                   _base-fields113348_)
                  _tab113352_))
               (_process-slot113362_
                (lambda (_slot113360_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots113358_ _slot113360_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots113358_ _slot113360_ '#t))
                        (set! _r-fields113350_
                              (let ()
                                (declare (not safe))
                                (cons _slot113360_ _r-fields113350_))))))))
          (for-each
           (lambda (_mixin113365_)
             (let ((_klass113367_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where113343_
                       _mixin113365_))))
               (if (##structure-ref _klass113367_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot113362_
                    (##structure-ref _klass113367_ '5 gxc#!class::t '#f)))))
           _precedence-list113345_)
          (for-each _process-slot113362_ _direct-slots113346_)
          (reverse _r-fields113350_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass113302_ _slot113303_)
        (let _lp113305_ ((_rest113307_
                          (##structure-ref _klass113302_ '5 gxc#!class::t '#f))
                         (_offset113308_ '1))
          (let* ((_rest113309113317_ _rest113307_)
                 (_else113311113325_
                  (lambda ()
                    (let ((__tmp113936
                           (##structure-ref _klass113302_ '1 gxc#!type::t '#f))
                          (__tmp113935
                           (##structure-ref
                            _klass113302_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp113936
                       __tmp113935
                       _slot113303_))))
                 (_K113313113331_
                  (lambda (_rest113328_ _s113329_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s113329_ _slot113303_))
                        _offset113308_
                        (let ((__tmp113937
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset113308_ '1))))
                          (declare (not safe))
                          (_lp113305_ _rest113328_ __tmp113937))))))
            (if (let () (declare (not safe)) (##pair? _rest113309113317_))
                (let ((_hd113314113334_
                       (let ()
                         (declare (not safe))
                         (##car _rest113309113317_)))
                      (_tl113315113336_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113309113317_))))
                  (let* ((_s113339_ _hd113314113334_)
                         (_rest113341_ _tl113315113336_))
                    (declare (not safe))
                    (_K113313113331_ _rest113341_ _s113339_)))
                (let () (declare (not safe)) (_else113311113325_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass113260_ _slot113261_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass113260_ _slot113261_))
            _klass113260_
            (let _lp113263_ ((_rest113265_
                              (##structure-ref
                               _klass113260_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest113266113274_ _rest113265_)
                     (_else113268113282_ (lambda () '#f))
                     (_K113270113290_
                      (lambda (_rest113285_ _super113286_)
                        (let ((_super-class113288_
                               (let ((__tmp113938
                                      (let ((__tmp113939
                                             (let ((__tmp113941
                                                    (##structure-ref
                                                     _klass113260_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp113940
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot113261_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp113941
                                                     __tmp113940))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp113939))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp113938
                                  _super113286_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class113288_
                                 _slot113261_))
                              _super-class113288_
                              (let ()
                                (declare (not safe))
                                (_lp113263_ _rest113285_)))))))
                (if (let () (declare (not safe)) (##pair? _rest113266113274_))
                    (let ((_hd113271113293_
                           (let ()
                             (declare (not safe))
                             (##car _rest113266113274_)))
                          (_tl113272113295_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest113266113274_))))
                      (let* ((_super113298_ _hd113271113293_)
                             (_rest113300_ _tl113272113295_))
                        (declare (not safe))
                        (_K113270113290_ _rest113300_ _super113298_)))
                    (let () (declare (not safe)) (_else113268113282_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass113257_ _slot113258_)
        (if (##structure-ref _klass113257_ '7 gxc#!class::t '#f)
            (memq _slot113258_
                  (##structure-ref _klass113257_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self113254_ _id113255_)
        (##structure-set! _self113254_ _id113255_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass113802 __method-table113803)
        (let ((__id113804
               (let ((__slot113805
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113802 'id))))
                 (if __slot113805
                     __slot113805
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113254_ _id113255_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113254_
               _id113255_
               __id113804
               __klass113802
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
      (lambda (_self113129_ _id113130_)
        (##structure-set! _self113129_ _id113130_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass113806 __method-table113807)
        (let ((__id113808
               (let ((__slot113809
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113806 'id))))
                 (if __slot113809
                     __slot113809
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113129_ _id113130_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113129_
               _id113130_
               __id113808
               __klass113806
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
      (lambda (_self113002_ _id113003_ _slot113004_ _checked?113005_)
        (##structure-set! _self113002_ _id113003_ '1 gxc#!type::t '#f)
        (##structure-set! _self113002_ _slot113004_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self113002_
         _checked?113005_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass113810 __method-table113811)
        (let ((__slot113812
               (let ((__slot113815
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113810 'slot))))
                 (if __slot113815
                     __slot113815
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id113813
               (let ((__slot113816
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113810 'id))))
                 (if __slot113816
                     __slot113816
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?113814
               (let ((__slot113817
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113810 'checked?))))
                 (if __slot113817
                     __slot113817
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self113002_ _id113003_ _slot113004_ _checked?113005_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113002_
               _id113003_
               __id113813
               __klass113810
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113002_
               _slot113004_
               __slot113812
               __klass113810
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113002_
               _checked?113005_
               __checked?113814
               __klass113810
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
      (lambda (_self112875_ _id112876_ _slot112877_ _checked?112878_)
        (##structure-set! _self112875_ _id112876_ '1 gxc#!type::t '#f)
        (##structure-set! _self112875_ _slot112877_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self112875_
         _checked?112878_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass113818 __method-table113819)
        (let ((__slot113820
               (let ((__slot113823
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113818 'slot))))
                 (if __slot113823
                     __slot113823
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id113821
               (let ((__slot113824
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113818 'id))))
                 (if __slot113824
                     __slot113824
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?113822
               (let ((__slot113825
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113818 'checked?))))
                 (if __slot113825
                     __slot113825
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self112875_ _id112876_ _slot112877_ _checked?112878_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112875_
               _id112876_
               __id113821
               __klass113818
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112875_
               _slot112877_
               __slot113820
               __klass113818
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112875_
               _checked?112878_
               __checked?113822
               __klass113818
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
      (lambda (_self112719_
               _id112720_
               _arity112721_
               _dispatch112722_
               _inline112723_
               _typedecl112724_)
        (if (let ((__tmp113948
                   (let ()
                     (declare (not safe))
                     (##structure-length _self112719_))))
              (declare (not safe))
              (##fx< '5 __tmp113948))
            (begin
              (let ((__tmp113943
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112719_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112719_
                 _id112720_
                 '1
                 __tmp113943
                 '#f))
              (let ((__tmp113944
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112719_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112719_
                 _arity112721_
                 '2
                 __tmp113944
                 '#f))
              (let ((__tmp113945
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112719_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112719_
                 _dispatch112722_
                 '3
                 __tmp113945
                 '#f))
              (let ((__tmp113946
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112719_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112719_
                 _inline112723_
                 '4
                 __tmp113946
                 '#f))
              (let ((__tmp113947
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112719_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112719_
                 _typedecl112724_
                 '5
                 __tmp113947
                 '#f)))
            (let ((__tmp113942
                   (let ()
                     (declare (not safe))
                     (##vector-length _self112719_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self112719_
                     '5
                     __tmp113942)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self112729_ _id112730_ _arity112731_ _dispatch112732_)
        (let* ((_inline112734_ '#f) (_typedecl112736_ '#f))
          (if (let ((__tmp113955
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112729_))))
                (declare (not safe))
                (##fx< '5 __tmp113955))
              (begin
                (let ((__tmp113950
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112729_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112729_
                   _id112730_
                   '1
                   __tmp113950
                   '#f))
                (let ((__tmp113951
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112729_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112729_
                   _arity112731_
                   '2
                   __tmp113951
                   '#f))
                (let ((__tmp113952
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112729_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112729_
                   _dispatch112732_
                   '3
                   __tmp113952
                   '#f))
                (let ((__tmp113953
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112729_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112729_
                   _inline112734_
                   '4
                   __tmp113953
                   '#f))
                (let ((__tmp113954
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112729_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112729_
                   _typedecl112736_
                   '5
                   __tmp113954
                   '#f)))
              (let ((__tmp113949
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112729_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112729_
                       '5
                       __tmp113949))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self112738_
               _id112739_
               _arity112740_
               _dispatch112741_
               _inline112742_)
        (let ((_typedecl112744_ '#f))
          (if (let ((__tmp113962
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112738_))))
                (declare (not safe))
                (##fx< '5 __tmp113962))
              (begin
                (let ((__tmp113957
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112738_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112738_
                   _id112739_
                   '1
                   __tmp113957
                   '#f))
                (let ((__tmp113958
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112738_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112738_
                   _arity112740_
                   '2
                   __tmp113958
                   '#f))
                (let ((__tmp113959
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112738_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112738_
                   _dispatch112741_
                   '3
                   __tmp113959
                   '#f))
                (let ((__tmp113960
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112738_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112738_
                   _inline112742_
                   '4
                   __tmp113960
                   '#f))
                (let ((__tmp113961
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112738_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112738_
                   _typedecl112744_
                   '5
                   __tmp113961
                   '#f)))
              (let ((__tmp113956
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112738_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112738_
                       '5
                       __tmp113956))))))
    (define gxc#!lambda:::init!
      (lambda _g113964_
        (let ((_g113963_ (let () (declare (not safe)) (##length _g113964_))))
          (cond ((let () (declare (not safe)) (##fx= _g113963_ 4))
                 (apply (lambda (_self112729_
                                 _id112730_
                                 _arity112731_
                                 _dispatch112732_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self112729_
                             _id112730_
                             _arity112731_
                             _dispatch112732_)))
                        _g113964_))
                ((let () (declare (not safe)) (##fx= _g113963_ 5))
                 (apply (lambda (_self112738_
                                 _id112739_
                                 _arity112740_
                                 _dispatch112741_
                                 _inline112742_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self112738_
                             _id112739_
                             _arity112740_
                             _dispatch112741_
                             _inline112742_)))
                        _g113964_))
                ((let () (declare (not safe)) (##fx= _g113963_ 6))
                 (apply (lambda (_self112746_
                                 _id112747_
                                 _arity112748_
                                 _dispatch112749_
                                 _inline112750_
                                 _typedecl112751_)
                          (if (let ((__tmp113971
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self112746_))))
                                (declare (not safe))
                                (##fx< '5 __tmp113971))
                              (begin
                                (let ((__tmp113966
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112746_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112746_
                                   _id112747_
                                   '1
                                   __tmp113966
                                   '#f))
                                (let ((__tmp113967
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112746_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112746_
                                   _arity112748_
                                   '2
                                   __tmp113967
                                   '#f))
                                (let ((__tmp113968
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112746_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112746_
                                   _dispatch112749_
                                   '3
                                   __tmp113968
                                   '#f))
                                (let ((__tmp113969
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112746_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112746_
                                   _inline112750_
                                   '4
                                   __tmp113969
                                   '#f))
                                (let ((__tmp113970
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112746_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112746_
                                   _typedecl112751_
                                   '5
                                   __tmp113970
                                   '#f)))
                              (let ((__tmp113965
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self112746_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self112746_
                                       '5
                                       __tmp113965))))
                        _g113964_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g113964_))))))
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
      (lambda (_self112471_ . _args112472_)
        (apply struct-instance-init! _self112471_ _args112472_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type112346_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112346_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type112346_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass112339_)
        (let ((_$e112341_
               (##structure-ref _klass112339_ '10 gxc#!class::t '#f)))
          (if _$e112341_
              _$e112341_
              (let ((_tab112344_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass112339_
                 _tab112344_
                 '10
                 gxc#!class::t
                 '#f)
                _tab112344_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass112330_ _method112331_)
        (let ((_tab112332112334_
               (##structure-ref _klass112330_ '10 gxc#!class::t '#f)))
          (if _tab112332112334_
              (let ((_tab112337_ _tab112332112334_))
                (declare (not safe))
                (hash-get _tab112337_ _method112331_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type112327_ _method112328_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112327_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type112327_ _method112328_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym112311_ _type112312_ _local?112313_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112312_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym112311_
                     _type112312_)))
        (let ((__tmp113972
               (let () (declare (not safe)) (struct->list _type112312_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym112311_ '" " __tmp113972))
        (let ((__tmp113973
               (if _local?112313_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp113973 _sym112311_ _type112312_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym112318_ _type112319_)
        (let ((_local?112321_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym112318_
           _type112319_
           _local?112321_))))
    (define gxc#optimizer-declare-type!
      (lambda _g113975_
        (let ((_g113974_ (let () (declare (not safe)) (##length _g113975_))))
          (cond ((let () (declare (not safe)) (##fx= _g113974_ 2))
                 (apply (lambda (_sym112318_ _type112319_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym112318_
                             _type112319_)))
                        _g113975_))
                ((let () (declare (not safe)) (##fx= _g113974_ 3))
                 (apply (lambda (_sym112323_ _type112324_ _local?112325_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym112323_
                             _type112324_
                             _local?112325_)))
                        _g113975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g113975_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym112297_ _local?112298_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym112297_))
        (let ((__tmp113976
               (if _local?112298_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp113976 _sym112297_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym112303_)
        (let ((_local?112305_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym112303_ _local?112305_))))
    (define gxc#optimizer-clear-type!
      (lambda _g113978_
        (let ((_g113977_ (let () (declare (not safe)) (##length _g113978_))))
          (cond ((let () (declare (not safe)) (##fx= _g113977_ 1))
                 (apply (lambda (_sym112303_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym112303_)))
                        _g113978_))
                ((let () (declare (not safe)) (##fx= _g113977_ 2))
                 (apply (lambda (_sym112307_ _local?112308_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym112307_
                             _local?112308_)))
                        _g113978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g113978_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t112265_ _method112266_ _sym112267_ _rebind?112268_)
        (let* ((_type112270_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t112265_)))
               (_$e112272_
                (let () (declare (not safe)) (gxc#!type-vtab _type112270_))))
          (if _$e112272_
              ((lambda (_vtab112275_)
                 (let ((_$e112277_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab112275_ _method112266_))))
                   (if _$e112277_
                       ((lambda (_existing112280_)
                          (if _rebind?112268_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t112265_
                                   '" "
                                   _method112266_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab112275_
                                   _method112266_
                                   _sym112267_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing112280_ _sym112267_))
                                  '#!void
                                  (let ((__tmp113983
                                         (let ((__tmp113984
                                                (let ((__tmp113985
                                                       (let ((__tmp113986
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym112267_ '()))))
                 (declare (not safe))
                 (cons _method112266_ __tmp113986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t112265_
                                                        __tmp113985))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp113984))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp113983
                                     _method112266_)))))
                        _$e112277_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t112265_
                            '" "
                            _method112266_
                            '" => "
                            _sym112267_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab112275_
                            _method112266_
                            _sym112267_))))))
               _$e112272_)
              (if (let () (declare (not safe)) (not _type112270_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t112265_))
                  (let ((__tmp113979
                         (let ((__tmp113980
                                (let ((__tmp113981
                                       (let ((__tmp113982
                                              (let ()
                                                (declare (not safe))
                                                (cons _method112266_ '()))))
                                         (declare (not safe))
                                         (cons _sym112267_ __tmp113982))))
                                  (declare (not safe))
                                  (cons _type-t112265_ __tmp113981))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp113980))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp113979
                     _type112270_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t112285_ _method112286_ _sym112287_)
        (let ((_rebind?112289_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t112285_
           _method112286_
           _sym112287_
           _rebind?112289_))))
    (define gxc#optimizer-declare-method!
      (lambda _g113988_
        (let ((_g113987_ (let () (declare (not safe)) (##length _g113988_))))
          (cond ((let () (declare (not safe)) (##fx= _g113987_ 3))
                 (apply (lambda (_type-t112285_ _method112286_ _sym112287_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t112285_
                             _method112286_
                             _sym112287_)))
                        _g113988_))
                ((let () (declare (not safe)) (##fx= _g113987_ 4))
                 (apply (lambda (_type-t112291_
                                 _method112292_
                                 _sym112293_
                                 _rebind?112294_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t112291_
                             _method112292_
                             _sym112293_
                             _rebind?112294_)))
                        _g113988_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g113988_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym112253_)
        (let ((_$e112261_
               (let ((_ht112254112256_ (gxc#current-compile-local-type)))
                 (if _ht112254112256_
                     (let ((_ht112259_ _ht112254112256_))
                       (declare (not safe))
                       (hash-get _ht112259_ _sym112253_))
                     '#f))))
          (if _$e112261_
              _$e112261_
              (let ((__tmp113989
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp113989 _sym112253_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym112245_)
        (let ((_type112246112248_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym112245_))))
          (if _type112246112248_
              (let ((_type112251_ _type112246112248_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type112251_ 'gxc#!alias::t))
                    (let ((__tmp113990
                           (##structure-ref _type112251_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp113990))
                    _type112251_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where112237_ _klass-id112238_)
        (let ((_$e112240_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id112238_))))
          (if _$e112240_
              ((lambda (_klass112243_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass112243_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where112237_
                        _klass-id112238_
                        _klass112243_)))
                 _klass112243_)
               _$e112240_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where112237_
                 _klass-id112238_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t112234_ _method112235_)
        (let ((__tmp113991
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t112234_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp113991 _method112235_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym112232_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym112232_))
        (let ((__tmp113992
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp113992 _sym112232_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym112230_)
        (let ((__tmp113993
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp113993 _sym112230_))))
    (define gxc#identifier-symbol
      (lambda (_stx112228_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx112228_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx112228_))
            (let () (declare (not safe)) (gx#stx-e _stx112228_)))))))
