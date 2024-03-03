(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1709457370)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp114560 (list))
            (__tmp114558
             (let ((__tmp114559
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114559 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp114560
         '(type ssxi methods)
         __tmp114558
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args114494_
        (apply make-instance gxc#optimizer-info::t _$args114494_)))
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
      (lambda (_self114492_)
        (if (let ((__tmp114568
                   (let ()
                     (declare (not safe))
                     (##structure-length _self114492_))))
              (declare (not safe))
              (##fx< '3 __tmp114568))
            (begin
              (let ((__tmp114563
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114562
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114492_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114492_
                 __tmp114563
                 '1
                 __tmp114562
                 '#f))
              (let ((__tmp114565
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114564
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114492_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114492_
                 __tmp114565
                 '2
                 __tmp114564
                 '#f))
              (let ((__tmp114567
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114566
                     (let ()
                       (declare (not safe))
                       (##structure-type _self114492_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self114492_
                 __tmp114567
                 '3
                 __tmp114566
                 '#f)))
            (let ((__tmp114561
                   (let ()
                     (declare (not safe))
                     (##vector-length _self114492_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self114492_
                     '3
                     __tmp114561)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp114571 (list))
            (__tmp114569
             (let ((__tmp114570
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114570 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp114571
         '(id)
         __tmp114569
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args114367_ (apply make-instance gxc#!type::t _$args114367_)))
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
      (let ((__tmp114574 (list gxc#!type::t))
            (__tmp114572
             (let ((__tmp114573
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114573 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp114574
         '()
         __tmp114572
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args114364_ (apply make-instance gxc#!alias::t _$args114364_)))
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
      (let ((__tmp114577 (list gxc#!type::t))
            (__tmp114575
             (let ((__tmp114576
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114576 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp114577
         '()
         __tmp114575
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args114361_
        (apply make-instance gxc#!procedure::t _$args114361_)))
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
      (let ((__tmp114580 (list gxc#!type::t))
            (__tmp114578
             (let ((__tmp114579
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114579 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp114580
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp114578
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args114358_ (apply make-instance gxc#!class::t _$args114358_)))
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
      (let ((__tmp114583 (list gxc#!procedure::t))
            (__tmp114581
             (let ((__tmp114582
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114582 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp114583
         '()
         __tmp114581
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args114355_
        (apply make-instance gxc#!predicate::t _$args114355_)))
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
      (let ((__tmp114586 (list gxc#!procedure::t))
            (__tmp114584
             (let ((__tmp114585
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114585 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp114586
         '()
         __tmp114584
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args114352_
        (apply make-instance gxc#!constructor::t _$args114352_)))
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
      (let ((__tmp114589 (list gxc#!procedure::t))
            (__tmp114587
             (let ((__tmp114588
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114588 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp114589
         '(slot checked?)
         __tmp114587
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args114349_
        (apply make-instance gxc#!accessor::t _$args114349_)))
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
      (let ((__tmp114592 (list gxc#!procedure::t))
            (__tmp114590
             (let ((__tmp114591
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114591 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp114592
         '(slot checked?)
         __tmp114590
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args114346_
        (apply make-instance gxc#!mutator::t _$args114346_)))
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
      (let ((__tmp114595 (list gxc#!procedure::t))
            (__tmp114593
             (let ((__tmp114594
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114594 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp114595
         '(arity dispatch inline inline-typedecl)
         __tmp114593
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args114343_
        (apply make-instance gxc#!lambda::t _$args114343_)))
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
      (let ((__tmp114598 (list gxc#!procedure::t))
            (__tmp114596
             (let ((__tmp114597
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114597 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp114598
         '(clauses)
         __tmp114596
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args114340_
        (apply make-instance gxc#!case-lambda::t _$args114340_)))
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
      (let ((__tmp114601 (list gxc#!procedure::t))
            (__tmp114599
             (let ((__tmp114600
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114600 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp114601
         '(table dispatch)
         __tmp114599
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args114337_
        (apply make-instance gxc#!kw-lambda::t _$args114337_)))
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
      (let ((__tmp114604 (list gxc#!procedure::t))
            (__tmp114602
             (let ((__tmp114603
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114603 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp114604
         '(keys main)
         __tmp114602
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args114334_
        (apply make-instance gxc#!kw-lambda-primary::t _$args114334_)))
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
      (let ((__tmp114605 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp114605
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args114331_
        (apply make-instance gxc#!primitive::t _$args114331_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp114606 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp114606
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args114328_
        (apply make-instance gxc#!primitive-lambda::t _$args114328_)))
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
      (let ((__tmp114607 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp114607
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args114325_
        (apply make-instance gxc#!primitive-case-lambda::t _$args114325_)))
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
      (lambda (_self114207_
               _id114208_
               _super114209_
               _slots114210_
               _ctor-method114211_
               _struct?114212_
               _final?114213_
               _metaclass114214_)
        (let _lp114216_ ((_rest114218_ _super114209_))
          (let* ((_rest114219114227_ _rest114218_)
                 (_else114221114235_ (lambda () '#!void))
                 (_K114223114241_
                  (lambda (_rest114238_ _super-id114239_)
                    (if (##structure-ref
                         (let ((__tmp114610
                                (let ((__tmp114611
                                       (let ()
                                         (declare (not safe))
                                         (cons _id114208_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp114611))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp114610
                            _super-id114239_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp114608
                               (let ((__tmp114609
                                      (let ()
                                        (declare (not safe))
                                        (cons _id114208_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114609))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp114608
                           _super-id114239_))
                        '#!void)
                    (let () (declare (not safe)) (_lp114216_ _rest114238_)))))
            (if (let () (declare (not safe)) (##pair? _rest114219114227_))
                (let ((_hd114224114244_
                       (let ()
                         (declare (not safe))
                         (##car _rest114219114227_)))
                      (_tl114225114246_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest114219114227_))))
                  (let* ((_super-id114249_ _hd114224114244_)
                         (_rest114251_ _tl114225114246_))
                    (declare (not safe))
                    (_K114223114241_ _rest114251_ _super-id114249_)))
                '#!void)))
        (let* ((_ctor-method114301_
                (let ((_$e114253_ _ctor-method114211_))
                  (if _$e114253_
                      _$e114253_
                      (let _lp114256_ ((_rest114258_ _super114209_)
                                       (_method114259_ '#f))
                        (let* ((_rest114260114268_ _rest114258_)
                               (_else114262114276_ (lambda () _method114259_))
                               (_K114264114289_
                                (lambda (_rest114279_ _super-id114280_)
                                  (let* ((_klass114282_
                                          (let ((__tmp114612
                                                 (let ((__tmp114613
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id114208_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp114613))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp114612
                                             _super-id114280_)))
                                         (_$e114284_
                                          (##structure-ref
                                           _klass114282_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e114284_
                                        ((lambda (_ctor-method114287_)
                                           (if _method114259_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method114287_
                                                          _method114259_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp114256_
                                                      _rest114279_
                                                      _ctor-method114287_))
                                                   (let ((__tmp114614
                                                          (let ((__tmp114615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id114208_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp114615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp114614
                                                      _method114259_
                                                      _ctor-method114287_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp114256_
                                                  _rest114279_
                                                  _ctor-method114287_))))
                                         _$e114284_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp114256_
                                           _rest114279_
                                           _method114259_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest114260114268_))
                              (let ((_hd114265114292_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest114260114268_)))
                                    (_tl114266114294_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest114260114268_))))
                                (let* ((_super-id114297_ _hd114265114292_)
                                       (_rest114299_ _tl114266114294_))
                                  (declare (not safe))
                                  (_K114264114289_
                                   _rest114299_
                                   _super-id114297_)))
                              (let ()
                                (declare (not safe))
                                (_else114262114276_))))))))
               (_g114616_
                (let ((__tmp114621
                       (lambda (_klass-id114303_)
                         (let ((__tmp114622
                                (##structure-ref
                                 (let ((__tmp114623
                                        (let ((__tmp114624
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id114208_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114624))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp114623
                                    _klass-id114303_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id114303_ __tmp114622))))
                      (__tmp114618
                       (lambda (_klass-id114305_)
                         (##structure-ref
                          (let ((__tmp114619
                                 (let ((__tmp114620
                                        (let ()
                                          (declare (not safe))
                                          (cons _id114208_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp114620))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp114619
                             _klass-id114305_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super114209_
                   'get-precedence-list:
                   __tmp114621
                   'struct:
                   __tmp114618
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g114617_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g114616_)
                         (##vector-length _g114616_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g114617_ 2)))
                  (error "Context expects 2 values" _g114617_)))
            (let ((_precedence-list114307_
                   (let () (declare (not safe)) (##vector-ref _g114616_ 0)))
                  (_base-struct114308_
                   (let () (declare (not safe)) (##vector-ref _g114616_ 1))))
              (let ((_fields114310_
                     (let ((__tmp114625
                            (let ((__tmp114626
                                   (let ()
                                     (declare (not safe))
                                     (cons _id114208_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp114626))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp114625
                        _base-struct114308_
                        _precedence-list114307_
                        _slots114210_))))
                (##structure-set! _self114207_ _id114208_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self114207_
                 _super114209_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114207_
                 _precedence-list114307_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114207_
                 _slots114210_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114207_
                 _fields114310_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114207_
                 _ctor-method114301_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114207_
                 _struct?114212_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114207_
                 _final?114213_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self114207_
                 _metaclass114214_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self114313_
               _id114314_
               _super114315_
               _precedence-list114316_
               _slots114317_
               _fields114318_
               _constructor114319_
               _struct?114320_
               _final?114321_
               _metaclass114322_
               _methods114323_)
        (##structure-set! _self114313_ _id114314_ '1 gxc#!type::t '#f)
        (##structure-set! _self114313_ _super114315_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self114313_
         _precedence-list114316_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self114313_ _slots114317_ '4 gxc#!class::t '#f)
        (##structure-set! _self114313_ _fields114318_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self114313_
         _constructor114319_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self114313_ _struct?114320_ '7 gxc#!class::t '#f)
        (##structure-set! _self114313_ _final?114321_ '8 gxc#!class::t '#f)
        (##structure-set! _self114313_ _metaclass114322_ '9 gxc#!class::t '#f)
        (if _methods114323_
            (##structure-set!
             _self114313_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods114323_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g114628_
        (let ((_g114627_ (let () (declare (not safe)) (##length _g114628_))))
          (cond ((let () (declare (not safe)) (##fx= _g114627_ 8))
                 (apply (lambda (_self114207_
                                 _id114208_
                                 _super114209_
                                 _slots114210_
                                 _ctor-method114211_
                                 _struct?114212_
                                 _final?114213_
                                 _metaclass114214_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self114207_
                             _id114208_
                             _super114209_
                             _slots114210_
                             _ctor-method114211_
                             _struct?114212_
                             _final?114213_
                             _metaclass114214_)))
                        _g114628_))
                ((let () (declare (not safe)) (##fx= _g114627_ 11))
                 (apply (lambda (_self114313_
                                 _id114314_
                                 _super114315_
                                 _precedence-list114316_
                                 _slots114317_
                                 _fields114318_
                                 _constructor114319_
                                 _struct?114320_
                                 _final?114321_
                                 _metaclass114322_
                                 _methods114323_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self114313_
                             _id114314_
                             _super114315_
                             _precedence-list114316_
                             _slots114317_
                             _fields114318_
                             _constructor114319_
                             _struct?114320_
                             _final?114321_
                             _metaclass114322_
                             _methods114323_)))
                        _g114628_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g114628_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass114496 __method-table114497)
        (let ((__fields114498
               (let ((__slot114508
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114496 'fields))))
                 (if __slot114508
                     __slot114508
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__metaclass114499
               (let ((__slot114509
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114496 'metaclass))))
                 (if __slot114509
                     __slot114509
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__constructor114500
               (let ((__slot114510
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114496 'constructor))))
                 (if __slot114510
                     __slot114510
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__slots114501
               (let ((__slot114511
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114496 'slots))))
                 (if __slot114511
                     __slot114511
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__id114502
               (let ((__slot114512
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114496 'id))))
                 (if __slot114512
                     __slot114512
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super114503
               (let ((__slot114513
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114496 'super))))
                 (if __slot114513
                     __slot114513
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__methods114504
               (let ((__slot114514
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114496 'methods))))
                 (if __slot114514
                     __slot114514
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__final?114505
               (let ((__slot114515
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114496 'final?))))
                 (if __slot114515
                     __slot114515
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__struct?114506
               (let ((__slot114516
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114496 'struct?))))
                 (if __slot114516
                     __slot114516
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__precedence-list114507
               (let ((__slot114517
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114496 'precedence-list))))
                 (if __slot114517
                     __slot114517
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list))))))
          (lambda _g114630_
            (let ((_g114629_
                   (let () (declare (not safe)) (##length _g114630_))))
              (cond ((let () (declare (not safe)) (##fx= _g114629_ 8))
                     (apply (lambda (_self114207_
                                     _id114208_
                                     _super114209_
                                     _slots114210_
                                     _ctor-method114211_
                                     _struct?114212_
                                     _final?114213_
                                     _metaclass114214_)
                              (let _lp114216_ ((_rest114218_ _super114209_))
                                (let* ((_rest114219114227_ _rest114218_)
                                       (_else114221114235_ (lambda () '#!void))
                                       (_K114223114241_
                                        (lambda (_rest114238_ _super-id114239_)
                                          (if (##structure-ref
                                               (let ((__tmp114633
                                                      (let ((__tmp114634
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id114208_ '()))))
                (declare (not safe))
                (cons '!class __tmp114634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp114633
                                                  _super-id114239_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp114631
                                                     (let ((__tmp114632
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id114208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp114632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp114631
                                                 _super-id114239_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp114216_ _rest114238_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest114219114227_))
                                      (let ((_hd114224114244_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest114219114227_)))
                                            (_tl114225114246_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest114219114227_))))
                                        (let* ((_super-id114249_
                                                _hd114224114244_)
                                               (_rest114251_ _tl114225114246_))
                                          (declare (not safe))
                                          (_K114223114241_
                                           _rest114251_
                                           _super-id114249_)))
                                      '#!void)))
                              (let* ((_ctor-method114301_
                                      (let ((_$e114253_ _ctor-method114211_))
                                        (if _$e114253_
                                            _$e114253_
                                            (let _lp114256_ ((_rest114258_
                                                              _super114209_)
                                                             (_method114259_
                                                              '#f))
                                              (let* ((_rest114260114268_
                                                      _rest114258_)
                                                     (_else114262114276_
                                                      (lambda ()
                                                        _method114259_))
                                                     (_K114264114289_
                                                      (lambda (_rest114279_
                                                               _super-id114280_)
                                                        (let* ((_klass114282_
                                                                (let ((__tmp114635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114636
                                      (let ()
                                        (declare (not safe))
                                        (cons _id114208_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp114636))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp114635
                           _super-id114280_)))
                       (_$e114284_
                        (##structure-ref _klass114282_ '6 gxc#!class::t '#f)))
                  (if _$e114284_
                      ((lambda (_ctor-method114287_)
                         (if _method114259_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method114287_ _method114259_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp114256_
                                    _rest114279_
                                    _ctor-method114287_))
                                 (let ((__tmp114637
                                        (let ((__tmp114638
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id114208_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp114638))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp114637
                                    _method114259_
                                    _ctor-method114287_)))
                             (let ()
                               (declare (not safe))
                               (_lp114256_ _rest114279_ _ctor-method114287_))))
                       _$e114284_)
                      (let ()
                        (declare (not safe))
                        (_lp114256_ _rest114279_ _method114259_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest114260114268_))
                                                    (let ((_hd114265114292_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest114260114268_)))
                                                          (_tl114266114294_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest114260114268_))))
                                                      (let* ((_super-id114297_
                                                              _hd114265114292_)
                                                             (_rest114299_
                                                              _tl114266114294_))
                                                        (declare (not safe))
                                                        (_K114264114289_
                                                         _rest114299_
                                                         _super-id114297_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else114262114276_))))))))
                                     (_g114639_
                                      (let ((__tmp114644
                                             (lambda (_klass-id114303_)
                                               (let ((__tmp114645
                                                      (##structure-ref
                                                       (let ((__tmp114646
                                                              (let ((__tmp114647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id114208_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp114647))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp114646 _klass-id114303_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id114303_
                                                       __tmp114645))))
                                            (__tmp114641
                                             (lambda (_klass-id114305_)
                                               (##structure-ref
                                                (let ((__tmp114642
                                                       (let ((__tmp114643
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id114208_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp114643))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp114642
                                                   _klass-id114305_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super114209_
                                         'get-precedence-list:
                                         __tmp114644
                                         'struct:
                                         __tmp114641
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g114640_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g114639_)
                                               (##vector-length _g114639_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g114640_ 2)))
                                        (error "Context expects 2 values"
                                               _g114640_)))
                                  (let ((_precedence-list114307_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114639_ 0)))
                                        (_base-struct114308_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g114639_ 1))))
                                    (let ((_fields114310_
                                           (let ((__tmp114648
                                                  (let ((__tmp114649
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id114208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp114649))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp114648
                                              _base-struct114308_
                                              _precedence-list114307_
                                              _slots114210_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114207_
                                         _id114208_
                                         __id114502
                                         __klass114496
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114207_
                                         _super114209_
                                         __super114503
                                         __klass114496
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114207_
                                         _precedence-list114307_
                                         __precedence-list114507
                                         __klass114496
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114207_
                                         _slots114210_
                                         __slots114501
                                         __klass114496
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114207_
                                         _fields114310_
                                         __fields114498
                                         __klass114496
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114207_
                                         _ctor-method114301_
                                         __constructor114500
                                         __klass114496
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114207_
                                         _struct?114212_
                                         __struct?114506
                                         __klass114496
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114207_
                                         _final?114213_
                                         __final?114505
                                         __klass114496
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self114207_
                                         _metaclass114214_
                                         __metaclass114499
                                         __klass114496
                                         '#f)))))))
                            _g114630_))
                    ((let () (declare (not safe)) (##fx= _g114629_ 11))
                     (apply (lambda (_self114313_
                                     _id114314_
                                     _super114315_
                                     _precedence-list114316_
                                     _slots114317_
                                     _fields114318_
                                     _constructor114319_
                                     _struct?114320_
                                     _final?114321_
                                     _metaclass114322_
                                     _methods114323_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114313_
                                 _id114314_
                                 __id114502
                                 __klass114496
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114313_
                                 _super114315_
                                 __super114503
                                 __klass114496
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114313_
                                 _precedence-list114316_
                                 __precedence-list114507
                                 __klass114496
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114313_
                                 _slots114317_
                                 __slots114501
                                 __klass114496
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114313_
                                 _fields114318_
                                 __fields114498
                                 __klass114496
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114313_
                                 _constructor114319_
                                 __constructor114500
                                 __klass114496
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114313_
                                 _struct?114320_
                                 __struct?114506
                                 __klass114496
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114313_
                                 _final?114321_
                                 __final?114505
                                 __klass114496
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self114313_
                                 _metaclass114322_
                                 __metaclass114499
                                 __klass114496
                                 '#f))
                              (if _methods114323_
                                  (let ((__tmp114650
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods114323_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self114313_
                                     __tmp114650
                                     __methods114504
                                     __klass114496
                                     '#f))
                                  '#!void))
                            _g114630_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g114630_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where114059_
               _base-struct114060_
               _precedence-list114061_
               _direct-slots114062_)
        (let* ((_base-fields114064_
                (if _base-struct114060_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where114059_
                        _base-struct114060_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields114066_ (reverse _base-fields114064_))
               (_seen-slots114074_
                (let ((_tab114068_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g114069114071_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab114068_ _g114069114071_ '#t)))
                   _base-fields114064_)
                  _tab114068_))
               (_process-slot114078_
                (lambda (_slot114076_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots114074_ _slot114076_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots114074_ _slot114076_ '#t))
                        (set! _r-fields114066_
                              (let ()
                                (declare (not safe))
                                (cons _slot114076_ _r-fields114066_))))))))
          (for-each
           (lambda (_mixin114081_)
             (let ((_klass114083_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where114059_
                       _mixin114081_))))
               (if (##structure-ref _klass114083_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot114078_
                    (##structure-ref _klass114083_ '5 gxc#!class::t '#f)))))
           _precedence-list114061_)
          (for-each _process-slot114078_ _direct-slots114062_)
          (reverse _r-fields114066_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass114018_ _slot114019_)
        (let _lp114021_ ((_rest114023_
                          (##structure-ref _klass114018_ '5 gxc#!class::t '#f))
                         (_offset114024_ '1))
          (let* ((_rest114025114033_ _rest114023_)
                 (_else114027114041_
                  (lambda ()
                    (let ((__tmp114652
                           (##structure-ref _klass114018_ '1 gxc#!type::t '#f))
                          (__tmp114651
                           (##structure-ref
                            _klass114018_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp114652
                       __tmp114651
                       _slot114019_))))
                 (_K114029114047_
                  (lambda (_rest114044_ _s114045_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s114045_ _slot114019_))
                        _offset114024_
                        (let ((__tmp114653
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset114024_ '1))))
                          (declare (not safe))
                          (_lp114021_ _rest114044_ __tmp114653))))))
            (if (let () (declare (not safe)) (##pair? _rest114025114033_))
                (let ((_hd114030114050_
                       (let ()
                         (declare (not safe))
                         (##car _rest114025114033_)))
                      (_tl114031114052_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest114025114033_))))
                  (let* ((_s114055_ _hd114030114050_)
                         (_rest114057_ _tl114031114052_))
                    (declare (not safe))
                    (_K114029114047_ _rest114057_ _s114055_)))
                (let () (declare (not safe)) (_else114027114041_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass113976_ _slot113977_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass113976_ _slot113977_))
            _klass113976_
            (let _lp113979_ ((_rest113981_
                              (##structure-ref
                               _klass113976_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest113982113990_ _rest113981_)
                     (_else113984113998_ (lambda () '#f))
                     (_K113986114006_
                      (lambda (_rest114001_ _super114002_)
                        (let ((_super-class114004_
                               (let ((__tmp114654
                                      (let ((__tmp114655
                                             (let ((__tmp114657
                                                    (##structure-ref
                                                     _klass113976_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp114656
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot113977_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp114657
                                                     __tmp114656))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp114655))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp114654
                                  _super114002_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class114004_
                                 _slot113977_))
                              _super-class114004_
                              (let ()
                                (declare (not safe))
                                (_lp113979_ _rest114001_)))))))
                (if (let () (declare (not safe)) (##pair? _rest113982113990_))
                    (let ((_hd113987114009_
                           (let ()
                             (declare (not safe))
                             (##car _rest113982113990_)))
                          (_tl113988114011_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest113982113990_))))
                      (let* ((_super114014_ _hd113987114009_)
                             (_rest114016_ _tl113988114011_))
                        (declare (not safe))
                        (_K113986114006_ _rest114016_ _super114014_)))
                    (let () (declare (not safe)) (_else113984113998_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass113973_ _slot113974_)
        (if (##structure-ref _klass113973_ '7 gxc#!class::t '#f)
            (memq _slot113974_
                  (##structure-ref _klass113973_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self113970_ _id113971_)
        (##structure-set! _self113970_ _id113971_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass114518 __method-table114519)
        (let ((__id114520
               (let ((__slot114521
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114518 'id))))
                 (if __slot114521
                     __slot114521
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113970_ _id113971_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113970_
               _id113971_
               __id114520
               __klass114518
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
      (lambda (_self113845_ _id113846_)
        (##structure-set! _self113845_ _id113846_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass114522 __method-table114523)
        (let ((__id114524
               (let ((__slot114525
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114522 'id))))
                 (if __slot114525
                     __slot114525
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self113845_ _id113846_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113845_
               _id113846_
               __id114524
               __klass114522
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
      (lambda (_self113718_ _id113719_ _slot113720_ _checked?113721_)
        (##structure-set! _self113718_ _id113719_ '1 gxc#!type::t '#f)
        (##structure-set! _self113718_ _slot113720_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self113718_
         _checked?113721_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass114526 __method-table114527)
        (let ((__id114528
               (let ((__slot114531
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114526 'id))))
                 (if __slot114531
                     __slot114531
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?114529
               (let ((__slot114532
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114526 'checked?))))
                 (if __slot114532
                     __slot114532
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot114530
               (let ((__slot114533
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114526 'slot))))
                 (if __slot114533
                     __slot114533
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self113718_ _id113719_ _slot113720_ _checked?113721_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113718_
               _id113719_
               __id114528
               __klass114526
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113718_
               _slot113720_
               __slot114530
               __klass114526
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113718_
               _checked?113721_
               __checked?114529
               __klass114526
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
      (lambda (_self113591_ _id113592_ _slot113593_ _checked?113594_)
        (##structure-set! _self113591_ _id113592_ '1 gxc#!type::t '#f)
        (##structure-set! _self113591_ _slot113593_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self113591_
         _checked?113594_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass114534 __method-table114535)
        (let ((__id114536
               (let ((__slot114539
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114534 'id))))
                 (if __slot114539
                     __slot114539
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?114537
               (let ((__slot114540
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114534 'checked?))))
                 (if __slot114540
                     __slot114540
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot114538
               (let ((__slot114541
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass114534 'slot))))
                 (if __slot114541
                     __slot114541
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self113591_ _id113592_ _slot113593_ _checked?113594_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113591_
               _id113592_
               __id114536
               __klass114534
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113591_
               _slot113593_
               __slot114538
               __klass114534
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self113591_
               _checked?113594_
               __checked?114537
               __klass114534
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
      (lambda (_self113435_
               _id113436_
               _arity113437_
               _dispatch113438_
               _inline113439_
               _typedecl113440_)
        (if (let ((__tmp114664
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113435_))))
              (declare (not safe))
              (##fx< '5 __tmp114664))
            (begin
              (let ((__tmp114659
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113435_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113435_
                 _id113436_
                 '1
                 __tmp114659
                 '#f))
              (let ((__tmp114660
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113435_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113435_
                 _arity113437_
                 '2
                 __tmp114660
                 '#f))
              (let ((__tmp114661
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113435_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113435_
                 _dispatch113438_
                 '3
                 __tmp114661
                 '#f))
              (let ((__tmp114662
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113435_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113435_
                 _inline113439_
                 '4
                 __tmp114662
                 '#f))
              (let ((__tmp114663
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113435_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113435_
                 _typedecl113440_
                 '5
                 __tmp114663
                 '#f)))
            (let ((__tmp114658
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113435_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113435_
                     '5
                     __tmp114658)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self113445_ _id113446_ _arity113447_ _dispatch113448_)
        (let* ((_inline113450_ '#f) (_typedecl113452_ '#f))
          (if (let ((__tmp114671
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113445_))))
                (declare (not safe))
                (##fx< '5 __tmp114671))
              (begin
                (let ((__tmp114666
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113445_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113445_
                   _id113446_
                   '1
                   __tmp114666
                   '#f))
                (let ((__tmp114667
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113445_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113445_
                   _arity113447_
                   '2
                   __tmp114667
                   '#f))
                (let ((__tmp114668
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113445_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113445_
                   _dispatch113448_
                   '3
                   __tmp114668
                   '#f))
                (let ((__tmp114669
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113445_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113445_
                   _inline113450_
                   '4
                   __tmp114669
                   '#f))
                (let ((__tmp114670
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113445_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113445_
                   _typedecl113452_
                   '5
                   __tmp114670
                   '#f)))
              (let ((__tmp114665
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113445_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113445_
                       '5
                       __tmp114665))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self113454_
               _id113455_
               _arity113456_
               _dispatch113457_
               _inline113458_)
        (let ((_typedecl113460_ '#f))
          (if (let ((__tmp114678
                     (let ()
                       (declare (not safe))
                       (##structure-length _self113454_))))
                (declare (not safe))
                (##fx< '5 __tmp114678))
              (begin
                (let ((__tmp114673
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113454_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113454_
                   _id113455_
                   '1
                   __tmp114673
                   '#f))
                (let ((__tmp114674
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113454_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113454_
                   _arity113456_
                   '2
                   __tmp114674
                   '#f))
                (let ((__tmp114675
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113454_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113454_
                   _dispatch113457_
                   '3
                   __tmp114675
                   '#f))
                (let ((__tmp114676
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113454_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113454_
                   _inline113458_
                   '4
                   __tmp114676
                   '#f))
                (let ((__tmp114677
                       (let ()
                         (declare (not safe))
                         (##structure-type _self113454_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self113454_
                   _typedecl113460_
                   '5
                   __tmp114677
                   '#f)))
              (let ((__tmp114672
                     (let ()
                       (declare (not safe))
                       (##vector-length _self113454_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self113454_
                       '5
                       __tmp114672))))))
    (define gxc#!lambda:::init!
      (lambda _g114680_
        (let ((_g114679_ (let () (declare (not safe)) (##length _g114680_))))
          (cond ((let () (declare (not safe)) (##fx= _g114679_ 4))
                 (apply (lambda (_self113445_
                                 _id113446_
                                 _arity113447_
                                 _dispatch113448_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self113445_
                             _id113446_
                             _arity113447_
                             _dispatch113448_)))
                        _g114680_))
                ((let () (declare (not safe)) (##fx= _g114679_ 5))
                 (apply (lambda (_self113454_
                                 _id113455_
                                 _arity113456_
                                 _dispatch113457_
                                 _inline113458_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self113454_
                             _id113455_
                             _arity113456_
                             _dispatch113457_
                             _inline113458_)))
                        _g114680_))
                ((let () (declare (not safe)) (##fx= _g114679_ 6))
                 (apply (lambda (_self113462_
                                 _id113463_
                                 _arity113464_
                                 _dispatch113465_
                                 _inline113466_
                                 _typedecl113467_)
                          (if (let ((__tmp114687
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self113462_))))
                                (declare (not safe))
                                (##fx< '5 __tmp114687))
                              (begin
                                (let ((__tmp114682
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113462_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113462_
                                   _id113463_
                                   '1
                                   __tmp114682
                                   '#f))
                                (let ((__tmp114683
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113462_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113462_
                                   _arity113464_
                                   '2
                                   __tmp114683
                                   '#f))
                                (let ((__tmp114684
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113462_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113462_
                                   _dispatch113465_
                                   '3
                                   __tmp114684
                                   '#f))
                                (let ((__tmp114685
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113462_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113462_
                                   _inline113466_
                                   '4
                                   __tmp114685
                                   '#f))
                                (let ((__tmp114686
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self113462_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self113462_
                                   _typedecl113467_
                                   '5
                                   __tmp114686
                                   '#f)))
                              (let ((__tmp114681
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self113462_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self113462_
                                       '5
                                       __tmp114681))))
                        _g114680_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g114680_))))))
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
      (lambda (_self113187_ . _args113188_)
        (apply struct-instance-init! _self113187_ _args113188_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type113062_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113062_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type113062_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass113055_)
        (let ((_$e113057_
               (##structure-ref _klass113055_ '10 gxc#!class::t '#f)))
          (if _$e113057_
              _$e113057_
              (let ((_tab113060_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass113055_
                 _tab113060_
                 '10
                 gxc#!class::t
                 '#f)
                _tab113060_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass113046_ _method113047_)
        (let ((_tab113048113050_
               (##structure-ref _klass113046_ '10 gxc#!class::t '#f)))
          (if _tab113048113050_
              (let ((_tab113053_ _tab113048113050_))
                (declare (not safe))
                (hash-get _tab113053_ _method113047_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type113043_ _method113044_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113043_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type113043_ _method113044_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym113027_ _type113028_ _local?113029_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type113028_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym113027_
                     _type113028_)))
        (let ((__tmp114688
               (let () (declare (not safe)) (struct->list _type113028_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym113027_ '" " __tmp114688))
        (let ((__tmp114689
               (if _local?113029_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp114689 _sym113027_ _type113028_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym113034_ _type113035_)
        (let ((_local?113037_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym113034_
           _type113035_
           _local?113037_))))
    (define gxc#optimizer-declare-type!
      (lambda _g114691_
        (let ((_g114690_ (let () (declare (not safe)) (##length _g114691_))))
          (cond ((let () (declare (not safe)) (##fx= _g114690_ 2))
                 (apply (lambda (_sym113034_ _type113035_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym113034_
                             _type113035_)))
                        _g114691_))
                ((let () (declare (not safe)) (##fx= _g114690_ 3))
                 (apply (lambda (_sym113039_ _type113040_ _local?113041_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym113039_
                             _type113040_
                             _local?113041_)))
                        _g114691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g114691_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym113013_ _local?113014_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym113013_))
        (let ((__tmp114692
               (if _local?113014_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp114692 _sym113013_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym113019_)
        (let ((_local?113021_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym113019_ _local?113021_))))
    (define gxc#optimizer-clear-type!
      (lambda _g114694_
        (let ((_g114693_ (let () (declare (not safe)) (##length _g114694_))))
          (cond ((let () (declare (not safe)) (##fx= _g114693_ 1))
                 (apply (lambda (_sym113019_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym113019_)))
                        _g114694_))
                ((let () (declare (not safe)) (##fx= _g114693_ 2))
                 (apply (lambda (_sym113023_ _local?113024_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym113023_
                             _local?113024_)))
                        _g114694_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g114694_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t112981_ _method112982_ _sym112983_ _rebind?112984_)
        (let* ((_type112986_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t112981_)))
               (_$e112988_
                (let () (declare (not safe)) (gxc#!type-vtab _type112986_))))
          (if _$e112988_
              ((lambda (_vtab112991_)
                 (let ((_$e112993_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab112991_ _method112982_))))
                   (if _$e112993_
                       ((lambda (_existing112996_)
                          (if _rebind?112984_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t112981_
                                   '" "
                                   _method112982_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab112991_
                                   _method112982_
                                   _sym112983_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing112996_ _sym112983_))
                                  '#!void
                                  (let ((__tmp114699
                                         (let ((__tmp114700
                                                (let ((__tmp114701
                                                       (let ((__tmp114702
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym112983_ '()))))
                 (declare (not safe))
                 (cons _method112982_ __tmp114702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t112981_
                                                        __tmp114701))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp114700))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp114699
                                     _method112982_)))))
                        _$e112993_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t112981_
                            '" "
                            _method112982_
                            '" => "
                            _sym112983_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab112991_
                            _method112982_
                            _sym112983_))))))
               _$e112988_)
              (if (let () (declare (not safe)) (not _type112986_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t112981_))
                  (let ((__tmp114695
                         (let ((__tmp114696
                                (let ((__tmp114697
                                       (let ((__tmp114698
                                              (let ()
                                                (declare (not safe))
                                                (cons _method112982_ '()))))
                                         (declare (not safe))
                                         (cons _sym112983_ __tmp114698))))
                                  (declare (not safe))
                                  (cons _type-t112981_ __tmp114697))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp114696))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp114695
                     _type112986_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t113001_ _method113002_ _sym113003_)
        (let ((_rebind?113005_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t113001_
           _method113002_
           _sym113003_
           _rebind?113005_))))
    (define gxc#optimizer-declare-method!
      (lambda _g114704_
        (let ((_g114703_ (let () (declare (not safe)) (##length _g114704_))))
          (cond ((let () (declare (not safe)) (##fx= _g114703_ 3))
                 (apply (lambda (_type-t113001_ _method113002_ _sym113003_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t113001_
                             _method113002_
                             _sym113003_)))
                        _g114704_))
                ((let () (declare (not safe)) (##fx= _g114703_ 4))
                 (apply (lambda (_type-t113007_
                                 _method113008_
                                 _sym113009_
                                 _rebind?113010_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t113007_
                             _method113008_
                             _sym113009_
                             _rebind?113010_)))
                        _g114704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g114704_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym112969_)
        (let ((_$e112977_
               (let ((_ht112970112972_ (gxc#current-compile-local-type)))
                 (if _ht112970112972_
                     (let ((_ht112975_ _ht112970112972_))
                       (declare (not safe))
                       (hash-get _ht112975_ _sym112969_))
                     '#f))))
          (if _$e112977_
              _$e112977_
              (let ((__tmp114705
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp114705 _sym112969_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym112961_)
        (let ((_type112962112964_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym112961_))))
          (if _type112962112964_
              (let ((_type112967_ _type112962112964_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type112967_ 'gxc#!alias::t))
                    (let ((__tmp114706
                           (##structure-ref _type112967_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp114706))
                    _type112967_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where112953_ _klass-id112954_)
        (let ((_$e112956_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id112954_))))
          (if _$e112956_
              ((lambda (_klass112959_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass112959_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where112953_
                        _klass-id112954_
                        _klass112959_)))
                 _klass112959_)
               _$e112956_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where112953_
                 _klass-id112954_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t112950_ _method112951_)
        (let ((__tmp114707
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t112950_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp114707 _method112951_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym112948_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym112948_))
        (let ((__tmp114708
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp114708 _sym112948_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym112946_)
        (let ((__tmp114709
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp114709 _sym112946_))))
    (define gxc#identifier-symbol
      (lambda (_stx112944_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx112944_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx112944_))
            (let () (declare (not safe)) (gx#stx-e _stx112944_)))))))
