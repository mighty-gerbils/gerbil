(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708334577)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp228601 (list))
            (__tmp228599
             (let ((__tmp228600
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228600 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp228601
         '(type ssxi methods)
         __tmp228599
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args224473_
        (apply make-instance gxc#optimizer-info::t _$args224473_)))
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
      (lambda (_self224471_)
        (if (let ((__tmp228608
                   (let ()
                     (declare (not safe))
                     (##structure-length _self224471_))))
              (declare (not safe))
              (##fx< '3 __tmp228608))
            (begin
              (let ((__tmp228603
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp228602
                     (let ()
                       (declare (not safe))
                       (##structure-type _self224471_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self224471_
                 __tmp228603
                 '1
                 __tmp228602
                 '#f))
              (let ((__tmp228605
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp228604
                     (let ()
                       (declare (not safe))
                       (##structure-type _self224471_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self224471_
                 __tmp228605
                 '2
                 __tmp228604
                 '#f))
              (let ((__tmp228607
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp228606
                     (let ()
                       (declare (not safe))
                       (##structure-type _self224471_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self224471_
                 __tmp228607
                 '3
                 __tmp228606
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self224471_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self224471_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp228611 (list))
            (__tmp228609
             (let ((__tmp228610
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228610 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp228611
         '(id)
         __tmp228609
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args224346_ (apply make-instance gxc#!type::t _$args224346_)))
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
      (let ((__tmp228614 (list gxc#!type::t))
            (__tmp228612
             (let ((__tmp228613
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228613 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp228614
         '()
         __tmp228612
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args224343_ (apply make-instance gxc#!alias::t _$args224343_)))
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
      (let ((__tmp228617 (list gxc#!type::t))
            (__tmp228615
             (let ((__tmp228616
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228616 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp228617
         '()
         __tmp228615
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args224340_
        (apply make-instance gxc#!procedure::t _$args224340_)))
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
      (let ((__tmp228620 (list gxc#!type::t))
            (__tmp228618
             (let ((__tmp228619
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228619 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp228620
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp228618
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args224337_ (apply make-instance gxc#!class::t _$args224337_)))
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
      (let ((__tmp228623 (list gxc#!procedure::t))
            (__tmp228621
             (let ((__tmp228622
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228622 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp228623
         '()
         __tmp228621
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args224334_
        (apply make-instance gxc#!predicate::t _$args224334_)))
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
      (let ((__tmp228626 (list gxc#!procedure::t))
            (__tmp228624
             (let ((__tmp228625
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228625 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp228626
         '()
         __tmp228624
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args224331_
        (apply make-instance gxc#!constructor::t _$args224331_)))
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
      (let ((__tmp228629 (list gxc#!procedure::t))
            (__tmp228627
             (let ((__tmp228628
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228628 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp228629
         '(slot checked?)
         __tmp228627
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args224328_
        (apply make-instance gxc#!accessor::t _$args224328_)))
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
      (let ((__tmp228632 (list gxc#!procedure::t))
            (__tmp228630
             (let ((__tmp228631
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228631 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp228632
         '(slot checked?)
         __tmp228630
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args224325_
        (apply make-instance gxc#!mutator::t _$args224325_)))
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
      (let ((__tmp228635 (list gxc#!procedure::t))
            (__tmp228633
             (let ((__tmp228634
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228634 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp228635
         '(arity dispatch inline inline-typedecl)
         __tmp228633
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args224322_
        (apply make-instance gxc#!lambda::t _$args224322_)))
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
      (let ((__tmp228638 (list gxc#!procedure::t))
            (__tmp228636
             (let ((__tmp228637
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228637 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp228638
         '(clauses)
         __tmp228636
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args224319_
        (apply make-instance gxc#!case-lambda::t _$args224319_)))
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
      (let ((__tmp228641 (list gxc#!procedure::t))
            (__tmp228639
             (let ((__tmp228640
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228640 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp228641
         '(table dispatch)
         __tmp228639
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args224316_
        (apply make-instance gxc#!kw-lambda::t _$args224316_)))
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
      (let ((__tmp228644 (list gxc#!procedure::t))
            (__tmp228642
             (let ((__tmp228643
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp228643 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp228644
         '(keys main)
         __tmp228642
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args224313_
        (apply make-instance gxc#!kw-lambda-primary::t _$args224313_)))
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
      (let ((__tmp228645 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp228645
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args224310_
        (apply make-instance gxc#!primitive::t _$args224310_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp228646 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp228646
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args224307_
        (apply make-instance gxc#!primitive-lambda::t _$args224307_)))
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
      (let ((__tmp228647 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp228647
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args224304_
        (apply make-instance gxc#!primitive-case-lambda::t _$args224304_)))
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
      (lambda (_self224186_
               _id224187_
               _super224188_
               _slots224189_
               _ctor-method224190_
               _struct?224191_
               _final?224192_
               _metaclass224193_)
        (let _lp224195_ ((_rest224197_ _super224188_))
          (let* ((_rest224198224206_ _rest224197_)
                 (_else224200224214_ (lambda () '#!void))
                 (_K224202224220_
                  (lambda (_rest224217_ _super-id224218_)
                    (if (##structure-ref
                         (let ((__tmp228650
                                (let ((__tmp228651
                                       (let ()
                                         (declare (not safe))
                                         (cons _id224187_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp228651))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp228650
                            _super-id224218_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp228648
                               (let ((__tmp228649
                                      (let ()
                                        (declare (not safe))
                                        (cons _id224187_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp228649))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp228648
                           _super-id224218_))
                        '#!void)
                    (let () (declare (not safe)) (_lp224195_ _rest224217_)))))
            (if (let () (declare (not safe)) (##pair? _rest224198224206_))
                (let ((_hd224203224223_
                       (let ()
                         (declare (not safe))
                         (##car _rest224198224206_)))
                      (_tl224204224225_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest224198224206_))))
                  (let* ((_super-id224228_ _hd224203224223_)
                         (_rest224230_ _tl224204224225_))
                    (declare (not safe))
                    (_K224202224220_ _rest224230_ _super-id224228_)))
                '#!void)))
        (let* ((_ctor-method224280_
                (let ((_$e224232_ _ctor-method224190_))
                  (if _$e224232_
                      _$e224232_
                      (let _lp224235_ ((_rest224237_ _super224188_)
                                       (_method224238_ '#f))
                        (let* ((_rest224239224247_ _rest224237_)
                               (_else224241224255_ (lambda () _method224238_))
                               (_K224243224268_
                                (lambda (_rest224258_ _super-id224259_)
                                  (let* ((_klass224261_
                                          (let ((__tmp228652
                                                 (let ((__tmp228653
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id224187_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp228653))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp228652
                                             _super-id224259_)))
                                         (_$e224263_
                                          (##structure-ref
                                           _klass224261_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e224263_
                                        ((lambda (_ctor-method224266_)
                                           (if _method224238_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method224266_
                                                          _method224238_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp224235_
                                                      _rest224258_
                                                      _ctor-method224266_))
                                                   (let ((__tmp228654
                                                          (let ((__tmp228655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id224187_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp228655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp228654
                                                      _method224238_
                                                      _ctor-method224266_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp224235_
                                                  _rest224258_
                                                  _ctor-method224266_))))
                                         _$e224263_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp224235_
                                           _rest224258_
                                           _method224238_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest224239224247_))
                              (let ((_hd224244224271_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest224239224247_)))
                                    (_tl224245224273_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest224239224247_))))
                                (let* ((_super-id224276_ _hd224244224271_)
                                       (_rest224278_ _tl224245224273_))
                                  (declare (not safe))
                                  (_K224243224268_
                                   _rest224278_
                                   _super-id224276_)))
                              (let ()
                                (declare (not safe))
                                (_else224241224255_))))))))
               (_g228656_
                (let ((__tmp228661
                       (lambda (_klass-id224282_)
                         (let ((__tmp228662
                                (##structure-ref
                                 (let ((__tmp228663
                                        (let ((__tmp228664
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id224187_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp228664))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp228663
                                    _klass-id224282_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id224282_ __tmp228662))))
                      (__tmp228658
                       (lambda (_klass-id224284_)
                         (##structure-ref
                          (let ((__tmp228659
                                 (let ((__tmp228660
                                        (let ()
                                          (declare (not safe))
                                          (cons _id224187_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp228660))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp228659
                             _klass-id224284_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super224188_
                   'get-precedence-list:
                   __tmp228661
                   'struct:
                   __tmp228658
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g228657_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g228656_)
                         (##vector-length _g228656_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g228657_ 2)))
                  (error "Context expects 2 values" _g228657_)))
            (let ((_precedence-list224286_
                   (let () (declare (not safe)) (##vector-ref _g228656_ 0)))
                  (_base-struct224287_
                   (let () (declare (not safe)) (##vector-ref _g228656_ 1))))
              (let ((_fields224289_
                     (let ((__tmp228665
                            (let ((__tmp228666
                                   (let ()
                                     (declare (not safe))
                                     (cons _id224187_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp228666))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp228665
                        _base-struct224287_
                        _precedence-list224286_
                        _slots224189_))))
                (##structure-set! _self224186_ _id224187_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self224186_
                 _super224188_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self224186_
                 _precedence-list224286_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self224186_
                 _slots224189_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self224186_
                 _fields224289_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self224186_
                 _ctor-method224280_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self224186_
                 _struct?224191_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self224186_
                 _final?224192_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self224186_
                 _metaclass224193_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self224292_
               _id224293_
               _super224294_
               _precedence-list224295_
               _slots224296_
               _fields224297_
               _constructor224298_
               _struct?224299_
               _final?224300_
               _metaclass224301_
               _methods224302_)
        (##structure-set! _self224292_ _id224293_ '1 gxc#!type::t '#f)
        (##structure-set! _self224292_ _super224294_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self224292_
         _precedence-list224295_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self224292_ _slots224296_ '4 gxc#!class::t '#f)
        (##structure-set! _self224292_ _fields224297_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self224292_
         _constructor224298_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self224292_ _struct?224299_ '7 gxc#!class::t '#f)
        (##structure-set! _self224292_ _final?224300_ '8 gxc#!class::t '#f)
        (##structure-set! _self224292_ _metaclass224301_ '9 gxc#!class::t '#f)
        (if _methods224302_
            (##structure-set!
             _self224292_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods224302_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g228668_
        (let ((_g228667_ (let () (declare (not safe)) (##length _g228668_))))
          (cond ((let () (declare (not safe)) (##fx= _g228667_ 8))
                 (apply (lambda (_self224186_
                                 _id224187_
                                 _super224188_
                                 _slots224189_
                                 _ctor-method224190_
                                 _struct?224191_
                                 _final?224192_
                                 _metaclass224193_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self224186_
                             _id224187_
                             _super224188_
                             _slots224189_
                             _ctor-method224190_
                             _struct?224191_
                             _final?224192_
                             _metaclass224193_)))
                        _g228668_))
                ((let () (declare (not safe)) (##fx= _g228667_ 11))
                 (apply (lambda (_self224292_
                                 _id224293_
                                 _super224294_
                                 _precedence-list224295_
                                 _slots224296_
                                 _fields224297_
                                 _constructor224298_
                                 _struct?224299_
                                 _final?224300_
                                 _metaclass224301_
                                 _methods224302_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self224292_
                             _id224293_
                             _super224294_
                             _precedence-list224295_
                             _slots224296_
                             _fields224297_
                             _constructor224298_
                             _struct?224299_
                             _final?224300_
                             _metaclass224301_
                             _methods224302_)))
                        _g228668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g228668_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t228542)
        (let ((__id228543
               (let ((__tmp228553
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228542 'id))))
                 (if __tmp228553 __tmp228553 (error '"Unknown slot" 'id))))
              (__slots228544
               (let ((__tmp228554
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228542 'slots))))
                 (if __tmp228554 __tmp228554 (error '"Unknown slot" 'slots))))
              (__precedence-list228545
               (let ((__tmp228555
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228542 'precedence-list))))
                 (if __tmp228555
                     __tmp228555
                     (error '"Unknown slot" 'precedence-list))))
              (__constructor228546
               (let ((__tmp228556
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228542 'constructor))))
                 (if __tmp228556
                     __tmp228556
                     (error '"Unknown slot" 'constructor))))
              (__struct?228547
               (let ((__tmp228557
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228542 'struct?))))
                 (if __tmp228557
                     __tmp228557
                     (error '"Unknown slot" 'struct?))))
              (__metaclass228548
               (let ((__tmp228558
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228542 'metaclass))))
                 (if __tmp228558
                     __tmp228558
                     (error '"Unknown slot" 'metaclass))))
              (__super228549
               (let ((__tmp228559
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228542 'super))))
                 (if __tmp228559 __tmp228559 (error '"Unknown slot" 'super))))
              (__final?228550
               (let ((__tmp228560
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228542 'final?))))
                 (if __tmp228560 __tmp228560 (error '"Unknown slot" 'final?))))
              (__methods228551
               (let ((__tmp228561
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228542 'methods))))
                 (if __tmp228561
                     __tmp228561
                     (error '"Unknown slot" 'methods))))
              (__fields228552
               (let ((__tmp228562
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228542 'fields))))
                 (if __tmp228562
                     __tmp228562
                     (error '"Unknown slot" 'fields)))))
          (lambda _g228670_
            (let ((_g228669_
                   (let () (declare (not safe)) (##length _g228670_))))
              (cond ((let () (declare (not safe)) (##fx= _g228669_ 8))
                     (apply (lambda (_self224186_
                                     _id224187_
                                     _super224188_
                                     _slots224189_
                                     _ctor-method224190_
                                     _struct?224191_
                                     _final?224192_
                                     _metaclass224193_)
                              (let _lp224195_ ((_rest224197_ _super224188_))
                                (let* ((_rest224198224206_ _rest224197_)
                                       (_else224200224214_ (lambda () '#!void))
                                       (_K224202224220_
                                        (lambda (_rest224217_ _super-id224218_)
                                          (if (##structure-ref
                                               (let ((__tmp228673
                                                      (let ((__tmp228674
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id224187_ '()))))
                (declare (not safe))
                (cons '!class __tmp228674))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp228673
                                                  _super-id224218_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp228671
                                                     (let ((__tmp228672
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id224187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp228672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp228671
                                                 _super-id224218_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp224195_ _rest224217_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest224198224206_))
                                      (let ((_hd224203224223_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest224198224206_)))
                                            (_tl224204224225_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest224198224206_))))
                                        (let* ((_super-id224228_
                                                _hd224203224223_)
                                               (_rest224230_ _tl224204224225_))
                                          (declare (not safe))
                                          (_K224202224220_
                                           _rest224230_
                                           _super-id224228_)))
                                      '#!void)))
                              (let* ((_ctor-method224280_
                                      (let ((_$e224232_ _ctor-method224190_))
                                        (if _$e224232_
                                            _$e224232_
                                            (let _lp224235_ ((_rest224237_
                                                              _super224188_)
                                                             (_method224238_
                                                              '#f))
                                              (let* ((_rest224239224247_
                                                      _rest224237_)
                                                     (_else224241224255_
                                                      (lambda ()
                                                        _method224238_))
                                                     (_K224243224268_
                                                      (lambda (_rest224258_
                                                               _super-id224259_)
                                                        (let* ((_klass224261_
                                                                (let ((__tmp228675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp228676
                                      (let ()
                                        (declare (not safe))
                                        (cons _id224187_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp228676))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp228675
                           _super-id224259_)))
                       (_$e224263_
                        (##structure-ref _klass224261_ '6 gxc#!class::t '#f)))
                  (if _$e224263_
                      ((lambda (_ctor-method224266_)
                         (if _method224238_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method224266_ _method224238_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp224235_
                                    _rest224258_
                                    _ctor-method224266_))
                                 (let ((__tmp228677
                                        (let ((__tmp228678
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id224187_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp228678))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp228677
                                    _method224238_
                                    _ctor-method224266_)))
                             (let ()
                               (declare (not safe))
                               (_lp224235_ _rest224258_ _ctor-method224266_))))
                       _$e224263_)
                      (let ()
                        (declare (not safe))
                        (_lp224235_ _rest224258_ _method224238_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest224239224247_))
                                                    (let ((_hd224244224271_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest224239224247_)))
                                                          (_tl224245224273_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest224239224247_))))
                                                      (let* ((_super-id224276_
                                                              _hd224244224271_)
                                                             (_rest224278_
                                                              _tl224245224273_))
                                                        (declare (not safe))
                                                        (_K224243224268_
                                                         _rest224278_
                                                         _super-id224276_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else224241224255_))))))))
                                     (_g228679_
                                      (let ((__tmp228684
                                             (lambda (_klass-id224282_)
                                               (let ((__tmp228685
                                                      (##structure-ref
                                                       (let ((__tmp228686
                                                              (let ((__tmp228687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id224187_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp228687))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp228686 _klass-id224282_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id224282_
                                                       __tmp228685))))
                                            (__tmp228681
                                             (lambda (_klass-id224284_)
                                               (##structure-ref
                                                (let ((__tmp228682
                                                       (let ((__tmp228683
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id224187_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp228683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp228682
                                                   _klass-id224284_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super224188_
                                         'get-precedence-list:
                                         __tmp228684
                                         'struct:
                                         __tmp228681
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g228680_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g228679_)
                                               (##vector-length _g228679_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g228680_ 2)))
                                        (error "Context expects 2 values"
                                               _g228680_)))
                                  (let ((_precedence-list224286_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228679_ 0)))
                                        (_base-struct224287_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g228679_ 1))))
                                    (let ((_fields224289_
                                           (let ((__tmp228688
                                                  (let ((__tmp228689
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id224187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp228689))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp228688
                                              _base-struct224287_
                                              _precedence-list224286_
                                              _slots224189_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224186_
                                         _id224187_
                                         __id228543
                                         __t228542
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224186_
                                         _super224188_
                                         __super228549
                                         __t228542
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224186_
                                         _precedence-list224286_
                                         __precedence-list228545
                                         __t228542
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224186_
                                         _slots224189_
                                         __slots228544
                                         __t228542
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224186_
                                         _fields224289_
                                         __fields228552
                                         __t228542
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224186_
                                         _ctor-method224280_
                                         __constructor228546
                                         __t228542
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224186_
                                         _struct?224191_
                                         __struct?228547
                                         __t228542
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224186_
                                         _final?224192_
                                         __final?228550
                                         __t228542
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self224186_
                                         _metaclass224193_
                                         __metaclass228548
                                         __t228542
                                         '#f)))))))
                            _g228670_))
                    ((let () (declare (not safe)) (##fx= _g228669_ 11))
                     (apply (lambda (_self224292_
                                     _id224293_
                                     _super224294_
                                     _precedence-list224295_
                                     _slots224296_
                                     _fields224297_
                                     _constructor224298_
                                     _struct?224299_
                                     _final?224300_
                                     _metaclass224301_
                                     _methods224302_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224292_
                                 _id224293_
                                 __id228543
                                 __t228542
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224292_
                                 _super224294_
                                 __super228549
                                 __t228542
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224292_
                                 _precedence-list224295_
                                 __precedence-list228545
                                 __t228542
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224292_
                                 _slots224296_
                                 __slots228544
                                 __t228542
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224292_
                                 _fields224297_
                                 __fields228552
                                 __t228542
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224292_
                                 _constructor224298_
                                 __constructor228546
                                 __t228542
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224292_
                                 _struct?224299_
                                 __struct?228547
                                 __t228542
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224292_
                                 _final?224300_
                                 __final?228550
                                 __t228542
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self224292_
                                 _metaclass224301_
                                 __metaclass228548
                                 __t228542
                                 '#f))
                              (if _methods224302_
                                  (let ((__tmp228690
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods224302_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self224292_
                                     __tmp228690
                                     __methods228551
                                     __t228542
                                     '#f))
                                  '#!void))
                            _g228670_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g228670_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where224038_
               _base-struct224039_
               _precedence-list224040_
               _direct-slots224041_)
        (let* ((_base-fields224043_
                (if _base-struct224039_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where224038_
                        _base-struct224039_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields224045_ (reverse _base-fields224043_))
               (_seen-slots224053_
                (let ((_tab224047_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g224048224050_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab224047_ _g224048224050_ '#t)))
                   _base-fields224043_)
                  _tab224047_))
               (_process-slot224057_
                (lambda (_slot224055_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots224053_ _slot224055_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots224053_ _slot224055_ '#t))
                        (set! _r-fields224045_
                              (let ()
                                (declare (not safe))
                                (cons _slot224055_ _r-fields224045_))))))))
          (for-each
           (lambda (_mixin224060_)
             (let ((_klass224062_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where224038_
                       _mixin224060_))))
               (if (##structure-ref _klass224062_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot224057_
                    (##structure-ref _klass224062_ '5 gxc#!class::t '#f)))))
           _precedence-list224040_)
          (for-each _process-slot224057_ _direct-slots224041_)
          (reverse _r-fields224045_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass223997_ _slot223998_)
        (let _lp224000_ ((_rest224002_
                          (##structure-ref _klass223997_ '5 gxc#!class::t '#f))
                         (_offset224003_ '1))
          (let* ((_rest224004224012_ _rest224002_)
                 (_else224006224020_
                  (lambda ()
                    (let ((__tmp228692
                           (##structure-ref _klass223997_ '1 gxc#!type::t '#f))
                          (__tmp228691
                           (##structure-ref
                            _klass223997_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp228692
                       __tmp228691
                       _slot223998_))))
                 (_K224008224026_
                  (lambda (_rest224023_ _s224024_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s224024_ _slot223998_))
                        _offset224003_
                        (let ((__tmp228693
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset224003_ '1))))
                          (declare (not safe))
                          (_lp224000_ _rest224023_ __tmp228693))))))
            (if (let () (declare (not safe)) (##pair? _rest224004224012_))
                (let ((_hd224009224029_
                       (let ()
                         (declare (not safe))
                         (##car _rest224004224012_)))
                      (_tl224010224031_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest224004224012_))))
                  (let* ((_s224034_ _hd224009224029_)
                         (_rest224036_ _tl224010224031_))
                    (declare (not safe))
                    (_K224008224026_ _rest224036_ _s224034_)))
                (let () (declare (not safe)) (_else224006224020_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass223955_ _slot223956_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass223955_ _slot223956_))
            _klass223955_
            (let _lp223958_ ((_rest223960_
                              (##structure-ref
                               _klass223955_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest223961223969_ _rest223960_)
                     (_else223963223977_ (lambda () '#f))
                     (_K223965223985_
                      (lambda (_rest223980_ _super223981_)
                        (let ((_super-class223983_
                               (let ((__tmp228694
                                      (let ((__tmp228695
                                             (let ((__tmp228697
                                                    (##structure-ref
                                                     _klass223955_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp228696
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot223956_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp228697
                                                     __tmp228696))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp228695))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp228694
                                  _super223981_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class223983_
                                 _slot223956_))
                              _super-class223983_
                              (let ()
                                (declare (not safe))
                                (_lp223958_ _rest223980_)))))))
                (if (let () (declare (not safe)) (##pair? _rest223961223969_))
                    (let ((_hd223966223988_
                           (let ()
                             (declare (not safe))
                             (##car _rest223961223969_)))
                          (_tl223967223990_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest223961223969_))))
                      (let* ((_super223993_ _hd223966223988_)
                             (_rest223995_ _tl223967223990_))
                        (declare (not safe))
                        (_K223965223985_ _rest223995_ _super223993_)))
                    (let () (declare (not safe)) (_else223963223977_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass223952_ _slot223953_)
        (if (##structure-ref _klass223952_ '7 gxc#!class::t '#f)
            (memq _slot223953_
                  (##structure-ref _klass223952_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self223949_ _id223950_)
        (##structure-set! _self223949_ _id223950_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t228563)
        (let ((__id228564
               (let ((__tmp228565
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228563 'id))))
                 (if __tmp228565 __tmp228565 (error '"Unknown slot" 'id)))))
          (lambda (_self223949_ _id223950_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223949_
               _id223950_
               __id228564
               __t228563
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
      (lambda (_self223824_ _id223825_)
        (##structure-set! _self223824_ _id223825_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t228566)
        (let ((__id228567
               (let ((__tmp228568
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228566 'id))))
                 (if __tmp228568 __tmp228568 (error '"Unknown slot" 'id)))))
          (lambda (_self223824_ _id223825_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223824_
               _id223825_
               __id228567
               __t228566
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
      (lambda (_self223697_ _id223698_ _slot223699_ _checked?223700_)
        (##structure-set! _self223697_ _id223698_ '1 gxc#!type::t '#f)
        (##structure-set! _self223697_ _slot223699_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self223697_
         _checked?223700_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t228569)
        (let ((__checked?228570
               (let ((__tmp228573
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228569 'checked?))))
                 (if __tmp228573
                     __tmp228573
                     (error '"Unknown slot" 'checked?))))
              (__slot228571
               (let ((__tmp228574
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228569 'slot))))
                 (if __tmp228574 __tmp228574 (error '"Unknown slot" 'slot))))
              (__id228572
               (let ((__tmp228575
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228569 'id))))
                 (if __tmp228575 __tmp228575 (error '"Unknown slot" 'id)))))
          (lambda (_self223697_ _id223698_ _slot223699_ _checked?223700_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223697_
               _id223698_
               __id228572
               __t228569
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223697_
               _slot223699_
               __slot228571
               __t228569
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223697_
               _checked?223700_
               __checked?228570
               __t228569
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
      (lambda (_self223570_ _id223571_ _slot223572_ _checked?223573_)
        (##structure-set! _self223570_ _id223571_ '1 gxc#!type::t '#f)
        (##structure-set! _self223570_ _slot223572_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self223570_
         _checked?223573_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t228576)
        (let ((__checked?228577
               (let ((__tmp228580
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228576 'checked?))))
                 (if __tmp228580
                     __tmp228580
                     (error '"Unknown slot" 'checked?))))
              (__slot228578
               (let ((__tmp228581
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228576 'slot))))
                 (if __tmp228581 __tmp228581 (error '"Unknown slot" 'slot))))
              (__id228579
               (let ((__tmp228582
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t228576 'id))))
                 (if __tmp228582 __tmp228582 (error '"Unknown slot" 'id)))))
          (lambda (_self223570_ _id223571_ _slot223572_ _checked?223573_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223570_
               _id223571_
               __id228579
               __t228576
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223570_
               _slot223572_
               __slot228578
               __t228576
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self223570_
               _checked?223573_
               __checked?228577
               __t228576
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
      (lambda (_self223414_
               _id223415_
               _arity223416_
               _dispatch223417_
               _inline223418_
               _typedecl223419_)
        (if (let ((__tmp228703
                   (let ()
                     (declare (not safe))
                     (##structure-length _self223414_))))
              (declare (not safe))
              (##fx< '5 __tmp228703))
            (begin
              (let ((__tmp228698
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223414_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223414_
                 _id223415_
                 '1
                 __tmp228698
                 '#f))
              (let ((__tmp228699
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223414_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223414_
                 _arity223416_
                 '2
                 __tmp228699
                 '#f))
              (let ((__tmp228700
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223414_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223414_
                 _dispatch223417_
                 '3
                 __tmp228700
                 '#f))
              (let ((__tmp228701
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223414_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223414_
                 _inline223418_
                 '4
                 __tmp228701
                 '#f))
              (let ((__tmp228702
                     (let ()
                       (declare (not safe))
                       (##structure-type _self223414_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self223414_
                 _typedecl223419_
                 '5
                 __tmp228702
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self223414_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self223414_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self223424_ _id223425_ _arity223426_ _dispatch223427_)
        (let* ((_inline223429_ '#f) (_typedecl223431_ '#f))
          (if (let ((__tmp228709
                     (let ()
                       (declare (not safe))
                       (##structure-length _self223424_))))
                (declare (not safe))
                (##fx< '5 __tmp228709))
              (begin
                (let ((__tmp228704
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223424_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223424_
                   _id223425_
                   '1
                   __tmp228704
                   '#f))
                (let ((__tmp228705
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223424_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223424_
                   _arity223426_
                   '2
                   __tmp228705
                   '#f))
                (let ((__tmp228706
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223424_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223424_
                   _dispatch223427_
                   '3
                   __tmp228706
                   '#f))
                (let ((__tmp228707
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223424_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223424_
                   _inline223429_
                   '4
                   __tmp228707
                   '#f))
                (let ((__tmp228708
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223424_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223424_
                   _typedecl223431_
                   '5
                   __tmp228708
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self223424_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self223424_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self223433_
               _id223434_
               _arity223435_
               _dispatch223436_
               _inline223437_)
        (let ((_typedecl223439_ '#f))
          (if (let ((__tmp228715
                     (let ()
                       (declare (not safe))
                       (##structure-length _self223433_))))
                (declare (not safe))
                (##fx< '5 __tmp228715))
              (begin
                (let ((__tmp228710
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223433_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223433_
                   _id223434_
                   '1
                   __tmp228710
                   '#f))
                (let ((__tmp228711
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223433_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223433_
                   _arity223435_
                   '2
                   __tmp228711
                   '#f))
                (let ((__tmp228712
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223433_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223433_
                   _dispatch223436_
                   '3
                   __tmp228712
                   '#f))
                (let ((__tmp228713
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223433_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223433_
                   _inline223437_
                   '4
                   __tmp228713
                   '#f))
                (let ((__tmp228714
                       (let ()
                         (declare (not safe))
                         (##structure-type _self223433_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self223433_
                   _typedecl223439_
                   '5
                   __tmp228714
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self223433_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self223433_)))))))
    (define gxc#!lambda:::init!
      (lambda _g228717_
        (let ((_g228716_ (let () (declare (not safe)) (##length _g228717_))))
          (cond ((let () (declare (not safe)) (##fx= _g228716_ 4))
                 (apply (lambda (_self223424_
                                 _id223425_
                                 _arity223426_
                                 _dispatch223427_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self223424_
                             _id223425_
                             _arity223426_
                             _dispatch223427_)))
                        _g228717_))
                ((let () (declare (not safe)) (##fx= _g228716_ 5))
                 (apply (lambda (_self223433_
                                 _id223434_
                                 _arity223435_
                                 _dispatch223436_
                                 _inline223437_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self223433_
                             _id223434_
                             _arity223435_
                             _dispatch223436_
                             _inline223437_)))
                        _g228717_))
                ((let () (declare (not safe)) (##fx= _g228716_ 6))
                 (apply (lambda (_self223441_
                                 _id223442_
                                 _arity223443_
                                 _dispatch223444_
                                 _inline223445_
                                 _typedecl223446_)
                          (if (let ((__tmp228723
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self223441_))))
                                (declare (not safe))
                                (##fx< '5 __tmp228723))
                              (begin
                                (let ((__tmp228718
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self223441_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self223441_
                                   _id223442_
                                   '1
                                   __tmp228718
                                   '#f))
                                (let ((__tmp228719
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self223441_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self223441_
                                   _arity223443_
                                   '2
                                   __tmp228719
                                   '#f))
                                (let ((__tmp228720
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self223441_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self223441_
                                   _dispatch223444_
                                   '3
                                   __tmp228720
                                   '#f))
                                (let ((__tmp228721
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self223441_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self223441_
                                   _inline223445_
                                   '4
                                   __tmp228721
                                   '#f))
                                (let ((__tmp228722
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self223441_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self223441_
                                   _typedecl223446_
                                   '5
                                   __tmp228722
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self223441_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self223441_)))))
                        _g228717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g228717_))))))
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
      (lambda (_self223166_ . _args223167_)
        (apply struct-instance-init! _self223166_ _args223167_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type223041_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type223041_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type223041_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass223034_)
        (let ((_$e223036_
               (##structure-ref _klass223034_ '10 gxc#!class::t '#f)))
          (if _$e223036_
              _$e223036_
              (let ((_tab223039_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass223034_
                 _tab223039_
                 '10
                 gxc#!class::t
                 '#f)
                _tab223039_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass223025_ _method223026_)
        (let ((_tab223027223029_
               (##structure-ref _klass223025_ '10 gxc#!class::t '#f)))
          (if _tab223027223029_
              (let ((_tab223032_ _tab223027223029_))
                (declare (not safe))
                (hash-get _tab223032_ _method223026_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type223022_ _method223023_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type223022_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type223022_ _method223023_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym223006_ _type223007_ _local?223008_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type223007_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym223006_
                   _type223007_))
        (let ((__tmp228724
               (let () (declare (not safe)) (struct->list _type223007_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym223006_ '" " __tmp228724))
        (let ((__tmp228725
               (if _local?223008_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp228725 _sym223006_ _type223007_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym223013_ _type223014_)
        (let ((_local?223016_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym223013_
           _type223014_
           _local?223016_))))
    (define gxc#optimizer-declare-type!
      (lambda _g228727_
        (let ((_g228726_ (let () (declare (not safe)) (##length _g228727_))))
          (cond ((let () (declare (not safe)) (##fx= _g228726_ 2))
                 (apply (lambda (_sym223013_ _type223014_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym223013_
                             _type223014_)))
                        _g228727_))
                ((let () (declare (not safe)) (##fx= _g228726_ 3))
                 (apply (lambda (_sym223018_ _type223019_ _local?223020_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym223018_
                             _type223019_
                             _local?223020_)))
                        _g228727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g228727_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym222992_ _local?222993_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym222992_))
        (let ((__tmp228728
               (if _local?222993_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp228728 _sym222992_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym222998_)
        (let ((_local?223000_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym222998_ _local?223000_))))
    (define gxc#optimizer-clear-type!
      (lambda _g228730_
        (let ((_g228729_ (let () (declare (not safe)) (##length _g228730_))))
          (cond ((let () (declare (not safe)) (##fx= _g228729_ 1))
                 (apply (lambda (_sym222998_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym222998_)))
                        _g228730_))
                ((let () (declare (not safe)) (##fx= _g228729_ 2))
                 (apply (lambda (_sym223002_ _local?223003_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym223002_
                             _local?223003_)))
                        _g228730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g228730_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t222965_ _method222966_ _sym222967_ _rebind?222968_)
        (let* ((_type222970_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t222965_)))
               (_$e222972_
                (let () (declare (not safe)) (gxc#!type-vtab _type222970_))))
          (if _$e222972_
              ((lambda (_vtab222975_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab222975_ _method222966_))
                     (if _rebind?222968_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t222965_
                              '" "
                              _method222966_))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              _vtab222975_
                              _method222966_
                              _sym222967_)))
                         (let ((__tmp228735
                                (let ((__tmp228736
                                       (let ((__tmp228737
                                              (let ((__tmp228738
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym222967_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method222966_
                                                      __tmp228738))))
                                         (declare (not safe))
                                         (cons _type-t222965_ __tmp228737))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp228736))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp228735
                            _method222966_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t222965_
                          '" "
                          _method222966_
                          '" => "
                          _sym222967_))
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _vtab222975_
                          _method222966_
                          _sym222967_)))))
               _$e222972_)
              (if (let () (declare (not safe)) (not _type222970_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t222965_))
                  (let ((__tmp228731
                         (let ((__tmp228732
                                (let ((__tmp228733
                                       (let ((__tmp228734
                                              (let ()
                                                (declare (not safe))
                                                (cons _method222966_ '()))))
                                         (declare (not safe))
                                         (cons _sym222967_ __tmp228734))))
                                  (declare (not safe))
                                  (cons _type-t222965_ __tmp228733))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp228732))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp228731
                     _type222970_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t222980_ _method222981_ _sym222982_)
        (let ((_rebind?222984_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t222980_
           _method222981_
           _sym222982_
           _rebind?222984_))))
    (define gxc#optimizer-declare-method!
      (lambda _g228740_
        (let ((_g228739_ (let () (declare (not safe)) (##length _g228740_))))
          (cond ((let () (declare (not safe)) (##fx= _g228739_ 3))
                 (apply (lambda (_type-t222980_ _method222981_ _sym222982_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t222980_
                             _method222981_
                             _sym222982_)))
                        _g228740_))
                ((let () (declare (not safe)) (##fx= _g228739_ 4))
                 (apply (lambda (_type-t222986_
                                 _method222987_
                                 _sym222988_
                                 _rebind?222989_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t222986_
                             _method222987_
                             _sym222988_
                             _rebind?222989_)))
                        _g228740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g228740_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym222953_)
        (let ((_$e222961_
               (let ((_ht222954222956_ (gxc#current-compile-local-type)))
                 (if _ht222954222956_
                     (let ((_ht222959_ _ht222954222956_))
                       (declare (not safe))
                       (hash-get _ht222959_ _sym222953_))
                     '#f))))
          (if _$e222961_
              _$e222961_
              (let ((__tmp228741
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp228741 _sym222953_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym222945_)
        (let ((_type222946222948_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym222945_))))
          (if _type222946222948_
              (let ((_type222951_ _type222946222948_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type222951_ 'gxc#!alias::t))
                    (let ((__tmp228742
                           (##structure-ref _type222951_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp228742))
                    _type222951_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where222937_ _klass-id222938_)
        (let ((_$e222940_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id222938_))))
          (if _$e222940_
              ((lambda (_klass222943_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass222943_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where222937_
                        _klass-id222938_
                        _klass222943_)))
                 _klass222943_)
               _$e222940_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where222937_
                 _klass-id222938_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t222934_ _method222935_)
        (let ((__tmp228743
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t222934_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp228743 _method222935_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym222932_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym222932_))
        (let ((__tmp228744
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp228744 _sym222932_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym222930_)
        (let ((__tmp228745
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp228745 _sym222930_))))
    (define gxc#identifier-symbol
      (lambda (_stx222928_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx222928_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx222928_))
            (let () (declare (not safe)) (gx#stx-e _stx222928_)))))))
