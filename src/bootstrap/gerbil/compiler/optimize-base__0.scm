(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708451995)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp110875 (list))
            (__tmp110873
             (let ((__tmp110874
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110874 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp110875
         '(type ssxi methods)
         __tmp110873
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args110809_
        (apply make-instance gxc#optimizer-info::t _$args110809_)))
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
      (lambda (_self110807_)
        (if (let ((__tmp110876
                   (let ()
                     (declare (not safe))
                     (##structure-length _self110807_))))
              (declare (not safe))
              (##fx< '3 __tmp110876))
            (begin
              (let ((__tmp110878
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp110877
                     (let ()
                       (declare (not safe))
                       (##structure-type _self110807_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self110807_
                 __tmp110878
                 '1
                 __tmp110877
                 '#f))
              (let ((__tmp110880
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp110879
                     (let ()
                       (declare (not safe))
                       (##structure-type _self110807_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self110807_
                 __tmp110880
                 '2
                 __tmp110879
                 '#f))
              (let ((__tmp110882
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp110881
                     (let ()
                       (declare (not safe))
                       (##structure-type _self110807_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self110807_
                 __tmp110882
                 '3
                 __tmp110881
                 '#f)))
            (let ((__tmp110883
                   (let ()
                     (declare (not safe))
                     (##vector-length _self110807_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self110807_
                     '3
                     __tmp110883)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp110886 (list))
            (__tmp110884
             (let ((__tmp110885
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110885 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp110886
         '(id)
         __tmp110884
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args110682_ (apply make-instance gxc#!type::t _$args110682_)))
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
      (let ((__tmp110889 (list gxc#!type::t))
            (__tmp110887
             (let ((__tmp110888
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110888 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp110889
         '()
         __tmp110887
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args110679_ (apply make-instance gxc#!alias::t _$args110679_)))
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
      (let ((__tmp110892 (list gxc#!type::t))
            (__tmp110890
             (let ((__tmp110891
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110891 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp110892
         '()
         __tmp110890
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args110676_
        (apply make-instance gxc#!procedure::t _$args110676_)))
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
      (let ((__tmp110895 (list gxc#!type::t))
            (__tmp110893
             (let ((__tmp110894
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110894 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp110895
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp110893
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args110673_ (apply make-instance gxc#!class::t _$args110673_)))
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
      (let ((__tmp110898 (list gxc#!procedure::t))
            (__tmp110896
             (let ((__tmp110897
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110897 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp110898
         '()
         __tmp110896
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args110670_
        (apply make-instance gxc#!predicate::t _$args110670_)))
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
      (let ((__tmp110901 (list gxc#!procedure::t))
            (__tmp110899
             (let ((__tmp110900
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110900 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp110901
         '()
         __tmp110899
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args110667_
        (apply make-instance gxc#!constructor::t _$args110667_)))
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
      (let ((__tmp110904 (list gxc#!procedure::t))
            (__tmp110902
             (let ((__tmp110903
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110903 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp110904
         '(slot checked?)
         __tmp110902
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args110664_
        (apply make-instance gxc#!accessor::t _$args110664_)))
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
      (let ((__tmp110907 (list gxc#!procedure::t))
            (__tmp110905
             (let ((__tmp110906
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110906 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp110907
         '(slot checked?)
         __tmp110905
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args110661_
        (apply make-instance gxc#!mutator::t _$args110661_)))
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
      (let ((__tmp110910 (list gxc#!procedure::t))
            (__tmp110908
             (let ((__tmp110909
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110909 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp110910
         '(arity dispatch inline inline-typedecl)
         __tmp110908
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args110658_
        (apply make-instance gxc#!lambda::t _$args110658_)))
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
      (let ((__tmp110913 (list gxc#!procedure::t))
            (__tmp110911
             (let ((__tmp110912
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110912 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp110913
         '(clauses)
         __tmp110911
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args110655_
        (apply make-instance gxc#!case-lambda::t _$args110655_)))
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
      (let ((__tmp110916 (list gxc#!procedure::t))
            (__tmp110914
             (let ((__tmp110915
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110915 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp110916
         '(table dispatch)
         __tmp110914
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args110652_
        (apply make-instance gxc#!kw-lambda::t _$args110652_)))
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
      (let ((__tmp110919 (list gxc#!procedure::t))
            (__tmp110917
             (let ((__tmp110918
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp110918 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp110919
         '(keys main)
         __tmp110917
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args110649_
        (apply make-instance gxc#!kw-lambda-primary::t _$args110649_)))
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
      (let ((__tmp110920 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp110920
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args110646_
        (apply make-instance gxc#!primitive::t _$args110646_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp110921 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp110921
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args110643_
        (apply make-instance gxc#!primitive-lambda::t _$args110643_)))
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
      (let ((__tmp110922 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp110922
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args110640_
        (apply make-instance gxc#!primitive-case-lambda::t _$args110640_)))
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
      (lambda (_self110522_
               _id110523_
               _super110524_
               _slots110525_
               _ctor-method110526_
               _struct?110527_
               _final?110528_
               _metaclass110529_)
        (let _lp110531_ ((_rest110533_ _super110524_))
          (let* ((_rest110534110542_ _rest110533_)
                 (_else110536110550_ (lambda () '#!void))
                 (_K110538110556_
                  (lambda (_rest110553_ _super-id110554_)
                    (if (##structure-ref
                         (let ((__tmp110923
                                (let ((__tmp110924
                                       (let ()
                                         (declare (not safe))
                                         (cons _id110523_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp110924))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp110923
                            _super-id110554_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp110925
                               (let ((__tmp110926
                                      (let ()
                                        (declare (not safe))
                                        (cons _id110523_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp110926))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp110925
                           _super-id110554_))
                        '#!void)
                    (let () (declare (not safe)) (_lp110531_ _rest110553_)))))
            (if (let () (declare (not safe)) (##pair? _rest110534110542_))
                (let ((_hd110539110559_
                       (let ()
                         (declare (not safe))
                         (##car _rest110534110542_)))
                      (_tl110540110561_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest110534110542_))))
                  (let* ((_super-id110564_ _hd110539110559_)
                         (_rest110566_ _tl110540110561_))
                    (declare (not safe))
                    (_K110538110556_ _rest110566_ _super-id110564_)))
                '#!void)))
        (let* ((_ctor-method110616_
                (let ((_$e110568_ _ctor-method110526_))
                  (if _$e110568_
                      _$e110568_
                      (let _lp110571_ ((_rest110573_ _super110524_)
                                       (_method110574_ '#f))
                        (let* ((_rest110575110583_ _rest110573_)
                               (_else110577110591_ (lambda () _method110574_))
                               (_K110579110604_
                                (lambda (_rest110594_ _super-id110595_)
                                  (let* ((_klass110597_
                                          (let ((__tmp110927
                                                 (let ((__tmp110928
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id110523_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp110928))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp110927
                                             _super-id110595_)))
                                         (_$e110599_
                                          (##structure-ref
                                           _klass110597_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e110599_
                                        ((lambda (_ctor-method110602_)
                                           (if _method110574_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method110602_
                                                          _method110574_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp110571_
                                                      _rest110594_
                                                      _ctor-method110602_))
                                                   (let ((__tmp110929
                                                          (let ((__tmp110930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id110523_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp110930))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp110929
                                                      _method110574_
                                                      _ctor-method110602_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp110571_
                                                  _rest110594_
                                                  _ctor-method110602_))))
                                         _$e110599_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp110571_
                                           _rest110594_
                                           _method110574_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest110575110583_))
                              (let ((_hd110580110607_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest110575110583_)))
                                    (_tl110581110609_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest110575110583_))))
                                (let* ((_super-id110612_ _hd110580110607_)
                                       (_rest110614_ _tl110581110609_))
                                  (declare (not safe))
                                  (_K110579110604_
                                   _rest110614_
                                   _super-id110612_)))
                              (let ()
                                (declare (not safe))
                                (_else110577110591_))))))))
               (_g110931_
                (let ((__tmp110936
                       (lambda (_klass-id110618_)
                         (let ((__tmp110937
                                (##structure-ref
                                 (let ((__tmp110938
                                        (let ((__tmp110939
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id110523_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp110939))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp110938
                                    _klass-id110618_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id110618_ __tmp110937))))
                      (__tmp110933
                       (lambda (_klass-id110620_)
                         (##structure-ref
                          (let ((__tmp110934
                                 (let ((__tmp110935
                                        (let ()
                                          (declare (not safe))
                                          (cons _id110523_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp110935))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp110934
                             _klass-id110620_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super110524_
                   'get-precedence-list:
                   __tmp110936
                   'struct:
                   __tmp110933
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g110932_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g110931_)
                         (##vector-length _g110931_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g110932_ 2)))
                  (error "Context expects 2 values" _g110932_)))
            (let ((_precedence-list110622_
                   (let () (declare (not safe)) (##vector-ref _g110931_ 0)))
                  (_base-struct110623_
                   (let () (declare (not safe)) (##vector-ref _g110931_ 1))))
              (let ((_fields110625_
                     (let ((__tmp110940
                            (let ((__tmp110941
                                   (let ()
                                     (declare (not safe))
                                     (cons _id110523_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp110941))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp110940
                        _base-struct110623_
                        _precedence-list110622_
                        _slots110525_))))
                (##structure-set! _self110522_ _id110523_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self110522_
                 _super110524_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self110522_
                 _precedence-list110622_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self110522_
                 _slots110525_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self110522_
                 _fields110625_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self110522_
                 _ctor-method110616_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self110522_
                 _struct?110527_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self110522_
                 _final?110528_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self110522_
                 _metaclass110529_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self110628_
               _id110629_
               _super110630_
               _precedence-list110631_
               _slots110632_
               _fields110633_
               _constructor110634_
               _struct?110635_
               _final?110636_
               _metaclass110637_
               _methods110638_)
        (##structure-set! _self110628_ _id110629_ '1 gxc#!type::t '#f)
        (##structure-set! _self110628_ _super110630_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self110628_
         _precedence-list110631_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self110628_ _slots110632_ '4 gxc#!class::t '#f)
        (##structure-set! _self110628_ _fields110633_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self110628_
         _constructor110634_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self110628_ _struct?110635_ '7 gxc#!class::t '#f)
        (##structure-set! _self110628_ _final?110636_ '8 gxc#!class::t '#f)
        (##structure-set! _self110628_ _metaclass110637_ '9 gxc#!class::t '#f)
        (if _methods110638_
            (##structure-set!
             _self110628_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods110638_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g110943_
        (let ((_g110942_ (let () (declare (not safe)) (##length _g110943_))))
          (cond ((let () (declare (not safe)) (##fx= _g110942_ 8))
                 (apply (lambda (_self110522_
                                 _id110523_
                                 _super110524_
                                 _slots110525_
                                 _ctor-method110526_
                                 _struct?110527_
                                 _final?110528_
                                 _metaclass110529_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self110522_
                             _id110523_
                             _super110524_
                             _slots110525_
                             _ctor-method110526_
                             _struct?110527_
                             _final?110528_
                             _metaclass110529_)))
                        _g110943_))
                ((let () (declare (not safe)) (##fx= _g110942_ 11))
                 (apply (lambda (_self110628_
                                 _id110629_
                                 _super110630_
                                 _precedence-list110631_
                                 _slots110632_
                                 _fields110633_
                                 _constructor110634_
                                 _struct?110635_
                                 _final?110636_
                                 _metaclass110637_
                                 _methods110638_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self110628_
                             _id110629_
                             _super110630_
                             _precedence-list110631_
                             _slots110632_
                             _fields110633_
                             _constructor110634_
                             _struct?110635_
                             _final?110636_
                             _metaclass110637_
                             _methods110638_)))
                        _g110943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g110943_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass110811 __method-table110812)
        (let ((__fields110813
               (let ((__slot110823
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110811 'fields))))
                 (if __slot110823
                     __slot110823
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__final?110814
               (let ((__slot110824
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110811 'final?))))
                 (if __slot110824
                     __slot110824
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__methods110815
               (let ((__slot110825
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110811 'methods))))
                 (if __slot110825
                     __slot110825
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__super110816
               (let ((__slot110826
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110811 'super))))
                 (if __slot110826
                     __slot110826
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__metaclass110817
               (let ((__slot110827
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110811 'metaclass))))
                 (if __slot110827
                     __slot110827
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__constructor110818
               (let ((__slot110828
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110811 'constructor))))
                 (if __slot110828
                     __slot110828
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__struct?110819
               (let ((__slot110829
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110811 'struct?))))
                 (if __slot110829
                     __slot110829
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__precedence-list110820
               (let ((__slot110830
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110811 'precedence-list))))
                 (if __slot110830
                     __slot110830
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__slots110821
               (let ((__slot110831
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110811 'slots))))
                 (if __slot110831
                     __slot110831
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__id110822
               (let ((__slot110832
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110811 'id))))
                 (if __slot110832
                     __slot110832
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda _g110945_
            (let ((_g110944_
                   (let () (declare (not safe)) (##length _g110945_))))
              (cond ((let () (declare (not safe)) (##fx= _g110944_ 8))
                     (apply (lambda (_self110522_
                                     _id110523_
                                     _super110524_
                                     _slots110525_
                                     _ctor-method110526_
                                     _struct?110527_
                                     _final?110528_
                                     _metaclass110529_)
                              (let _lp110531_ ((_rest110533_ _super110524_))
                                (let* ((_rest110534110542_ _rest110533_)
                                       (_else110536110550_ (lambda () '#!void))
                                       (_K110538110556_
                                        (lambda (_rest110553_ _super-id110554_)
                                          (if (##structure-ref
                                               (let ((__tmp110946
                                                      (let ((__tmp110947
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id110523_ '()))))
                (declare (not safe))
                (cons '!class __tmp110947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp110946
                                                  _super-id110554_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp110948
                                                     (let ((__tmp110949
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id110523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp110949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp110948
                                                 _super-id110554_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp110531_ _rest110553_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest110534110542_))
                                      (let ((_hd110539110559_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest110534110542_)))
                                            (_tl110540110561_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest110534110542_))))
                                        (let* ((_super-id110564_
                                                _hd110539110559_)
                                               (_rest110566_ _tl110540110561_))
                                          (declare (not safe))
                                          (_K110538110556_
                                           _rest110566_
                                           _super-id110564_)))
                                      '#!void)))
                              (let* ((_ctor-method110616_
                                      (let ((_$e110568_ _ctor-method110526_))
                                        (if _$e110568_
                                            _$e110568_
                                            (let _lp110571_ ((_rest110573_
                                                              _super110524_)
                                                             (_method110574_
                                                              '#f))
                                              (let* ((_rest110575110583_
                                                      _rest110573_)
                                                     (_else110577110591_
                                                      (lambda ()
                                                        _method110574_))
                                                     (_K110579110604_
                                                      (lambda (_rest110594_
                                                               _super-id110595_)
                                                        (let* ((_klass110597_
                                                                (let ((__tmp110950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp110951
                                      (let ()
                                        (declare (not safe))
                                        (cons _id110523_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp110951))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp110950
                           _super-id110595_)))
                       (_$e110599_
                        (##structure-ref _klass110597_ '6 gxc#!class::t '#f)))
                  (if _$e110599_
                      ((lambda (_ctor-method110602_)
                         (if _method110574_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method110602_ _method110574_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp110571_
                                    _rest110594_
                                    _ctor-method110602_))
                                 (let ((__tmp110952
                                        (let ((__tmp110953
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id110523_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp110953))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp110952
                                    _method110574_
                                    _ctor-method110602_)))
                             (let ()
                               (declare (not safe))
                               (_lp110571_ _rest110594_ _ctor-method110602_))))
                       _$e110599_)
                      (let ()
                        (declare (not safe))
                        (_lp110571_ _rest110594_ _method110574_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest110575110583_))
                                                    (let ((_hd110580110607_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest110575110583_)))
                                                          (_tl110581110609_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest110575110583_))))
                                                      (let* ((_super-id110612_
                                                              _hd110580110607_)
                                                             (_rest110614_
                                                              _tl110581110609_))
                                                        (declare (not safe))
                                                        (_K110579110604_
                                                         _rest110614_
                                                         _super-id110612_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else110577110591_))))))))
                                     (_g110954_
                                      (let ((__tmp110959
                                             (lambda (_klass-id110618_)
                                               (let ((__tmp110960
                                                      (##structure-ref
                                                       (let ((__tmp110961
                                                              (let ((__tmp110962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id110523_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp110962))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp110961 _klass-id110618_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id110618_
                                                       __tmp110960))))
                                            (__tmp110956
                                             (lambda (_klass-id110620_)
                                               (##structure-ref
                                                (let ((__tmp110957
                                                       (let ((__tmp110958
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id110523_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp110958))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp110957
                                                   _klass-id110620_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super110524_
                                         'get-precedence-list:
                                         __tmp110959
                                         'struct:
                                         __tmp110956
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g110955_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g110954_)
                                               (##vector-length _g110954_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g110955_ 2)))
                                        (error "Context expects 2 values"
                                               _g110955_)))
                                  (let ((_precedence-list110622_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g110954_ 0)))
                                        (_base-struct110623_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g110954_ 1))))
                                    (let ((_fields110625_
                                           (let ((__tmp110963
                                                  (let ((__tmp110964
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id110523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp110964))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp110963
                                              _base-struct110623_
                                              _precedence-list110622_
                                              _slots110525_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110522_
                                         _id110523_
                                         __id110822
                                         __klass110811
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110522_
                                         _super110524_
                                         __super110816
                                         __klass110811
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110522_
                                         _precedence-list110622_
                                         __precedence-list110820
                                         __klass110811
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110522_
                                         _slots110525_
                                         __slots110821
                                         __klass110811
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110522_
                                         _fields110625_
                                         __fields110813
                                         __klass110811
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110522_
                                         _ctor-method110616_
                                         __constructor110818
                                         __klass110811
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110522_
                                         _struct?110527_
                                         __struct?110819
                                         __klass110811
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110522_
                                         _final?110528_
                                         __final?110814
                                         __klass110811
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110522_
                                         _metaclass110529_
                                         __metaclass110817
                                         __klass110811
                                         '#f)))))))
                            _g110945_))
                    ((let () (declare (not safe)) (##fx= _g110944_ 11))
                     (apply (lambda (_self110628_
                                     _id110629_
                                     _super110630_
                                     _precedence-list110631_
                                     _slots110632_
                                     _fields110633_
                                     _constructor110634_
                                     _struct?110635_
                                     _final?110636_
                                     _metaclass110637_
                                     _methods110638_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110628_
                                 _id110629_
                                 __id110822
                                 __klass110811
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110628_
                                 _super110630_
                                 __super110816
                                 __klass110811
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110628_
                                 _precedence-list110631_
                                 __precedence-list110820
                                 __klass110811
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110628_
                                 _slots110632_
                                 __slots110821
                                 __klass110811
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110628_
                                 _fields110633_
                                 __fields110813
                                 __klass110811
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110628_
                                 _constructor110634_
                                 __constructor110818
                                 __klass110811
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110628_
                                 _struct?110635_
                                 __struct?110819
                                 __klass110811
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110628_
                                 _final?110636_
                                 __final?110814
                                 __klass110811
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110628_
                                 _metaclass110637_
                                 __metaclass110817
                                 __klass110811
                                 '#f))
                              (if _methods110638_
                                  (let ((__tmp110965
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods110638_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self110628_
                                     __tmp110965
                                     __methods110815
                                     __klass110811
                                     '#f))
                                  '#!void))
                            _g110945_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g110945_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where110374_
               _base-struct110375_
               _precedence-list110376_
               _direct-slots110377_)
        (let* ((_base-fields110379_
                (if _base-struct110375_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where110374_
                        _base-struct110375_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields110381_ (reverse _base-fields110379_))
               (_seen-slots110389_
                (let ((_tab110383_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g110384110386_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab110383_ _g110384110386_ '#t)))
                   _base-fields110379_)
                  _tab110383_))
               (_process-slot110393_
                (lambda (_slot110391_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots110389_ _slot110391_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots110389_ _slot110391_ '#t))
                        (set! _r-fields110381_
                              (let ()
                                (declare (not safe))
                                (cons _slot110391_ _r-fields110381_))))))))
          (for-each
           (lambda (_mixin110396_)
             (let ((_klass110398_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where110374_
                       _mixin110396_))))
               (if (##structure-ref _klass110398_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot110393_
                    (##structure-ref _klass110398_ '5 gxc#!class::t '#f)))))
           _precedence-list110376_)
          (for-each _process-slot110393_ _direct-slots110377_)
          (reverse _r-fields110381_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass110333_ _slot110334_)
        (let _lp110336_ ((_rest110338_
                          (##structure-ref _klass110333_ '5 gxc#!class::t '#f))
                         (_offset110339_ '1))
          (let* ((_rest110340110348_ _rest110338_)
                 (_else110342110356_
                  (lambda ()
                    (let ((__tmp110967
                           (##structure-ref _klass110333_ '1 gxc#!type::t '#f))
                          (__tmp110966
                           (##structure-ref
                            _klass110333_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp110967
                       __tmp110966
                       _slot110334_))))
                 (_K110344110362_
                  (lambda (_rest110359_ _s110360_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s110360_ _slot110334_))
                        _offset110339_
                        (let ((__tmp110968
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset110339_ '1))))
                          (declare (not safe))
                          (_lp110336_ _rest110359_ __tmp110968))))))
            (if (let () (declare (not safe)) (##pair? _rest110340110348_))
                (let ((_hd110345110365_
                       (let ()
                         (declare (not safe))
                         (##car _rest110340110348_)))
                      (_tl110346110367_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest110340110348_))))
                  (let* ((_s110370_ _hd110345110365_)
                         (_rest110372_ _tl110346110367_))
                    (declare (not safe))
                    (_K110344110362_ _rest110372_ _s110370_)))
                (let () (declare (not safe)) (_else110342110356_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass110291_ _slot110292_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass110291_ _slot110292_))
            _klass110291_
            (let _lp110294_ ((_rest110296_
                              (##structure-ref
                               _klass110291_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest110297110305_ _rest110296_)
                     (_else110299110313_ (lambda () '#f))
                     (_K110301110321_
                      (lambda (_rest110316_ _super110317_)
                        (let ((_super-class110319_
                               (let ((__tmp110969
                                      (let ((__tmp110970
                                             (let ((__tmp110972
                                                    (##structure-ref
                                                     _klass110291_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp110971
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot110292_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp110972
                                                     __tmp110971))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp110970))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp110969
                                  _super110317_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class110319_
                                 _slot110292_))
                              _super-class110319_
                              (let ()
                                (declare (not safe))
                                (_lp110294_ _rest110316_)))))))
                (if (let () (declare (not safe)) (##pair? _rest110297110305_))
                    (let ((_hd110302110324_
                           (let ()
                             (declare (not safe))
                             (##car _rest110297110305_)))
                          (_tl110303110326_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest110297110305_))))
                      (let* ((_super110329_ _hd110302110324_)
                             (_rest110331_ _tl110303110326_))
                        (declare (not safe))
                        (_K110301110321_ _rest110331_ _super110329_)))
                    (let () (declare (not safe)) (_else110299110313_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass110288_ _slot110289_)
        (if (##structure-ref _klass110288_ '7 gxc#!class::t '#f)
            (memq _slot110289_
                  (##structure-ref _klass110288_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self110285_ _id110286_)
        (##structure-set! _self110285_ _id110286_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass110833 __method-table110834)
        (let ((__id110835
               (let ((__slot110836
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110833 'id))))
                 (if __slot110836
                     __slot110836
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self110285_ _id110286_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self110285_
               _id110286_
               __id110835
               __klass110833
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
      (lambda (_self110160_ _id110161_)
        (##structure-set! _self110160_ _id110161_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass110837 __method-table110838)
        (let ((__id110839
               (let ((__slot110840
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110837 'id))))
                 (if __slot110840
                     __slot110840
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self110160_ _id110161_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self110160_
               _id110161_
               __id110839
               __klass110837
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
      (lambda (_self110033_ _id110034_ _slot110035_ _checked?110036_)
        (##structure-set! _self110033_ _id110034_ '1 gxc#!type::t '#f)
        (##structure-set! _self110033_ _slot110035_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self110033_
         _checked?110036_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass110841 __method-table110842)
        (let ((__checked?110843
               (let ((__slot110846
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110841 'checked?))))
                 (if __slot110846
                     __slot110846
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot110844
               (let ((__slot110847
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110841 'slot))))
                 (if __slot110847
                     __slot110847
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id110845
               (let ((__slot110848
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110841 'id))))
                 (if __slot110848
                     __slot110848
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self110033_ _id110034_ _slot110035_ _checked?110036_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self110033_
               _id110034_
               __id110845
               __klass110841
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self110033_
               _slot110035_
               __slot110844
               __klass110841
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self110033_
               _checked?110036_
               __checked?110843
               __klass110841
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
      (lambda (_self109906_ _id109907_ _slot109908_ _checked?109909_)
        (##structure-set! _self109906_ _id109907_ '1 gxc#!type::t '#f)
        (##structure-set! _self109906_ _slot109908_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self109906_
         _checked?109909_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass110849 __method-table110850)
        (let ((__slot110851
               (let ((__slot110854
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110849 'slot))))
                 (if __slot110854
                     __slot110854
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id110852
               (let ((__slot110855
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110849 'id))))
                 (if __slot110855
                     __slot110855
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?110853
               (let ((__slot110856
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass110849 'checked?))))
                 (if __slot110856
                     __slot110856
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self109906_ _id109907_ _slot109908_ _checked?109909_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self109906_
               _id109907_
               __id110852
               __klass110849
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self109906_
               _slot109908_
               __slot110851
               __klass110849
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self109906_
               _checked?109909_
               __checked?110853
               __klass110849
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
      (lambda (_self109750_
               _id109751_
               _arity109752_
               _dispatch109753_
               _inline109754_
               _typedecl109755_)
        (if (let ((__tmp110973
                   (let ()
                     (declare (not safe))
                     (##structure-length _self109750_))))
              (declare (not safe))
              (##fx< '5 __tmp110973))
            (begin
              (let ((__tmp110974
                     (let ()
                       (declare (not safe))
                       (##structure-type _self109750_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self109750_
                 _id109751_
                 '1
                 __tmp110974
                 '#f))
              (let ((__tmp110975
                     (let ()
                       (declare (not safe))
                       (##structure-type _self109750_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self109750_
                 _arity109752_
                 '2
                 __tmp110975
                 '#f))
              (let ((__tmp110976
                     (let ()
                       (declare (not safe))
                       (##structure-type _self109750_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self109750_
                 _dispatch109753_
                 '3
                 __tmp110976
                 '#f))
              (let ((__tmp110977
                     (let ()
                       (declare (not safe))
                       (##structure-type _self109750_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self109750_
                 _inline109754_
                 '4
                 __tmp110977
                 '#f))
              (let ((__tmp110978
                     (let ()
                       (declare (not safe))
                       (##structure-type _self109750_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self109750_
                 _typedecl109755_
                 '5
                 __tmp110978
                 '#f)))
            (let ((__tmp110979
                   (let ()
                     (declare (not safe))
                     (##vector-length _self109750_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self109750_
                     '5
                     __tmp110979)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self109760_ _id109761_ _arity109762_ _dispatch109763_)
        (let* ((_inline109765_ '#f) (_typedecl109767_ '#f))
          (if (let ((__tmp110980
                     (let ()
                       (declare (not safe))
                       (##structure-length _self109760_))))
                (declare (not safe))
                (##fx< '5 __tmp110980))
              (begin
                (let ((__tmp110981
                       (let ()
                         (declare (not safe))
                         (##structure-type _self109760_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self109760_
                   _id109761_
                   '1
                   __tmp110981
                   '#f))
                (let ((__tmp110982
                       (let ()
                         (declare (not safe))
                         (##structure-type _self109760_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self109760_
                   _arity109762_
                   '2
                   __tmp110982
                   '#f))
                (let ((__tmp110983
                       (let ()
                         (declare (not safe))
                         (##structure-type _self109760_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self109760_
                   _dispatch109763_
                   '3
                   __tmp110983
                   '#f))
                (let ((__tmp110984
                       (let ()
                         (declare (not safe))
                         (##structure-type _self109760_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self109760_
                   _inline109765_
                   '4
                   __tmp110984
                   '#f))
                (let ((__tmp110985
                       (let ()
                         (declare (not safe))
                         (##structure-type _self109760_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self109760_
                   _typedecl109767_
                   '5
                   __tmp110985
                   '#f)))
              (let ((__tmp110986
                     (let ()
                       (declare (not safe))
                       (##vector-length _self109760_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self109760_
                       '5
                       __tmp110986))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self109769_
               _id109770_
               _arity109771_
               _dispatch109772_
               _inline109773_)
        (let ((_typedecl109775_ '#f))
          (if (let ((__tmp110987
                     (let ()
                       (declare (not safe))
                       (##structure-length _self109769_))))
                (declare (not safe))
                (##fx< '5 __tmp110987))
              (begin
                (let ((__tmp110988
                       (let ()
                         (declare (not safe))
                         (##structure-type _self109769_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self109769_
                   _id109770_
                   '1
                   __tmp110988
                   '#f))
                (let ((__tmp110989
                       (let ()
                         (declare (not safe))
                         (##structure-type _self109769_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self109769_
                   _arity109771_
                   '2
                   __tmp110989
                   '#f))
                (let ((__tmp110990
                       (let ()
                         (declare (not safe))
                         (##structure-type _self109769_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self109769_
                   _dispatch109772_
                   '3
                   __tmp110990
                   '#f))
                (let ((__tmp110991
                       (let ()
                         (declare (not safe))
                         (##structure-type _self109769_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self109769_
                   _inline109773_
                   '4
                   __tmp110991
                   '#f))
                (let ((__tmp110992
                       (let ()
                         (declare (not safe))
                         (##structure-type _self109769_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self109769_
                   _typedecl109775_
                   '5
                   __tmp110992
                   '#f)))
              (let ((__tmp110993
                     (let ()
                       (declare (not safe))
                       (##vector-length _self109769_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self109769_
                       '5
                       __tmp110993))))))
    (define gxc#!lambda:::init!
      (lambda _g110995_
        (let ((_g110994_ (let () (declare (not safe)) (##length _g110995_))))
          (cond ((let () (declare (not safe)) (##fx= _g110994_ 4))
                 (apply (lambda (_self109760_
                                 _id109761_
                                 _arity109762_
                                 _dispatch109763_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self109760_
                             _id109761_
                             _arity109762_
                             _dispatch109763_)))
                        _g110995_))
                ((let () (declare (not safe)) (##fx= _g110994_ 5))
                 (apply (lambda (_self109769_
                                 _id109770_
                                 _arity109771_
                                 _dispatch109772_
                                 _inline109773_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self109769_
                             _id109770_
                             _arity109771_
                             _dispatch109772_
                             _inline109773_)))
                        _g110995_))
                ((let () (declare (not safe)) (##fx= _g110994_ 6))
                 (apply (lambda (_self109777_
                                 _id109778_
                                 _arity109779_
                                 _dispatch109780_
                                 _inline109781_
                                 _typedecl109782_)
                          (if (let ((__tmp110996
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self109777_))))
                                (declare (not safe))
                                (##fx< '5 __tmp110996))
                              (begin
                                (let ((__tmp110997
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self109777_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self109777_
                                   _id109778_
                                   '1
                                   __tmp110997
                                   '#f))
                                (let ((__tmp110998
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self109777_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self109777_
                                   _arity109779_
                                   '2
                                   __tmp110998
                                   '#f))
                                (let ((__tmp110999
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self109777_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self109777_
                                   _dispatch109780_
                                   '3
                                   __tmp110999
                                   '#f))
                                (let ((__tmp111000
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self109777_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self109777_
                                   _inline109781_
                                   '4
                                   __tmp111000
                                   '#f))
                                (let ((__tmp111001
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self109777_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self109777_
                                   _typedecl109782_
                                   '5
                                   __tmp111001
                                   '#f)))
                              (let ((__tmp111002
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self109777_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self109777_
                                       '5
                                       __tmp111002))))
                        _g110995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g110995_))))))
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
      (lambda (_self109502_ . _args109503_)
        (apply struct-instance-init! _self109502_ _args109503_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type109377_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type109377_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type109377_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass109370_)
        (let ((_$e109372_
               (##structure-ref _klass109370_ '10 gxc#!class::t '#f)))
          (if _$e109372_
              _$e109372_
              (let ((_tab109375_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass109370_
                 _tab109375_
                 '10
                 gxc#!class::t
                 '#f)
                _tab109375_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass109361_ _method109362_)
        (let ((_tab109363109365_
               (##structure-ref _klass109361_ '10 gxc#!class::t '#f)))
          (if _tab109363109365_
              (let ((_tab109368_ _tab109363109365_))
                (declare (not safe))
                (hash-get _tab109368_ _method109362_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type109358_ _method109359_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type109358_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type109358_ _method109359_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym109342_ _type109343_ _local?109344_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type109343_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym109342_
                     _type109343_)))
        (let ((__tmp111003
               (let () (declare (not safe)) (struct->list _type109343_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym109342_ '" " __tmp111003))
        (let ((__tmp111004
               (if _local?109344_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp111004 _sym109342_ _type109343_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym109349_ _type109350_)
        (let ((_local?109352_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym109349_
           _type109350_
           _local?109352_))))
    (define gxc#optimizer-declare-type!
      (lambda _g111006_
        (let ((_g111005_ (let () (declare (not safe)) (##length _g111006_))))
          (cond ((let () (declare (not safe)) (##fx= _g111005_ 2))
                 (apply (lambda (_sym109349_ _type109350_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym109349_
                             _type109350_)))
                        _g111006_))
                ((let () (declare (not safe)) (##fx= _g111005_ 3))
                 (apply (lambda (_sym109354_ _type109355_ _local?109356_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym109354_
                             _type109355_
                             _local?109356_)))
                        _g111006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g111006_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym109328_ _local?109329_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym109328_))
        (let ((__tmp111007
               (if _local?109329_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp111007 _sym109328_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym109334_)
        (let ((_local?109336_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym109334_ _local?109336_))))
    (define gxc#optimizer-clear-type!
      (lambda _g111009_
        (let ((_g111008_ (let () (declare (not safe)) (##length _g111009_))))
          (cond ((let () (declare (not safe)) (##fx= _g111008_ 1))
                 (apply (lambda (_sym109334_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym109334_)))
                        _g111009_))
                ((let () (declare (not safe)) (##fx= _g111008_ 2))
                 (apply (lambda (_sym109338_ _local?109339_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym109338_
                             _local?109339_)))
                        _g111009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g111009_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t109301_ _method109302_ _sym109303_ _rebind?109304_)
        (let* ((_type109306_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t109301_)))
               (_$e109308_
                (let () (declare (not safe)) (gxc#!type-vtab _type109306_))))
          (if _$e109308_
              ((lambda (_vtab109311_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab109311_ _method109302_))
                     (if _rebind?109304_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t109301_
                              '" "
                              _method109302_))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              _vtab109311_
                              _method109302_
                              _sym109303_)))
                         (let ((__tmp111010
                                (let ((__tmp111011
                                       (let ((__tmp111012
                                              (let ((__tmp111013
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym109303_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method109302_
                                                      __tmp111013))))
                                         (declare (not safe))
                                         (cons _type-t109301_ __tmp111012))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp111011))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp111010
                            _method109302_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t109301_
                          '" "
                          _method109302_
                          '" => "
                          _sym109303_))
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _vtab109311_
                          _method109302_
                          _sym109303_)))))
               _$e109308_)
              (if (let () (declare (not safe)) (not _type109306_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t109301_))
                  (let ((__tmp111014
                         (let ((__tmp111015
                                (let ((__tmp111016
                                       (let ((__tmp111017
                                              (let ()
                                                (declare (not safe))
                                                (cons _method109302_ '()))))
                                         (declare (not safe))
                                         (cons _sym109303_ __tmp111017))))
                                  (declare (not safe))
                                  (cons _type-t109301_ __tmp111016))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp111015))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp111014
                     _type109306_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t109316_ _method109317_ _sym109318_)
        (let ((_rebind?109320_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t109316_
           _method109317_
           _sym109318_
           _rebind?109320_))))
    (define gxc#optimizer-declare-method!
      (lambda _g111019_
        (let ((_g111018_ (let () (declare (not safe)) (##length _g111019_))))
          (cond ((let () (declare (not safe)) (##fx= _g111018_ 3))
                 (apply (lambda (_type-t109316_ _method109317_ _sym109318_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t109316_
                             _method109317_
                             _sym109318_)))
                        _g111019_))
                ((let () (declare (not safe)) (##fx= _g111018_ 4))
                 (apply (lambda (_type-t109322_
                                 _method109323_
                                 _sym109324_
                                 _rebind?109325_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t109322_
                             _method109323_
                             _sym109324_
                             _rebind?109325_)))
                        _g111019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g111019_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym109289_)
        (let ((_$e109297_
               (let ((_ht109290109292_ (gxc#current-compile-local-type)))
                 (if _ht109290109292_
                     (let ((_ht109295_ _ht109290109292_))
                       (declare (not safe))
                       (hash-get _ht109295_ _sym109289_))
                     '#f))))
          (if _$e109297_
              _$e109297_
              (let ((__tmp111020
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp111020 _sym109289_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym109281_)
        (let ((_type109282109284_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym109281_))))
          (if _type109282109284_
              (let ((_type109287_ _type109282109284_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type109287_ 'gxc#!alias::t))
                    (let ((__tmp111021
                           (##structure-ref _type109287_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp111021))
                    _type109287_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where109273_ _klass-id109274_)
        (let ((_$e109276_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id109274_))))
          (if _$e109276_
              ((lambda (_klass109279_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass109279_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where109273_
                        _klass-id109274_
                        _klass109279_)))
                 _klass109279_)
               _$e109276_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where109273_
                 _klass-id109274_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t109270_ _method109271_)
        (let ((__tmp111022
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t109270_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp111022 _method109271_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym109268_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym109268_))
        (let ((__tmp111023
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp111023 _sym109268_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym109266_)
        (let ((__tmp111024
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp111024 _sym109266_))))
    (define gxc#identifier-symbol
      (lambda (_stx109264_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx109264_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx109264_))
            (let () (declare (not safe)) (gx#stx-e _stx109264_)))))))
