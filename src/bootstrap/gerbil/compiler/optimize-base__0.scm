(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707840757)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp221517 (list))
            (__tmp221515
             (let ((__tmp221516
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221516 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp221517
         '(type ssxi methods)
         __tmp221515
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args216888_
        (apply make-instance gxc#optimizer-info::t _$args216888_)))
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
      (lambda (_self216886_)
        (if (let ((__tmp221524
                   (let ()
                     (declare (not safe))
                     (##structure-length _self216886_))))
              (declare (not safe))
              (##fx< '3 __tmp221524))
            (begin
              (let ((__tmp221519
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp221518
                     (let ()
                       (declare (not safe))
                       (##structure-type _self216886_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self216886_
                 __tmp221519
                 '1
                 __tmp221518
                 '#f))
              (let ((__tmp221521
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp221520
                     (let ()
                       (declare (not safe))
                       (##structure-type _self216886_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self216886_
                 __tmp221521
                 '2
                 __tmp221520
                 '#f))
              (let ((__tmp221523
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp221522
                     (let ()
                       (declare (not safe))
                       (##structure-type _self216886_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self216886_
                 __tmp221523
                 '3
                 __tmp221522
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self216886_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self216886_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp221527 (list))
            (__tmp221525
             (let ((__tmp221526
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221526 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp221527
         '(id)
         __tmp221525
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args216761_ (apply make-instance gxc#!type::t _$args216761_)))
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
      (let ((__tmp221530 (list gxc#!type::t))
            (__tmp221528
             (let ((__tmp221529
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221529 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp221530
         '()
         __tmp221528
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args216758_ (apply make-instance gxc#!alias::t _$args216758_)))
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
      (let ((__tmp221533 (list gxc#!type::t))
            (__tmp221531
             (let ((__tmp221532
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221532 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp221533
         '()
         __tmp221531
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args216755_
        (apply make-instance gxc#!procedure::t _$args216755_)))
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
      (let ((__tmp221536 (list gxc#!type::t))
            (__tmp221534
             (let ((__tmp221535
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221535 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp221536
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp221534
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args216752_ (apply make-instance gxc#!class::t _$args216752_)))
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
      (let ((__tmp221539 (list gxc#!procedure::t))
            (__tmp221537
             (let ((__tmp221538
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221538 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp221539
         '()
         __tmp221537
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args216749_
        (apply make-instance gxc#!predicate::t _$args216749_)))
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
      (let ((__tmp221542 (list gxc#!procedure::t))
            (__tmp221540
             (let ((__tmp221541
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221541 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp221542
         '()
         __tmp221540
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args216746_
        (apply make-instance gxc#!constructor::t _$args216746_)))
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
      (let ((__tmp221545 (list gxc#!procedure::t))
            (__tmp221543
             (let ((__tmp221544
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221544 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp221545
         '(slot checked?)
         __tmp221543
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args216743_
        (apply make-instance gxc#!accessor::t _$args216743_)))
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
      (let ((__tmp221548 (list gxc#!procedure::t))
            (__tmp221546
             (let ((__tmp221547
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221547 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp221548
         '(slot checked?)
         __tmp221546
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args216740_
        (apply make-instance gxc#!mutator::t _$args216740_)))
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
      (let ((__tmp221551 (list gxc#!procedure::t))
            (__tmp221549
             (let ((__tmp221550
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221550 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp221551
         '(arity dispatch inline inline-typedecl)
         __tmp221549
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args216737_
        (apply make-instance gxc#!lambda::t _$args216737_)))
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
      (let ((__tmp221554 (list gxc#!procedure::t))
            (__tmp221552
             (let ((__tmp221553
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221553 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp221554
         '(clauses)
         __tmp221552
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args216734_
        (apply make-instance gxc#!case-lambda::t _$args216734_)))
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
      (let ((__tmp221557 (list gxc#!procedure::t))
            (__tmp221555
             (let ((__tmp221556
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221556 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp221557
         '(table dispatch)
         __tmp221555
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args216731_
        (apply make-instance gxc#!kw-lambda::t _$args216731_)))
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
      (let ((__tmp221560 (list gxc#!procedure::t))
            (__tmp221558
             (let ((__tmp221559
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp221559 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp221560
         '(keys main)
         __tmp221558
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args216728_
        (apply make-instance gxc#!kw-lambda-primary::t _$args216728_)))
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
      (let ((__tmp221561 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp221561
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args216725_
        (apply make-instance gxc#!primitive::t _$args216725_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp221562 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp221562
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args216722_
        (apply make-instance gxc#!primitive-lambda::t _$args216722_)))
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
      (let ((__tmp221563 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp221563
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args216719_
        (apply make-instance gxc#!primitive-case-lambda::t _$args216719_)))
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
      (lambda (_self216601_
               _id216602_
               _super216603_
               _slots216604_
               _ctor-method216605_
               _struct?216606_
               _final?216607_
               _metaclass216608_)
        (let _lp216610_ ((_rest216612_ _super216603_))
          (let* ((_rest216613216621_ _rest216612_)
                 (_else216615216629_ (lambda () '#!void))
                 (_K216617216635_
                  (lambda (_rest216632_ _super-id216633_)
                    (if (##structure-ref
                         (let ((__tmp221566
                                (let ((__tmp221567
                                       (let ()
                                         (declare (not safe))
                                         (cons _id216602_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp221567))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp221566
                            _super-id216633_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp221564
                               (let ((__tmp221565
                                      (let ()
                                        (declare (not safe))
                                        (cons _id216602_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp221565))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp221564
                           _super-id216633_))
                        '#!void)
                    (let () (declare (not safe)) (_lp216610_ _rest216632_)))))
            (if (let () (declare (not safe)) (##pair? _rest216613216621_))
                (let ((_hd216618216638_
                       (let ()
                         (declare (not safe))
                         (##car _rest216613216621_)))
                      (_tl216619216640_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest216613216621_))))
                  (let* ((_super-id216643_ _hd216618216638_)
                         (_rest216645_ _tl216619216640_))
                    (declare (not safe))
                    (_K216617216635_ _rest216645_ _super-id216643_)))
                '#!void)))
        (let* ((_ctor-method216695_
                (let ((_$e216647_ _ctor-method216605_))
                  (if _$e216647_
                      _$e216647_
                      (let _lp216650_ ((_rest216652_ _super216603_)
                                       (_method216653_ '#f))
                        (let* ((_rest216654216662_ _rest216652_)
                               (_else216656216670_ (lambda () _method216653_))
                               (_K216658216683_
                                (lambda (_rest216673_ _super-id216674_)
                                  (let* ((_klass216676_
                                          (let ((__tmp221568
                                                 (let ((__tmp221569
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id216602_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp221569))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp221568
                                             _super-id216674_)))
                                         (_$e216678_
                                          (##structure-ref
                                           _klass216676_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e216678_
                                        ((lambda (_ctor-method216681_)
                                           (if _method216653_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method216681_
                                                          _method216653_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp216650_
                                                      _rest216673_
                                                      _ctor-method216681_))
                                                   (let ((__tmp221570
                                                          (let ((__tmp221571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id216602_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp221571))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp221570
                                                      _method216653_
                                                      _ctor-method216681_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp216650_
                                                  _rest216673_
                                                  _ctor-method216681_))))
                                         _$e216678_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp216650_
                                           _rest216673_
                                           _method216653_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest216654216662_))
                              (let ((_hd216659216686_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest216654216662_)))
                                    (_tl216660216688_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest216654216662_))))
                                (let* ((_super-id216691_ _hd216659216686_)
                                       (_rest216693_ _tl216660216688_))
                                  (declare (not safe))
                                  (_K216658216683_
                                   _rest216693_
                                   _super-id216691_)))
                              (let ()
                                (declare (not safe))
                                (_else216656216670_))))))))
               (_g221572_
                (let ((__tmp221577
                       (lambda (_klass-id216697_)
                         (let ((__tmp221578
                                (##structure-ref
                                 (let ((__tmp221579
                                        (let ((__tmp221580
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id216602_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp221580))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp221579
                                    _klass-id216697_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id216697_ __tmp221578))))
                      (__tmp221574
                       (lambda (_klass-id216699_)
                         (##structure-ref
                          (let ((__tmp221575
                                 (let ((__tmp221576
                                        (let ()
                                          (declare (not safe))
                                          (cons _id216602_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp221576))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp221575
                             _klass-id216699_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize__%
                   '#f
                   __tmp221577
                   __tmp221574
                   eq?
                   identity
                   '()
                   _super216603_))))
          (begin
            (let ((_g221573_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g221572_)
                         (##vector-length _g221572_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g221573_ 2)))
                  (error "Context expects 2 values" _g221573_)))
            (let ((_precedence-list216701_
                   (let () (declare (not safe)) (##vector-ref _g221572_ 0)))
                  (_base-struct216702_
                   (let () (declare (not safe)) (##vector-ref _g221572_ 1))))
              (let ((_fields216704_
                     (let ((__tmp221581
                            (let ((__tmp221582
                                   (let ()
                                     (declare (not safe))
                                     (cons _id216602_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp221582))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp221581
                        _base-struct216702_
                        _precedence-list216701_
                        _slots216604_))))
                (##structure-set! _self216601_ _id216602_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self216601_
                 _super216603_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216601_
                 _precedence-list216701_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216601_
                 _slots216604_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216601_
                 _fields216704_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216601_
                 _ctor-method216695_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216601_
                 _struct?216606_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216601_
                 _final?216607_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self216601_
                 _metaclass216608_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self216707_
               _id216708_
               _super216709_
               _precedence-list216710_
               _slots216711_
               _fields216712_
               _constructor216713_
               _struct?216714_
               _final?216715_
               _metaclass216716_
               _methods216717_)
        (##structure-set! _self216707_ _id216708_ '1 gxc#!type::t '#f)
        (##structure-set! _self216707_ _super216709_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self216707_
         _precedence-list216710_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self216707_ _slots216711_ '4 gxc#!class::t '#f)
        (##structure-set! _self216707_ _fields216712_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self216707_
         _constructor216713_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self216707_ _struct?216714_ '7 gxc#!class::t '#f)
        (##structure-set! _self216707_ _final?216715_ '8 gxc#!class::t '#f)
        (##structure-set! _self216707_ _metaclass216716_ '9 gxc#!class::t '#f)
        (if _methods216717_
            (##structure-set!
             _self216707_
             (let ()
               (declare (not safe))
               (list->table _methods216717_ 'test: eq?))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g221584_
        (let ((_g221583_ (let () (declare (not safe)) (##length _g221584_))))
          (cond ((let () (declare (not safe)) (##fx= _g221583_ 8))
                 (apply (lambda (_self216601_
                                 _id216602_
                                 _super216603_
                                 _slots216604_
                                 _ctor-method216605_
                                 _struct?216606_
                                 _final?216607_
                                 _metaclass216608_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self216601_
                             _id216602_
                             _super216603_
                             _slots216604_
                             _ctor-method216605_
                             _struct?216606_
                             _final?216607_
                             _metaclass216608_)))
                        _g221584_))
                ((let () (declare (not safe)) (##fx= _g221583_ 11))
                 (apply (lambda (_self216707_
                                 _id216708_
                                 _super216709_
                                 _precedence-list216710_
                                 _slots216711_
                                 _fields216712_
                                 _constructor216713_
                                 _struct?216714_
                                 _final?216715_
                                 _metaclass216716_
                                 _methods216717_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self216707_
                             _id216708_
                             _super216709_
                             _precedence-list216710_
                             _slots216711_
                             _fields216712_
                             _constructor216713_
                             _struct?216714_
                             _final?216715_
                             _metaclass216716_
                             _methods216717_)))
                        _g221584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g221584_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t221458)
        (let ((__slots221459
               (let ((__tmp221469
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221458 'slots))))
                 (if __tmp221469 __tmp221469 (error '"Unknown slot" 'slots))))
              (__constructor221460
               (let ((__tmp221470
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221458 'constructor))))
                 (if __tmp221470
                     __tmp221470
                     (error '"Unknown slot" 'constructor))))
              (__struct?221461
               (let ((__tmp221471
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221458 'struct?))))
                 (if __tmp221471
                     __tmp221471
                     (error '"Unknown slot" 'struct?))))
              (__id221462
               (let ((__tmp221472
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221458 'id))))
                 (if __tmp221472 __tmp221472 (error '"Unknown slot" 'id))))
              (__super221463
               (let ((__tmp221473
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221458 'super))))
                 (if __tmp221473 __tmp221473 (error '"Unknown slot" 'super))))
              (__precedence-list221464
               (let ((__tmp221474
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221458 'precedence-list))))
                 (if __tmp221474
                     __tmp221474
                     (error '"Unknown slot" 'precedence-list))))
              (__final?221465
               (let ((__tmp221475
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221458 'final?))))
                 (if __tmp221475 __tmp221475 (error '"Unknown slot" 'final?))))
              (__metaclass221466
               (let ((__tmp221476
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221458 'metaclass))))
                 (if __tmp221476
                     __tmp221476
                     (error '"Unknown slot" 'metaclass))))
              (__methods221467
               (let ((__tmp221477
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221458 'methods))))
                 (if __tmp221477
                     __tmp221477
                     (error '"Unknown slot" 'methods))))
              (__fields221468
               (let ((__tmp221478
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221458 'fields))))
                 (if __tmp221478
                     __tmp221478
                     (error '"Unknown slot" 'fields)))))
          (lambda _g221586_
            (let ((_g221585_
                   (let () (declare (not safe)) (##length _g221586_))))
              (cond ((let () (declare (not safe)) (##fx= _g221585_ 8))
                     (apply (lambda (_self216601_
                                     _id216602_
                                     _super216603_
                                     _slots216604_
                                     _ctor-method216605_
                                     _struct?216606_
                                     _final?216607_
                                     _metaclass216608_)
                              (let _lp216610_ ((_rest216612_ _super216603_))
                                (let* ((_rest216613216621_ _rest216612_)
                                       (_else216615216629_ (lambda () '#!void))
                                       (_K216617216635_
                                        (lambda (_rest216632_ _super-id216633_)
                                          (if (##structure-ref
                                               (let ((__tmp221589
                                                      (let ((__tmp221590
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id216602_ '()))))
                (declare (not safe))
                (cons '!class __tmp221590))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp221589
                                                  _super-id216633_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp221587
                                                     (let ((__tmp221588
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id216602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp221588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp221587
                                                 _super-id216633_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp216610_ _rest216632_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest216613216621_))
                                      (let ((_hd216618216638_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest216613216621_)))
                                            (_tl216619216640_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest216613216621_))))
                                        (let* ((_super-id216643_
                                                _hd216618216638_)
                                               (_rest216645_ _tl216619216640_))
                                          (declare (not safe))
                                          (_K216617216635_
                                           _rest216645_
                                           _super-id216643_)))
                                      '#!void)))
                              (let* ((_ctor-method216695_
                                      (let ((_$e216647_ _ctor-method216605_))
                                        (if _$e216647_
                                            _$e216647_
                                            (let _lp216650_ ((_rest216652_
                                                              _super216603_)
                                                             (_method216653_
                                                              '#f))
                                              (let* ((_rest216654216662_
                                                      _rest216652_)
                                                     (_else216656216670_
                                                      (lambda ()
                                                        _method216653_))
                                                     (_K216658216683_
                                                      (lambda (_rest216673_
                                                               _super-id216674_)
                                                        (let* ((_klass216676_
                                                                (let ((__tmp221591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp221592
                                      (let ()
                                        (declare (not safe))
                                        (cons _id216602_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp221592))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp221591
                           _super-id216674_)))
                       (_$e216678_
                        (##structure-ref _klass216676_ '6 gxc#!class::t '#f)))
                  (if _$e216678_
                      ((lambda (_ctor-method216681_)
                         (if _method216653_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method216681_ _method216653_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp216650_
                                    _rest216673_
                                    _ctor-method216681_))
                                 (let ((__tmp221593
                                        (let ((__tmp221594
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id216602_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp221594))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp221593
                                    _method216653_
                                    _ctor-method216681_)))
                             (let ()
                               (declare (not safe))
                               (_lp216650_ _rest216673_ _ctor-method216681_))))
                       _$e216678_)
                      (let ()
                        (declare (not safe))
                        (_lp216650_ _rest216673_ _method216653_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest216654216662_))
                                                    (let ((_hd216659216686_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest216654216662_)))
                                                          (_tl216660216688_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest216654216662_))))
                                                      (let* ((_super-id216691_
                                                              _hd216659216686_)
                                                             (_rest216693_
                                                              _tl216660216688_))
                                                        (declare (not safe))
                                                        (_K216658216683_
                                                         _rest216693_
                                                         _super-id216691_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else216656216670_))))))))
                                     (_g221595_
                                      (let ((__tmp221600
                                             (lambda (_klass-id216697_)
                                               (let ((__tmp221601
                                                      (##structure-ref
                                                       (let ((__tmp221602
                                                              (let ((__tmp221603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id216602_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp221603))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp221602 _klass-id216697_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id216697_
                                                       __tmp221601))))
                                            (__tmp221597
                                             (lambda (_klass-id216699_)
                                               (##structure-ref
                                                (let ((__tmp221598
                                                       (let ((__tmp221599
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id216602_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp221599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp221598
                                                   _klass-id216699_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize__%
                                         '#f
                                         __tmp221600
                                         __tmp221597
                                         eq?
                                         identity
                                         '()
                                         _super216603_))))
                                (begin
                                  (let ((_g221596_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g221595_)
                                               (##vector-length _g221595_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g221596_ 2)))
                                        (error "Context expects 2 values"
                                               _g221596_)))
                                  (let ((_precedence-list216701_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g221595_ 0)))
                                        (_base-struct216702_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g221595_ 1))))
                                    (let ((_fields216704_
                                           (let ((__tmp221604
                                                  (let ((__tmp221605
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id216602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp221605))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp221604
                                              _base-struct216702_
                                              _precedence-list216701_
                                              _slots216604_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216601_
                                         _id216602_
                                         __id221462
                                         __t221458
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216601_
                                         _super216603_
                                         __super221463
                                         __t221458
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216601_
                                         _precedence-list216701_
                                         __precedence-list221464
                                         __t221458
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216601_
                                         _slots216604_
                                         __slots221459
                                         __t221458
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216601_
                                         _fields216704_
                                         __fields221468
                                         __t221458
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216601_
                                         _ctor-method216695_
                                         __constructor221460
                                         __t221458
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216601_
                                         _struct?216606_
                                         __struct?221461
                                         __t221458
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216601_
                                         _final?216607_
                                         __final?221465
                                         __t221458
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self216601_
                                         _metaclass216608_
                                         __metaclass221466
                                         __t221458
                                         '#f)))))))
                            _g221586_))
                    ((let () (declare (not safe)) (##fx= _g221585_ 11))
                     (apply (lambda (_self216707_
                                     _id216708_
                                     _super216709_
                                     _precedence-list216710_
                                     _slots216711_
                                     _fields216712_
                                     _constructor216713_
                                     _struct?216714_
                                     _final?216715_
                                     _metaclass216716_
                                     _methods216717_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216707_
                                 _id216708_
                                 __id221462
                                 __t221458
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216707_
                                 _super216709_
                                 __super221463
                                 __t221458
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216707_
                                 _precedence-list216710_
                                 __precedence-list221464
                                 __t221458
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216707_
                                 _slots216711_
                                 __slots221459
                                 __t221458
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216707_
                                 _fields216712_
                                 __fields221468
                                 __t221458
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216707_
                                 _constructor216713_
                                 __constructor221460
                                 __t221458
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216707_
                                 _struct?216714_
                                 __struct?221461
                                 __t221458
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216707_
                                 _final?216715_
                                 __final?221465
                                 __t221458
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self216707_
                                 _metaclass216716_
                                 __metaclass221466
                                 __t221458
                                 '#f))
                              (if _methods216717_
                                  (let ((__tmp221606
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods216717_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self216707_
                                     __tmp221606
                                     __methods221467
                                     __t221458
                                     '#f))
                                  '#!void))
                            _g221586_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g221586_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where216453_
               _base-struct216454_
               _precedence-list216455_
               _direct-slots216456_)
        (let* ((_base-fields216458_
                (if _base-struct216454_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where216453_
                        _base-struct216454_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields216460_ (reverse _base-fields216458_))
               (_seen-slots216468_
                (let ((_tab216462_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g216463216465_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab216462_ _g216463216465_ '#t)))
                   _base-fields216458_)
                  _tab216462_))
               (_process-slot216472_
                (lambda (_slot216470_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots216468_ _slot216470_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots216468_ _slot216470_ '#t))
                        (set! _r-fields216460_
                              (let ()
                                (declare (not safe))
                                (cons _slot216470_ _r-fields216460_))))))))
          (for-each
           (lambda (_mixin216475_)
             (let ((_klass216477_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where216453_
                       _mixin216475_))))
               (if (##structure-ref _klass216477_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot216472_
                    (##structure-ref _klass216477_ '5 gxc#!class::t '#f)))))
           _precedence-list216455_)
          (for-each _process-slot216472_ _direct-slots216456_)
          (reverse _r-fields216460_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass216412_ _slot216413_)
        (let _lp216415_ ((_rest216417_
                          (##structure-ref _klass216412_ '5 gxc#!class::t '#f))
                         (_offset216418_ '1))
          (let* ((_rest216419216427_ _rest216417_)
                 (_else216421216435_
                  (lambda ()
                    (let ((__tmp221608
                           (##structure-ref _klass216412_ '1 gxc#!type::t '#f))
                          (__tmp221607
                           (##structure-ref
                            _klass216412_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp221608
                       __tmp221607
                       _slot216413_))))
                 (_K216423216441_
                  (lambda (_rest216438_ _s216439_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s216439_ _slot216413_))
                        _offset216418_
                        (let ((__tmp221609
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset216418_ '1))))
                          (declare (not safe))
                          (_lp216415_ _rest216438_ __tmp221609))))))
            (if (let () (declare (not safe)) (##pair? _rest216419216427_))
                (let ((_hd216424216444_
                       (let ()
                         (declare (not safe))
                         (##car _rest216419216427_)))
                      (_tl216425216446_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest216419216427_))))
                  (let* ((_s216449_ _hd216424216444_)
                         (_rest216451_ _tl216425216446_))
                    (declare (not safe))
                    (_K216423216441_ _rest216451_ _s216449_)))
                (let () (declare (not safe)) (_else216421216435_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass216370_ _slot216371_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass216370_ _slot216371_))
            _klass216370_
            (let _lp216373_ ((_rest216375_
                              (##structure-ref
                               _klass216370_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest216376216384_ _rest216375_)
                     (_else216378216392_ (lambda () '#f))
                     (_K216380216400_
                      (lambda (_rest216395_ _super216396_)
                        (let ((_super-class216398_
                               (let ((__tmp221610
                                      (let ((__tmp221611
                                             (let ((__tmp221613
                                                    (##structure-ref
                                                     _klass216370_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp221612
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot216371_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp221613
                                                     __tmp221612))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp221611))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp221610
                                  _super216396_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class216398_
                                 _slot216371_))
                              _super-class216398_
                              (let ()
                                (declare (not safe))
                                (_lp216373_ _rest216395_)))))))
                (if (let () (declare (not safe)) (##pair? _rest216376216384_))
                    (let ((_hd216381216403_
                           (let ()
                             (declare (not safe))
                             (##car _rest216376216384_)))
                          (_tl216382216405_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest216376216384_))))
                      (let* ((_super216408_ _hd216381216403_)
                             (_rest216410_ _tl216382216405_))
                        (declare (not safe))
                        (_K216380216400_ _rest216410_ _super216408_)))
                    (let () (declare (not safe)) (_else216378216392_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass216367_ _slot216368_)
        (if (##structure-ref _klass216367_ '7 gxc#!class::t '#f)
            (memq _slot216368_
                  (##structure-ref _klass216367_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self216364_ _id216365_)
        (##structure-set! _self216364_ _id216365_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t221479)
        (let ((__id221480
               (let ((__tmp221481
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221479 'id))))
                 (if __tmp221481 __tmp221481 (error '"Unknown slot" 'id)))))
          (lambda (_self216364_ _id216365_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216364_
               _id216365_
               __id221480
               __t221479
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
      (lambda (_self216239_ _id216240_)
        (##structure-set! _self216239_ _id216240_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t221482)
        (let ((__id221483
               (let ((__tmp221484
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221482 'id))))
                 (if __tmp221484 __tmp221484 (error '"Unknown slot" 'id)))))
          (lambda (_self216239_ _id216240_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216239_
               _id216240_
               __id221483
               __t221482
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
      (lambda (_self216112_ _id216113_ _slot216114_ _checked?216115_)
        (##structure-set! _self216112_ _id216113_ '1 gxc#!type::t '#f)
        (##structure-set! _self216112_ _slot216114_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self216112_
         _checked?216115_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t221485)
        (let ((__id221486
               (let ((__tmp221489
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221485 'id))))
                 (if __tmp221489 __tmp221489 (error '"Unknown slot" 'id))))
              (__checked?221487
               (let ((__tmp221490
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221485 'checked?))))
                 (if __tmp221490
                     __tmp221490
                     (error '"Unknown slot" 'checked?))))
              (__slot221488
               (let ((__tmp221491
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221485 'slot))))
                 (if __tmp221491 __tmp221491 (error '"Unknown slot" 'slot)))))
          (lambda (_self216112_ _id216113_ _slot216114_ _checked?216115_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216112_
               _id216113_
               __id221486
               __t221485
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216112_
               _slot216114_
               __slot221488
               __t221485
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self216112_
               _checked?216115_
               __checked?221487
               __t221485
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
      (lambda (_self215985_ _id215986_ _slot215987_ _checked?215988_)
        (##structure-set! _self215985_ _id215986_ '1 gxc#!type::t '#f)
        (##structure-set! _self215985_ _slot215987_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self215985_
         _checked?215988_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t221492)
        (let ((__id221493
               (let ((__tmp221496
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221492 'id))))
                 (if __tmp221496 __tmp221496 (error '"Unknown slot" 'id))))
              (__checked?221494
               (let ((__tmp221497
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221492 'checked?))))
                 (if __tmp221497
                     __tmp221497
                     (error '"Unknown slot" 'checked?))))
              (__slot221495
               (let ((__tmp221498
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t221492 'slot))))
                 (if __tmp221498 __tmp221498 (error '"Unknown slot" 'slot)))))
          (lambda (_self215985_ _id215986_ _slot215987_ _checked?215988_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215985_
               _id215986_
               __id221493
               __t221492
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215985_
               _slot215987_
               __slot221495
               __t221492
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self215985_
               _checked?215988_
               __checked?221494
               __t221492
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
      (lambda (_self215829_
               _id215830_
               _arity215831_
               _dispatch215832_
               _inline215833_
               _typedecl215834_)
        (if (let ((__tmp221619
                   (let ()
                     (declare (not safe))
                     (##structure-length _self215829_))))
              (declare (not safe))
              (##fx< '5 __tmp221619))
            (begin
              (let ((__tmp221614
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215829_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215829_
                 _id215830_
                 '1
                 __tmp221614
                 '#f))
              (let ((__tmp221615
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215829_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215829_
                 _arity215831_
                 '2
                 __tmp221615
                 '#f))
              (let ((__tmp221616
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215829_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215829_
                 _dispatch215832_
                 '3
                 __tmp221616
                 '#f))
              (let ((__tmp221617
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215829_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215829_
                 _inline215833_
                 '4
                 __tmp221617
                 '#f))
              (let ((__tmp221618
                     (let ()
                       (declare (not safe))
                       (##structure-type _self215829_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self215829_
                 _typedecl215834_
                 '5
                 __tmp221618
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self215829_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self215829_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self215839_ _id215840_ _arity215841_ _dispatch215842_)
        (let* ((_inline215844_ '#f) (_typedecl215846_ '#f))
          (if (let ((__tmp221625
                     (let ()
                       (declare (not safe))
                       (##structure-length _self215839_))))
                (declare (not safe))
                (##fx< '5 __tmp221625))
              (begin
                (let ((__tmp221620
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215839_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215839_
                   _id215840_
                   '1
                   __tmp221620
                   '#f))
                (let ((__tmp221621
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215839_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215839_
                   _arity215841_
                   '2
                   __tmp221621
                   '#f))
                (let ((__tmp221622
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215839_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215839_
                   _dispatch215842_
                   '3
                   __tmp221622
                   '#f))
                (let ((__tmp221623
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215839_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215839_
                   _inline215844_
                   '4
                   __tmp221623
                   '#f))
                (let ((__tmp221624
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215839_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215839_
                   _typedecl215846_
                   '5
                   __tmp221624
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self215839_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self215839_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self215848_
               _id215849_
               _arity215850_
               _dispatch215851_
               _inline215852_)
        (let ((_typedecl215854_ '#f))
          (if (let ((__tmp221631
                     (let ()
                       (declare (not safe))
                       (##structure-length _self215848_))))
                (declare (not safe))
                (##fx< '5 __tmp221631))
              (begin
                (let ((__tmp221626
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215848_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215848_
                   _id215849_
                   '1
                   __tmp221626
                   '#f))
                (let ((__tmp221627
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215848_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215848_
                   _arity215850_
                   '2
                   __tmp221627
                   '#f))
                (let ((__tmp221628
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215848_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215848_
                   _dispatch215851_
                   '3
                   __tmp221628
                   '#f))
                (let ((__tmp221629
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215848_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215848_
                   _inline215852_
                   '4
                   __tmp221629
                   '#f))
                (let ((__tmp221630
                       (let ()
                         (declare (not safe))
                         (##structure-type _self215848_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self215848_
                   _typedecl215854_
                   '5
                   __tmp221630
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self215848_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self215848_)))))))
    (define gxc#!lambda:::init!
      (lambda _g221633_
        (let ((_g221632_ (let () (declare (not safe)) (##length _g221633_))))
          (cond ((let () (declare (not safe)) (##fx= _g221632_ 4))
                 (apply (lambda (_self215839_
                                 _id215840_
                                 _arity215841_
                                 _dispatch215842_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self215839_
                             _id215840_
                             _arity215841_
                             _dispatch215842_)))
                        _g221633_))
                ((let () (declare (not safe)) (##fx= _g221632_ 5))
                 (apply (lambda (_self215848_
                                 _id215849_
                                 _arity215850_
                                 _dispatch215851_
                                 _inline215852_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self215848_
                             _id215849_
                             _arity215850_
                             _dispatch215851_
                             _inline215852_)))
                        _g221633_))
                ((let () (declare (not safe)) (##fx= _g221632_ 6))
                 (apply (lambda (_self215856_
                                 _id215857_
                                 _arity215858_
                                 _dispatch215859_
                                 _inline215860_
                                 _typedecl215861_)
                          (if (let ((__tmp221639
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self215856_))))
                                (declare (not safe))
                                (##fx< '5 __tmp221639))
                              (begin
                                (let ((__tmp221634
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215856_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215856_
                                   _id215857_
                                   '1
                                   __tmp221634
                                   '#f))
                                (let ((__tmp221635
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215856_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215856_
                                   _arity215858_
                                   '2
                                   __tmp221635
                                   '#f))
                                (let ((__tmp221636
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215856_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215856_
                                   _dispatch215859_
                                   '3
                                   __tmp221636
                                   '#f))
                                (let ((__tmp221637
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215856_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215856_
                                   _inline215860_
                                   '4
                                   __tmp221637
                                   '#f))
                                (let ((__tmp221638
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self215856_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self215856_
                                   _typedecl215861_
                                   '5
                                   __tmp221638
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self215856_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self215856_)))))
                        _g221633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g221633_))))))
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
      (lambda (_self215581_ . _args215582_)
        (apply struct-instance-init! _self215581_ _args215582_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type215456_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type215456_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type215456_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass215449_)
        (let ((_$e215451_
               (##structure-ref _klass215449_ '10 gxc#!class::t '#f)))
          (if _$e215451_
              _$e215451_
              (let ((_tab215454_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass215449_
                 _tab215454_
                 '10
                 gxc#!class::t
                 '#f)
                _tab215454_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass215440_ _method215441_)
        (let ((_tab215442215444_
               (##structure-ref _klass215440_ '10 gxc#!class::t '#f)))
          (if _tab215442215444_
              (let ((_tab215447_ _tab215442215444_))
                (declare (not safe))
                (table-ref _tab215447_ _method215441_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type215437_ _method215438_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type215437_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type215437_ _method215438_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym215421_ _type215422_ _local?215423_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type215422_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym215421_
                   _type215422_))
        (let ((__tmp221640
               (let () (declare (not safe)) (struct->list _type215422_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym215421_ '" " __tmp221640))
        (let ((__tmp221641
               (if _local?215423_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp221641 _sym215421_ _type215422_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym215428_ _type215429_)
        (let ((_local?215431_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym215428_
           _type215429_
           _local?215431_))))
    (define gxc#optimizer-declare-type!
      (lambda _g221643_
        (let ((_g221642_ (let () (declare (not safe)) (##length _g221643_))))
          (cond ((let () (declare (not safe)) (##fx= _g221642_ 2))
                 (apply (lambda (_sym215428_ _type215429_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym215428_
                             _type215429_)))
                        _g221643_))
                ((let () (declare (not safe)) (##fx= _g221642_ 3))
                 (apply (lambda (_sym215433_ _type215434_ _local?215435_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym215433_
                             _type215434_
                             _local?215435_)))
                        _g221643_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g221643_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym215407_ _local?215408_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym215407_))
        (let ((__tmp221644
               (if _local?215408_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp221644 _sym215407_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym215413_)
        (let ((_local?215415_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym215413_ _local?215415_))))
    (define gxc#optimizer-clear-type!
      (lambda _g221646_
        (let ((_g221645_ (let () (declare (not safe)) (##length _g221646_))))
          (cond ((let () (declare (not safe)) (##fx= _g221645_ 1))
                 (apply (lambda (_sym215413_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym215413_)))
                        _g221646_))
                ((let () (declare (not safe)) (##fx= _g221645_ 2))
                 (apply (lambda (_sym215417_ _local?215418_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym215417_
                             _local?215418_)))
                        _g221646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g221646_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t215380_ _method215381_ _sym215382_ _rebind?215383_)
        (let* ((_type215385_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t215380_)))
               (_$e215387_
                (let () (declare (not safe)) (gxc#!type-vtab _type215385_))))
          (if _$e215387_
              ((lambda (_vtab215390_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab215390_ _method215381_))
                     (if _rebind?215383_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t215380_
                              '" "
                              _method215381_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab215390_
                              _method215381_
                              _sym215382_)))
                         (let ((__tmp221651
                                (let ((__tmp221652
                                       (let ((__tmp221653
                                              (let ((__tmp221654
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym215382_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method215381_
                                                      __tmp221654))))
                                         (declare (not safe))
                                         (cons _type-t215380_ __tmp221653))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp221652))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp221651
                            _method215381_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t215380_
                          '" "
                          _method215381_
                          '" => "
                          _sym215382_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab215390_
                          _method215381_
                          _sym215382_)))))
               _$e215387_)
              (if (let () (declare (not safe)) (not _type215385_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t215380_))
                  (let ((__tmp221647
                         (let ((__tmp221648
                                (let ((__tmp221649
                                       (let ((__tmp221650
                                              (let ()
                                                (declare (not safe))
                                                (cons _method215381_ '()))))
                                         (declare (not safe))
                                         (cons _sym215382_ __tmp221650))))
                                  (declare (not safe))
                                  (cons _type-t215380_ __tmp221649))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp221648))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp221647
                     _type215385_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t215395_ _method215396_ _sym215397_)
        (let ((_rebind?215399_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t215395_
           _method215396_
           _sym215397_
           _rebind?215399_))))
    (define gxc#optimizer-declare-method!
      (lambda _g221656_
        (let ((_g221655_ (let () (declare (not safe)) (##length _g221656_))))
          (cond ((let () (declare (not safe)) (##fx= _g221655_ 3))
                 (apply (lambda (_type-t215395_ _method215396_ _sym215397_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t215395_
                             _method215396_
                             _sym215397_)))
                        _g221656_))
                ((let () (declare (not safe)) (##fx= _g221655_ 4))
                 (apply (lambda (_type-t215401_
                                 _method215402_
                                 _sym215403_
                                 _rebind?215404_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t215401_
                             _method215402_
                             _sym215403_
                             _rebind?215404_)))
                        _g221656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g221656_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym215368_)
        (let ((_$e215376_
               (let ((_ht215369215371_ (gxc#current-compile-local-type)))
                 (if _ht215369215371_
                     (let ((_ht215374_ _ht215369215371_))
                       (declare (not safe))
                       (table-ref _ht215374_ _sym215368_ '#f))
                     '#f))))
          (if _$e215376_
              _$e215376_
              (let ((__tmp221657
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp221657 _sym215368_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym215360_)
        (let ((_type215361215363_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym215360_))))
          (if _type215361215363_
              (let ((_type215366_ _type215361215363_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type215366_ 'gxc#!alias::t))
                    (let ((__tmp221658
                           (##structure-ref _type215366_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp221658))
                    _type215366_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where215352_ _klass-id215353_)
        (let ((_$e215355_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id215353_))))
          (if _$e215355_
              ((lambda (_klass215358_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass215358_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where215352_
                        _klass-id215353_
                        _klass215358_)))
                 _klass215358_)
               _$e215355_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where215352_
                 _klass-id215353_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t215349_ _method215350_)
        (let ((__tmp221659
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t215349_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp221659 _method215350_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym215347_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym215347_))
        (let ((__tmp221660
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp221660 _sym215347_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym215345_)
        (let ((__tmp221661
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp221661 _sym215345_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx215343_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx215343_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx215343_))
            (let () (declare (not safe)) (gx#stx-e _stx215343_)))))))
