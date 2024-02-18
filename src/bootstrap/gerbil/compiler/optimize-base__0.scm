(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708280336)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp226932 (list))
            (__tmp226930
             (let ((__tmp226931
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226931 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp226932
         '(type ssxi methods)
         __tmp226930
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args222804_
        (apply make-instance gxc#optimizer-info::t _$args222804_)))
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
      (lambda (_self222802_)
        (if (let ((__tmp226939
                   (let ()
                     (declare (not safe))
                     (##structure-length _self222802_))))
              (declare (not safe))
              (##fx< '3 __tmp226939))
            (begin
              (let ((__tmp226934
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp226933
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222802_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222802_
                 __tmp226934
                 '1
                 __tmp226933
                 '#f))
              (let ((__tmp226936
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp226935
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222802_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222802_
                 __tmp226936
                 '2
                 __tmp226935
                 '#f))
              (let ((__tmp226938
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp226937
                     (let ()
                       (declare (not safe))
                       (##structure-type _self222802_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self222802_
                 __tmp226938
                 '3
                 __tmp226937
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self222802_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self222802_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp226942 (list))
            (__tmp226940
             (let ((__tmp226941
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226941 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp226942
         '(id)
         __tmp226940
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args222677_ (apply make-instance gxc#!type::t _$args222677_)))
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
      (let ((__tmp226945 (list gxc#!type::t))
            (__tmp226943
             (let ((__tmp226944
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226944 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp226945
         '()
         __tmp226943
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args222674_ (apply make-instance gxc#!alias::t _$args222674_)))
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
      (let ((__tmp226948 (list gxc#!type::t))
            (__tmp226946
             (let ((__tmp226947
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226947 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp226948
         '()
         __tmp226946
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args222671_
        (apply make-instance gxc#!procedure::t _$args222671_)))
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
      (let ((__tmp226951 (list gxc#!type::t))
            (__tmp226949
             (let ((__tmp226950
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226950 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp226951
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp226949
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args222668_ (apply make-instance gxc#!class::t _$args222668_)))
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
      (let ((__tmp226954 (list gxc#!procedure::t))
            (__tmp226952
             (let ((__tmp226953
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226953 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp226954
         '()
         __tmp226952
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args222665_
        (apply make-instance gxc#!predicate::t _$args222665_)))
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
      (let ((__tmp226957 (list gxc#!procedure::t))
            (__tmp226955
             (let ((__tmp226956
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226956 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp226957
         '()
         __tmp226955
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args222662_
        (apply make-instance gxc#!constructor::t _$args222662_)))
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
      (let ((__tmp226960 (list gxc#!procedure::t))
            (__tmp226958
             (let ((__tmp226959
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226959 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp226960
         '(slot checked?)
         __tmp226958
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args222659_
        (apply make-instance gxc#!accessor::t _$args222659_)))
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
      (let ((__tmp226963 (list gxc#!procedure::t))
            (__tmp226961
             (let ((__tmp226962
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226962 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp226963
         '(slot checked?)
         __tmp226961
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args222656_
        (apply make-instance gxc#!mutator::t _$args222656_)))
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
      (let ((__tmp226966 (list gxc#!procedure::t))
            (__tmp226964
             (let ((__tmp226965
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226965 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp226966
         '(arity dispatch inline inline-typedecl)
         __tmp226964
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args222653_
        (apply make-instance gxc#!lambda::t _$args222653_)))
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
      (let ((__tmp226969 (list gxc#!procedure::t))
            (__tmp226967
             (let ((__tmp226968
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226968 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp226969
         '(clauses)
         __tmp226967
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args222650_
        (apply make-instance gxc#!case-lambda::t _$args222650_)))
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
      (let ((__tmp226972 (list gxc#!procedure::t))
            (__tmp226970
             (let ((__tmp226971
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226971 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp226972
         '(table dispatch)
         __tmp226970
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args222647_
        (apply make-instance gxc#!kw-lambda::t _$args222647_)))
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
      (let ((__tmp226975 (list gxc#!procedure::t))
            (__tmp226973
             (let ((__tmp226974
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp226974 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp226975
         '(keys main)
         __tmp226973
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args222644_
        (apply make-instance gxc#!kw-lambda-primary::t _$args222644_)))
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
      (let ((__tmp226976 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp226976
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args222641_
        (apply make-instance gxc#!primitive::t _$args222641_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp226977 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp226977
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args222638_
        (apply make-instance gxc#!primitive-lambda::t _$args222638_)))
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
      (let ((__tmp226978 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp226978
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args222635_
        (apply make-instance gxc#!primitive-case-lambda::t _$args222635_)))
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
      (lambda (_self222517_
               _id222518_
               _super222519_
               _slots222520_
               _ctor-method222521_
               _struct?222522_
               _final?222523_
               _metaclass222524_)
        (let _lp222526_ ((_rest222528_ _super222519_))
          (let* ((_rest222529222537_ _rest222528_)
                 (_else222531222545_ (lambda () '#!void))
                 (_K222533222551_
                  (lambda (_rest222548_ _super-id222549_)
                    (if (##structure-ref
                         (let ((__tmp226981
                                (let ((__tmp226982
                                       (let ()
                                         (declare (not safe))
                                         (cons _id222518_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp226982))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp226981
                            _super-id222549_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp226979
                               (let ((__tmp226980
                                      (let ()
                                        (declare (not safe))
                                        (cons _id222518_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp226980))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp226979
                           _super-id222549_))
                        '#!void)
                    (let () (declare (not safe)) (_lp222526_ _rest222548_)))))
            (if (let () (declare (not safe)) (##pair? _rest222529222537_))
                (let ((_hd222534222554_
                       (let ()
                         (declare (not safe))
                         (##car _rest222529222537_)))
                      (_tl222535222556_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest222529222537_))))
                  (let* ((_super-id222559_ _hd222534222554_)
                         (_rest222561_ _tl222535222556_))
                    (declare (not safe))
                    (_K222533222551_ _rest222561_ _super-id222559_)))
                '#!void)))
        (let* ((_ctor-method222611_
                (let ((_$e222563_ _ctor-method222521_))
                  (if _$e222563_
                      _$e222563_
                      (let _lp222566_ ((_rest222568_ _super222519_)
                                       (_method222569_ '#f))
                        (let* ((_rest222570222578_ _rest222568_)
                               (_else222572222586_ (lambda () _method222569_))
                               (_K222574222599_
                                (lambda (_rest222589_ _super-id222590_)
                                  (let* ((_klass222592_
                                          (let ((__tmp226983
                                                 (let ((__tmp226984
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id222518_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp226984))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp226983
                                             _super-id222590_)))
                                         (_$e222594_
                                          (##structure-ref
                                           _klass222592_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e222594_
                                        ((lambda (_ctor-method222597_)
                                           (if _method222569_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method222597_
                                                          _method222569_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp222566_
                                                      _rest222589_
                                                      _ctor-method222597_))
                                                   (let ((__tmp226985
                                                          (let ((__tmp226986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id222518_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp226986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp226985
                                                      _method222569_
                                                      _ctor-method222597_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp222566_
                                                  _rest222589_
                                                  _ctor-method222597_))))
                                         _$e222594_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp222566_
                                           _rest222589_
                                           _method222569_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest222570222578_))
                              (let ((_hd222575222602_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest222570222578_)))
                                    (_tl222576222604_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest222570222578_))))
                                (let* ((_super-id222607_ _hd222575222602_)
                                       (_rest222609_ _tl222576222604_))
                                  (declare (not safe))
                                  (_K222574222599_
                                   _rest222609_
                                   _super-id222607_)))
                              (let ()
                                (declare (not safe))
                                (_else222572222586_))))))))
               (_g226987_
                (let ((__tmp226992
                       (lambda (_klass-id222613_)
                         (let ((__tmp226993
                                (##structure-ref
                                 (let ((__tmp226994
                                        (let ((__tmp226995
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id222518_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp226995))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp226994
                                    _klass-id222613_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id222613_ __tmp226993))))
                      (__tmp226989
                       (lambda (_klass-id222615_)
                         (##structure-ref
                          (let ((__tmp226990
                                 (let ((__tmp226991
                                        (let ()
                                          (declare (not safe))
                                          (cons _id222518_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp226991))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp226990
                             _klass-id222615_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super222519_
                   'get-precedence-list:
                   __tmp226992
                   'struct:
                   __tmp226989
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g226988_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g226987_)
                         (##vector-length _g226987_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g226988_ 2)))
                  (error "Context expects 2 values" _g226988_)))
            (let ((_precedence-list222617_
                   (let () (declare (not safe)) (##vector-ref _g226987_ 0)))
                  (_base-struct222618_
                   (let () (declare (not safe)) (##vector-ref _g226987_ 1))))
              (let ((_fields222620_
                     (let ((__tmp226996
                            (let ((__tmp226997
                                   (let ()
                                     (declare (not safe))
                                     (cons _id222518_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp226997))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp226996
                        _base-struct222618_
                        _precedence-list222617_
                        _slots222520_))))
                (##structure-set! _self222517_ _id222518_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self222517_
                 _super222519_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self222517_
                 _precedence-list222617_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self222517_
                 _slots222520_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self222517_
                 _fields222620_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self222517_
                 _ctor-method222611_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self222517_
                 _struct?222522_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self222517_
                 _final?222523_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self222517_
                 _metaclass222524_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self222623_
               _id222624_
               _super222625_
               _precedence-list222626_
               _slots222627_
               _fields222628_
               _constructor222629_
               _struct?222630_
               _final?222631_
               _metaclass222632_
               _methods222633_)
        (##structure-set! _self222623_ _id222624_ '1 gxc#!type::t '#f)
        (##structure-set! _self222623_ _super222625_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self222623_
         _precedence-list222626_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self222623_ _slots222627_ '4 gxc#!class::t '#f)
        (##structure-set! _self222623_ _fields222628_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self222623_
         _constructor222629_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self222623_ _struct?222630_ '7 gxc#!class::t '#f)
        (##structure-set! _self222623_ _final?222631_ '8 gxc#!class::t '#f)
        (##structure-set! _self222623_ _metaclass222632_ '9 gxc#!class::t '#f)
        (if _methods222633_
            (##structure-set!
             _self222623_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods222633_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g226999_
        (let ((_g226998_ (let () (declare (not safe)) (##length _g226999_))))
          (cond ((let () (declare (not safe)) (##fx= _g226998_ 8))
                 (apply (lambda (_self222517_
                                 _id222518_
                                 _super222519_
                                 _slots222520_
                                 _ctor-method222521_
                                 _struct?222522_
                                 _final?222523_
                                 _metaclass222524_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self222517_
                             _id222518_
                             _super222519_
                             _slots222520_
                             _ctor-method222521_
                             _struct?222522_
                             _final?222523_
                             _metaclass222524_)))
                        _g226999_))
                ((let () (declare (not safe)) (##fx= _g226998_ 11))
                 (apply (lambda (_self222623_
                                 _id222624_
                                 _super222625_
                                 _precedence-list222626_
                                 _slots222627_
                                 _fields222628_
                                 _constructor222629_
                                 _struct?222630_
                                 _final?222631_
                                 _metaclass222632_
                                 _methods222633_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self222623_
                             _id222624_
                             _super222625_
                             _precedence-list222626_
                             _slots222627_
                             _fields222628_
                             _constructor222629_
                             _struct?222630_
                             _final?222631_
                             _metaclass222632_
                             _methods222633_)))
                        _g226999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g226999_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t226873)
        (let ((__slots226874
               (let ((__tmp226884
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226873 'slots))))
                 (if __tmp226884 __tmp226884 (error '"Unknown slot" 'slots))))
              (__id226875
               (let ((__tmp226885
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226873 'id))))
                 (if __tmp226885 __tmp226885 (error '"Unknown slot" 'id))))
              (__struct?226876
               (let ((__tmp226886
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226873 'struct?))))
                 (if __tmp226886
                     __tmp226886
                     (error '"Unknown slot" 'struct?))))
              (__constructor226877
               (let ((__tmp226887
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226873 'constructor))))
                 (if __tmp226887
                     __tmp226887
                     (error '"Unknown slot" 'constructor))))
              (__precedence-list226878
               (let ((__tmp226888
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226873 'precedence-list))))
                 (if __tmp226888
                     __tmp226888
                     (error '"Unknown slot" 'precedence-list))))
              (__super226879
               (let ((__tmp226889
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226873 'super))))
                 (if __tmp226889 __tmp226889 (error '"Unknown slot" 'super))))
              (__metaclass226880
               (let ((__tmp226890
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226873 'metaclass))))
                 (if __tmp226890
                     __tmp226890
                     (error '"Unknown slot" 'metaclass))))
              (__fields226881
               (let ((__tmp226891
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226873 'fields))))
                 (if __tmp226891 __tmp226891 (error '"Unknown slot" 'fields))))
              (__final?226882
               (let ((__tmp226892
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226873 'final?))))
                 (if __tmp226892 __tmp226892 (error '"Unknown slot" 'final?))))
              (__methods226883
               (let ((__tmp226893
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226873 'methods))))
                 (if __tmp226893
                     __tmp226893
                     (error '"Unknown slot" 'methods)))))
          (lambda _g227001_
            (let ((_g227000_
                   (let () (declare (not safe)) (##length _g227001_))))
              (cond ((let () (declare (not safe)) (##fx= _g227000_ 8))
                     (apply (lambda (_self222517_
                                     _id222518_
                                     _super222519_
                                     _slots222520_
                                     _ctor-method222521_
                                     _struct?222522_
                                     _final?222523_
                                     _metaclass222524_)
                              (let _lp222526_ ((_rest222528_ _super222519_))
                                (let* ((_rest222529222537_ _rest222528_)
                                       (_else222531222545_ (lambda () '#!void))
                                       (_K222533222551_
                                        (lambda (_rest222548_ _super-id222549_)
                                          (if (##structure-ref
                                               (let ((__tmp227004
                                                      (let ((__tmp227005
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id222518_ '()))))
                (declare (not safe))
                (cons '!class __tmp227005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp227004
                                                  _super-id222549_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp227002
                                                     (let ((__tmp227003
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id222518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp227003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp227002
                                                 _super-id222549_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp222526_ _rest222548_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest222529222537_))
                                      (let ((_hd222534222554_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest222529222537_)))
                                            (_tl222535222556_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest222529222537_))))
                                        (let* ((_super-id222559_
                                                _hd222534222554_)
                                               (_rest222561_ _tl222535222556_))
                                          (declare (not safe))
                                          (_K222533222551_
                                           _rest222561_
                                           _super-id222559_)))
                                      '#!void)))
                              (let* ((_ctor-method222611_
                                      (let ((_$e222563_ _ctor-method222521_))
                                        (if _$e222563_
                                            _$e222563_
                                            (let _lp222566_ ((_rest222568_
                                                              _super222519_)
                                                             (_method222569_
                                                              '#f))
                                              (let* ((_rest222570222578_
                                                      _rest222568_)
                                                     (_else222572222586_
                                                      (lambda ()
                                                        _method222569_))
                                                     (_K222574222599_
                                                      (lambda (_rest222589_
                                                               _super-id222590_)
                                                        (let* ((_klass222592_
                                                                (let ((__tmp227006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp227007
                                      (let ()
                                        (declare (not safe))
                                        (cons _id222518_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp227007))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp227006
                           _super-id222590_)))
                       (_$e222594_
                        (##structure-ref _klass222592_ '6 gxc#!class::t '#f)))
                  (if _$e222594_
                      ((lambda (_ctor-method222597_)
                         (if _method222569_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method222597_ _method222569_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp222566_
                                    _rest222589_
                                    _ctor-method222597_))
                                 (let ((__tmp227008
                                        (let ((__tmp227009
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id222518_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp227009))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp227008
                                    _method222569_
                                    _ctor-method222597_)))
                             (let ()
                               (declare (not safe))
                               (_lp222566_ _rest222589_ _ctor-method222597_))))
                       _$e222594_)
                      (let ()
                        (declare (not safe))
                        (_lp222566_ _rest222589_ _method222569_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest222570222578_))
                                                    (let ((_hd222575222602_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest222570222578_)))
                                                          (_tl222576222604_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest222570222578_))))
                                                      (let* ((_super-id222607_
                                                              _hd222575222602_)
                                                             (_rest222609_
                                                              _tl222576222604_))
                                                        (declare (not safe))
                                                        (_K222574222599_
                                                         _rest222609_
                                                         _super-id222607_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else222572222586_))))))))
                                     (_g227010_
                                      (let ((__tmp227015
                                             (lambda (_klass-id222613_)
                                               (let ((__tmp227016
                                                      (##structure-ref
                                                       (let ((__tmp227017
                                                              (let ((__tmp227018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id222518_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp227018))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp227017 _klass-id222613_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id222613_
                                                       __tmp227016))))
                                            (__tmp227012
                                             (lambda (_klass-id222615_)
                                               (##structure-ref
                                                (let ((__tmp227013
                                                       (let ((__tmp227014
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id222518_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp227014))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp227013
                                                   _klass-id222615_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super222519_
                                         'get-precedence-list:
                                         __tmp227015
                                         'struct:
                                         __tmp227012
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g227011_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g227010_)
                                               (##vector-length _g227010_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g227011_ 2)))
                                        (error "Context expects 2 values"
                                               _g227011_)))
                                  (let ((_precedence-list222617_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g227010_ 0)))
                                        (_base-struct222618_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g227010_ 1))))
                                    (let ((_fields222620_
                                           (let ((__tmp227019
                                                  (let ((__tmp227020
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id222518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp227020))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp227019
                                              _base-struct222618_
                                              _precedence-list222617_
                                              _slots222520_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222517_
                                         _id222518_
                                         __id226875
                                         __t226873
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222517_
                                         _super222519_
                                         __super226879
                                         __t226873
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222517_
                                         _precedence-list222617_
                                         __precedence-list226878
                                         __t226873
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222517_
                                         _slots222520_
                                         __slots226874
                                         __t226873
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222517_
                                         _fields222620_
                                         __fields226881
                                         __t226873
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222517_
                                         _ctor-method222611_
                                         __constructor226877
                                         __t226873
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222517_
                                         _struct?222522_
                                         __struct?226876
                                         __t226873
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222517_
                                         _final?222523_
                                         __final?226882
                                         __t226873
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self222517_
                                         _metaclass222524_
                                         __metaclass226880
                                         __t226873
                                         '#f)))))))
                            _g227001_))
                    ((let () (declare (not safe)) (##fx= _g227000_ 11))
                     (apply (lambda (_self222623_
                                     _id222624_
                                     _super222625_
                                     _precedence-list222626_
                                     _slots222627_
                                     _fields222628_
                                     _constructor222629_
                                     _struct?222630_
                                     _final?222631_
                                     _metaclass222632_
                                     _methods222633_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222623_
                                 _id222624_
                                 __id226875
                                 __t226873
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222623_
                                 _super222625_
                                 __super226879
                                 __t226873
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222623_
                                 _precedence-list222626_
                                 __precedence-list226878
                                 __t226873
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222623_
                                 _slots222627_
                                 __slots226874
                                 __t226873
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222623_
                                 _fields222628_
                                 __fields226881
                                 __t226873
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222623_
                                 _constructor222629_
                                 __constructor226877
                                 __t226873
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222623_
                                 _struct?222630_
                                 __struct?226876
                                 __t226873
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222623_
                                 _final?222631_
                                 __final?226882
                                 __t226873
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self222623_
                                 _metaclass222632_
                                 __metaclass226880
                                 __t226873
                                 '#f))
                              (if _methods222633_
                                  (let ((__tmp227021
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods222633_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self222623_
                                     __tmp227021
                                     __methods226883
                                     __t226873
                                     '#f))
                                  '#!void))
                            _g227001_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g227001_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where222369_
               _base-struct222370_
               _precedence-list222371_
               _direct-slots222372_)
        (let* ((_base-fields222374_
                (if _base-struct222370_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where222369_
                        _base-struct222370_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields222376_ (reverse _base-fields222374_))
               (_seen-slots222384_
                (let ((_tab222378_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g222379222381_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab222378_ _g222379222381_ '#t)))
                   _base-fields222374_)
                  _tab222378_))
               (_process-slot222388_
                (lambda (_slot222386_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots222384_ _slot222386_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots222384_ _slot222386_ '#t))
                        (set! _r-fields222376_
                              (let ()
                                (declare (not safe))
                                (cons _slot222386_ _r-fields222376_))))))))
          (for-each
           (lambda (_mixin222391_)
             (let ((_klass222393_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where222369_
                       _mixin222391_))))
               (if (##structure-ref _klass222393_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot222388_
                    (##structure-ref _klass222393_ '5 gxc#!class::t '#f)))))
           _precedence-list222371_)
          (for-each _process-slot222388_ _direct-slots222372_)
          (reverse _r-fields222376_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass222328_ _slot222329_)
        (let _lp222331_ ((_rest222333_
                          (##structure-ref _klass222328_ '5 gxc#!class::t '#f))
                         (_offset222334_ '1))
          (let* ((_rest222335222343_ _rest222333_)
                 (_else222337222351_
                  (lambda ()
                    (let ((__tmp227023
                           (##structure-ref _klass222328_ '1 gxc#!type::t '#f))
                          (__tmp227022
                           (##structure-ref
                            _klass222328_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp227023
                       __tmp227022
                       _slot222329_))))
                 (_K222339222357_
                  (lambda (_rest222354_ _s222355_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s222355_ _slot222329_))
                        _offset222334_
                        (let ((__tmp227024
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset222334_ '1))))
                          (declare (not safe))
                          (_lp222331_ _rest222354_ __tmp227024))))))
            (if (let () (declare (not safe)) (##pair? _rest222335222343_))
                (let ((_hd222340222360_
                       (let ()
                         (declare (not safe))
                         (##car _rest222335222343_)))
                      (_tl222341222362_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest222335222343_))))
                  (let* ((_s222365_ _hd222340222360_)
                         (_rest222367_ _tl222341222362_))
                    (declare (not safe))
                    (_K222339222357_ _rest222367_ _s222365_)))
                (let () (declare (not safe)) (_else222337222351_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass222286_ _slot222287_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass222286_ _slot222287_))
            _klass222286_
            (let _lp222289_ ((_rest222291_
                              (##structure-ref
                               _klass222286_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest222292222300_ _rest222291_)
                     (_else222294222308_ (lambda () '#f))
                     (_K222296222316_
                      (lambda (_rest222311_ _super222312_)
                        (let ((_super-class222314_
                               (let ((__tmp227025
                                      (let ((__tmp227026
                                             (let ((__tmp227028
                                                    (##structure-ref
                                                     _klass222286_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp227027
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot222287_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp227028
                                                     __tmp227027))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp227026))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp227025
                                  _super222312_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class222314_
                                 _slot222287_))
                              _super-class222314_
                              (let ()
                                (declare (not safe))
                                (_lp222289_ _rest222311_)))))))
                (if (let () (declare (not safe)) (##pair? _rest222292222300_))
                    (let ((_hd222297222319_
                           (let ()
                             (declare (not safe))
                             (##car _rest222292222300_)))
                          (_tl222298222321_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest222292222300_))))
                      (let* ((_super222324_ _hd222297222319_)
                             (_rest222326_ _tl222298222321_))
                        (declare (not safe))
                        (_K222296222316_ _rest222326_ _super222324_)))
                    (let () (declare (not safe)) (_else222294222308_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass222283_ _slot222284_)
        (if (##structure-ref _klass222283_ '7 gxc#!class::t '#f)
            (memq _slot222284_
                  (##structure-ref _klass222283_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self222280_ _id222281_)
        (##structure-set! _self222280_ _id222281_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t226894)
        (let ((__id226895
               (let ((__tmp226896
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226894 'id))))
                 (if __tmp226896 __tmp226896 (error '"Unknown slot" 'id)))))
          (lambda (_self222280_ _id222281_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222280_
               _id222281_
               __id226895
               __t226894
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
      (lambda (_self222155_ _id222156_)
        (##structure-set! _self222155_ _id222156_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t226897)
        (let ((__id226898
               (let ((__tmp226899
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226897 'id))))
                 (if __tmp226899 __tmp226899 (error '"Unknown slot" 'id)))))
          (lambda (_self222155_ _id222156_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222155_
               _id222156_
               __id226898
               __t226897
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
      (lambda (_self222028_ _id222029_ _slot222030_ _checked?222031_)
        (##structure-set! _self222028_ _id222029_ '1 gxc#!type::t '#f)
        (##structure-set! _self222028_ _slot222030_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self222028_
         _checked?222031_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t226900)
        (let ((__checked?226901
               (let ((__tmp226904
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226900 'checked?))))
                 (if __tmp226904
                     __tmp226904
                     (error '"Unknown slot" 'checked?))))
              (__id226902
               (let ((__tmp226905
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226900 'id))))
                 (if __tmp226905 __tmp226905 (error '"Unknown slot" 'id))))
              (__slot226903
               (let ((__tmp226906
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226900 'slot))))
                 (if __tmp226906 __tmp226906 (error '"Unknown slot" 'slot)))))
          (lambda (_self222028_ _id222029_ _slot222030_ _checked?222031_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222028_
               _id222029_
               __id226902
               __t226900
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222028_
               _slot222030_
               __slot226903
               __t226900
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self222028_
               _checked?222031_
               __checked?226901
               __t226900
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
      (lambda (_self221901_ _id221902_ _slot221903_ _checked?221904_)
        (##structure-set! _self221901_ _id221902_ '1 gxc#!type::t '#f)
        (##structure-set! _self221901_ _slot221903_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self221901_
         _checked?221904_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t226907)
        (let ((__id226908
               (let ((__tmp226911
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226907 'id))))
                 (if __tmp226911 __tmp226911 (error '"Unknown slot" 'id))))
              (__slot226909
               (let ((__tmp226912
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226907 'slot))))
                 (if __tmp226912 __tmp226912 (error '"Unknown slot" 'slot))))
              (__checked?226910
               (let ((__tmp226913
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t226907 'checked?))))
                 (if __tmp226913
                     __tmp226913
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self221901_ _id221902_ _slot221903_ _checked?221904_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self221901_
               _id221902_
               __id226908
               __t226907
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self221901_
               _slot221903_
               __slot226909
               __t226907
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self221901_
               _checked?221904_
               __checked?226910
               __t226907
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
      (lambda (_self221745_
               _id221746_
               _arity221747_
               _dispatch221748_
               _inline221749_
               _typedecl221750_)
        (if (let ((__tmp227034
                   (let ()
                     (declare (not safe))
                     (##structure-length _self221745_))))
              (declare (not safe))
              (##fx< '5 __tmp227034))
            (begin
              (let ((__tmp227029
                     (let ()
                       (declare (not safe))
                       (##structure-type _self221745_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self221745_
                 _id221746_
                 '1
                 __tmp227029
                 '#f))
              (let ((__tmp227030
                     (let ()
                       (declare (not safe))
                       (##structure-type _self221745_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self221745_
                 _arity221747_
                 '2
                 __tmp227030
                 '#f))
              (let ((__tmp227031
                     (let ()
                       (declare (not safe))
                       (##structure-type _self221745_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self221745_
                 _dispatch221748_
                 '3
                 __tmp227031
                 '#f))
              (let ((__tmp227032
                     (let ()
                       (declare (not safe))
                       (##structure-type _self221745_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self221745_
                 _inline221749_
                 '4
                 __tmp227032
                 '#f))
              (let ((__tmp227033
                     (let ()
                       (declare (not safe))
                       (##structure-type _self221745_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self221745_
                 _typedecl221750_
                 '5
                 __tmp227033
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self221745_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self221745_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self221755_ _id221756_ _arity221757_ _dispatch221758_)
        (let* ((_inline221760_ '#f) (_typedecl221762_ '#f))
          (if (let ((__tmp227040
                     (let ()
                       (declare (not safe))
                       (##structure-length _self221755_))))
                (declare (not safe))
                (##fx< '5 __tmp227040))
              (begin
                (let ((__tmp227035
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221755_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221755_
                   _id221756_
                   '1
                   __tmp227035
                   '#f))
                (let ((__tmp227036
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221755_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221755_
                   _arity221757_
                   '2
                   __tmp227036
                   '#f))
                (let ((__tmp227037
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221755_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221755_
                   _dispatch221758_
                   '3
                   __tmp227037
                   '#f))
                (let ((__tmp227038
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221755_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221755_
                   _inline221760_
                   '4
                   __tmp227038
                   '#f))
                (let ((__tmp227039
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221755_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221755_
                   _typedecl221762_
                   '5
                   __tmp227039
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self221755_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self221755_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self221764_
               _id221765_
               _arity221766_
               _dispatch221767_
               _inline221768_)
        (let ((_typedecl221770_ '#f))
          (if (let ((__tmp227046
                     (let ()
                       (declare (not safe))
                       (##structure-length _self221764_))))
                (declare (not safe))
                (##fx< '5 __tmp227046))
              (begin
                (let ((__tmp227041
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221764_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221764_
                   _id221765_
                   '1
                   __tmp227041
                   '#f))
                (let ((__tmp227042
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221764_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221764_
                   _arity221766_
                   '2
                   __tmp227042
                   '#f))
                (let ((__tmp227043
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221764_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221764_
                   _dispatch221767_
                   '3
                   __tmp227043
                   '#f))
                (let ((__tmp227044
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221764_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221764_
                   _inline221768_
                   '4
                   __tmp227044
                   '#f))
                (let ((__tmp227045
                       (let ()
                         (declare (not safe))
                         (##structure-type _self221764_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self221764_
                   _typedecl221770_
                   '5
                   __tmp227045
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self221764_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self221764_)))))))
    (define gxc#!lambda:::init!
      (lambda _g227048_
        (let ((_g227047_ (let () (declare (not safe)) (##length _g227048_))))
          (cond ((let () (declare (not safe)) (##fx= _g227047_ 4))
                 (apply (lambda (_self221755_
                                 _id221756_
                                 _arity221757_
                                 _dispatch221758_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self221755_
                             _id221756_
                             _arity221757_
                             _dispatch221758_)))
                        _g227048_))
                ((let () (declare (not safe)) (##fx= _g227047_ 5))
                 (apply (lambda (_self221764_
                                 _id221765_
                                 _arity221766_
                                 _dispatch221767_
                                 _inline221768_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self221764_
                             _id221765_
                             _arity221766_
                             _dispatch221767_
                             _inline221768_)))
                        _g227048_))
                ((let () (declare (not safe)) (##fx= _g227047_ 6))
                 (apply (lambda (_self221772_
                                 _id221773_
                                 _arity221774_
                                 _dispatch221775_
                                 _inline221776_
                                 _typedecl221777_)
                          (if (let ((__tmp227054
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self221772_))))
                                (declare (not safe))
                                (##fx< '5 __tmp227054))
                              (begin
                                (let ((__tmp227049
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self221772_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self221772_
                                   _id221773_
                                   '1
                                   __tmp227049
                                   '#f))
                                (let ((__tmp227050
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self221772_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self221772_
                                   _arity221774_
                                   '2
                                   __tmp227050
                                   '#f))
                                (let ((__tmp227051
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self221772_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self221772_
                                   _dispatch221775_
                                   '3
                                   __tmp227051
                                   '#f))
                                (let ((__tmp227052
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self221772_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self221772_
                                   _inline221776_
                                   '4
                                   __tmp227052
                                   '#f))
                                (let ((__tmp227053
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self221772_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self221772_
                                   _typedecl221777_
                                   '5
                                   __tmp227053
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self221772_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self221772_)))))
                        _g227048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g227048_))))))
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
      (lambda (_self221497_ . _args221498_)
        (apply struct-instance-init! _self221497_ _args221498_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type221372_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type221372_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type221372_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass221365_)
        (let ((_$e221367_
               (##structure-ref _klass221365_ '10 gxc#!class::t '#f)))
          (if _$e221367_
              _$e221367_
              (let ((_tab221370_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass221365_
                 _tab221370_
                 '10
                 gxc#!class::t
                 '#f)
                _tab221370_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass221356_ _method221357_)
        (let ((_tab221358221360_
               (##structure-ref _klass221356_ '10 gxc#!class::t '#f)))
          (if _tab221358221360_
              (let ((_tab221363_ _tab221358221360_))
                (declare (not safe))
                (hash-get _tab221363_ _method221357_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type221353_ _method221354_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type221353_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type221353_ _method221354_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym221337_ _type221338_ _local?221339_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type221338_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym221337_
                   _type221338_))
        (let ((__tmp227055
               (let () (declare (not safe)) (struct->list _type221338_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym221337_ '" " __tmp227055))
        (let ((__tmp227056
               (if _local?221339_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp227056 _sym221337_ _type221338_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym221344_ _type221345_)
        (let ((_local?221347_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym221344_
           _type221345_
           _local?221347_))))
    (define gxc#optimizer-declare-type!
      (lambda _g227058_
        (let ((_g227057_ (let () (declare (not safe)) (##length _g227058_))))
          (cond ((let () (declare (not safe)) (##fx= _g227057_ 2))
                 (apply (lambda (_sym221344_ _type221345_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym221344_
                             _type221345_)))
                        _g227058_))
                ((let () (declare (not safe)) (##fx= _g227057_ 3))
                 (apply (lambda (_sym221349_ _type221350_ _local?221351_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym221349_
                             _type221350_
                             _local?221351_)))
                        _g227058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g227058_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym221323_ _local?221324_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym221323_))
        (let ((__tmp227059
               (if _local?221324_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp227059 _sym221323_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym221329_)
        (let ((_local?221331_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym221329_ _local?221331_))))
    (define gxc#optimizer-clear-type!
      (lambda _g227061_
        (let ((_g227060_ (let () (declare (not safe)) (##length _g227061_))))
          (cond ((let () (declare (not safe)) (##fx= _g227060_ 1))
                 (apply (lambda (_sym221329_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym221329_)))
                        _g227061_))
                ((let () (declare (not safe)) (##fx= _g227060_ 2))
                 (apply (lambda (_sym221333_ _local?221334_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym221333_
                             _local?221334_)))
                        _g227061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g227061_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t221296_ _method221297_ _sym221298_ _rebind?221299_)
        (let* ((_type221301_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t221296_)))
               (_$e221303_
                (let () (declare (not safe)) (gxc#!type-vtab _type221301_))))
          (if _$e221303_
              ((lambda (_vtab221306_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab221306_ _method221297_))
                     (if _rebind?221299_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t221296_
                              '" "
                              _method221297_))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              _vtab221306_
                              _method221297_
                              _sym221298_)))
                         (let ((__tmp227066
                                (let ((__tmp227067
                                       (let ((__tmp227068
                                              (let ((__tmp227069
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym221298_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method221297_
                                                      __tmp227069))))
                                         (declare (not safe))
                                         (cons _type-t221296_ __tmp227068))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp227067))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp227066
                            _method221297_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t221296_
                          '" "
                          _method221297_
                          '" => "
                          _sym221298_))
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _vtab221306_
                          _method221297_
                          _sym221298_)))))
               _$e221303_)
              (if (let () (declare (not safe)) (not _type221301_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t221296_))
                  (let ((__tmp227062
                         (let ((__tmp227063
                                (let ((__tmp227064
                                       (let ((__tmp227065
                                              (let ()
                                                (declare (not safe))
                                                (cons _method221297_ '()))))
                                         (declare (not safe))
                                         (cons _sym221298_ __tmp227065))))
                                  (declare (not safe))
                                  (cons _type-t221296_ __tmp227064))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp227063))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp227062
                     _type221301_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t221311_ _method221312_ _sym221313_)
        (let ((_rebind?221315_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t221311_
           _method221312_
           _sym221313_
           _rebind?221315_))))
    (define gxc#optimizer-declare-method!
      (lambda _g227071_
        (let ((_g227070_ (let () (declare (not safe)) (##length _g227071_))))
          (cond ((let () (declare (not safe)) (##fx= _g227070_ 3))
                 (apply (lambda (_type-t221311_ _method221312_ _sym221313_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t221311_
                             _method221312_
                             _sym221313_)))
                        _g227071_))
                ((let () (declare (not safe)) (##fx= _g227070_ 4))
                 (apply (lambda (_type-t221317_
                                 _method221318_
                                 _sym221319_
                                 _rebind?221320_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t221317_
                             _method221318_
                             _sym221319_
                             _rebind?221320_)))
                        _g227071_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g227071_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym221284_)
        (let ((_$e221292_
               (let ((_ht221285221287_ (gxc#current-compile-local-type)))
                 (if _ht221285221287_
                     (let ((_ht221290_ _ht221285221287_))
                       (declare (not safe))
                       (hash-get _ht221290_ _sym221284_))
                     '#f))))
          (if _$e221292_
              _$e221292_
              (let ((__tmp227072
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp227072 _sym221284_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym221276_)
        (let ((_type221277221279_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym221276_))))
          (if _type221277221279_
              (let ((_type221282_ _type221277221279_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type221282_ 'gxc#!alias::t))
                    (let ((__tmp227073
                           (##structure-ref _type221282_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp227073))
                    _type221282_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where221268_ _klass-id221269_)
        (let ((_$e221271_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id221269_))))
          (if _$e221271_
              ((lambda (_klass221274_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass221274_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where221268_
                        _klass-id221269_
                        _klass221274_)))
                 _klass221274_)
               _$e221271_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where221268_
                 _klass-id221269_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t221265_ _method221266_)
        (let ((__tmp227074
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t221265_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp227074 _method221266_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym221263_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym221263_))
        (let ((__tmp227075
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp227075 _sym221263_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym221261_)
        (let ((__tmp227076
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp227076 _sym221261_))))
    (define gxc#identifier-symbol
      (lambda (_stx221259_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx221259_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx221259_))
            (let () (declare (not safe)) (gx#stx-e _stx221259_)))))))
