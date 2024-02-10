(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707573214)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp217626
             (let ((__tmp217627
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217627 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#optimizer-info::t
         'optimizer-info
         '#f
         '(type ssxi methods)
         __tmp217626
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args213083_
        (apply make-struct-instance gxc#optimizer-info::t _$args213083_)))
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
      (lambda (_self213081_)
        (if (let ((__tmp217634
                   (let ()
                     (declare (not safe))
                     (##structure-length _self213081_))))
              (declare (not safe))
              (##fx< '3 __tmp217634))
            (begin
              (let ((__tmp217629
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217628
                     (let ()
                       (declare (not safe))
                       (##structure-type _self213081_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self213081_
                 __tmp217629
                 '1
                 __tmp217628
                 '#f))
              (let ((__tmp217631
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217630
                     (let ()
                       (declare (not safe))
                       (##structure-type _self213081_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self213081_
                 __tmp217631
                 '2
                 __tmp217630
                 '#f))
              (let ((__tmp217633
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp217632
                     (let ()
                       (declare (not safe))
                       (##structure-type _self213081_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self213081_
                 __tmp217633
                 '3
                 __tmp217632
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self213081_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self213081_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp217635
             (let ((__tmp217636
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217636 '()))))
        (declare (not safe))
        (make-struct-type 'gxc#!type::t '!type '#f '(id) __tmp217635 '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-struct-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args212956_
        (apply make-struct-instance gxc#!type::t _$args212956_)))
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
      (let ((__tmp217637
             (let ((__tmp217638
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217638 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!alias::t
         '!alias
         gxc#!type::t
         '()
         __tmp217637
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-struct-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args212953_
        (apply make-struct-instance gxc#!alias::t _$args212953_)))
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
      (let ((__tmp217639
             (let ((__tmp217640
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217640 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!procedure::t
         '!procedure
         gxc#!type::t
         '()
         __tmp217639
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-struct-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args212950_
        (apply make-struct-instance gxc#!procedure::t _$args212950_)))
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
      (let ((__tmp217641
             (let ((__tmp217642
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217642 '()))))
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
         __tmp217641
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args212947_
        (apply make-struct-instance gxc#!class::t _$args212947_)))
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
      (let ((__tmp217643
             (let ((__tmp217644
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217644 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!predicate::t
         '!predicate
         gxc#!procedure::t
         '()
         __tmp217643
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-struct-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args212944_
        (apply make-struct-instance gxc#!predicate::t _$args212944_)))
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
      (let ((__tmp217645
             (let ((__tmp217646
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217646 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!constructor::t
         '!constructor
         gxc#!procedure::t
         '()
         __tmp217645
         '#f)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args212941_
        (apply make-struct-instance gxc#!constructor::t _$args212941_)))
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
      (let ((__tmp217647
             (let ((__tmp217648
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217648 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!accessor::t
         '!accessor
         gxc#!procedure::t
         '(slot checked?)
         __tmp217647
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-struct-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args212938_
        (apply make-struct-instance gxc#!accessor::t _$args212938_)))
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
      (let ((__tmp217649
             (let ((__tmp217650
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217650 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!mutator::t
         '!mutator
         gxc#!procedure::t
         '(slot checked?)
         __tmp217649
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-struct-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args212935_
        (apply make-struct-instance gxc#!mutator::t _$args212935_)))
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
      (let ((__tmp217651
             (let ((__tmp217652
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217652 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!lambda::t
         '!lambda
         gxc#!procedure::t
         '(arity dispatch inline inline-typedecl)
         __tmp217651
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args212932_
        (apply make-struct-instance gxc#!lambda::t _$args212932_)))
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
      (let ((__tmp217653
             (let ((__tmp217654
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217654 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!case-lambda::t
         '!case-lambda
         gxc#!procedure::t
         '(clauses)
         __tmp217653
         '#f)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args212929_
        (apply make-struct-instance gxc#!case-lambda::t _$args212929_)))
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
      (let ((__tmp217655
             (let ((__tmp217656
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217656 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         gxc#!procedure::t
         '(table dispatch)
         __tmp217655
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args212926_
        (apply make-struct-instance gxc#!kw-lambda::t _$args212926_)))
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
      (let ((__tmp217657
             (let ((__tmp217658
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp217658 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         gxc#!procedure::t
         '(keys main)
         __tmp217657
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args212923_
        (apply make-struct-instance gxc#!kw-lambda-primary::t _$args212923_)))
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
      (let ((__tmp217659 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp217659
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args212920_
        (apply make-class-instance gxc#!primitive::t _$args212920_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp217660 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp217660
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args212917_
        (apply make-class-instance gxc#!primitive-lambda::t _$args212917_)))
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
      (let ((__tmp217661 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp217661
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args212914_
        (apply make-class-instance
               gxc#!primitive-case-lambda::t
               _$args212914_)))
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
      (lambda (_self212755_
               _id212756_
               _super212757_
               _slots212758_
               _ctor-method212759_
               _struct?212760_
               _final?212761_)
        (let _lp212763_ ((_rest212765_ _super212757_))
          (let* ((_rest212766212774_ _rest212765_)
                 (_else212768212782_ (lambda () '#!void))
                 (_K212770212788_
                  (lambda (_rest212785_ _super-id212786_)
                    (if (##structure-ref
                         (let ((__tmp217664
                                (let ((__tmp217665
                                       (let ()
                                         (declare (not safe))
                                         (cons _id212756_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp217665))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp217664
                            _super-id212786_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp217662
                               (let ((__tmp217663
                                      (let ()
                                        (declare (not safe))
                                        (cons _id212756_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp217663))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp217662
                           _super-id212786_))
                        '#!void)
                    (let () (declare (not safe)) (_lp212763_ _rest212785_)))))
            (if (let () (declare (not safe)) (##pair? _rest212766212774_))
                (let ((_hd212771212791_
                       (let ()
                         (declare (not safe))
                         (##car _rest212766212774_)))
                      (_tl212772212793_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest212766212774_))))
                  (let* ((_super-id212796_ _hd212771212791_)
                         (_rest212798_ _tl212772212793_))
                    (declare (not safe))
                    (_K212770212788_ _rest212798_ _super-id212796_)))
                '#!void)))
        (if _struct?212760_
            (let* ((_super212799212809_ _super212757_)
                   (_else212802212817_
                    (lambda ()
                      (let ((__tmp217666
                             (let ((__tmp217667
                                    (let ()
                                      (declare (not safe))
                                      (cons _id212756_ '()))))
                               (declare (not safe))
                               (cons '!class __tmp217667))))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"bad class; struct can only extend a single struct"
                         __tmp217666
                         _super212757_)))))
              (let ((_K212807212839_ (lambda () '#!void))
                    (_K212804212825_
                     (lambda (_super-id212821_)
                       (let ((_klass212823_
                              (let ((__tmp217668
                                     (let ((__tmp217669
                                            (let ()
                                              (declare (not safe))
                                              (cons _id212756_ '()))))
                                       (declare (not safe))
                                       (cons '!class __tmp217669))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-class
                                 __tmp217668
                                 _super-id212821_))))
                         (if (##structure-ref
                              _klass212823_
                              '7
                              gxc#!class::t
                              '#f)
                             '#!void
                             (let ((__tmp217670
                                    (let ((__tmp217671
                                           (let ()
                                             (declare (not safe))
                                             (cons _id212756_ '()))))
                                      (declare (not safe))
                                      (cons '!class __tmp217671))))
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"bad class; struct extending non struct"
                                __tmp217670
                                _super-id212821_)))))))
                (let ((_try-match212801212835_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _super212799212809_))
                             (let ((_tl212806212830_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _super212799212809_)))
                                   (_hd212805212828_
                                    (let ()
                                      (declare (not safe))
                                      (##car _super212799212809_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _tl212806212830_))
                                   (let ((_super-id212833_ _hd212805212828_))
                                     (declare (not safe))
                                     (_K212804212825_ _super-id212833_))
                                   (let ()
                                     (declare (not safe))
                                     (_else212802212817_))))
                             (let ()
                               (declare (not safe))
                               (_else212802212817_))))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _super212799212809_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (_try-match212801212835_))))))
            '#!void)
        (let* ((_ctor-method212890_
                (let ((_$e212842_ _ctor-method212759_))
                  (if _$e212842_
                      _$e212842_
                      (let _lp212845_ ((_rest212847_ _super212757_)
                                       (_method212848_ '#f))
                        (let* ((_rest212849212857_ _rest212847_)
                               (_else212851212865_ (lambda () _method212848_))
                               (_K212853212878_
                                (lambda (_rest212868_ _super-id212869_)
                                  (let* ((_klass212871_
                                          (let ((__tmp217672
                                                 (let ((__tmp217673
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id212756_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp217673))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp217672
                                             _super-id212869_)))
                                         (_$e212873_
                                          (##structure-ref
                                           _klass212871_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e212873_
                                        ((lambda (_ctor-method212876_)
                                           (if _method212848_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method212876_
                                                          _method212848_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp212845_
                                                      _rest212868_
                                                      _ctor-method212876_))
                                                   (let ((__tmp217674
                                                          (let ((__tmp217675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id212756_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp217675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp217674
                                                      _method212848_
                                                      _ctor-method212876_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp212845_
                                                  _rest212868_
                                                  _ctor-method212876_))))
                                         _$e212873_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp212845_
                                           _rest212868_
                                           _method212848_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest212849212857_))
                              (let ((_hd212854212881_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest212849212857_)))
                                    (_tl212855212883_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest212849212857_))))
                                (let* ((_super-id212886_ _hd212854212881_)
                                       (_rest212888_ _tl212855212883_))
                                  (declare (not safe))
                                  (_K212853212878_
                                   _rest212888_
                                   _super-id212886_)))
                              (let ()
                                (declare (not safe))
                                (_else212851212865_))))))))
               (_precedence-list212894_
                (let ((__tmp217676
                       (lambda (_klass-id212892_)
                         (let ((__tmp217677
                                (##structure-ref
                                 (let ((__tmp217678
                                        (let ((__tmp217679
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id212756_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp217679))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp217678
                                    _klass-id212892_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id212892_ __tmp217677)))))
                  (declare (not safe))
                  (c3-linearize__%
                   '()
                   _super212757_
                   __tmp217676
                   eq?
                   identity)))
               (_fields212900_
                (let* ((_base-struct212898_
                        (let ((__tmp217680
                               (lambda (_klass-id212896_)
                                 (##structure-ref
                                  (let ((__tmp217681
                                         (let ((__tmp217682
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id212756_ '()))))
                                           (declare (not safe))
                                           (cons '!class __tmp217682))))
                                    (declare (not safe))
                                    (gxc#optimizer-resolve-class
                                     __tmp217681
                                     _klass-id212896_))
                                  '7
                                  gxc#!class::t
                                  '#f))))
                          (declare (not safe))
                          (find __tmp217680 _precedence-list212894_)))
                       (__tmp217683
                        (let ((__tmp217684
                               (let ()
                                 (declare (not safe))
                                 (cons _id212756_ '()))))
                          (declare (not safe))
                          (cons '!class __tmp217684))))
                  (declare (not safe))
                  (gxc#compute-class-fields
                   __tmp217683
                   _base-struct212898_
                   _precedence-list212894_
                   _slots212758_))))
          (##structure-set! _self212755_ _id212756_ '1 gxc#!type::t '#f)
          (##structure-set! _self212755_ _super212757_ '2 gxc#!class::t '#f)
          (##structure-set!
           _self212755_
           _precedence-list212894_
           '3
           gxc#!class::t
           '#f)
          (##structure-set! _self212755_ _slots212758_ '4 gxc#!class::t '#f)
          (##structure-set! _self212755_ _fields212900_ '5 gxc#!class::t '#f)
          (##structure-set!
           _self212755_
           _ctor-method212890_
           '6
           gxc#!class::t
           '#f)
          (##structure-set! _self212755_ _struct?212760_ '7 gxc#!class::t '#f)
          (##structure-set!
           _self212755_
           _final?212761_
           '8
           gxc#!class::t
           '#f))))
    (define gxc#!class:::init!__1
      (lambda (_self212903_
               _id212904_
               _super212905_
               _precedence-list212906_
               _slots212907_
               _fields212908_
               _constructor212909_
               _struct?212910_
               _final?212911_
               _methods212912_)
        (##structure-set! _self212903_ _id212904_ '1 gxc#!type::t '#f)
        (##structure-set! _self212903_ _super212905_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self212903_
         _precedence-list212906_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self212903_ _slots212907_ '4 gxc#!class::t '#f)
        (##structure-set! _self212903_ _fields212908_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self212903_
         _constructor212909_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self212903_ _struct?212910_ '7 gxc#!class::t '#f)
        (##structure-set! _self212903_ _final?212911_ '8 gxc#!class::t '#f)
        (if _methods212912_
            (##structure-set!
             _self212903_
             (let ()
               (declare (not safe))
               (list->table _methods212912_ 'test: eq?))
             '9
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g217686_
        (let ((_g217685_ (let () (declare (not safe)) (##length _g217686_))))
          (cond ((let () (declare (not safe)) (##fx= _g217685_ 7))
                 (apply (lambda (_self212755_
                                 _id212756_
                                 _super212757_
                                 _slots212758_
                                 _ctor-method212759_
                                 _struct?212760_
                                 _final?212761_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self212755_
                             _id212756_
                             _super212757_
                             _slots212758_
                             _ctor-method212759_
                             _struct?212760_
                             _final?212761_)))
                        _g217686_))
                ((let () (declare (not safe)) (##fx= _g217685_ 10))
                 (apply (lambda (_self212903_
                                 _id212904_
                                 _super212905_
                                 _precedence-list212906_
                                 _slots212907_
                                 _fields212908_
                                 _constructor212909_
                                 _struct?212910_
                                 _final?212911_
                                 _methods212912_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self212903_
                             _id212904_
                             _super212905_
                             _precedence-list212906_
                             _slots212907_
                             _fields212908_
                             _constructor212909_
                             _struct?212910_
                             _final?212911_
                             _methods212912_)))
                        _g217686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g217686_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t217553)
        (let ((__precedence-list217554
               (let ((__tmp217563
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217553 'precedence-list))))
                 (if __tmp217563
                     __tmp217563
                     (error '"Unknown slot" 'precedence-list))))
              (__final?217555
               (let ((__tmp217564
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217553 'final?))))
                 (if __tmp217564 __tmp217564 (error '"Unknown slot" 'final?))))
              (__fields217556
               (let ((__tmp217565
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217553 'fields))))
                 (if __tmp217565 __tmp217565 (error '"Unknown slot" 'fields))))
              (__super217557
               (let ((__tmp217566
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217553 'super))))
                 (if __tmp217566 __tmp217566 (error '"Unknown slot" 'super))))
              (__id217558
               (let ((__tmp217567
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217553 'id))))
                 (if __tmp217567 __tmp217567 (error '"Unknown slot" 'id))))
              (__slots217559
               (let ((__tmp217568
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217553 'slots))))
                 (if __tmp217568 __tmp217568 (error '"Unknown slot" 'slots))))
              (__constructor217560
               (let ((__tmp217569
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217553 'constructor))))
                 (if __tmp217569
                     __tmp217569
                     (error '"Unknown slot" 'constructor))))
              (__methods217561
               (let ((__tmp217570
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217553 'methods))))
                 (if __tmp217570
                     __tmp217570
                     (error '"Unknown slot" 'methods))))
              (__struct?217562
               (let ((__tmp217571
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217553 'struct?))))
                 (if __tmp217571
                     __tmp217571
                     (error '"Unknown slot" 'struct?)))))
          (lambda _g217688_
            (let ((_g217687_
                   (let () (declare (not safe)) (##length _g217688_))))
              (cond ((let () (declare (not safe)) (##fx= _g217687_ 7))
                     (apply (lambda (_self212755_
                                     _id212756_
                                     _super212757_
                                     _slots212758_
                                     _ctor-method212759_
                                     _struct?212760_
                                     _final?212761_)
                              (let _lp212763_ ((_rest212765_ _super212757_))
                                (let* ((_rest212766212774_ _rest212765_)
                                       (_else212768212782_ (lambda () '#!void))
                                       (_K212770212788_
                                        (lambda (_rest212785_ _super-id212786_)
                                          (if (##structure-ref
                                               (let ((__tmp217691
                                                      (let ((__tmp217692
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id212756_ '()))))
                (declare (not safe))
                (cons '!class __tmp217692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp217691
                                                  _super-id212786_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp217689
                                                     (let ((__tmp217690
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id212756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp217690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp217689
                                                 _super-id212786_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp212763_ _rest212785_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest212766212774_))
                                      (let ((_hd212771212791_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest212766212774_)))
                                            (_tl212772212793_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest212766212774_))))
                                        (let* ((_super-id212796_
                                                _hd212771212791_)
                                               (_rest212798_ _tl212772212793_))
                                          (declare (not safe))
                                          (_K212770212788_
                                           _rest212798_
                                           _super-id212796_)))
                                      '#!void)))
                              (if _struct?212760_
                                  (let* ((_super212799212809_ _super212757_)
                                         (_else212802212817_
                                          (lambda ()
                                            (let ((__tmp217693
                                                   (let ((__tmp217694
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _id212756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '!class
                                                           __tmp217694))))
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"bad class; struct can only extend a single struct"
                                               __tmp217693
                                               _super212757_)))))
                                    (let ((_K212807212839_ (lambda () '#!void))
                                          (_K212804212825_
                                           (lambda (_super-id212821_)
                                             (let ((_klass212823_
                                                    (let ((__tmp217695
                                                           (let ((__tmp217696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id212756_ '()))))
                     (declare (not safe))
                     (cons '!class __tmp217696))))
              (declare (not safe))
              (gxc#optimizer-resolve-class __tmp217695 _super-id212821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-ref
                                                    _klass212823_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   '#!void
                                                   (let ((__tmp217697
                                                          (let ((__tmp217698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id212756_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp217698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"bad class; struct extending non struct"
                                                      __tmp217697
                                                      _super-id212821_)))))))
                                      (let ((_try-match212801212835_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _super212799212809_))
                                                   (let ((_tl212806212830_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _super212799212809_)))
                                                         (_hd212805212828_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _super212799212809_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##null? _tl212806212830_))
                                                         (let ((_super-id212833_
                                                                _hd212805212828_))
                                                           (declare (not safe))
                                                           (_K212804212825_
                                                            _super-id212833_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (_else212802212817_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_else212802212817_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _super212799212809_))
                                            '#!void
                                            (let ()
                                              (declare (not safe))
                                              (_try-match212801212835_))))))
                                  '#!void)
                              (let* ((_ctor-method212890_
                                      (let ((_$e212842_ _ctor-method212759_))
                                        (if _$e212842_
                                            _$e212842_
                                            (let _lp212845_ ((_rest212847_
                                                              _super212757_)
                                                             (_method212848_
                                                              '#f))
                                              (let* ((_rest212849212857_
                                                      _rest212847_)
                                                     (_else212851212865_
                                                      (lambda ()
                                                        _method212848_))
                                                     (_K212853212878_
                                                      (lambda (_rest212868_
                                                               _super-id212869_)
                                                        (let* ((_klass212871_
                                                                (let ((__tmp217699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp217700
                                      (let ()
                                        (declare (not safe))
                                        (cons _id212756_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp217700))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp217699
                           _super-id212869_)))
                       (_$e212873_
                        (##structure-ref _klass212871_ '6 gxc#!class::t '#f)))
                  (if _$e212873_
                      ((lambda (_ctor-method212876_)
                         (if _method212848_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method212876_ _method212848_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp212845_
                                    _rest212868_
                                    _ctor-method212876_))
                                 (let ((__tmp217701
                                        (let ((__tmp217702
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id212756_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp217702))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp217701
                                    _method212848_
                                    _ctor-method212876_)))
                             (let ()
                               (declare (not safe))
                               (_lp212845_ _rest212868_ _ctor-method212876_))))
                       _$e212873_)
                      (let ()
                        (declare (not safe))
                        (_lp212845_ _rest212868_ _method212848_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest212849212857_))
                                                    (let ((_hd212854212881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest212849212857_)))
                                                          (_tl212855212883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest212849212857_))))
                                                      (let* ((_super-id212886_
                                                              _hd212854212881_)
                                                             (_rest212888_
                                                              _tl212855212883_))
                                                        (declare (not safe))
                                                        (_K212853212878_
                                                         _rest212888_
                                                         _super-id212886_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else212851212865_))))))))
                                     (_precedence-list212894_
                                      (let ((__tmp217703
                                             (lambda (_klass-id212892_)
                                               (let ((__tmp217704
                                                      (##structure-ref
                                                       (let ((__tmp217705
                                                              (let ((__tmp217706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id212756_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp217706))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp217705 _klass-id212892_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id212892_
                                                       __tmp217704)))))
                                        (declare (not safe))
                                        (c3-linearize__%
                                         '()
                                         _super212757_
                                         __tmp217703
                                         eq?
                                         identity)))
                                     (_fields212900_
                                      (let* ((_base-struct212898_
                                              (let ((__tmp217707
                                                     (lambda (_klass-id212896_)
                                                       (##structure-ref
                                                        (let ((__tmp217708
                                                               (let ((__tmp217709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _id212756_ '()))))
                         (declare (not safe))
                         (cons '!class __tmp217709))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class __tmp217708 _klass-id212896_))
                '7
                gxc#!class::t
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (find __tmp217707
                                                      _precedence-list212894_)))
                                             (__tmp217710
                                              (let ((__tmp217711
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _id212756_ '()))))
                                                (declare (not safe))
                                                (cons '!class __tmp217711))))
                                        (declare (not safe))
                                        (gxc#compute-class-fields
                                         __tmp217710
                                         _base-struct212898_
                                         _precedence-list212894_
                                         _slots212758_))))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212755_
                                   _id212756_
                                   __id217558
                                   __t217553
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212755_
                                   _super212757_
                                   __super217557
                                   __t217553
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212755_
                                   _precedence-list212894_
                                   __precedence-list217554
                                   __t217553
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212755_
                                   _slots212758_
                                   __slots217559
                                   __t217553
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212755_
                                   _fields212900_
                                   __fields217556
                                   __t217553
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212755_
                                   _ctor-method212890_
                                   __constructor217560
                                   __t217553
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212755_
                                   _struct?212760_
                                   __struct?217562
                                   __t217553
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212755_
                                   _final?212761_
                                   __final?217555
                                   __t217553
                                   '#f))))
                            _g217688_))
                    ((let () (declare (not safe)) (##fx= _g217687_ 10))
                     (apply (lambda (_self212903_
                                     _id212904_
                                     _super212905_
                                     _precedence-list212906_
                                     _slots212907_
                                     _fields212908_
                                     _constructor212909_
                                     _struct?212910_
                                     _final?212911_
                                     _methods212912_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212903_
                                 _id212904_
                                 __id217558
                                 __t217553
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212903_
                                 _super212905_
                                 __super217557
                                 __t217553
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212903_
                                 _precedence-list212906_
                                 __precedence-list217554
                                 __t217553
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212903_
                                 _slots212907_
                                 __slots217559
                                 __t217553
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212903_
                                 _fields212908_
                                 __fields217556
                                 __t217553
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212903_
                                 _constructor212909_
                                 __constructor217560
                                 __t217553
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212903_
                                 _struct?212910_
                                 __struct?217562
                                 __t217553
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self212903_
                                 _final?212911_
                                 __final?217555
                                 __t217553
                                 '#f))
                              (if _methods212912_
                                  (let ((__tmp217712
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods212912_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self212903_
                                     __tmp217712
                                     __methods217561
                                     __t217553
                                     '#f))
                                  '#!void))
                            _g217688_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g217688_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where212607_
               _base-struct212608_
               _precedence-list212609_
               _direct-slots212610_)
        (let* ((_base-fields212612_
                (if _base-struct212608_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where212607_
                        _base-struct212608_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields212614_ (reverse _base-fields212612_))
               (_seen-slots212622_
                (let ((_tab212616_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g212617212619_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab212616_ _g212617212619_ '#t)))
                   _base-fields212612_)
                  _tab212616_))
               (_process-slot212626_
                (lambda (_slot212624_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots212622_ _slot212624_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots212622_ _slot212624_ '#t))
                        (set! _r-fields212614_
                              (let ()
                                (declare (not safe))
                                (cons _slot212624_ _r-fields212614_))))))))
          (for-each
           (lambda (_mixin212629_)
             (let ((_klass212631_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where212607_
                       _mixin212629_))))
               (if (##structure-ref _klass212631_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot212626_
                    (##structure-ref _klass212631_ '5 gxc#!class::t '#f)))))
           _precedence-list212609_)
          (for-each _process-slot212626_ _direct-slots212610_)
          (reverse _r-fields212614_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass212566_ _slot212567_)
        (let _lp212569_ ((_rest212571_
                          (##structure-ref _klass212566_ '5 gxc#!class::t '#f))
                         (_offset212572_ '1))
          (let* ((_rest212573212581_ _rest212571_)
                 (_else212575212589_
                  (lambda ()
                    (let ((__tmp217714
                           (##structure-ref _klass212566_ '1 gxc#!type::t '#f))
                          (__tmp217713
                           (##structure-ref
                            _klass212566_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp217714
                       __tmp217713
                       _slot212567_))))
                 (_K212577212595_
                  (lambda (_rest212592_ _s212593_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s212593_ _slot212567_))
                        _offset212572_
                        (let ((__tmp217715
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset212572_ '1))))
                          (declare (not safe))
                          (_lp212569_ _rest212592_ __tmp217715))))))
            (if (let () (declare (not safe)) (##pair? _rest212573212581_))
                (let ((_hd212578212598_
                       (let ()
                         (declare (not safe))
                         (##car _rest212573212581_)))
                      (_tl212579212600_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest212573212581_))))
                  (let* ((_s212603_ _hd212578212598_)
                         (_rest212605_ _tl212579212600_))
                    (declare (not safe))
                    (_K212577212595_ _rest212605_ _s212603_)))
                (let () (declare (not safe)) (_else212575212589_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass212524_ _slot212525_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass212524_ _slot212525_))
            _klass212524_
            (let _lp212527_ ((_rest212529_
                              (##structure-ref
                               _klass212524_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest212530212538_ _rest212529_)
                     (_else212532212546_ (lambda () '#f))
                     (_K212534212554_
                      (lambda (_rest212549_ _super212550_)
                        (let ((_super-class212552_
                               (let ((__tmp217716
                                      (let ((__tmp217717
                                             (let ((__tmp217719
                                                    (##structure-ref
                                                     _klass212524_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp217718
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot212525_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp217719
                                                     __tmp217718))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp217717))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp217716
                                  _super212550_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class212552_
                                 _slot212525_))
                              _super-class212552_
                              (let ()
                                (declare (not safe))
                                (_lp212527_ _rest212549_)))))))
                (if (let () (declare (not safe)) (##pair? _rest212530212538_))
                    (let ((_hd212535212557_
                           (let ()
                             (declare (not safe))
                             (##car _rest212530212538_)))
                          (_tl212536212559_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest212530212538_))))
                      (let* ((_super212562_ _hd212535212557_)
                             (_rest212564_ _tl212536212559_))
                        (declare (not safe))
                        (_K212534212554_ _rest212564_ _super212562_)))
                    (let () (declare (not safe)) (_else212532212546_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass212521_ _slot212522_)
        (if (##structure-ref _klass212521_ '7 gxc#!class::t '#f)
            (memq _slot212522_
                  (##structure-ref _klass212521_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self212518_ _id212519_)
        (##structure-set! _self212518_ _id212519_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t217572)
        (let ((__id217573
               (let ((__tmp217574
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217572 'id))))
                 (if __tmp217574 __tmp217574 (error '"Unknown slot" 'id)))))
          (lambda (_self212518_ _id212519_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212518_
               _id212519_
               __id217573
               __t217572
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
      (lambda (_self212393_ _id212394_)
        (##structure-set! _self212393_ _id212394_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t217575)
        (let ((__id217576
               (let ((__tmp217577
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217575 'id))))
                 (if __tmp217577 __tmp217577 (error '"Unknown slot" 'id)))))
          (lambda (_self212393_ _id212394_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212393_
               _id212394_
               __id217576
               __t217575
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
      (lambda (_self212266_ _id212267_ _slot212268_ _checked?212269_)
        (##structure-set! _self212266_ _id212267_ '1 gxc#!type::t '#f)
        (##structure-set! _self212266_ _slot212268_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self212266_
         _checked?212269_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t217578)
        (let ((__slot217579
               (let ((__tmp217582
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217578 'slot))))
                 (if __tmp217582 __tmp217582 (error '"Unknown slot" 'slot))))
              (__id217580
               (let ((__tmp217583
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217578 'id))))
                 (if __tmp217583 __tmp217583 (error '"Unknown slot" 'id))))
              (__checked?217581
               (let ((__tmp217584
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217578 'checked?))))
                 (if __tmp217584
                     __tmp217584
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self212266_ _id212267_ _slot212268_ _checked?212269_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212266_
               _id212267_
               __id217580
               __t217578
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212266_
               _slot212268_
               __slot217579
               __t217578
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212266_
               _checked?212269_
               __checked?217581
               __t217578
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
      (lambda (_self212139_ _id212140_ _slot212141_ _checked?212142_)
        (##structure-set! _self212139_ _id212140_ '1 gxc#!type::t '#f)
        (##structure-set! _self212139_ _slot212141_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self212139_
         _checked?212142_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t217585)
        (let ((__slot217586
               (let ((__tmp217589
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217585 'slot))))
                 (if __tmp217589 __tmp217589 (error '"Unknown slot" 'slot))))
              (__id217587
               (let ((__tmp217590
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217585 'id))))
                 (if __tmp217590 __tmp217590 (error '"Unknown slot" 'id))))
              (__checked?217588
               (let ((__tmp217591
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t217585 'checked?))))
                 (if __tmp217591
                     __tmp217591
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self212139_ _id212140_ _slot212141_ _checked?212142_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212139_
               _id212140_
               __id217587
               __t217585
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212139_
               _slot212141_
               __slot217586
               __t217585
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self212139_
               _checked?212142_
               __checked?217588
               __t217585
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
      (lambda (_self211983_
               _id211984_
               _arity211985_
               _dispatch211986_
               _inline211987_
               _typedecl211988_)
        (if (let ((__tmp217725
                   (let ()
                     (declare (not safe))
                     (##structure-length _self211983_))))
              (declare (not safe))
              (##fx< '5 __tmp217725))
            (begin
              (let ((__tmp217720
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211983_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211983_
                 _id211984_
                 '1
                 __tmp217720
                 '#f))
              (let ((__tmp217721
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211983_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211983_
                 _arity211985_
                 '2
                 __tmp217721
                 '#f))
              (let ((__tmp217722
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211983_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211983_
                 _dispatch211986_
                 '3
                 __tmp217722
                 '#f))
              (let ((__tmp217723
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211983_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211983_
                 _inline211987_
                 '4
                 __tmp217723
                 '#f))
              (let ((__tmp217724
                     (let ()
                       (declare (not safe))
                       (##structure-type _self211983_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self211983_
                 _typedecl211988_
                 '5
                 __tmp217724
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self211983_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self211983_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self211993_ _id211994_ _arity211995_ _dispatch211996_)
        (let* ((_inline211998_ '#f) (_typedecl212000_ '#f))
          (if (let ((__tmp217731
                     (let ()
                       (declare (not safe))
                       (##structure-length _self211993_))))
                (declare (not safe))
                (##fx< '5 __tmp217731))
              (begin
                (let ((__tmp217726
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211993_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211993_
                   _id211994_
                   '1
                   __tmp217726
                   '#f))
                (let ((__tmp217727
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211993_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211993_
                   _arity211995_
                   '2
                   __tmp217727
                   '#f))
                (let ((__tmp217728
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211993_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211993_
                   _dispatch211996_
                   '3
                   __tmp217728
                   '#f))
                (let ((__tmp217729
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211993_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211993_
                   _inline211998_
                   '4
                   __tmp217729
                   '#f))
                (let ((__tmp217730
                       (let ()
                         (declare (not safe))
                         (##structure-type _self211993_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self211993_
                   _typedecl212000_
                   '5
                   __tmp217730
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self211993_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self211993_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self212002_
               _id212003_
               _arity212004_
               _dispatch212005_
               _inline212006_)
        (let ((_typedecl212008_ '#f))
          (if (let ((__tmp217737
                     (let ()
                       (declare (not safe))
                       (##structure-length _self212002_))))
                (declare (not safe))
                (##fx< '5 __tmp217737))
              (begin
                (let ((__tmp217732
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212002_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212002_
                   _id212003_
                   '1
                   __tmp217732
                   '#f))
                (let ((__tmp217733
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212002_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212002_
                   _arity212004_
                   '2
                   __tmp217733
                   '#f))
                (let ((__tmp217734
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212002_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212002_
                   _dispatch212005_
                   '3
                   __tmp217734
                   '#f))
                (let ((__tmp217735
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212002_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212002_
                   _inline212006_
                   '4
                   __tmp217735
                   '#f))
                (let ((__tmp217736
                       (let ()
                         (declare (not safe))
                         (##structure-type _self212002_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self212002_
                   _typedecl212008_
                   '5
                   __tmp217736
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self212002_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self212002_)))))))
    (define gxc#!lambda:::init!
      (lambda _g217739_
        (let ((_g217738_ (let () (declare (not safe)) (##length _g217739_))))
          (cond ((let () (declare (not safe)) (##fx= _g217738_ 4))
                 (apply (lambda (_self211993_
                                 _id211994_
                                 _arity211995_
                                 _dispatch211996_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self211993_
                             _id211994_
                             _arity211995_
                             _dispatch211996_)))
                        _g217739_))
                ((let () (declare (not safe)) (##fx= _g217738_ 5))
                 (apply (lambda (_self212002_
                                 _id212003_
                                 _arity212004_
                                 _dispatch212005_
                                 _inline212006_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self212002_
                             _id212003_
                             _arity212004_
                             _dispatch212005_
                             _inline212006_)))
                        _g217739_))
                ((let () (declare (not safe)) (##fx= _g217738_ 6))
                 (apply (lambda (_self212010_
                                 _id212011_
                                 _arity212012_
                                 _dispatch212013_
                                 _inline212014_
                                 _typedecl212015_)
                          (if (let ((__tmp217745
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self212010_))))
                                (declare (not safe))
                                (##fx< '5 __tmp217745))
                              (begin
                                (let ((__tmp217740
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212010_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212010_
                                   _id212011_
                                   '1
                                   __tmp217740
                                   '#f))
                                (let ((__tmp217741
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212010_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212010_
                                   _arity212012_
                                   '2
                                   __tmp217741
                                   '#f))
                                (let ((__tmp217742
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212010_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212010_
                                   _dispatch212013_
                                   '3
                                   __tmp217742
                                   '#f))
                                (let ((__tmp217743
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212010_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212010_
                                   _inline212014_
                                   '4
                                   __tmp217743
                                   '#f))
                                (let ((__tmp217744
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self212010_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self212010_
                                   _typedecl212015_
                                   '5
                                   __tmp217744
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self212010_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self212010_)))))
                        _g217739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g217739_))))))
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
      (lambda (_self211735_ . _args211736_)
        (apply struct-instance-init! _self211735_ _args211736_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type211610_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211610_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type211610_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass211603_)
        (let ((_$e211605_
               (##structure-ref _klass211603_ '9 gxc#!class::t '#f)))
          (if _$e211605_
              _$e211605_
              (let ((_tab211608_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass211603_
                 _tab211608_
                 '9
                 gxc#!class::t
                 '#f)
                _tab211608_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass211594_ _method211595_)
        (let ((_tab211596211598_
               (##structure-ref _klass211594_ '9 gxc#!class::t '#f)))
          (if _tab211596211598_
              (let ((_tab211601_ _tab211596211598_))
                (declare (not safe))
                (table-ref _tab211601_ _method211595_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type211591_ _method211592_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211591_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type211591_ _method211592_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym211575_ _type211576_ _local?211577_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type211576_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym211575_
                   _type211576_))
        (let ((__tmp217746
               (let () (declare (not safe)) (struct->list _type211576_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym211575_ '" " __tmp217746))
        (let ((__tmp217747
               (if _local?211577_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp217747 _sym211575_ _type211576_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym211582_ _type211583_)
        (let ((_local?211585_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym211582_
           _type211583_
           _local?211585_))))
    (define gxc#optimizer-declare-type!
      (lambda _g217749_
        (let ((_g217748_ (let () (declare (not safe)) (##length _g217749_))))
          (cond ((let () (declare (not safe)) (##fx= _g217748_ 2))
                 (apply (lambda (_sym211582_ _type211583_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym211582_
                             _type211583_)))
                        _g217749_))
                ((let () (declare (not safe)) (##fx= _g217748_ 3))
                 (apply (lambda (_sym211587_ _type211588_ _local?211589_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym211587_
                             _type211588_
                             _local?211589_)))
                        _g217749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g217749_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym211561_ _local?211562_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym211561_))
        (let ((__tmp217750
               (if _local?211562_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp217750 _sym211561_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym211567_)
        (let ((_local?211569_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym211567_ _local?211569_))))
    (define gxc#optimizer-clear-type!
      (lambda _g217752_
        (let ((_g217751_ (let () (declare (not safe)) (##length _g217752_))))
          (cond ((let () (declare (not safe)) (##fx= _g217751_ 1))
                 (apply (lambda (_sym211567_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym211567_)))
                        _g217752_))
                ((let () (declare (not safe)) (##fx= _g217751_ 2))
                 (apply (lambda (_sym211571_ _local?211572_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym211571_
                             _local?211572_)))
                        _g217752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g217752_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t211534_ _method211535_ _sym211536_ _rebind?211537_)
        (let* ((_type211539_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t211534_)))
               (_$e211541_
                (let () (declare (not safe)) (gxc#!type-vtab _type211539_))))
          (if _$e211541_
              ((lambda (_vtab211544_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab211544_ _method211535_))
                     (if _rebind?211537_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t211534_
                              '" "
                              _method211535_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab211544_
                              _method211535_
                              _sym211536_)))
                         (let ((__tmp217757
                                (let ((__tmp217758
                                       (let ((__tmp217759
                                              (let ((__tmp217760
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym211536_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method211535_
                                                      __tmp217760))))
                                         (declare (not safe))
                                         (cons _type-t211534_ __tmp217759))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp217758))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp217757
                            _method211535_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t211534_
                          '" "
                          _method211535_
                          '" => "
                          _sym211536_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab211544_
                          _method211535_
                          _sym211536_)))))
               _$e211541_)
              (if (let () (declare (not safe)) (not _type211539_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t211534_))
                  (let ((__tmp217753
                         (let ((__tmp217754
                                (let ((__tmp217755
                                       (let ((__tmp217756
                                              (let ()
                                                (declare (not safe))
                                                (cons _method211535_ '()))))
                                         (declare (not safe))
                                         (cons _sym211536_ __tmp217756))))
                                  (declare (not safe))
                                  (cons _type-t211534_ __tmp217755))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp217754))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp217753
                     _type211539_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t211549_ _method211550_ _sym211551_)
        (let ((_rebind?211553_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t211549_
           _method211550_
           _sym211551_
           _rebind?211553_))))
    (define gxc#optimizer-declare-method!
      (lambda _g217762_
        (let ((_g217761_ (let () (declare (not safe)) (##length _g217762_))))
          (cond ((let () (declare (not safe)) (##fx= _g217761_ 3))
                 (apply (lambda (_type-t211549_ _method211550_ _sym211551_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t211549_
                             _method211550_
                             _sym211551_)))
                        _g217762_))
                ((let () (declare (not safe)) (##fx= _g217761_ 4))
                 (apply (lambda (_type-t211555_
                                 _method211556_
                                 _sym211557_
                                 _rebind?211558_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t211555_
                             _method211556_
                             _sym211557_
                             _rebind?211558_)))
                        _g217762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g217762_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym211522_)
        (let ((_$e211530_
               (let ((_ht211523211525_ (gxc#current-compile-local-type)))
                 (if _ht211523211525_
                     (let ((_ht211528_ _ht211523211525_))
                       (declare (not safe))
                       (table-ref _ht211528_ _sym211522_ '#f))
                     '#f))))
          (if _$e211530_
              _$e211530_
              (let ((__tmp217763
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp217763 _sym211522_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym211514_)
        (let ((_type211515211517_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym211514_))))
          (if _type211515211517_
              (let ((_type211520_ _type211515211517_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type211520_ 'gxc#!alias::t))
                    (let ((__tmp217764
                           (##structure-ref _type211520_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp217764))
                    _type211520_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where211506_ _klass-id211507_)
        (let ((_$e211509_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id211507_))))
          (if _$e211509_
              ((lambda (_klass211512_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass211512_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where211506_
                        _klass-id211507_
                        _klass211512_)))
                 _klass211512_)
               _$e211509_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where211506_
                 _klass-id211507_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t211503_ _method211504_)
        (let ((__tmp217765
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t211503_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp217765 _method211504_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym211501_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym211501_))
        (let ((__tmp217766
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp217766 _sym211501_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym211499_)
        (let ((__tmp217767
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp217767 _sym211499_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx211497_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx211497_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx211497_))
            (let () (declare (not safe)) (gx#stx-e _stx211497_)))))))
