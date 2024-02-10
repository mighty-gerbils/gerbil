(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707601718)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp217804
             (let ((__tmp217805
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217805 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#optimizer-info::t
         'optimizer-info
         '#f
         '(type ssxi methods)
         __tmp217804
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args213261_
        (apply make-struct-instance gxc#optimizer-info::t _$args213261_)))
    (define gxc#optimizer-info-type
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#optimizer-info::t 'type)))
    (define gxc#optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#optimizer-info::t 'ssxi)))
    (define gxc#optimizer-info-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#optimizer-info::t 'methods)))
    (define gxc#optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#optimizer-info::t 'type)))
    (define gxc#optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#optimizer-info::t 'ssxi)))
    (define gxc#optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#optimizer-info::t 'methods)))
    (define gxc#&optimizer-info-type
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#optimizer-info::t 'type)))
    (define gxc#&optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#optimizer-info::t 'ssxi)))
    (define gxc#&optimizer-info-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#optimizer-info::t 'methods)))
    (define gxc#&optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#optimizer-info::t 'type)))
    (define gxc#&optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#optimizer-info::t 'ssxi)))
    (define gxc#&optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#optimizer-info::t 'methods)))
    (define gxc#optimizer-info:::init!
      (lambda (_self213259_)
        (if (let ((__tmp217812
                   (let ()
                     (declare (not safe))
                     (##structure-length _self213259_))))
              (declare (not safe))
              (##fx< '3 __tmp217812))
            (begin
              (let ((__tmp217807
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217806
                     (let ()
                       (declare (not safe))
                       (##structure-type _self213259_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self213259_
                 __tmp217807
                 '1
                 __tmp217806
                 '#f))
              (let ((__tmp217809
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217808
                     (let ()
                       (declare (not safe))
                       (##structure-type _self213259_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self213259_
                 __tmp217809
                 '2
                 __tmp217808
                 '#f))
              (let ((__tmp217811
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217810
                     (let ()
                       (declare (not safe))
                       (##structure-type _self213259_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self213259_
                 __tmp217811
                 '3
                 __tmp217810
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self213259_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self213259_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp217813
             (let ((__tmp217814
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217814 '()))))
        (declare (not safe))
        (make-struct-type 'gxc#!type::t '!type '#f '(id) __tmp217813 '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-struct-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args213134_
        (apply make-struct-instance gxc#!type::t _$args213134_)))
    (define gxc#!type-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!type::t 'id)))
    (define gxc#!type-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!type::t 'id)))
    (define gxc#&!type-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!type::t 'id)))
    (define gxc#&!type-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!type::t 'id)))
    (define gxc#!alias::t
      (let ((__tmp217815
             (let ((__tmp217816
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217816 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!alias::t
         '!alias
         gxc#!type::t
         '()
         __tmp217815
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-struct-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args213131_
        (apply make-struct-instance gxc#!alias::t _$args213131_)))
    (define gxc#!alias-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!alias::t 'id)))
    (define gxc#!alias-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!alias::t 'id)))
    (define gxc#&!alias-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!alias::t 'id)))
    (define gxc#&!alias-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!alias::t 'id)))
    (define gxc#!procedure::t
      (let ((__tmp217817
             (let ((__tmp217818
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217818 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!procedure::t
         '!procedure
         gxc#!type::t
         '()
         __tmp217817
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-struct-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args213128_
        (apply make-struct-instance gxc#!procedure::t _$args213128_)))
    (define gxc#!procedure-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!procedure::t 'id)))
    (define gxc#!procedure-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!procedure::t 'id)))
    (define gxc#&!procedure-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!procedure::t 'id)))
    (define gxc#&!procedure-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!procedure::t 'id)))
    (define gxc#!class::t
      (let ((__tmp217819
             (let ((__tmp217820
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217820 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!class::t
         '!class
         gxc#!type::t
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 methods)
         __tmp217819
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args213125_
        (apply make-struct-instance gxc#!class::t _$args213125_)))
    (define gxc#!class-super
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'super)))
    (define gxc#!class-precedence-list
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'precedence-list)))
    (define gxc#!class-slots
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'slots)))
    (define gxc#!class-fields
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'fields)))
    (define gxc#!class-constructor
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'constructor)))
    (define gxc#!class-struct?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'struct?)))
    (define gxc#!class-final?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'final?)))
    (define gxc#!class-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'methods)))
    (define gxc#!class-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'id)))
    (define gxc#!class-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'super)))
    (define gxc#!class-precedence-list-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'precedence-list)))
    (define gxc#!class-slots-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'slots)))
    (define gxc#!class-fields-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'fields)))
    (define gxc#!class-constructor-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'constructor)))
    (define gxc#!class-struct?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'struct?)))
    (define gxc#!class-final?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'final?)))
    (define gxc#!class-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'methods)))
    (define gxc#!class-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'id)))
    (define gxc#&!class-super
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'super)))
    (define gxc#&!class-precedence-list
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'precedence-list)))
    (define gxc#&!class-slots
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'slots)))
    (define gxc#&!class-fields
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'fields)))
    (define gxc#&!class-constructor
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'constructor)))
    (define gxc#&!class-struct?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'struct?)))
    (define gxc#&!class-final?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'final?)))
    (define gxc#&!class-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'methods)))
    (define gxc#&!class-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'id)))
    (define gxc#&!class-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'super)))
    (define gxc#&!class-precedence-list-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'precedence-list)))
    (define gxc#&!class-slots-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'slots)))
    (define gxc#&!class-fields-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'fields)))
    (define gxc#&!class-constructor-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'constructor)))
    (define gxc#&!class-struct?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'struct?)))
    (define gxc#&!class-final?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'final?)))
    (define gxc#&!class-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'methods)))
    (define gxc#&!class-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'id)))
    (define gxc#!predicate::t
      (let ((__tmp217821
             (let ((__tmp217822
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217822 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!predicate::t
         '!predicate
         gxc#!procedure::t
         '()
         __tmp217821
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-struct-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args213122_
        (apply make-struct-instance gxc#!predicate::t _$args213122_)))
    (define gxc#!predicate-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!predicate::t 'id)))
    (define gxc#!predicate-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!predicate::t 'id)))
    (define gxc#&!predicate-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!predicate::t 'id)))
    (define gxc#&!predicate-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!predicate::t 'id)))
    (define gxc#!constructor::t
      (let ((__tmp217823
             (let ((__tmp217824
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217824 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!constructor::t
         '!constructor
         gxc#!procedure::t
         '()
         __tmp217823
         '#f)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args213119_
        (apply make-struct-instance gxc#!constructor::t _$args213119_)))
    (define gxc#!constructor-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!constructor::t 'id)))
    (define gxc#!constructor-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!constructor::t 'id)))
    (define gxc#&!constructor-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!constructor::t 'id)))
    (define gxc#&!constructor-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!constructor::t 'id)))
    (define gxc#!accessor::t
      (let ((__tmp217825
             (let ((__tmp217826
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217826 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!accessor::t
         '!accessor
         gxc#!procedure::t
         '(slot checked?)
         __tmp217825
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-struct-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args213116_
        (apply make-struct-instance gxc#!accessor::t _$args213116_)))
    (define gxc#!accessor-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!accessor::t 'slot)))
    (define gxc#!accessor-checked?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!accessor::t 'checked?)))
    (define gxc#!accessor-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!accessor::t 'id)))
    (define gxc#!accessor-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!accessor::t 'slot)))
    (define gxc#!accessor-checked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!accessor::t 'checked?)))
    (define gxc#!accessor-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!accessor::t 'id)))
    (define gxc#&!accessor-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!accessor::t 'slot)))
    (define gxc#&!accessor-checked?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!accessor::t 'checked?)))
    (define gxc#&!accessor-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!accessor::t 'id)))
    (define gxc#&!accessor-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!accessor::t 'slot)))
    (define gxc#&!accessor-checked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!accessor::t 'checked?)))
    (define gxc#&!accessor-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!accessor::t 'id)))
    (define gxc#!mutator::t
      (let ((__tmp217827
             (let ((__tmp217828
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217828 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!mutator::t
         '!mutator
         gxc#!procedure::t
         '(slot checked?)
         __tmp217827
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-struct-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args213113_
        (apply make-struct-instance gxc#!mutator::t _$args213113_)))
    (define gxc#!mutator-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!mutator::t 'slot)))
    (define gxc#!mutator-checked?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!mutator::t 'checked?)))
    (define gxc#!mutator-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!mutator::t 'id)))
    (define gxc#!mutator-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!mutator::t 'slot)))
    (define gxc#!mutator-checked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!mutator::t 'checked?)))
    (define gxc#!mutator-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!mutator::t 'id)))
    (define gxc#&!mutator-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!mutator::t 'slot)))
    (define gxc#&!mutator-checked?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!mutator::t 'checked?)))
    (define gxc#&!mutator-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!mutator::t 'id)))
    (define gxc#&!mutator-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!mutator::t 'slot)))
    (define gxc#&!mutator-checked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!mutator::t 'checked?)))
    (define gxc#&!mutator-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!mutator::t 'id)))
    (define gxc#!lambda::t
      (let ((__tmp217829
             (let ((__tmp217830
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217830 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!lambda::t
         '!lambda
         gxc#!procedure::t
         '(arity dispatch inline inline-typedecl)
         __tmp217829
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args213110_
        (apply make-struct-instance gxc#!lambda::t _$args213110_)))
    (define gxc#!lambda-arity
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!lambda::t 'arity)))
    (define gxc#!lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!lambda::t 'dispatch)))
    (define gxc#!lambda-inline
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!lambda::t 'inline)))
    (define gxc#!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!lambda::t 'inline-typedecl)))
    (define gxc#!lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!lambda::t 'id)))
    (define gxc#!lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!lambda::t 'arity)))
    (define gxc#!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!lambda::t 'dispatch)))
    (define gxc#!lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!lambda::t 'inline)))
    (define gxc#!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!lambda::t 'inline-typedecl)))
    (define gxc#!lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!lambda::t 'id)))
    (define gxc#&!lambda-arity
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!lambda::t 'arity)))
    (define gxc#&!lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!lambda::t 'dispatch)))
    (define gxc#&!lambda-inline
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!lambda::t 'inline)))
    (define gxc#&!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!lambda::t 'inline-typedecl)))
    (define gxc#&!lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!lambda::t 'id)))
    (define gxc#&!lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!lambda::t 'arity)))
    (define gxc#&!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!lambda::t 'dispatch)))
    (define gxc#&!lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!lambda::t 'inline)))
    (define gxc#&!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!lambda::t 'inline-typedecl)))
    (define gxc#&!lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!lambda::t 'id)))
    (define gxc#!case-lambda::t
      (let ((__tmp217831
             (let ((__tmp217832
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217832 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!case-lambda::t
         '!case-lambda
         gxc#!procedure::t
         '(clauses)
         __tmp217831
         '#f)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args213107_
        (apply make-struct-instance gxc#!case-lambda::t _$args213107_)))
    (define gxc#!case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!case-lambda::t 'clauses)))
    (define gxc#!case-lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!case-lambda::t 'id)))
    (define gxc#!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!case-lambda::t 'clauses)))
    (define gxc#!case-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!case-lambda::t 'id)))
    (define gxc#&!case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!case-lambda::t 'clauses)))
    (define gxc#&!case-lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!case-lambda::t 'id)))
    (define gxc#&!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!case-lambda::t 'clauses)))
    (define gxc#&!case-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!case-lambda::t 'id)))
    (define gxc#!kw-lambda::t
      (let ((__tmp217833
             (let ((__tmp217834
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217834 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         gxc#!procedure::t
         '(table dispatch)
         __tmp217833
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args213104_
        (apply make-struct-instance gxc#!kw-lambda::t _$args213104_)))
    (define gxc#!kw-lambda-table
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda::t 'table)))
    (define gxc#!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda::t 'dispatch)))
    (define gxc#!kw-lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda::t 'id)))
    (define gxc#!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda::t 'table)))
    (define gxc#!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda::t 'dispatch)))
    (define gxc#!kw-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda::t 'id)))
    (define gxc#&!kw-lambda-table
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda::t 'table)))
    (define gxc#&!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda::t 'dispatch)))
    (define gxc#&!kw-lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda::t 'id)))
    (define gxc#&!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda::t 'table)))
    (define gxc#&!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda::t 'dispatch)))
    (define gxc#&!kw-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda::t 'id)))
    (define gxc#!kw-lambda-primary::t
      (let ((__tmp217835
             (let ((__tmp217836
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217836 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         gxc#!procedure::t
         '(keys main)
         __tmp217835
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args213101_
        (apply make-struct-instance gxc#!kw-lambda-primary::t _$args213101_)))
    (define gxc#!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda-primary::t 'main)))
    (define gxc#!kw-lambda-primary-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda-primary::t 'id)))
    (define gxc#!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda-primary::t 'main)))
    (define gxc#!kw-lambda-primary-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda-primary::t 'id)))
    (define gxc#&!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#&!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'main)))
    (define gxc#&!kw-lambda-primary-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'id)))
    (define gxc#&!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#&!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'main)))
    (define gxc#&!kw-lambda-primary-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'id)))
    (define gxc#!primitive::t
      (let ((__tmp217837 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp217837
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args213098_
        (apply make-class-instance gxc#!primitive::t _$args213098_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp217838 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp217838
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args213095_
        (apply make-class-instance gxc#!primitive-lambda::t _$args213095_)))
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
      (let ((__tmp217839 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp217839
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args213092_
        (apply make-class-instance
               gxc#!primitive-case-lambda::t
               _$args213092_)))
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
      (lambda (_self212930_
               _id212931_
               _super212932_
               _slots212933_
               _ctor-method212934_
               _struct?212935_
               _final?212936_)
        (let _lp212938_ ((_rest212940_ _super212932_))
          (let* ((_rest212941212949_ _rest212940_)
                 (_else212943212957_ (lambda () '#!void))
                 (_K212945212963_
                  (lambda (_rest212960_ _super-id212961_)
                    (if (##structure-ref
                         (let ((__tmp217842
                                (let ((__tmp217843
                                       (let ()
                                         (declare (not safe))
                                         (cons _id212931_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp217843))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp217842
                            _super-id212961_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp217840
                               (let ((__tmp217841
                                      (let ()
                                        (declare (not safe))
                                        (cons _id212931_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp217841))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp217840
                           _super-id212961_))
                        '#!void)
                    (let () (declare (not safe)) (_lp212938_ _rest212960_)))))
            (if (let () (declare (not safe)) (##pair? _rest212941212949_))
                (let ((_hd212946212966_
                       (let ()
                         (declare (not safe))
                         (##car _rest212941212949_)))
                      (_tl212947212968_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest212941212949_))))
                  (let* ((_super-id212971_ _hd212946212966_)
                         (_rest212973_ _tl212947212968_))
                    (declare (not safe))
                    (_K212945212963_ _rest212973_ _super-id212971_)))
                '#!void)))
        (if _struct?212935_
            (let* ((_super212974212984_ _super212932_)
                   (_else212977212992_
                    (lambda ()
                      (let ((__tmp217844
                             (let ((__tmp217845
                                    (let ()
                                      (declare (not safe))
                                      (cons _id212931_ '()))))
                               (declare (not safe))
                               (cons '!class __tmp217845))))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"bad class; struct can only extend a single struct"
                         __tmp217844
                         _super212932_)))))
              (let ((_K212982213014_ (lambda () '#!void))
                    (_K212979213000_
                     (lambda (_super-id212996_)
                       (let ((_klass212998_
                              (let ((__tmp217846
                                     (let ((__tmp217847
                                            (let ()
                                              (declare (not safe))
                                              (cons _id212931_ '()))))
                                       (declare (not safe))
                                       (cons '!class __tmp217847))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-class
                                 __tmp217846
                                 _super-id212996_))))
                         (if (##structure-ref
                              _klass212998_
                              '7
                              gxc#!class::t
                              '#f)
                             '#!void
                             (let ((__tmp217848
                                    (let ((__tmp217849
                                           (let ()
                                             (declare (not safe))
                                             (cons _id212931_ '()))))
                                      (declare (not safe))
                                      (cons '!class __tmp217849))))
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"bad class; struct extending non struct"
                                __tmp217848
                                _super-id212996_)))))))
                (let ((_try-match212976213010_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _super212974212984_))
                             (let ((_tl212981213005_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _super212974212984_)))
                                   (_hd212980213003_
                                    (let ()
                                      (declare (not safe))
                                      (##car _super212974212984_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _tl212981213005_))
                                   (let ((_super-id213008_ _hd212980213003_))
                                     (declare (not safe))
                                     (_K212979213000_ _super-id213008_))
                                   (let ()
                                     (declare (not safe))
                                     (_else212977212992_))))
                             (let ()
                               (declare (not safe))
                               (_else212977212992_))))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _super212974212984_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (_try-match212976213010_))))))
            '#!void)
        (let* ((_ctor-method213065_
                (let ((_$e213017_ _ctor-method212934_))
                  (if _$e213017_
                      _$e213017_
                      (let _lp213020_ ((_rest213022_ _super212932_)
                                       (_method213023_ '#f))
                        (let* ((_rest213024213032_ _rest213022_)
                               (_else213026213040_ (lambda () _method213023_))
                               (_K213028213053_
                                (lambda (_rest213043_ _super-id213044_)
                                  (let* ((_klass213046_
                                          (let ((__tmp217850
                                                 (let ((__tmp217851
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id212931_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp217851))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp217850
                                             _super-id213044_)))
                                         (_$e213048_
                                          (##structure-ref
                                           _klass213046_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e213048_
                                        ((lambda (_ctor-method213051_)
                                           (if _method213023_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method213051_
                                                          _method213023_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp213020_
                                                      _rest213043_
                                                      _ctor-method213051_))
                                                   (let ((__tmp217852
                                                          (let ((__tmp217853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id212931_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp217853))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp217852
                                                      _method213023_
                                                      _ctor-method213051_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp213020_
                                                  _rest213043_
                                                  _ctor-method213051_))))
                                         _$e213048_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp213020_
                                           _rest213043_
                                           _method213023_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest213024213032_))
                              (let ((_hd213029213056_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest213024213032_)))
                                    (_tl213030213058_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest213024213032_))))
                                (let* ((_super-id213061_ _hd213029213056_)
                                       (_rest213063_ _tl213030213058_))
                                  (declare (not safe))
                                  (_K213028213053_
                                   _rest213063_
                                   _super-id213061_)))
                              (let ()
                                (declare (not safe))
                                (_else213026213040_))))))))
               (_g217854_
                (let ((__tmp217859
                       (lambda (_klass-id213067_)
                         (let ((__tmp217860
                                (##structure-ref
                                 (let ((__tmp217861
                                        (let ((__tmp217862
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id212931_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp217862))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp217861
                                    _klass-id213067_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id213067_ __tmp217860))))
                      (__tmp217856
                       (lambda (_klass-id213069_)
                         (##structure-ref
                          (let ((__tmp217857
                                 (let ((__tmp217858
                                        (let ()
                                          (declare (not safe))
                                          (cons _id212931_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp217858))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp217857
                             _klass-id213069_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp217859
                   __tmp217856
                   eq?
                   identity
                   '()
                   _super212932_))))
          (begin
            (let ((_g217855_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g217854_)
                         (##vector-length _g217854_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g217855_ 2)))
                  (error "Context expects 2 values" _g217855_)))
            (let ((_precedence-list213071_
                   (let () (declare (not safe)) (##vector-ref _g217854_ 0)))
                  (_super-struct213072_
                   (let () (declare (not safe)) (##vector-ref _g217854_ 1))))
              (let ((_fields213078_
                     (let* ((_base-struct213076_
                             (let ((__tmp217863
                                    (lambda (_klass-id213074_)
                                      (##structure-ref
                                       (let ((__tmp217864
                                              (let ((__tmp217865
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _id212931_ '()))))
                                                (declare (not safe))
                                                (cons '!class __tmp217865))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-class
                                          __tmp217864
                                          _klass-id213074_))
                                       '7
                                       gxc#!class::t
                                       '#f))))
                               (declare (not safe))
                               (find __tmp217863 _precedence-list213071_)))
                            (__tmp217866
                             (let ((__tmp217867
                                    (let ()
                                      (declare (not safe))
                                      (cons _id212931_ '()))))
                               (declare (not safe))
                               (cons '!class __tmp217867))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp217866
                        _base-struct213076_
                        _precedence-list213071_
                        _slots212933_))))
                (##structure-set! _self212930_ _id212931_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self212930_
                 _super212932_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212930_
                 _precedence-list213071_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212930_
                 _slots212933_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212930_
                 _fields213078_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212930_
                 _ctor-method213065_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212930_
                 _struct?212935_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self212930_
                 _final?212936_
                 '8
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self213081_
               _id213082_
               _super213083_
               _precedence-list213084_
               _slots213085_
               _fields213086_
               _constructor213087_
               _struct?213088_
               _final?213089_
               _methods213090_)
        (##structure-set! _self213081_ _id213082_ '1 gxc#!type::t '#f)
        (##structure-set! _self213081_ _super213083_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self213081_
         _precedence-list213084_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self213081_ _slots213085_ '4 gxc#!class::t '#f)
        (##structure-set! _self213081_ _fields213086_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self213081_
         _constructor213087_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self213081_ _struct?213088_ '7 gxc#!class::t '#f)
        (##structure-set! _self213081_ _final?213089_ '8 gxc#!class::t '#f)
        (if _methods213090_
            (##structure-set!
             _self213081_
             (let ()
               (declare (not safe))
               (list->table _methods213090_ 'test: eq?))
             '9
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g217869_
        (let ((_g217868_ (let () (declare (not safe)) (##length _g217869_))))
          (cond ((let () (declare (not safe)) (##fx= _g217868_ 7))
                 (apply (lambda (_self212930_
                                 _id212931_
                                 _super212932_
                                 _slots212933_
                                 _ctor-method212934_
                                 _struct?212935_
                                 _final?212936_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self212930_
                             _id212931_
                             _super212932_
                             _slots212933_
                             _ctor-method212934_
                             _struct?212935_
                             _final?212936_)))
                        _g217869_))
                ((let () (declare (not safe)) (##fx= _g217868_ 10))
                 (apply (lambda (_self213081_
                                 _id213082_
                                 _super213083_
                                 _precedence-list213084_
                                 _slots213085_
                                 _fields213086_
                                 _constructor213087_
                                 _struct?213088_
                                 _final?213089_
                                 _methods213090_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self213081_
                             _id213082_
                             _super213083_
                             _precedence-list213084_
                             _slots213085_
                             _fields213086_
                             _constructor213087_
                             _struct?213088_
                             _final?213089_
                             _methods213090_)))
                        _g217869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g217869_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t217731)
        (let ((__fields217732
               (let ((__tmp217741
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217731 'fields))))
                 (if __tmp217741 __tmp217741 (error '"Unknown slot" 'fields))))
              (__constructor217733
               (let ((__tmp217742
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217731 'constructor))))
                 (if __tmp217742
                     __tmp217742
                     (error '"Unknown slot" 'constructor))))
              (__id217734
               (let ((__tmp217743
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217731 'id))))
                 (if __tmp217743 __tmp217743 (error '"Unknown slot" 'id))))
              (__slots217735
               (let ((__tmp217744
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217731 'slots))))
                 (if __tmp217744 __tmp217744 (error '"Unknown slot" 'slots))))
              (__struct?217736
               (let ((__tmp217745
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217731 'struct?))))
                 (if __tmp217745
                     __tmp217745
                     (error '"Unknown slot" 'struct?))))
              (__final?217737
               (let ((__tmp217746
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217731 'final?))))
                 (if __tmp217746 __tmp217746 (error '"Unknown slot" 'final?))))
              (__super217738
               (let ((__tmp217747
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217731 'super))))
                 (if __tmp217747 __tmp217747 (error '"Unknown slot" 'super))))
              (__precedence-list217739
               (let ((__tmp217748
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217731 'precedence-list))))
                 (if __tmp217748
                     __tmp217748
                     (error '"Unknown slot" 'precedence-list))))
              (__methods217740
               (let ((__tmp217749
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217731 'methods))))
                 (if __tmp217749
                     __tmp217749
                     (error '"Unknown slot" 'methods)))))
          (lambda _g217871_
            (let ((_g217870_
                   (let () (declare (not safe)) (##length _g217871_))))
              (cond ((let () (declare (not safe)) (##fx= _g217870_ 7))
                     (apply (lambda (_self212930_
                                     _id212931_
                                     _super212932_
                                     _slots212933_
                                     _ctor-method212934_
                                     _struct?212935_
                                     _final?212936_)
                              (let _lp212938_ ((_rest212940_ _super212932_))
                                (let* ((_rest212941212949_ _rest212940_)
                                       (_else212943212957_ (lambda () '#!void))
                                       (_K212945212963_
                                        (lambda (_rest212960_ _super-id212961_)
                                          (if (##structure-ref
                                               (let ((__tmp217874
                                                      (let ((__tmp217875
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id212931_ '()))))
                (declare (not safe))
                (cons '!class __tmp217875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp217874
                                                  _super-id212961_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp217872
                                                     (let ((__tmp217873
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id212931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp217873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp217872
                                                 _super-id212961_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp212938_ _rest212960_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest212941212949_))
                                      (let ((_hd212946212966_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest212941212949_)))
                                            (_tl212947212968_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest212941212949_))))
                                        (let* ((_super-id212971_
                                                _hd212946212966_)
                                               (_rest212973_ _tl212947212968_))
                                          (declare (not safe))
                                          (_K212945212963_
                                           _rest212973_
                                           _super-id212971_)))
                                      '#!void)))
                              (if _struct?212935_
                                  (let* ((_super212974212984_ _super212932_)
                                         (_else212977212992_
                                          (lambda ()
                                            (let ((__tmp217876
                                                   (let ((__tmp217877
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _id212931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '!class
                                                           __tmp217877))))
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"bad class; struct can only extend a single struct"
                                               __tmp217876
                                               _super212932_)))))
                                    (let ((_K212982213014_ (lambda () '#!void))
                                          (_K212979213000_
                                           (lambda (_super-id212996_)
                                             (let ((_klass212998_
                                                    (let ((__tmp217878
                                                           (let ((__tmp217879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id212931_ '()))))
                     (declare (not safe))
                     (cons '!class __tmp217879))))
              (declare (not safe))
              (gxc#optimizer-resolve-class __tmp217878 _super-id212996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-ref
                                                    _klass212998_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   '#!void
                                                   (let ((__tmp217880
                                                          (let ((__tmp217881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id212931_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp217881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"bad class; struct extending non struct"
                                                      __tmp217880
                                                      _super-id212996_)))))))
                                      (let ((_try-match212976213010_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _super212974212984_))
                                                   (let ((_tl212981213005_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _super212974212984_)))
                                                         (_hd212980213003_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _super212974212984_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##null? _tl212981213005_))
                                                         (let ((_super-id213008_
                                                                _hd212980213003_))
                                                           (declare (not safe))
                                                           (_K212979213000_
                                                            _super-id213008_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (_else212977212992_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_else212977212992_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _super212974212984_))
                                            '#!void
                                            (let ()
                                              (declare (not safe))
                                              (_try-match212976213010_))))))
                                  '#!void)
                              (let* ((_ctor-method213065_
                                      (let ((_$e213017_ _ctor-method212934_))
                                        (if _$e213017_
                                            _$e213017_
                                            (let _lp213020_ ((_rest213022_
                                                              _super212932_)
                                                             (_method213023_
                                                              '#f))
                                              (let* ((_rest213024213032_
                                                      _rest213022_)
                                                     (_else213026213040_
                                                      (lambda ()
                                                        _method213023_))
                                                     (_K213028213053_
                                                      (lambda (_rest213043_
                                                               _super-id213044_)
                                                        (let* ((_klass213046_
                                                                (let ((__tmp217882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp217883
                                      (let ()
                                        (declare (not safe))
                                        (cons _id212931_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp217883))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp217882
                           _super-id213044_)))
                       (_$e213048_
                        (##structure-ref _klass213046_ '6 gxc#!class::t '#f)))
                  (if _$e213048_
                      ((lambda (_ctor-method213051_)
                         (if _method213023_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method213051_ _method213023_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp213020_
                                    _rest213043_
                                    _ctor-method213051_))
                                 (let ((__tmp217884
                                        (let ((__tmp217885
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id212931_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp217885))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp217884
                                    _method213023_
                                    _ctor-method213051_)))
                             (let ()
                               (declare (not safe))
                               (_lp213020_ _rest213043_ _ctor-method213051_))))
                       _$e213048_)
                      (let ()
                        (declare (not safe))
                        (_lp213020_ _rest213043_ _method213023_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest213024213032_))
                                                    (let ((_hd213029213056_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest213024213032_)))
                                                          (_tl213030213058_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest213024213032_))))
                                                      (let* ((_super-id213061_
                                                              _hd213029213056_)
                                                             (_rest213063_
                                                              _tl213030213058_))
                                                        (declare (not safe))
                                                        (_K213028213053_
                                                         _rest213063_
                                                         _super-id213061_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else213026213040_))))))))
                                     (_g217886_
                                      (let ((__tmp217891
                                             (lambda (_klass-id213067_)
                                               (let ((__tmp217892
                                                      (##structure-ref
                                                       (let ((__tmp217893
                                                              (let ((__tmp217894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id212931_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp217894))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp217893 _klass-id213067_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id213067_
                                                       __tmp217892))))
                                            (__tmp217888
                                             (lambda (_klass-id213069_)
                                               (##structure-ref
                                                (let ((__tmp217889
                                                       (let ((__tmp217890
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id212931_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp217890))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp217889
                                                   _klass-id213069_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp217891
                                         __tmp217888
                                         eq?
                                         identity
                                         '()
                                         _super212932_))))
                                (begin
                                  (let ((_g217887_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g217886_)
                                               (##vector-length _g217886_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g217887_ 2)))
                                        (error "Context expects 2 values"
                                               _g217887_)))
                                  (let ((_precedence-list213071_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g217886_ 0)))
                                        (_super-struct213072_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g217886_ 1))))
                                    (let ((_fields213078_
                                           (let* ((_base-struct213076_
                                                   (let ((__tmp217895
                                                          (lambda (_klass-id213074_)
                                                            (##structure-ref
                                                             (let ((__tmp217896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp217897
                                   (let ()
                                     (declare (not safe))
                                     (cons _id212931_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp217897))))
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        __tmp217896
                        _klass-id213074_))
                     '7
                     gxc#!class::t
                     '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (find __tmp217895
                                                           _precedence-list213071_)))
                                                  (__tmp217898
                                                   (let ((__tmp217899
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _id212931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '!class
                                                           __tmp217899))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp217898
                                              _base-struct213076_
                                              _precedence-list213071_
                                              _slots212933_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212930_
                                         _id212931_
                                         __id217734
                                         __t217731
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212930_
                                         _super212932_
                                         __super217738
                                         __t217731
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212930_
                                         _precedence-list213071_
                                         __precedence-list217739
                                         __t217731
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212930_
                                         _slots212933_
                                         __slots217735
                                         __t217731
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212930_
                                         _fields213078_
                                         __fields217732
                                         __t217731
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212930_
                                         _ctor-method213065_
                                         __constructor217733
                                         __t217731
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212930_
                                         _struct?212935_
                                         __struct?217736
                                         __t217731
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self212930_
                                         _final?212936_
                                         __final?217737
                                         __t217731
                                         '#f)))))))
                            _g217871_))
                    ((let () (declare (not safe)) (##fx= _g217870_ 10))
                     (apply (lambda (_self213081_
                                     _id213082_
                                     _super213083_
                                     _precedence-list213084_
                                     _slots213085_
                                     _fields213086_
                                     _constructor213087_
                                     _struct?213088_
                                     _final?213089_
                                     _methods213090_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213081_
                                 _id213082_
                                 __id217734
                                 __t217731
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213081_
                                 _super213083_
                                 __super217738
                                 __t217731
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213081_
                                 _precedence-list213084_
                                 __precedence-list217739
                                 __t217731
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213081_
                                 _slots213085_
                                 __slots217735
                                 __t217731
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213081_
                                 _fields213086_
                                 __fields217732
                                 __t217731
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213081_
                                 _constructor213087_
                                 __constructor217733
                                 __t217731
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213081_
                                 _struct?213088_
                                 __struct?217736
                                 __t217731
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self213081_
                                 _final?213089_
                                 __final?217737
                                 __t217731
                                 '#f))
                              (if _methods213090_
                                  (let ((__tmp217900
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods213090_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self213081_
                                     __tmp217900
                                     __methods217740
                                     __t217731
                                     '#f))
                                  '#!void))
                            _g217871_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g217871_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where212782_
               _base-struct212783_
               _precedence-list212784_
               _direct-slots212785_)
        (let* ((_base-fields212787_
                (if _base-struct212783_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where212782_
                        _base-struct212783_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields212789_ (reverse _base-fields212787_))
               (_seen-slots212797_
                (let ((_tab212791_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g212792212794_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab212791_ _g212792212794_ '#t)))
                   _base-fields212787_)
                  _tab212791_))
               (_process-slot212801_
                (lambda (_slot212799_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots212797_ _slot212799_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots212797_ _slot212799_ '#t))
                        (set! _r-fields212789_
                              (let ()
                                (declare (not safe))
                                (cons _slot212799_ _r-fields212789_))))))))
          (for-each
           (lambda (_mixin212804_)
             (let ((_klass212806_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where212782_
                       _mixin212804_))))
               (if (##structure-ref _klass212806_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot212801_
                    (##structure-ref _klass212806_ '5 gxc#!class::t '#f)))))
           _precedence-list212784_)
          (for-each _process-slot212801_ _direct-slots212785_)
          (reverse _r-fields212789_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass212741_ _slot212742_)
        (let _lp212744_ ((_rest212746_
                          (##structure-ref _klass212741_ '5 gxc#!class::t '#f))
                         (_offset212747_ '1))
          (let* ((_rest212748212756_ _rest212746_)
                 (_else212750212764_
                  (lambda ()
                    (let ((__tmp217902
                           (##structure-ref _klass212741_ '1 gxc#!type::t '#f))
                          (__tmp217901
                           (##structure-ref
                            _klass212741_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp217902
                       __tmp217901
                       _slot212742_))))
                 (_K212752212770_
                  (lambda (_rest212767_ _s212768_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s212768_ _slot212742_))
                        _offset212747_
                        (let ((__tmp217903
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset212747_ '1))))
                          (declare (not safe))
                          (_lp212744_ _rest212767_ __tmp217903))))))
            (if (let () (declare (not safe)) (##pair? _rest212748212756_))
                (let ((_hd212753212773_
                       (let ()
                         (declare (not safe))
                         (##car _rest212748212756_)))
                      (_tl212754212775_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest212748212756_))))
                  (let* ((_s212778_ _hd212753212773_)
                         (_rest212780_ _tl212754212775_))
                    (declare (not safe))
                    (_K212752212770_ _rest212780_ _s212778_)))
                (let () (declare (not safe)) (_else212750212764_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass212699_ _slot212700_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass212699_ _slot212700_))
            _klass212699_
            (let _lp212702_ ((_rest212704_
                              (##structure-ref
                               _klass212699_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest212705212713_ _rest212704_)
                     (_else212707212721_ (lambda () '#f))
                     (_K212709212729_
                      (lambda (_rest212724_ _super212725_)
                        (let ((_super-class212727_
                               (let ((__tmp217904
                                      (let ((__tmp217905
                                             (let ((__tmp217907
                                                    (##structure-ref
                                                     _klass212699_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp217906
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot212700_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp217907
                                                     __tmp217906))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp217905))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp217904
                                  _super212725_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class212727_
                                 _slot212700_))
                              _super-class212727_
                              (let ()
                                (declare (not safe))
                                (_lp212702_ _rest212724_)))))))
                (if (let () (declare (not safe)) (##pair? _rest212705212713_))
                    (let ((_hd212710212732_
                           (let ()
                             (declare (not safe))
                             (##car _rest212705212713_)))
                          (_tl212711212734_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest212705212713_))))
                      (let* ((_super212737_ _hd212710212732_)
                             (_rest212739_ _tl212711212734_))
                        (declare (not safe))
                        (_K212709212729_ _rest212739_ _super212737_)))
                    (let () (declare (not safe)) (_else212707212721_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass212696_ _slot212697_)
        (if (##structure-ref _klass212696_ '7 gxc#!class::t '#f)
            (memq _slot212697_
                  (##structure-ref _klass212696_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self212693_ _id212694_)
        (##structure-set! _self212693_ _id212694_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t217750)
        (let ((__id217751
               (let ((__tmp217752
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217750 'id))))
                 (if __tmp217752 __tmp217752 (error '"Unknown slot" 'id)))))
          (lambda (_self212693_ _id212694_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212693_
               _id212694_
               __id217751
               __t217750
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
      (lambda (_self212568_ _id212569_)
        (##structure-set! _self212568_ _id212569_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t217753)
        (let ((__id217754
               (let ((__tmp217755
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217753 'id))))
                 (if __tmp217755 __tmp217755 (error '"Unknown slot" 'id)))))
          (lambda (_self212568_ _id212569_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212568_
               _id212569_
               __id217754
               __t217753
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
      (lambda (_self212441_ _id212442_ _slot212443_ _checked?212444_)
        (##structure-set! _self212441_ _id212442_ '1 gxc#!type::t '#f)
        (##structure-set! _self212441_ _slot212443_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self212441_
         _checked?212444_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t217756)
        (let ((__slot217757
               (let ((__tmp217760
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217756 'slot))))
                 (if __tmp217760 __tmp217760 (error '"Unknown slot" 'slot))))
              (__id217758
               (let ((__tmp217761
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217756 'id))))
                 (if __tmp217761 __tmp217761 (error '"Unknown slot" 'id))))
              (__checked?217759
               (let ((__tmp217762
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217756 'checked?))))
                 (if __tmp217762
                     __tmp217762
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self212441_ _id212442_ _slot212443_ _checked?212444_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212441_
               _id212442_
               __id217758
               __t217756
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212441_
               _slot212443_
               __slot217757
               __t217756
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212441_
               _checked?212444_
               __checked?217759
               __t217756
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
      (lambda (_self212314_ _id212315_ _slot212316_ _checked?212317_)
        (##structure-set! _self212314_ _id212315_ '1 gxc#!type::t '#f)
        (##structure-set! _self212314_ _slot212316_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self212314_
         _checked?212317_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t217763)
        (let ((__slot217764
               (let ((__tmp217767
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217763 'slot))))
                 (if __tmp217767 __tmp217767 (error '"Unknown slot" 'slot))))
              (__id217765
               (let ((__tmp217768
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217763 'id))))
                 (if __tmp217768 __tmp217768 (error '"Unknown slot" 'id))))
              (__checked?217766
               (let ((__tmp217769
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217763 'checked?))))
                 (if __tmp217769
                     __tmp217769
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self212314_ _id212315_ _slot212316_ _checked?212317_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212314_
               _id212315_
               __id217765
               __t217763
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212314_
               _slot212316_
               __slot217764
               __t217763
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212314_
               _checked?212317_
               __checked?217766
               __t217763
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
      (lambda (_self212158_
               _id212159_
               _arity212160_
               _dispatch212161_
               _inline212162_
               _typedecl212163_)
        (if (let ((__tmp217913
                   (let ()
                     (declare (not safe))
                     (##structure-length _self212158_))))
              (declare (not safe))
              (##fx< '5 __tmp217913))
            (begin
              (let ((__tmp217908
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212158_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212158_
                 _id212159_
                 '1
                 __tmp217908
                 '#f))
              (let ((__tmp217909
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212158_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212158_
                 _arity212160_
                 '2
                 __tmp217909
                 '#f))
              (let ((__tmp217910
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212158_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212158_
                 _dispatch212161_
                 '3
                 __tmp217910
                 '#f))
              (let ((__tmp217911
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212158_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212158_
                 _inline212162_
                 '4
                 __tmp217911
                 '#f))
              (let ((__tmp217912
                     (let ()
                       (declare (not safe))
                       (##structure-type _self212158_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self212158_
                 _typedecl212163_
                 '5
                 __tmp217912
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self212158_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self212158_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self212168_ _id212169_ _arity212170_ _dispatch212171_)
        (let* ((_inline212173_ '#f) (_typedecl212175_ '#f))
          (if (let ((__tmp217919
                     (let ()
                       (declare (not safe))
                       (##structure-length _self212168_))))
                (declare (not safe))
                (##fx< '5 __tmp217919))
              (begin
                (let ((__tmp217914
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212168_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212168_
                   _id212169_
                   '1
                   __tmp217914
                   '#f))
                (let ((__tmp217915
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212168_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212168_
                   _arity212170_
                   '2
                   __tmp217915
                   '#f))
                (let ((__tmp217916
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212168_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212168_
                   _dispatch212171_
                   '3
                   __tmp217916
                   '#f))
                (let ((__tmp217917
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212168_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212168_
                   _inline212173_
                   '4
                   __tmp217917
                   '#f))
                (let ((__tmp217918
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212168_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212168_
                   _typedecl212175_
                   '5
                   __tmp217918
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self212168_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self212168_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self212177_
               _id212178_
               _arity212179_
               _dispatch212180_
               _inline212181_)
        (let ((_typedecl212183_ '#f))
          (if (let ((__tmp217925
                     (let ()
                       (declare (not safe))
                       (##structure-length _self212177_))))
                (declare (not safe))
                (##fx< '5 __tmp217925))
              (begin
                (let ((__tmp217920
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212177_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212177_
                   _id212178_
                   '1
                   __tmp217920
                   '#f))
                (let ((__tmp217921
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212177_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212177_
                   _arity212179_
                   '2
                   __tmp217921
                   '#f))
                (let ((__tmp217922
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212177_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212177_
                   _dispatch212180_
                   '3
                   __tmp217922
                   '#f))
                (let ((__tmp217923
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212177_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212177_
                   _inline212181_
                   '4
                   __tmp217923
                   '#f))
                (let ((__tmp217924
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212177_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212177_
                   _typedecl212183_
                   '5
                   __tmp217924
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self212177_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self212177_)))))))
    (define gxc#!lambda:::init!
      (lambda _g217927_
        (let ((_g217926_ (let () (declare (not safe)) (##length _g217927_))))
          (cond ((let () (declare (not safe)) (##fx= _g217926_ 4))
                 (apply (lambda (_self212168_
                                 _id212169_
                                 _arity212170_
                                 _dispatch212171_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self212168_
                             _id212169_
                             _arity212170_
                             _dispatch212171_)))
                        _g217927_))
                ((let () (declare (not safe)) (##fx= _g217926_ 5))
                 (apply (lambda (_self212177_
                                 _id212178_
                                 _arity212179_
                                 _dispatch212180_
                                 _inline212181_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self212177_
                             _id212178_
                             _arity212179_
                             _dispatch212180_
                             _inline212181_)))
                        _g217927_))
                ((let () (declare (not safe)) (##fx= _g217926_ 6))
                 (apply (lambda (_self212185_
                                 _id212186_
                                 _arity212187_
                                 _dispatch212188_
                                 _inline212189_
                                 _typedecl212190_)
                          (if (let ((__tmp217933
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self212185_))))
                                (declare (not safe))
                                (##fx< '5 __tmp217933))
                              (begin
                                (let ((__tmp217928
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212185_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212185_
                                   _id212186_
                                   '1
                                   __tmp217928
                                   '#f))
                                (let ((__tmp217929
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212185_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212185_
                                   _arity212187_
                                   '2
                                   __tmp217929
                                   '#f))
                                (let ((__tmp217930
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212185_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212185_
                                   _dispatch212188_
                                   '3
                                   __tmp217930
                                   '#f))
                                (let ((__tmp217931
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212185_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212185_
                                   _inline212189_
                                   '4
                                   __tmp217931
                                   '#f))
                                (let ((__tmp217932
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212185_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212185_
                                   _typedecl212190_
                                   '5
                                   __tmp217932
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self212185_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self212185_)))))
                        _g217927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g217927_))))))
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
      (lambda (_self211910_ . _args211911_)
        (apply struct-instance-init! _self211910_ _args211911_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type211785_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211785_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type211785_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass211778_)
        (let ((_$e211780_
               (##structure-ref _klass211778_ '9 gxc#!class::t '#f)))
          (if _$e211780_
              _$e211780_
              (let ((_tab211783_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass211778_
                 _tab211783_
                 '9
                 gxc#!class::t
                 '#f)
                _tab211783_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass211769_ _method211770_)
        (let ((_tab211771211773_
               (##structure-ref _klass211769_ '9 gxc#!class::t '#f)))
          (if _tab211771211773_
              (let ((_tab211776_ _tab211771211773_))
                (declare (not safe))
                (table-ref _tab211776_ _method211770_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type211766_ _method211767_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211766_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type211766_ _method211767_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym211750_ _type211751_ _local?211752_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211751_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym211750_
                   _type211751_))
        (let ((__tmp217934
               (let () (declare (not safe)) (struct->list _type211751_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym211750_ '" " __tmp217934))
        (let ((__tmp217935
               (if _local?211752_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp217935 _sym211750_ _type211751_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym211757_ _type211758_)
        (let ((_local?211760_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym211757_
           _type211758_
           _local?211760_))))
    (define gxc#optimizer-declare-type!
      (lambda _g217937_
        (let ((_g217936_ (let () (declare (not safe)) (##length _g217937_))))
          (cond ((let () (declare (not safe)) (##fx= _g217936_ 2))
                 (apply (lambda (_sym211757_ _type211758_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym211757_
                             _type211758_)))
                        _g217937_))
                ((let () (declare (not safe)) (##fx= _g217936_ 3))
                 (apply (lambda (_sym211762_ _type211763_ _local?211764_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym211762_
                             _type211763_
                             _local?211764_)))
                        _g217937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g217937_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym211736_ _local?211737_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym211736_))
        (let ((__tmp217938
               (if _local?211737_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp217938 _sym211736_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym211742_)
        (let ((_local?211744_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym211742_ _local?211744_))))
    (define gxc#optimizer-clear-type!
      (lambda _g217940_
        (let ((_g217939_ (let () (declare (not safe)) (##length _g217940_))))
          (cond ((let () (declare (not safe)) (##fx= _g217939_ 1))
                 (apply (lambda (_sym211742_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym211742_)))
                        _g217940_))
                ((let () (declare (not safe)) (##fx= _g217939_ 2))
                 (apply (lambda (_sym211746_ _local?211747_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym211746_
                             _local?211747_)))
                        _g217940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g217940_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t211709_ _method211710_ _sym211711_ _rebind?211712_)
        (let* ((_type211714_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t211709_)))
               (_$e211716_
                (let () (declare (not safe)) (gxc#!type-vtab _type211714_))))
          (if _$e211716_
              ((lambda (_vtab211719_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab211719_ _method211710_))
                     (if _rebind?211712_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t211709_
                              '" "
                              _method211710_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab211719_
                              _method211710_
                              _sym211711_)))
                         (let ((__tmp217945
                                (let ((__tmp217946
                                       (let ((__tmp217947
                                              (let ((__tmp217948
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym211711_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method211710_
                                                      __tmp217948))))
                                         (declare (not safe))
                                         (cons _type-t211709_ __tmp217947))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp217946))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp217945
                            _method211710_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t211709_
                          '" "
                          _method211710_
                          '" => "
                          _sym211711_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab211719_
                          _method211710_
                          _sym211711_)))))
               _$e211716_)
              (if (let () (declare (not safe)) (not _type211714_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t211709_))
                  (let ((__tmp217941
                         (let ((__tmp217942
                                (let ((__tmp217943
                                       (let ((__tmp217944
                                              (let ()
                                                (declare (not safe))
                                                (cons _method211710_ '()))))
                                         (declare (not safe))
                                         (cons _sym211711_ __tmp217944))))
                                  (declare (not safe))
                                  (cons _type-t211709_ __tmp217943))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp217942))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp217941
                     _type211714_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t211724_ _method211725_ _sym211726_)
        (let ((_rebind?211728_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t211724_
           _method211725_
           _sym211726_
           _rebind?211728_))))
    (define gxc#optimizer-declare-method!
      (lambda _g217950_
        (let ((_g217949_ (let () (declare (not safe)) (##length _g217950_))))
          (cond ((let () (declare (not safe)) (##fx= _g217949_ 3))
                 (apply (lambda (_type-t211724_ _method211725_ _sym211726_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t211724_
                             _method211725_
                             _sym211726_)))
                        _g217950_))
                ((let () (declare (not safe)) (##fx= _g217949_ 4))
                 (apply (lambda (_type-t211730_
                                 _method211731_
                                 _sym211732_
                                 _rebind?211733_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t211730_
                             _method211731_
                             _sym211732_
                             _rebind?211733_)))
                        _g217950_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g217950_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym211697_)
        (let ((_$e211705_
               (let ((_ht211698211700_ (gxc#current-compile-local-type)))
                 (if _ht211698211700_
                     (let ((_ht211703_ _ht211698211700_))
                       (declare (not safe))
                       (table-ref _ht211703_ _sym211697_ '#f))
                     '#f))))
          (if _$e211705_
              _$e211705_
              (let ((__tmp217951
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp217951 _sym211697_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym211689_)
        (let ((_type211690211692_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym211689_))))
          (if _type211690211692_
              (let ((_type211695_ _type211690211692_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type211695_ 'gxc#!alias::t))
                    (let ((__tmp217952
                           (##structure-ref _type211695_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp217952))
                    _type211695_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where211681_ _klass-id211682_)
        (let ((_$e211684_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id211682_))))
          (if _$e211684_
              ((lambda (_klass211687_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass211687_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where211681_
                        _klass-id211682_
                        _klass211687_)))
                 _klass211687_)
               _$e211684_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where211681_
                 _klass-id211682_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t211678_ _method211679_)
        (let ((__tmp217953
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t211678_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp217953 _method211679_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym211676_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym211676_))
        (let ((__tmp217954
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp217954 _sym211676_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym211674_)
        (let ((__tmp217955
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp217955 _sym211674_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx211672_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx211672_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx211672_))
            (let () (declare (not safe)) (gx#stx-e _stx211672_)))))))
