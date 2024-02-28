(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1709111637)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp113879 (list))
            (__tmp113877
             (let ((__tmp113878
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113878 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp113879
         '(type ssxi methods)
         __tmp113877
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args113813_
        (apply make-instance gxc#optimizer-info::t _$args113813_)))
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
      (lambda (_self113811_)
        (if (let ((__tmp113887
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113811_))))
              (declare (not safe))
              (##fx< '3 __tmp113887))
            (begin
              (let ((__tmp113882
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113881
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113811_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113811_
                 __tmp113882
                 '1
                 __tmp113881
                 '#f))
              (let ((__tmp113884
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113883
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113811_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113811_
                 __tmp113884
                 '2
                 __tmp113883
                 '#f))
              (let ((__tmp113886
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113885
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113811_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113811_
                 __tmp113886
                 '3
                 __tmp113885
                 '#f)))
            (let ((__tmp113880
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113811_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113811_
                     '3
                     __tmp113880)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp113890 (list))
            (__tmp113888
             (let ((__tmp113889
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113889 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp113890
         '(id)
         __tmp113888
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args113686_ (apply make-instance gxc#!type::t _$args113686_)))
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
      (let ((__tmp113893 (list gxc#!type::t))
            (__tmp113891
             (let ((__tmp113892
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113892 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp113893
         '()
         __tmp113891
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args113683_ (apply make-instance gxc#!alias::t _$args113683_)))
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
      (let ((__tmp113896 (list gxc#!type::t))
            (__tmp113894
             (let ((__tmp113895
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113895 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp113896
         '()
         __tmp113894
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args113680_
        (apply make-instance gxc#!procedure::t _$args113680_)))
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
      (let ((__tmp113899 (list gxc#!type::t))
            (__tmp113897
             (let ((__tmp113898
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113898 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp113899
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp113897
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args113677_ (apply make-instance gxc#!class::t _$args113677_)))
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
      (let ((__tmp113902 (list gxc#!procedure::t))
            (__tmp113900
             (let ((__tmp113901
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113901 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp113902
         '()
         __tmp113900
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args113674_
        (apply make-instance gxc#!predicate::t _$args113674_)))
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
      (let ((__tmp113905 (list gxc#!procedure::t))
            (__tmp113903
             (let ((__tmp113904
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113904 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp113905
         '()
         __tmp113903
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args113671_
        (apply make-instance gxc#!constructor::t _$args113671_)))
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
      (let ((__tmp113908 (list gxc#!procedure::t))
            (__tmp113906
             (let ((__tmp113907
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113907 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp113908
         '(slot checked?)
         __tmp113906
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args113668_
        (apply make-instance gxc#!accessor::t _$args113668_)))
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
      (let ((__tmp113911 (list gxc#!procedure::t))
            (__tmp113909
             (let ((__tmp113910
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113910 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp113911
         '(slot checked?)
         __tmp113909
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args113665_
        (apply make-instance gxc#!mutator::t _$args113665_)))
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
      (let ((__tmp113914 (list gxc#!procedure::t))
            (__tmp113912
             (let ((__tmp113913
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113913 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp113914
         '(arity dispatch inline inline-typedecl)
         __tmp113912
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args113662_
        (apply make-instance gxc#!lambda::t _$args113662_)))
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
      (let ((__tmp113917 (list gxc#!procedure::t))
            (__tmp113915
             (let ((__tmp113916
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113916 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp113917
         '(clauses)
         __tmp113915
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args113659_
        (apply make-instance gxc#!case-lambda::t _$args113659_)))
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
      (let ((__tmp113920 (list gxc#!procedure::t))
            (__tmp113918
             (let ((__tmp113919
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113919 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp113920
         '(table dispatch)
         __tmp113918
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args113656_
        (apply make-instance gxc#!kw-lambda::t _$args113656_)))
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
      (let ((__tmp113923 (list gxc#!procedure::t))
            (__tmp113921
             (let ((__tmp113922
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113922 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp113923
         '(keys main)
         __tmp113921
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args113653_
        (apply make-instance gxc#!kw-lambda-primary::t _$args113653_)))
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
      (let ((__tmp113924 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp113924
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args113650_
        (apply make-instance gxc#!primitive::t _$args113650_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp113925 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp113925
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args113647_
        (apply make-instance gxc#!primitive-lambda::t _$args113647_)))
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
      (let ((__tmp113926 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp113926
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args113644_
        (apply make-instance gxc#!primitive-case-lambda::t _$args113644_)))
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
      (lambda (_self113526_
               _id113527_
               _super113528_
               _slots113529_
               _ctor-method113530_
               _struct?113531_
               _final?113532_
               _metaclass113533_)
        (let _lp113535_ ((_rest113537_ _super113528_))
          (let* ((_rest113538113546_ _rest113537_)
                 (_else113540113554_ (lambda () '#!void))
                 (_K113542113560_
                  (lambda (_rest113557_ _super-id113558_)
                    (if (##structure-ref
                         (let ((__tmp113929
                                (let ((__tmp113930
                                       (let ()
                                         (declare (not safe))
                                         (cons _id113527_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp113930))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp113929
                            _super-id113558_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp113927
                               (let ((__tmp113928
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113527_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp113928))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp113927
                           _super-id113558_))
                        '#!void)
                    (let () (declare (not safe)) (_lp113535_ _rest113557_)))))
            (if (let () (declare (not safe)) (##pair? _rest113538113546_))
                (let ((_hd113543113563_
                       (let ()
                         (declare (not safe))
                         (##car _rest113538113546_)))
                      (_tl113544113565_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113538113546_))))
                  (let* ((_super-id113568_ _hd113543113563_)
                         (_rest113570_ _tl113544113565_))
                    (declare (not safe))
                    (_K113542113560_ _rest113570_ _super-id113568_)))
                '#!void)))
        (let* ((_ctor-method113620_
                (let ((_$e113572_ _ctor-method113530_))
                  (if _$e113572_
                      _$e113572_
                      (let _lp113575_ ((_rest113577_ _super113528_)
                                       (_method113578_ '#f))
                        (let* ((_rest113579113587_ _rest113577_)
                               (_else113581113595_ (lambda () _method113578_))
                               (_K113583113608_
                                (lambda (_rest113598_ _super-id113599_)
                                  (let* ((_klass113601_
                                          (let ((__tmp113931
                                                 (let ((__tmp113932
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id113527_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp113932))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp113931
                                             _super-id113599_)))
                                         (_$e113603_
                                          (##structure-ref
                                           _klass113601_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e113603_
                                        ((lambda (_ctor-method113606_)
                                           (if _method113578_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method113606_
                                                          _method113578_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp113575_
                                                      _rest113598_
                                                      _ctor-method113606_))
                                                   (let ((__tmp113933
                                                          (let ((__tmp113934
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id113527_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp113934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp113933
                                                      _method113578_
                                                      _ctor-method113606_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp113575_
                                                  _rest113598_
                                                  _ctor-method113606_))))
                                         _$e113603_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp113575_
                                           _rest113598_
                                           _method113578_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest113579113587_))
                              (let ((_hd113584113611_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest113579113587_)))
                                    (_tl113585113613_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest113579113587_))))
                                (let* ((_super-id113616_ _hd113584113611_)
                                       (_rest113618_ _tl113585113613_))
                                  (declare (not safe))
                                  (_K113583113608_
                                   _rest113618_
                                   _super-id113616_)))
                              (let ()
                                (declare (not safe))
                                (_else113581113595_))))))))
               (_g113935_
                (let ((__tmp113940
                       (lambda (_klass-id113622_)
                         (let ((__tmp113941
                                (##structure-ref
                                 (let ((__tmp113942
                                        (let ((__tmp113943
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113527_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp113943))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp113942
                                    _klass-id113622_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id113622_ __tmp113941))))
                      (__tmp113937
                       (lambda (_klass-id113624_)
                         (##structure-ref
                          (let ((__tmp113938
                                 (let ((__tmp113939
                                        (let ()
                                          (declare (not safe))
                                          (cons _id113527_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp113939))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp113938
                             _klass-id113624_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super113528_
                   'get-precedence-list:
                   __tmp113940
                   'struct:
                   __tmp113937
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g113936_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g113935_)
                         (##vector-length _g113935_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g113936_ 2)))
                  (error "Context expects 2 values" _g113936_)))
            (let ((_precedence-list113626_
                   (let () (declare (not safe)) (##vector-ref _g113935_ 0)))
                  (_base-struct113627_
                   (let () (declare (not safe)) (##vector-ref _g113935_ 1))))
              (let ((_fields113629_
                     (let ((__tmp113944
                            (let ((__tmp113945
                                   (let ()
                                     (declare (not safe))
                                     (cons _id113527_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp113945))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp113944
                        _base-struct113627_
                        _precedence-list113626_
                        _slots113529_))))
                (##structure-set! _self113526_ _id113527_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self113526_
                 _super113528_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113526_
                 _precedence-list113626_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113526_
                 _slots113529_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113526_
                 _fields113629_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113526_
                 _ctor-method113620_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113526_
                 _struct?113531_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113526_
                 _final?113532_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self113526_
                 _metaclass113533_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self113632_
               _id113633_
               _super113634_
               _precedence-list113635_
               _slots113636_
               _fields113637_
               _constructor113638_
               _struct?113639_
               _final?113640_
               _metaclass113641_
               _methods113642_)
        (##structure-set! _self113632_ _id113633_ '1 gxc#!type::t '#f)
        (##structure-set! _self113632_ _super113634_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self113632_
         _precedence-list113635_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self113632_ _slots113636_ '4 gxc#!class::t '#f)
        (##structure-set! _self113632_ _fields113637_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self113632_
         _constructor113638_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self113632_ _struct?113639_ '7 gxc#!class::t '#f)
        (##structure-set! _self113632_ _final?113640_ '8 gxc#!class::t '#f)
        (##structure-set! _self113632_ _metaclass113641_ '9 gxc#!class::t '#f)
        (if _methods113642_
            (##structure-set!
             _self113632_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods113642_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g113947_
        (let ((_g113946_ (let () (declare (not safe)) (##length _g113947_))))
          (cond ((let () (declare (not safe)) (##fx= _g113946_ 8))
                 (apply (lambda (_self113526_
                                 _id113527_
                                 _super113528_
                                 _slots113529_
                                 _ctor-method113530_
                                 _struct?113531_
                                 _final?113532_
                                 _metaclass113533_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self113526_
                             _id113527_
                             _super113528_
                             _slots113529_
                             _ctor-method113530_
                             _struct?113531_
                             _final?113532_
                             _metaclass113533_)))
                        _g113947_))
                ((let () (declare (not safe)) (##fx= _g113946_ 11))
                 (apply (lambda (_self113632_
                                 _id113633_
                                 _super113634_
                                 _precedence-list113635_
                                 _slots113636_
                                 _fields113637_
                                 _constructor113638_
                                 _struct?113639_
                                 _final?113640_
                                 _metaclass113641_
                                 _methods113642_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self113632_
                             _id113633_
                             _super113634_
                             _precedence-list113635_
                             _slots113636_
                             _fields113637_
                             _constructor113638_
                             _struct?113639_
                             _final?113640_
                             _metaclass113641_
                             _methods113642_)))
                        _g113947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g113947_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass113815 __method-table113816)
        (let ((__metaclass113817
               (let ((__slot113827
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113815 'metaclass))))
                 (if __slot113827
                     __slot113827
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__super113818
               (let ((__slot113828
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113815 'super))))
                 (if __slot113828
                     __slot113828
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__methods113819
               (let ((__slot113829
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113815 'methods))))
                 (if __slot113829
                     __slot113829
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__final?113820
               (let ((__slot113830
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113815 'final?))))
                 (if __slot113830
                     __slot113830
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__fields113821
               (let ((__slot113831
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113815 'fields))))
                 (if __slot113831
                     __slot113831
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__id113822
               (let ((__slot113832
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113815 'id))))
                 (if __slot113832
                     __slot113832
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slots113823
               (let ((__slot113833
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113815 'slots))))
                 (if __slot113833
                     __slot113833
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__precedence-list113824
               (let ((__slot113834
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113815 'precedence-list))))
                 (if __slot113834
                     __slot113834
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__struct?113825
               (let ((__slot113835
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113815 'struct?))))
                 (if __slot113835
                     __slot113835
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__constructor113826
               (let ((__slot113836
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113815 'constructor))))
                 (if __slot113836
                     __slot113836
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor))))))
          (lambda _g113949_
            (let ((_g113948_
                   (let () (declare (not safe)) (##length _g113949_))))
              (cond ((let () (declare (not safe)) (##fx= _g113948_ 8))
                     (apply (lambda (_self113526_
                                     _id113527_
                                     _super113528_
                                     _slots113529_
                                     _ctor-method113530_
                                     _struct?113531_
                                     _final?113532_
                                     _metaclass113533_)
                              (let _lp113535_ ((_rest113537_ _super113528_))
                                (let* ((_rest113538113546_ _rest113537_)
                                       (_else113540113554_ (lambda () '#!void))
                                       (_K113542113560_
                                        (lambda (_rest113557_ _super-id113558_)
                                          (if (##structure-ref
                                               (let ((__tmp113952
                                                      (let ((__tmp113953
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id113527_ '()))))
                (declare (not safe))
                (cons '!class __tmp113953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp113952
                                                  _super-id113558_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp113950
                                                     (let ((__tmp113951
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id113527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp113951))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp113950
                                                 _super-id113558_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp113535_ _rest113557_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest113538113546_))
                                      (let ((_hd113543113563_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest113538113546_)))
                                            (_tl113544113565_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest113538113546_))))
                                        (let* ((_super-id113568_
                                                _hd113543113563_)
                                               (_rest113570_ _tl113544113565_))
                                          (declare (not safe))
                                          (_K113542113560_
                                           _rest113570_
                                           _super-id113568_)))
                                      '#!void)))
                              (let* ((_ctor-method113620_
                                      (let ((_$e113572_ _ctor-method113530_))
                                        (if _$e113572_
                                            _$e113572_
                                            (let _lp113575_ ((_rest113577_
                                                              _super113528_)
                                                             (_method113578_
                                                              '#f))
                                              (let* ((_rest113579113587_
                                                      _rest113577_)
                                                     (_else113581113595_
                                                      (lambda ()
                                                        _method113578_))
                                                     (_K113583113608_
                                                      (lambda (_rest113598_
                                                               _super-id113599_)
                                                        (let* ((_klass113601_
                                                                (let ((__tmp113954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113955
                                      (let ()
                                        (declare (not safe))
                                        (cons _id113527_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp113955))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp113954
                           _super-id113599_)))
                       (_$e113603_
                        (##structure-ref _klass113601_ '6 gxc#!class::t '#f)))
                  (if _$e113603_
                      ((lambda (_ctor-method113606_)
                         (if _method113578_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method113606_ _method113578_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp113575_
                                    _rest113598_
                                    _ctor-method113606_))
                                 (let ((__tmp113956
                                        (let ((__tmp113957
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id113527_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp113957))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp113956
                                    _method113578_
                                    _ctor-method113606_)))
                             (let ()
                               (declare (not safe))
                               (_lp113575_ _rest113598_ _ctor-method113606_))))
                       _$e113603_)
                      (let ()
                        (declare (not safe))
                        (_lp113575_ _rest113598_ _method113578_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest113579113587_))
                                                    (let ((_hd113584113611_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest113579113587_)))
                                                          (_tl113585113613_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest113579113587_))))
                                                      (let* ((_super-id113616_
                                                              _hd113584113611_)
                                                             (_rest113618_
                                                              _tl113585113613_))
                                                        (declare (not safe))
                                                        (_K113583113608_
                                                         _rest113618_
                                                         _super-id113616_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else113581113595_))))))))
                                     (_g113958_
                                      (let ((__tmp113963
                                             (lambda (_klass-id113622_)
                                               (let ((__tmp113964
                                                      (##structure-ref
                                                       (let ((__tmp113965
                                                              (let ((__tmp113966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id113527_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp113966))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp113965 _klass-id113622_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id113622_
                                                       __tmp113964))))
                                            (__tmp113960
                                             (lambda (_klass-id113624_)
                                               (##structure-ref
                                                (let ((__tmp113961
                                                       (let ((__tmp113962
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id113527_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp113962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp113961
                                                   _klass-id113624_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super113528_
                                         'get-precedence-list:
                                         __tmp113963
                                         'struct:
                                         __tmp113960
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g113959_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g113958_)
                                               (##vector-length _g113958_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g113959_ 2)))
                                        (error "Context expects 2 values"
                                               _g113959_)))
                                  (let ((_precedence-list113626_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113958_ 0)))
                                        (_base-struct113627_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113958_ 1))))
                                    (let ((_fields113629_
                                           (let ((__tmp113967
                                                  (let ((__tmp113968
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id113527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp113968))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp113967
                                              _base-struct113627_
                                              _precedence-list113626_
                                              _slots113529_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113526_
                                         _id113527_
                                         __id113822
                                         __klass113815
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113526_
                                         _super113528_
                                         __super113818
                                         __klass113815
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113526_
                                         _precedence-list113626_
                                         __precedence-list113824
                                         __klass113815
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113526_
                                         _slots113529_
                                         __slots113823
                                         __klass113815
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113526_
                                         _fields113629_
                                         __fields113821
                                         __klass113815
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113526_
                                         _ctor-method113620_
                                         __constructor113826
                                         __klass113815
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113526_
                                         _struct?113531_
                                         __struct?113825
                                         __klass113815
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113526_
                                         _final?113532_
                                         __final?113820
                                         __klass113815
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self113526_
                                         _metaclass113533_
                                         __metaclass113817
                                         __klass113815
                                         '#f)))))))
                            _g113949_))
                    ((let () (declare (not safe)) (##fx= _g113948_ 11))
                     (apply (lambda (_self113632_
                                     _id113633_
                                     _super113634_
                                     _precedence-list113635_
                                     _slots113636_
                                     _fields113637_
                                     _constructor113638_
                                     _struct?113639_
                                     _final?113640_
                                     _metaclass113641_
                                     _methods113642_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113632_
                                 _id113633_
                                 __id113822
                                 __klass113815
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113632_
                                 _super113634_
                                 __super113818
                                 __klass113815
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113632_
                                 _precedence-list113635_
                                 __precedence-list113824
                                 __klass113815
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113632_
                                 _slots113636_
                                 __slots113823
                                 __klass113815
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113632_
                                 _fields113637_
                                 __fields113821
                                 __klass113815
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113632_
                                 _constructor113638_
                                 __constructor113826
                                 __klass113815
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113632_
                                 _struct?113639_
                                 __struct?113825
                                 __klass113815
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113632_
                                 _final?113640_
                                 __final?113820
                                 __klass113815
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self113632_
                                 _metaclass113641_
                                 __metaclass113817
                                 __klass113815
                                 '#f))
                              (if _methods113642_
                                  (let ((__tmp113969
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods113642_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self113632_
                                     __tmp113969
                                     __methods113819
                                     __klass113815
                                     '#f))
                                  '#!void))
                            _g113949_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g113949_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where113378_
               _base-struct113379_
               _precedence-list113380_
               _direct-slots113381_)
        (let* ((_base-fields113383_
                (if _base-struct113379_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where113378_
                        _base-struct113379_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields113385_ (reverse _base-fields113383_))
               (_seen-slots113393_
                (let ((_tab113387_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g113388113390_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab113387_ _g113388113390_ '#t)))
                   _base-fields113383_)
                  _tab113387_))
               (_process-slot113397_
                (lambda (_slot113395_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots113393_ _slot113395_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots113393_ _slot113395_ '#t))
                        (set! _r-fields113385_
                              (let ()
                                (declare (not safe))
                                (cons _slot113395_ _r-fields113385_))))))))
          (for-each
           (lambda (_mixin113400_)
             (let ((_klass113402_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where113378_
                       _mixin113400_))))
               (if (##structure-ref _klass113402_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot113397_
                    (##structure-ref _klass113402_ '5 gxc#!class::t '#f)))))
           _precedence-list113380_)
          (for-each _process-slot113397_ _direct-slots113381_)
          (reverse _r-fields113385_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass113337_ _slot113338_)
        (let _lp113340_ ((_rest113342_
                          (##structure-ref _klass113337_ '5 gxc#!class::t '#f))
                         (_offset113343_ '1))
          (let* ((_rest113344113352_ _rest113342_)
                 (_else113346113360_
                  (lambda ()
                    (let ((__tmp113971
                           (##structure-ref _klass113337_ '1 gxc#!type::t '#f))
                          (__tmp113970
                           (##structure-ref
                            _klass113337_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp113971
                       __tmp113970
                       _slot113338_))))
                 (_K113348113366_
                  (lambda (_rest113363_ _s113364_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s113364_ _slot113338_))
                        _offset113343_
                        (let ((__tmp113972
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset113343_ '1))))
                          (declare (not safe))
                          (_lp113340_ _rest113363_ __tmp113972))))))
            (if (let () (declare (not safe)) (##pair? _rest113344113352_))
                (let ((_hd113349113369_
                       (let ()
                         (declare (not safe))
                         (##car _rest113344113352_)))
                      (_tl113350113371_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest113344113352_))))
                  (let* ((_s113374_ _hd113349113369_)
                         (_rest113376_ _tl113350113371_))
                    (declare (not safe))
                    (_K113348113366_ _rest113376_ _s113374_)))
                (let () (declare (not safe)) (_else113346113360_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass113295_ _slot113296_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass113295_ _slot113296_))
            _klass113295_
            (let _lp113298_ ((_rest113300_
                              (##structure-ref
                               _klass113295_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest113301113309_ _rest113300_)
                     (_else113303113317_ (lambda () '#f))
                     (_K113305113325_
                      (lambda (_rest113320_ _super113321_)
                        (let ((_super-class113323_
                               (let ((__tmp113973
                                      (let ((__tmp113974
                                             (let ((__tmp113976
                                                    (##structure-ref
                                                     _klass113295_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp113975
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot113296_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp113976
                                                     __tmp113975))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp113974))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp113973
                                  _super113321_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class113323_
                                 _slot113296_))
                              _super-class113323_
                              (let ()
                                (declare (not safe))
                                (_lp113298_ _rest113320_)))))))
                (if (let () (declare (not safe)) (##pair? _rest113301113309_))
                    (let ((_hd113306113328_
                           (let ()
                             (declare (not safe))
                             (##car _rest113301113309_)))
                          (_tl113307113330_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest113301113309_))))
                      (let* ((_super113333_ _hd113306113328_)
                             (_rest113335_ _tl113307113330_))
                        (declare (not safe))
                        (_K113305113325_ _rest113335_ _super113333_)))
                    (let () (declare (not safe)) (_else113303113317_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass113292_ _slot113293_)
        (if (##structure-ref _klass113292_ '7 gxc#!class::t '#f)
            (memq _slot113293_
                  (##structure-ref _klass113292_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self113289_ _id113290_)
        (##structure-set! _self113289_ _id113290_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass113837 __method-table113838)
        (let ((__id113839
               (let ((__slot113840
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113837 'id))))
                 (if __slot113840
                     __slot113840
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113289_ _id113290_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113289_
               _id113290_
               __id113839
               __klass113837
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
      (lambda (_self113164_ _id113165_)
        (##structure-set! _self113164_ _id113165_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass113841 __method-table113842)
        (let ((__id113843
               (let ((__slot113844
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113841 'id))))
                 (if __slot113844
                     __slot113844
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113164_ _id113165_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113164_
               _id113165_
               __id113843
               __klass113841
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
      (lambda (_self113037_ _id113038_ _slot113039_ _checked?113040_)
        (##structure-set! _self113037_ _id113038_ '1 gxc#!type::t '#f)
        (##structure-set! _self113037_ _slot113039_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self113037_
         _checked?113040_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass113845 __method-table113846)
        (let ((__id113847
               (let ((__slot113850
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113845 'id))))
                 (if __slot113850
                     __slot113850
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot113848
               (let ((__slot113851
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113845 'slot))))
                 (if __slot113851
                     __slot113851
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?113849
               (let ((__slot113852
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113845 'checked?))))
                 (if __slot113852
                     __slot113852
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self113037_ _id113038_ _slot113039_ _checked?113040_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113037_
               _id113038_
               __id113847
               __klass113845
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113037_
               _slot113039_
               __slot113848
               __klass113845
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113037_
               _checked?113040_
               __checked?113849
               __klass113845
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
      (lambda (_self112910_ _id112911_ _slot112912_ _checked?112913_)
        (##structure-set! _self112910_ _id112911_ '1 gxc#!type::t '#f)
        (##structure-set! _self112910_ _slot112912_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self112910_
         _checked?112913_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass113853 __method-table113854)
        (let ((__checked?113855
               (let ((__slot113858
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113853 'checked?))))
                 (if __slot113858
                     __slot113858
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot113856
               (let ((__slot113859
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113853 'slot))))
                 (if __slot113859
                     __slot113859
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id113857
               (let ((__slot113860
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass113853 'id))))
                 (if __slot113860
                     __slot113860
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self112910_ _id112911_ _slot112912_ _checked?112913_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112910_
               _id112911_
               __id113857
               __klass113853
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112910_
               _slot112912_
               __slot113856
               __klass113853
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112910_
               _checked?112913_
               __checked?113855
               __klass113853
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
      (lambda (_self112754_
               _id112755_
               _arity112756_
               _dispatch112757_
               _inline112758_
               _typedecl112759_)
        (if (let ((__tmp113983
                   (let ()
                     (declare (not safe))
                     (##structure-length _self112754_))))
              (declare (not safe))
              (##fx< '5 __tmp113983))
            (begin
              (let ((__tmp113978
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112754_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112754_
                 _id112755_
                 '1
                 __tmp113978
                 '#f))
              (let ((__tmp113979
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112754_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112754_
                 _arity112756_
                 '2
                 __tmp113979
                 '#f))
              (let ((__tmp113980
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112754_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112754_
                 _dispatch112757_
                 '3
                 __tmp113980
                 '#f))
              (let ((__tmp113981
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112754_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112754_
                 _inline112758_
                 '4
                 __tmp113981
                 '#f))
              (let ((__tmp113982
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112754_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112754_
                 _typedecl112759_
                 '5
                 __tmp113982
                 '#f)))
            (let ((__tmp113977
                   (let ()
                     (declare (not safe))
                     (##vector-length _self112754_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self112754_
                     '5
                     __tmp113977)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self112764_ _id112765_ _arity112766_ _dispatch112767_)
        (let* ((_inline112769_ '#f) (_typedecl112771_ '#f))
          (if (let ((__tmp113990
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112764_))))
                (declare (not safe))
                (##fx< '5 __tmp113990))
              (begin
                (let ((__tmp113985
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112764_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112764_
                   _id112765_
                   '1
                   __tmp113985
                   '#f))
                (let ((__tmp113986
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112764_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112764_
                   _arity112766_
                   '2
                   __tmp113986
                   '#f))
                (let ((__tmp113987
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112764_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112764_
                   _dispatch112767_
                   '3
                   __tmp113987
                   '#f))
                (let ((__tmp113988
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112764_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112764_
                   _inline112769_
                   '4
                   __tmp113988
                   '#f))
                (let ((__tmp113989
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112764_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112764_
                   _typedecl112771_
                   '5
                   __tmp113989
                   '#f)))
              (let ((__tmp113984
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112764_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112764_
                       '5
                       __tmp113984))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self112773_
               _id112774_
               _arity112775_
               _dispatch112776_
               _inline112777_)
        (let ((_typedecl112779_ '#f))
          (if (let ((__tmp113997
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112773_))))
                (declare (not safe))
                (##fx< '5 __tmp113997))
              (begin
                (let ((__tmp113992
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112773_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112773_
                   _id112774_
                   '1
                   __tmp113992
                   '#f))
                (let ((__tmp113993
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112773_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112773_
                   _arity112775_
                   '2
                   __tmp113993
                   '#f))
                (let ((__tmp113994
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112773_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112773_
                   _dispatch112776_
                   '3
                   __tmp113994
                   '#f))
                (let ((__tmp113995
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112773_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112773_
                   _inline112777_
                   '4
                   __tmp113995
                   '#f))
                (let ((__tmp113996
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112773_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112773_
                   _typedecl112779_
                   '5
                   __tmp113996
                   '#f)))
              (let ((__tmp113991
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112773_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112773_
                       '5
                       __tmp113991))))))
    (define gxc#!lambda:::init!
      (lambda _g113999_
        (let ((_g113998_ (let () (declare (not safe)) (##length _g113999_))))
          (cond ((let () (declare (not safe)) (##fx= _g113998_ 4))
                 (apply (lambda (_self112764_
                                 _id112765_
                                 _arity112766_
                                 _dispatch112767_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self112764_
                             _id112765_
                             _arity112766_
                             _dispatch112767_)))
                        _g113999_))
                ((let () (declare (not safe)) (##fx= _g113998_ 5))
                 (apply (lambda (_self112773_
                                 _id112774_
                                 _arity112775_
                                 _dispatch112776_
                                 _inline112777_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self112773_
                             _id112774_
                             _arity112775_
                             _dispatch112776_
                             _inline112777_)))
                        _g113999_))
                ((let () (declare (not safe)) (##fx= _g113998_ 6))
                 (apply (lambda (_self112781_
                                 _id112782_
                                 _arity112783_
                                 _dispatch112784_
                                 _inline112785_
                                 _typedecl112786_)
                          (if (let ((__tmp114006
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self112781_))))
                                (declare (not safe))
                                (##fx< '5 __tmp114006))
                              (begin
                                (let ((__tmp114001
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112781_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112781_
                                   _id112782_
                                   '1
                                   __tmp114001
                                   '#f))
                                (let ((__tmp114002
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112781_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112781_
                                   _arity112783_
                                   '2
                                   __tmp114002
                                   '#f))
                                (let ((__tmp114003
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112781_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112781_
                                   _dispatch112784_
                                   '3
                                   __tmp114003
                                   '#f))
                                (let ((__tmp114004
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112781_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112781_
                                   _inline112785_
                                   '4
                                   __tmp114004
                                   '#f))
                                (let ((__tmp114005
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112781_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112781_
                                   _typedecl112786_
                                   '5
                                   __tmp114005
                                   '#f)))
                              (let ((__tmp114000
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self112781_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self112781_
                                       '5
                                       __tmp114000))))
                        _g113999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g113999_))))))
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
      (lambda (_self112506_ . _args112507_)
        (apply struct-instance-init! _self112506_ _args112507_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type112381_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112381_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type112381_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass112374_)
        (let ((_$e112376_
               (##structure-ref _klass112374_ '10 gxc#!class::t '#f)))
          (if _$e112376_
              _$e112376_
              (let ((_tab112379_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass112374_
                 _tab112379_
                 '10
                 gxc#!class::t
                 '#f)
                _tab112379_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass112365_ _method112366_)
        (let ((_tab112367112369_
               (##structure-ref _klass112365_ '10 gxc#!class::t '#f)))
          (if _tab112367112369_
              (let ((_tab112372_ _tab112367112369_))
                (declare (not safe))
                (hash-get _tab112372_ _method112366_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type112362_ _method112363_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112362_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type112362_ _method112363_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym112346_ _type112347_ _local?112348_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type112347_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym112346_
                     _type112347_)))
        (let ((__tmp114007
               (let () (declare (not safe)) (struct->list _type112347_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym112346_ '" " __tmp114007))
        (let ((__tmp114008
               (if _local?112348_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp114008 _sym112346_ _type112347_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym112353_ _type112354_)
        (let ((_local?112356_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym112353_
           _type112354_
           _local?112356_))))
    (define gxc#optimizer-declare-type!
      (lambda _g114010_
        (let ((_g114009_ (let () (declare (not safe)) (##length _g114010_))))
          (cond ((let () (declare (not safe)) (##fx= _g114009_ 2))
                 (apply (lambda (_sym112353_ _type112354_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym112353_
                             _type112354_)))
                        _g114010_))
                ((let () (declare (not safe)) (##fx= _g114009_ 3))
                 (apply (lambda (_sym112358_ _type112359_ _local?112360_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym112358_
                             _type112359_
                             _local?112360_)))
                        _g114010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g114010_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym112332_ _local?112333_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym112332_))
        (let ((__tmp114011
               (if _local?112333_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp114011 _sym112332_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym112338_)
        (let ((_local?112340_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym112338_ _local?112340_))))
    (define gxc#optimizer-clear-type!
      (lambda _g114013_
        (let ((_g114012_ (let () (declare (not safe)) (##length _g114013_))))
          (cond ((let () (declare (not safe)) (##fx= _g114012_ 1))
                 (apply (lambda (_sym112338_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym112338_)))
                        _g114013_))
                ((let () (declare (not safe)) (##fx= _g114012_ 2))
                 (apply (lambda (_sym112342_ _local?112343_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym112342_
                             _local?112343_)))
                        _g114013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g114013_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t112305_ _method112306_ _sym112307_ _rebind?112308_)
        (let* ((_type112310_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t112305_)))
               (_$e112312_
                (let () (declare (not safe)) (gxc#!type-vtab _type112310_))))
          (if _$e112312_
              ((lambda (_vtab112315_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab112315_ _method112306_))
                     (if _rebind?112308_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t112305_
                              '" "
                              _method112306_))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              _vtab112315_
                              _method112306_
                              _sym112307_)))
                         (let ((__tmp114018
                                (let ((__tmp114019
                                       (let ((__tmp114020
                                              (let ((__tmp114021
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym112307_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method112306_
                                                      __tmp114021))))
                                         (declare (not safe))
                                         (cons _type-t112305_ __tmp114020))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp114019))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp114018
                            _method112306_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t112305_
                          '" "
                          _method112306_
                          '" => "
                          _sym112307_))
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _vtab112315_
                          _method112306_
                          _sym112307_)))))
               _$e112312_)
              (if (let () (declare (not safe)) (not _type112310_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t112305_))
                  (let ((__tmp114014
                         (let ((__tmp114015
                                (let ((__tmp114016
                                       (let ((__tmp114017
                                              (let ()
                                                (declare (not safe))
                                                (cons _method112306_ '()))))
                                         (declare (not safe))
                                         (cons _sym112307_ __tmp114017))))
                                  (declare (not safe))
                                  (cons _type-t112305_ __tmp114016))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp114015))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp114014
                     _type112310_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t112320_ _method112321_ _sym112322_)
        (let ((_rebind?112324_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t112320_
           _method112321_
           _sym112322_
           _rebind?112324_))))
    (define gxc#optimizer-declare-method!
      (lambda _g114023_
        (let ((_g114022_ (let () (declare (not safe)) (##length _g114023_))))
          (cond ((let () (declare (not safe)) (##fx= _g114022_ 3))
                 (apply (lambda (_type-t112320_ _method112321_ _sym112322_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t112320_
                             _method112321_
                             _sym112322_)))
                        _g114023_))
                ((let () (declare (not safe)) (##fx= _g114022_ 4))
                 (apply (lambda (_type-t112326_
                                 _method112327_
                                 _sym112328_
                                 _rebind?112329_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t112326_
                             _method112327_
                             _sym112328_
                             _rebind?112329_)))
                        _g114023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g114023_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym112293_)
        (let ((_$e112301_
               (let ((_ht112294112296_ (gxc#current-compile-local-type)))
                 (if _ht112294112296_
                     (let ((_ht112299_ _ht112294112296_))
                       (declare (not safe))
                       (hash-get _ht112299_ _sym112293_))
                     '#f))))
          (if _$e112301_
              _$e112301_
              (let ((__tmp114024
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp114024 _sym112293_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym112285_)
        (let ((_type112286112288_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym112285_))))
          (if _type112286112288_
              (let ((_type112291_ _type112286112288_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type112291_ 'gxc#!alias::t))
                    (let ((__tmp114025
                           (##structure-ref _type112291_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp114025))
                    _type112291_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where112277_ _klass-id112278_)
        (let ((_$e112280_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id112278_))))
          (if _$e112280_
              ((lambda (_klass112283_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass112283_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where112277_
                        _klass-id112278_
                        _klass112283_)))
                 _klass112283_)
               _$e112280_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where112277_
                 _klass-id112278_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t112274_ _method112275_)
        (let ((__tmp114026
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t112274_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp114026 _method112275_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym112272_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym112272_))
        (let ((__tmp114027
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp114027 _sym112272_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym112270_)
        (let ((__tmp114028
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp114028 _sym112270_))))
    (define gxc#identifier-symbol
      (lambda (_stx112268_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx112268_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx112268_))
            (let () (declare (not safe)) (gx#stx-e _stx112268_)))))))
