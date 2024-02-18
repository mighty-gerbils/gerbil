(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708247276)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp219830 (list))
            (__tmp219828
             (let ((__tmp219829
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp219829 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp219830
         '(type ssxi methods)
         __tmp219828
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args215702_
        (apply make-instance gxc#optimizer-info::t _$args215702_)))
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
      (lambda (_self215700_)
        (if (let ((__tmp219837
                   (let ()
                     (declare (not safe))
                     (##structure-length _self215700_))))
              (declare (not safe))
              (##fx< '3 __tmp219837))
            (begin
              (let ((__tmp219832
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp219831
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215700_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215700_
                 __tmp219832
                 '1
                 __tmp219831
                 '#f))
              (let ((__tmp219834
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp219833
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215700_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215700_
                 __tmp219834
                 '2
                 __tmp219833
                 '#f))
              (let ((__tmp219836
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp219835
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215700_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215700_
                 __tmp219836
                 '3
                 __tmp219835
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self215700_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self215700_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp219840 (list))
            (__tmp219838
             (let ((__tmp219839
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp219839 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp219840
         '(id)
         __tmp219838
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args215575_ (apply make-instance gxc#!type::t _$args215575_)))
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
      (let ((__tmp219843 (list gxc#!type::t))
            (__tmp219841
             (let ((__tmp219842
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp219842 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp219843
         '()
         __tmp219841
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args215572_ (apply make-instance gxc#!alias::t _$args215572_)))
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
      (let ((__tmp219846 (list gxc#!type::t))
            (__tmp219844
             (let ((__tmp219845
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp219845 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp219846
         '()
         __tmp219844
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args215569_
        (apply make-instance gxc#!procedure::t _$args215569_)))
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
      (let ((__tmp219849 (list gxc#!type::t))
            (__tmp219847
             (let ((__tmp219848
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp219848 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp219849
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp219847
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args215566_ (apply make-instance gxc#!class::t _$args215566_)))
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
      (let ((__tmp219852 (list gxc#!procedure::t))
            (__tmp219850
             (let ((__tmp219851
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp219851 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp219852
         '()
         __tmp219850
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args215563_
        (apply make-instance gxc#!predicate::t _$args215563_)))
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
      (let ((__tmp219855 (list gxc#!procedure::t))
            (__tmp219853
             (let ((__tmp219854
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp219854 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp219855
         '()
         __tmp219853
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args215560_
        (apply make-instance gxc#!constructor::t _$args215560_)))
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
      (let ((__tmp219858 (list gxc#!procedure::t))
            (__tmp219856
             (let ((__tmp219857
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp219857 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp219858
         '(slot checked?)
         __tmp219856
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args215557_
        (apply make-instance gxc#!accessor::t _$args215557_)))
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
      (let ((__tmp219861 (list gxc#!procedure::t))
            (__tmp219859
             (let ((__tmp219860
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp219860 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp219861
         '(slot checked?)
         __tmp219859
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args215554_
        (apply make-instance gxc#!mutator::t _$args215554_)))
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
      (let ((__tmp219864 (list gxc#!procedure::t))
            (__tmp219862
             (let ((__tmp219863
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp219863 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp219864
         '(arity dispatch inline inline-typedecl)
         __tmp219862
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args215551_
        (apply make-instance gxc#!lambda::t _$args215551_)))
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
      (let ((__tmp219867 (list gxc#!procedure::t))
            (__tmp219865
             (let ((__tmp219866
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp219866 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp219867
         '(clauses)
         __tmp219865
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args215548_
        (apply make-instance gxc#!case-lambda::t _$args215548_)))
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
      (let ((__tmp219870 (list gxc#!procedure::t))
            (__tmp219868
             (let ((__tmp219869
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp219869 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp219870
         '(table dispatch)
         __tmp219868
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args215545_
        (apply make-instance gxc#!kw-lambda::t _$args215545_)))
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
      (let ((__tmp219873 (list gxc#!procedure::t))
            (__tmp219871
             (let ((__tmp219872
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp219872 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp219873
         '(keys main)
         __tmp219871
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args215542_
        (apply make-instance gxc#!kw-lambda-primary::t _$args215542_)))
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
      (let ((__tmp219874 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp219874
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args215539_
        (apply make-instance gxc#!primitive::t _$args215539_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp219875 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp219875
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args215536_
        (apply make-instance gxc#!primitive-lambda::t _$args215536_)))
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
      (let ((__tmp219876 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp219876
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args215533_
        (apply make-instance gxc#!primitive-case-lambda::t _$args215533_)))
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
      (lambda (_self215415_
               _id215416_
               _super215417_
               _slots215418_
               _ctor-method215419_
               _struct?215420_
               _final?215421_
               _metaclass215422_)
        (let _lp215424_ ((_rest215426_ _super215417_))
          (let* ((_rest215427215435_ _rest215426_)
                 (_else215429215443_ (lambda () '#!void))
                 (_K215431215449_
                  (lambda (_rest215446_ _super-id215447_)
                    (if (##structure-ref
                         (let ((__tmp219879
                                (let ((__tmp219880
                                       (let ()
                                         (declare (not safe))
                                         (cons _id215416_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp219880))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp219879
                            _super-id215447_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp219877
                               (let ((__tmp219878
                                      (let ()
                                        (declare (not safe))
                                        (cons _id215416_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp219878))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp219877
                           _super-id215447_))
                        '#!void)
                    (let () (declare (not safe)) (_lp215424_ _rest215446_)))))
            (if (let () (declare (not safe)) (##pair? _rest215427215435_))
                (let ((_hd215432215452_
                       (let ()
                         (declare (not safe))
                         (##car _rest215427215435_)))
                      (_tl215433215454_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest215427215435_))))
                  (let* ((_super-id215457_ _hd215432215452_)
                         (_rest215459_ _tl215433215454_))
                    (declare (not safe))
                    (_K215431215449_ _rest215459_ _super-id215457_)))
                '#!void)))
        (let* ((_ctor-method215509_
                (let ((_$e215461_ _ctor-method215419_))
                  (if _$e215461_
                      _$e215461_
                      (let _lp215464_ ((_rest215466_ _super215417_)
                                       (_method215467_ '#f))
                        (let* ((_rest215468215476_ _rest215466_)
                               (_else215470215484_ (lambda () _method215467_))
                               (_K215472215497_
                                (lambda (_rest215487_ _super-id215488_)
                                  (let* ((_klass215490_
                                          (let ((__tmp219881
                                                 (let ((__tmp219882
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id215416_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp219882))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp219881
                                             _super-id215488_)))
                                         (_$e215492_
                                          (##structure-ref
                                           _klass215490_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e215492_
                                        ((lambda (_ctor-method215495_)
                                           (if _method215467_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method215495_
                                                          _method215467_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp215464_
                                                      _rest215487_
                                                      _ctor-method215495_))
                                                   (let ((__tmp219883
                                                          (let ((__tmp219884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id215416_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp219884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp219883
                                                      _method215467_
                                                      _ctor-method215495_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp215464_
                                                  _rest215487_
                                                  _ctor-method215495_))))
                                         _$e215492_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp215464_
                                           _rest215487_
                                           _method215467_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest215468215476_))
                              (let ((_hd215473215500_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest215468215476_)))
                                    (_tl215474215502_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest215468215476_))))
                                (let* ((_super-id215505_ _hd215473215500_)
                                       (_rest215507_ _tl215474215502_))
                                  (declare (not safe))
                                  (_K215472215497_
                                   _rest215507_
                                   _super-id215505_)))
                              (let ()
                                (declare (not safe))
                                (_else215470215484_))))))))
               (_g219885_
                (let ((__tmp219890
                       (lambda (_klass-id215511_)
                         (let ((__tmp219891
                                (##structure-ref
                                 (let ((__tmp219892
                                        (let ((__tmp219893
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id215416_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp219893))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp219892
                                    _klass-id215511_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id215511_ __tmp219891))))
                      (__tmp219887
                       (lambda (_klass-id215513_)
                         (##structure-ref
                          (let ((__tmp219888
                                 (let ((__tmp219889
                                        (let ()
                                          (declare (not safe))
                                          (cons _id215416_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp219889))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp219888
                             _klass-id215513_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super215417_
                   'get-precedence-list:
                   __tmp219890
                   'struct:
                   __tmp219887
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g219886_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g219885_)
                         (##vector-length _g219885_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g219886_ 2)))
                  (error "Context expects 2 values" _g219886_)))
            (let ((_precedence-list215515_
                   (let () (declare (not safe)) (##vector-ref _g219885_ 0)))
                  (_base-struct215516_
                   (let () (declare (not safe)) (##vector-ref _g219885_ 1))))
              (let ((_fields215518_
                     (let ((__tmp219894
                            (let ((__tmp219895
                                   (let ()
                                     (declare (not safe))
                                     (cons _id215416_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp219895))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp219894
                        _base-struct215516_
                        _precedence-list215515_
                        _slots215418_))))
                (##structure-set! _self215415_ _id215416_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self215415_
                 _super215417_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215415_
                 _precedence-list215515_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215415_
                 _slots215418_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215415_
                 _fields215518_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215415_
                 _ctor-method215509_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215415_
                 _struct?215420_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215415_
                 _final?215421_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self215415_
                 _metaclass215422_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self215521_
               _id215522_
               _super215523_
               _precedence-list215524_
               _slots215525_
               _fields215526_
               _constructor215527_
               _struct?215528_
               _final?215529_
               _metaclass215530_
               _methods215531_)
        (##structure-set! _self215521_ _id215522_ '1 gxc#!type::t '#f)
        (##structure-set! _self215521_ _super215523_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self215521_
         _precedence-list215524_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self215521_ _slots215525_ '4 gxc#!class::t '#f)
        (##structure-set! _self215521_ _fields215526_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self215521_
         _constructor215527_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self215521_ _struct?215528_ '7 gxc#!class::t '#f)
        (##structure-set! _self215521_ _final?215529_ '8 gxc#!class::t '#f)
        (##structure-set! _self215521_ _metaclass215530_ '9 gxc#!class::t '#f)
        (if _methods215531_
            (##structure-set!
             _self215521_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods215531_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g219897_
        (let ((_g219896_ (let () (declare (not safe)) (##length _g219897_))))
          (cond ((let () (declare (not safe)) (##fx= _g219896_ 8))
                 (apply (lambda (_self215415_
                                 _id215416_
                                 _super215417_
                                 _slots215418_
                                 _ctor-method215419_
                                 _struct?215420_
                                 _final?215421_
                                 _metaclass215422_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self215415_
                             _id215416_
                             _super215417_
                             _slots215418_
                             _ctor-method215419_
                             _struct?215420_
                             _final?215421_
                             _metaclass215422_)))
                        _g219897_))
                ((let () (declare (not safe)) (##fx= _g219896_ 11))
                 (apply (lambda (_self215521_
                                 _id215522_
                                 _super215523_
                                 _precedence-list215524_
                                 _slots215525_
                                 _fields215526_
                                 _constructor215527_
                                 _struct?215528_
                                 _final?215529_
                                 _metaclass215530_
                                 _methods215531_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self215521_
                             _id215522_
                             _super215523_
                             _precedence-list215524_
                             _slots215525_
                             _fields215526_
                             _constructor215527_
                             _struct?215528_
                             _final?215529_
                             _metaclass215530_
                             _methods215531_)))
                        _g219897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g219897_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t219771)
        (let ((__fields219772
               (let ((__tmp219782
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219771 'fields))))
                 (if __tmp219782 __tmp219782 (error '"Unknown slot" 'fields))))
              (__precedence-list219773
               (let ((__tmp219783
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219771 'precedence-list))))
                 (if __tmp219783
                     __tmp219783
                     (error '"Unknown slot" 'precedence-list))))
              (__methods219774
               (let ((__tmp219784
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219771 'methods))))
                 (if __tmp219784
                     __tmp219784
                     (error '"Unknown slot" 'methods))))
              (__super219775
               (let ((__tmp219785
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219771 'super))))
                 (if __tmp219785 __tmp219785 (error '"Unknown slot" 'super))))
              (__id219776
               (let ((__tmp219786
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219771 'id))))
                 (if __tmp219786 __tmp219786 (error '"Unknown slot" 'id))))
              (__slots219777
               (let ((__tmp219787
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219771 'slots))))
                 (if __tmp219787 __tmp219787 (error '"Unknown slot" 'slots))))
              (__final?219778
               (let ((__tmp219788
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219771 'final?))))
                 (if __tmp219788 __tmp219788 (error '"Unknown slot" 'final?))))
              (__metaclass219779
               (let ((__tmp219789
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219771 'metaclass))))
                 (if __tmp219789
                     __tmp219789
                     (error '"Unknown slot" 'metaclass))))
              (__constructor219780
               (let ((__tmp219790
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219771 'constructor))))
                 (if __tmp219790
                     __tmp219790
                     (error '"Unknown slot" 'constructor))))
              (__struct?219781
               (let ((__tmp219791
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219771 'struct?))))
                 (if __tmp219791
                     __tmp219791
                     (error '"Unknown slot" 'struct?)))))
          (lambda _g219899_
            (let ((_g219898_
                   (let () (declare (not safe)) (##length _g219899_))))
              (cond ((let () (declare (not safe)) (##fx= _g219898_ 8))
                     (apply (lambda (_self215415_
                                     _id215416_
                                     _super215417_
                                     _slots215418_
                                     _ctor-method215419_
                                     _struct?215420_
                                     _final?215421_
                                     _metaclass215422_)
                              (let _lp215424_ ((_rest215426_ _super215417_))
                                (let* ((_rest215427215435_ _rest215426_)
                                       (_else215429215443_ (lambda () '#!void))
                                       (_K215431215449_
                                        (lambda (_rest215446_ _super-id215447_)
                                          (if (##structure-ref
                                               (let ((__tmp219902
                                                      (let ((__tmp219903
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id215416_ '()))))
                (declare (not safe))
                (cons '!class __tmp219903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp219902
                                                  _super-id215447_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp219900
                                                     (let ((__tmp219901
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id215416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp219901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp219900
                                                 _super-id215447_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp215424_ _rest215446_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest215427215435_))
                                      (let ((_hd215432215452_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest215427215435_)))
                                            (_tl215433215454_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest215427215435_))))
                                        (let* ((_super-id215457_
                                                _hd215432215452_)
                                               (_rest215459_ _tl215433215454_))
                                          (declare (not safe))
                                          (_K215431215449_
                                           _rest215459_
                                           _super-id215457_)))
                                      '#!void)))
                              (let* ((_ctor-method215509_
                                      (let ((_$e215461_ _ctor-method215419_))
                                        (if _$e215461_
                                            _$e215461_
                                            (let _lp215464_ ((_rest215466_
                                                              _super215417_)
                                                             (_method215467_
                                                              '#f))
                                              (let* ((_rest215468215476_
                                                      _rest215466_)
                                                     (_else215470215484_
                                                      (lambda ()
                                                        _method215467_))
                                                     (_K215472215497_
                                                      (lambda (_rest215487_
                                                               _super-id215488_)
                                                        (let* ((_klass215490_
                                                                (let ((__tmp219904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp219905
                                      (let ()
                                        (declare (not safe))
                                        (cons _id215416_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp219905))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp219904
                           _super-id215488_)))
                       (_$e215492_
                        (##structure-ref _klass215490_ '6 gxc#!class::t '#f)))
                  (if _$e215492_
                      ((lambda (_ctor-method215495_)
                         (if _method215467_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method215495_ _method215467_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp215464_
                                    _rest215487_
                                    _ctor-method215495_))
                                 (let ((__tmp219906
                                        (let ((__tmp219907
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id215416_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp219907))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp219906
                                    _method215467_
                                    _ctor-method215495_)))
                             (let ()
                               (declare (not safe))
                               (_lp215464_ _rest215487_ _ctor-method215495_))))
                       _$e215492_)
                      (let ()
                        (declare (not safe))
                        (_lp215464_ _rest215487_ _method215467_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest215468215476_))
                                                    (let ((_hd215473215500_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest215468215476_)))
                                                          (_tl215474215502_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest215468215476_))))
                                                      (let* ((_super-id215505_
                                                              _hd215473215500_)
                                                             (_rest215507_
                                                              _tl215474215502_))
                                                        (declare (not safe))
                                                        (_K215472215497_
                                                         _rest215507_
                                                         _super-id215505_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else215470215484_))))))))
                                     (_g219908_
                                      (let ((__tmp219913
                                             (lambda (_klass-id215511_)
                                               (let ((__tmp219914
                                                      (##structure-ref
                                                       (let ((__tmp219915
                                                              (let ((__tmp219916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id215416_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp219916))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp219915 _klass-id215511_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id215511_
                                                       __tmp219914))))
                                            (__tmp219910
                                             (lambda (_klass-id215513_)
                                               (##structure-ref
                                                (let ((__tmp219911
                                                       (let ((__tmp219912
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id215416_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp219912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp219911
                                                   _klass-id215513_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super215417_
                                         'get-precedence-list:
                                         __tmp219913
                                         'struct:
                                         __tmp219910
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g219909_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g219908_)
                                               (##vector-length _g219908_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g219909_ 2)))
                                        (error "Context expects 2 values"
                                               _g219909_)))
                                  (let ((_precedence-list215515_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g219908_ 0)))
                                        (_base-struct215516_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g219908_ 1))))
                                    (let ((_fields215518_
                                           (let ((__tmp219917
                                                  (let ((__tmp219918
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id215416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp219918))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp219917
                                              _base-struct215516_
                                              _precedence-list215515_
                                              _slots215418_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215415_
                                         _id215416_
                                         __id219776
                                         __t219771
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215415_
                                         _super215417_
                                         __super219775
                                         __t219771
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215415_
                                         _precedence-list215515_
                                         __precedence-list219773
                                         __t219771
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215415_
                                         _slots215418_
                                         __slots219777
                                         __t219771
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215415_
                                         _fields215518_
                                         __fields219772
                                         __t219771
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215415_
                                         _ctor-method215509_
                                         __constructor219780
                                         __t219771
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215415_
                                         _struct?215420_
                                         __struct?219781
                                         __t219771
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215415_
                                         _final?215421_
                                         __final?219778
                                         __t219771
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self215415_
                                         _metaclass215422_
                                         __metaclass219779
                                         __t219771
                                         '#f)))))))
                            _g219899_))
                    ((let () (declare (not safe)) (##fx= _g219898_ 11))
                     (apply (lambda (_self215521_
                                     _id215522_
                                     _super215523_
                                     _precedence-list215524_
                                     _slots215525_
                                     _fields215526_
                                     _constructor215527_
                                     _struct?215528_
                                     _final?215529_
                                     _metaclass215530_
                                     _methods215531_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215521_
                                 _id215522_
                                 __id219776
                                 __t219771
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215521_
                                 _super215523_
                                 __super219775
                                 __t219771
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215521_
                                 _precedence-list215524_
                                 __precedence-list219773
                                 __t219771
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215521_
                                 _slots215525_
                                 __slots219777
                                 __t219771
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215521_
                                 _fields215526_
                                 __fields219772
                                 __t219771
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215521_
                                 _constructor215527_
                                 __constructor219780
                                 __t219771
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215521_
                                 _struct?215528_
                                 __struct?219781
                                 __t219771
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215521_
                                 _final?215529_
                                 __final?219778
                                 __t219771
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self215521_
                                 _metaclass215530_
                                 __metaclass219779
                                 __t219771
                                 '#f))
                              (if _methods215531_
                                  (let ((__tmp219919
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods215531_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self215521_
                                     __tmp219919
                                     __methods219774
                                     __t219771
                                     '#f))
                                  '#!void))
                            _g219899_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g219899_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where215267_
               _base-struct215268_
               _precedence-list215269_
               _direct-slots215270_)
        (let* ((_base-fields215272_
                (if _base-struct215268_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where215267_
                        _base-struct215268_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields215274_ (reverse _base-fields215272_))
               (_seen-slots215282_
                (let ((_tab215276_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g215277215279_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab215276_ _g215277215279_ '#t)))
                   _base-fields215272_)
                  _tab215276_))
               (_process-slot215286_
                (lambda (_slot215284_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots215282_ _slot215284_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots215282_ _slot215284_ '#t))
                        (set! _r-fields215274_
                              (let ()
                                (declare (not safe))
                                (cons _slot215284_ _r-fields215274_))))))))
          (for-each
           (lambda (_mixin215289_)
             (let ((_klass215291_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where215267_
                       _mixin215289_))))
               (if (##structure-ref _klass215291_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot215286_
                    (##structure-ref _klass215291_ '5 gxc#!class::t '#f)))))
           _precedence-list215269_)
          (for-each _process-slot215286_ _direct-slots215270_)
          (reverse _r-fields215274_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass215226_ _slot215227_)
        (let _lp215229_ ((_rest215231_
                          (##structure-ref _klass215226_ '5 gxc#!class::t '#f))
                         (_offset215232_ '1))
          (let* ((_rest215233215241_ _rest215231_)
                 (_else215235215249_
                  (lambda ()
                    (let ((__tmp219921
                           (##structure-ref _klass215226_ '1 gxc#!type::t '#f))
                          (__tmp219920
                           (##structure-ref
                            _klass215226_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp219921
                       __tmp219920
                       _slot215227_))))
                 (_K215237215255_
                  (lambda (_rest215252_ _s215253_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s215253_ _slot215227_))
                        _offset215232_
                        (let ((__tmp219922
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset215232_ '1))))
                          (declare (not safe))
                          (_lp215229_ _rest215252_ __tmp219922))))))
            (if (let () (declare (not safe)) (##pair? _rest215233215241_))
                (let ((_hd215238215258_
                       (let ()
                         (declare (not safe))
                         (##car _rest215233215241_)))
                      (_tl215239215260_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest215233215241_))))
                  (let* ((_s215263_ _hd215238215258_)
                         (_rest215265_ _tl215239215260_))
                    (declare (not safe))
                    (_K215237215255_ _rest215265_ _s215263_)))
                (let () (declare (not safe)) (_else215235215249_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass215184_ _slot215185_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass215184_ _slot215185_))
            _klass215184_
            (let _lp215187_ ((_rest215189_
                              (##structure-ref
                               _klass215184_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest215190215198_ _rest215189_)
                     (_else215192215206_ (lambda () '#f))
                     (_K215194215214_
                      (lambda (_rest215209_ _super215210_)
                        (let ((_super-class215212_
                               (let ((__tmp219923
                                      (let ((__tmp219924
                                             (let ((__tmp219926
                                                    (##structure-ref
                                                     _klass215184_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp219925
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot215185_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp219926
                                                     __tmp219925))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp219924))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp219923
                                  _super215210_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class215212_
                                 _slot215185_))
                              _super-class215212_
                              (let ()
                                (declare (not safe))
                                (_lp215187_ _rest215209_)))))))
                (if (let () (declare (not safe)) (##pair? _rest215190215198_))
                    (let ((_hd215195215217_
                           (let ()
                             (declare (not safe))
                             (##car _rest215190215198_)))
                          (_tl215196215219_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest215190215198_))))
                      (let* ((_super215222_ _hd215195215217_)
                             (_rest215224_ _tl215196215219_))
                        (declare (not safe))
                        (_K215194215214_ _rest215224_ _super215222_)))
                    (let () (declare (not safe)) (_else215192215206_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass215181_ _slot215182_)
        (if (##structure-ref _klass215181_ '7 gxc#!class::t '#f)
            (memq _slot215182_
                  (##structure-ref _klass215181_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self215178_ _id215179_)
        (##structure-set! _self215178_ _id215179_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t219792)
        (let ((__id219793
               (let ((__tmp219794
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219792 'id))))
                 (if __tmp219794 __tmp219794 (error '"Unknown slot" 'id)))))
          (lambda (_self215178_ _id215179_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215178_
               _id215179_
               __id219793
               __t219792
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
      (lambda (_self215053_ _id215054_)
        (##structure-set! _self215053_ _id215054_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t219795)
        (let ((__id219796
               (let ((__tmp219797
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219795 'id))))
                 (if __tmp219797 __tmp219797 (error '"Unknown slot" 'id)))))
          (lambda (_self215053_ _id215054_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215053_
               _id215054_
               __id219796
               __t219795
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
      (lambda (_self214926_ _id214927_ _slot214928_ _checked?214929_)
        (##structure-set! _self214926_ _id214927_ '1 gxc#!type::t '#f)
        (##structure-set! _self214926_ _slot214928_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self214926_
         _checked?214929_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t219798)
        (let ((__id219799
               (let ((__tmp219802
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219798 'id))))
                 (if __tmp219802 __tmp219802 (error '"Unknown slot" 'id))))
              (__checked?219800
               (let ((__tmp219803
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219798 'checked?))))
                 (if __tmp219803
                     __tmp219803
                     (error '"Unknown slot" 'checked?))))
              (__slot219801
               (let ((__tmp219804
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219798 'slot))))
                 (if __tmp219804 __tmp219804 (error '"Unknown slot" 'slot)))))
          (lambda (_self214926_ _id214927_ _slot214928_ _checked?214929_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214926_
               _id214927_
               __id219799
               __t219798
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214926_
               _slot214928_
               __slot219801
               __t219798
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214926_
               _checked?214929_
               __checked?219800
               __t219798
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
      (lambda (_self214799_ _id214800_ _slot214801_ _checked?214802_)
        (##structure-set! _self214799_ _id214800_ '1 gxc#!type::t '#f)
        (##structure-set! _self214799_ _slot214801_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self214799_
         _checked?214802_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t219805)
        (let ((__id219806
               (let ((__tmp219809
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219805 'id))))
                 (if __tmp219809 __tmp219809 (error '"Unknown slot" 'id))))
              (__checked?219807
               (let ((__tmp219810
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219805 'checked?))))
                 (if __tmp219810
                     __tmp219810
                     (error '"Unknown slot" 'checked?))))
              (__slot219808
               (let ((__tmp219811
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t219805 'slot))))
                 (if __tmp219811 __tmp219811 (error '"Unknown slot" 'slot)))))
          (lambda (_self214799_ _id214800_ _slot214801_ _checked?214802_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214799_
               _id214800_
               __id219806
               __t219805
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214799_
               _slot214801_
               __slot219808
               __t219805
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self214799_
               _checked?214802_
               __checked?219807
               __t219805
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
      (lambda (_self214643_
               _id214644_
               _arity214645_
               _dispatch214646_
               _inline214647_
               _typedecl214648_)
        (if (let ((__tmp219932
                   (let ()
                     (declare (not safe))
                     (##structure-length _self214643_))))
              (declare (not safe))
              (##fx< '5 __tmp219932))
            (begin
              (let ((__tmp219927
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214643_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214643_
                 _id214644_
                 '1
                 __tmp219927
                 '#f))
              (let ((__tmp219928
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214643_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214643_
                 _arity214645_
                 '2
                 __tmp219928
                 '#f))
              (let ((__tmp219929
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214643_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214643_
                 _dispatch214646_
                 '3
                 __tmp219929
                 '#f))
              (let ((__tmp219930
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214643_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214643_
                 _inline214647_
                 '4
                 __tmp219930
                 '#f))
              (let ((__tmp219931
                     (let ()
                       (declare (not safe))
                       (##structure-type _self214643_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self214643_
                 _typedecl214648_
                 '5
                 __tmp219931
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self214643_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self214643_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self214653_ _id214654_ _arity214655_ _dispatch214656_)
        (let* ((_inline214658_ '#f) (_typedecl214660_ '#f))
          (if (let ((__tmp219938
                     (let ()
                       (declare (not safe))
                       (##structure-length _self214653_))))
                (declare (not safe))
                (##fx< '5 __tmp219938))
              (begin
                (let ((__tmp219933
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214653_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214653_
                   _id214654_
                   '1
                   __tmp219933
                   '#f))
                (let ((__tmp219934
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214653_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214653_
                   _arity214655_
                   '2
                   __tmp219934
                   '#f))
                (let ((__tmp219935
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214653_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214653_
                   _dispatch214656_
                   '3
                   __tmp219935
                   '#f))
                (let ((__tmp219936
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214653_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214653_
                   _inline214658_
                   '4
                   __tmp219936
                   '#f))
                (let ((__tmp219937
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214653_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214653_
                   _typedecl214660_
                   '5
                   __tmp219937
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self214653_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self214653_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self214662_
               _id214663_
               _arity214664_
               _dispatch214665_
               _inline214666_)
        (let ((_typedecl214668_ '#f))
          (if (let ((__tmp219944
                     (let ()
                       (declare (not safe))
                       (##structure-length _self214662_))))
                (declare (not safe))
                (##fx< '5 __tmp219944))
              (begin
                (let ((__tmp219939
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214662_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214662_
                   _id214663_
                   '1
                   __tmp219939
                   '#f))
                (let ((__tmp219940
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214662_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214662_
                   _arity214664_
                   '2
                   __tmp219940
                   '#f))
                (let ((__tmp219941
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214662_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214662_
                   _dispatch214665_
                   '3
                   __tmp219941
                   '#f))
                (let ((__tmp219942
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214662_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214662_
                   _inline214666_
                   '4
                   __tmp219942
                   '#f))
                (let ((__tmp219943
                       (let ()
                         (declare (not safe))
                         (##structure-type _self214662_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self214662_
                   _typedecl214668_
                   '5
                   __tmp219943
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self214662_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self214662_)))))))
    (define gxc#!lambda:::init!
      (lambda _g219946_
        (let ((_g219945_ (let () (declare (not safe)) (##length _g219946_))))
          (cond ((let () (declare (not safe)) (##fx= _g219945_ 4))
                 (apply (lambda (_self214653_
                                 _id214654_
                                 _arity214655_
                                 _dispatch214656_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self214653_
                             _id214654_
                             _arity214655_
                             _dispatch214656_)))
                        _g219946_))
                ((let () (declare (not safe)) (##fx= _g219945_ 5))
                 (apply (lambda (_self214662_
                                 _id214663_
                                 _arity214664_
                                 _dispatch214665_
                                 _inline214666_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self214662_
                             _id214663_
                             _arity214664_
                             _dispatch214665_
                             _inline214666_)))
                        _g219946_))
                ((let () (declare (not safe)) (##fx= _g219945_ 6))
                 (apply (lambda (_self214670_
                                 _id214671_
                                 _arity214672_
                                 _dispatch214673_
                                 _inline214674_
                                 _typedecl214675_)
                          (if (let ((__tmp219952
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self214670_))))
                                (declare (not safe))
                                (##fx< '5 __tmp219952))
                              (begin
                                (let ((__tmp219947
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214670_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214670_
                                   _id214671_
                                   '1
                                   __tmp219947
                                   '#f))
                                (let ((__tmp219948
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214670_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214670_
                                   _arity214672_
                                   '2
                                   __tmp219948
                                   '#f))
                                (let ((__tmp219949
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214670_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214670_
                                   _dispatch214673_
                                   '3
                                   __tmp219949
                                   '#f))
                                (let ((__tmp219950
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214670_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214670_
                                   _inline214674_
                                   '4
                                   __tmp219950
                                   '#f))
                                (let ((__tmp219951
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self214670_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self214670_
                                   _typedecl214675_
                                   '5
                                   __tmp219951
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self214670_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self214670_)))))
                        _g219946_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g219946_))))))
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
      (lambda (_self214395_ . _args214396_)
        (apply struct-instance-init! _self214395_ _args214396_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type214270_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type214270_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type214270_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass214263_)
        (let ((_$e214265_
               (##structure-ref _klass214263_ '10 gxc#!class::t '#f)))
          (if _$e214265_
              _$e214265_
              (let ((_tab214268_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass214263_
                 _tab214268_
                 '10
                 gxc#!class::t
                 '#f)
                _tab214268_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass214254_ _method214255_)
        (let ((_tab214256214258_
               (##structure-ref _klass214254_ '10 gxc#!class::t '#f)))
          (if _tab214256214258_
              (let ((_tab214261_ _tab214256214258_))
                (declare (not safe))
                (hash-get _tab214261_ _method214255_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type214251_ _method214252_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type214251_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type214251_ _method214252_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym214235_ _type214236_ _local?214237_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type214236_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym214235_
                   _type214236_))
        (let ((__tmp219953
               (let () (declare (not safe)) (struct->list _type214236_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym214235_ '" " __tmp219953))
        (let ((__tmp219954
               (if _local?214237_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp219954 _sym214235_ _type214236_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym214242_ _type214243_)
        (let ((_local?214245_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym214242_
           _type214243_
           _local?214245_))))
    (define gxc#optimizer-declare-type!
      (lambda _g219956_
        (let ((_g219955_ (let () (declare (not safe)) (##length _g219956_))))
          (cond ((let () (declare (not safe)) (##fx= _g219955_ 2))
                 (apply (lambda (_sym214242_ _type214243_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym214242_
                             _type214243_)))
                        _g219956_))
                ((let () (declare (not safe)) (##fx= _g219955_ 3))
                 (apply (lambda (_sym214247_ _type214248_ _local?214249_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym214247_
                             _type214248_
                             _local?214249_)))
                        _g219956_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g219956_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym214221_ _local?214222_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym214221_))
        (let ((__tmp219957
               (if _local?214222_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp219957 _sym214221_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym214227_)
        (let ((_local?214229_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym214227_ _local?214229_))))
    (define gxc#optimizer-clear-type!
      (lambda _g219959_
        (let ((_g219958_ (let () (declare (not safe)) (##length _g219959_))))
          (cond ((let () (declare (not safe)) (##fx= _g219958_ 1))
                 (apply (lambda (_sym214227_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym214227_)))
                        _g219959_))
                ((let () (declare (not safe)) (##fx= _g219958_ 2))
                 (apply (lambda (_sym214231_ _local?214232_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym214231_
                             _local?214232_)))
                        _g219959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g219959_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t214194_ _method214195_ _sym214196_ _rebind?214197_)
        (let* ((_type214199_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t214194_)))
               (_$e214201_
                (let () (declare (not safe)) (gxc#!type-vtab _type214199_))))
          (if _$e214201_
              ((lambda (_vtab214204_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab214204_ _method214195_))
                     (if _rebind?214197_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t214194_
                              '" "
                              _method214195_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab214204_
                              _method214195_
                              _sym214196_)))
                         (let ((__tmp219964
                                (let ((__tmp219965
                                       (let ((__tmp219966
                                              (let ((__tmp219967
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym214196_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method214195_
                                                      __tmp219967))))
                                         (declare (not safe))
                                         (cons _type-t214194_ __tmp219966))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp219965))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp219964
                            _method214195_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t214194_
                          '" "
                          _method214195_
                          '" => "
                          _sym214196_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab214204_
                          _method214195_
                          _sym214196_)))))
               _$e214201_)
              (if (let () (declare (not safe)) (not _type214199_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t214194_))
                  (let ((__tmp219960
                         (let ((__tmp219961
                                (let ((__tmp219962
                                       (let ((__tmp219963
                                              (let ()
                                                (declare (not safe))
                                                (cons _method214195_ '()))))
                                         (declare (not safe))
                                         (cons _sym214196_ __tmp219963))))
                                  (declare (not safe))
                                  (cons _type-t214194_ __tmp219962))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp219961))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp219960
                     _type214199_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t214209_ _method214210_ _sym214211_)
        (let ((_rebind?214213_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t214209_
           _method214210_
           _sym214211_
           _rebind?214213_))))
    (define gxc#optimizer-declare-method!
      (lambda _g219969_
        (let ((_g219968_ (let () (declare (not safe)) (##length _g219969_))))
          (cond ((let () (declare (not safe)) (##fx= _g219968_ 3))
                 (apply (lambda (_type-t214209_ _method214210_ _sym214211_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t214209_
                             _method214210_
                             _sym214211_)))
                        _g219969_))
                ((let () (declare (not safe)) (##fx= _g219968_ 4))
                 (apply (lambda (_type-t214215_
                                 _method214216_
                                 _sym214217_
                                 _rebind?214218_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t214215_
                             _method214216_
                             _sym214217_
                             _rebind?214218_)))
                        _g219969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g219969_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym214182_)
        (let ((_$e214190_
               (let ((_ht214183214185_ (gxc#current-compile-local-type)))
                 (if _ht214183214185_
                     (let ((_ht214188_ _ht214183214185_))
                       (declare (not safe))
                       (hash-get _ht214188_ _sym214182_))
                     '#f))))
          (if _$e214190_
              _$e214190_
              (let ((__tmp219970
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp219970 _sym214182_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym214174_)
        (let ((_type214175214177_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym214174_))))
          (if _type214175214177_
              (let ((_type214180_ _type214175214177_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type214180_ 'gxc#!alias::t))
                    (let ((__tmp219971
                           (##structure-ref _type214180_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp219971))
                    _type214180_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where214166_ _klass-id214167_)
        (let ((_$e214169_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id214167_))))
          (if _$e214169_
              ((lambda (_klass214172_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass214172_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where214166_
                        _klass-id214167_
                        _klass214172_)))
                 _klass214172_)
               _$e214169_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where214166_
                 _klass-id214167_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t214163_ _method214164_)
        (let ((__tmp219972
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t214163_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp219972 _method214164_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym214161_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym214161_))
        (let ((__tmp219973
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp219973 _sym214161_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym214159_)
        (let ((__tmp219974
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp219974 _sym214159_))))
    (define gxc#identifier-symbol
      (lambda (_stx214157_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx214157_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx214157_))
            (let () (declare (not safe)) (gx#stx-e _stx214157_)))))))
