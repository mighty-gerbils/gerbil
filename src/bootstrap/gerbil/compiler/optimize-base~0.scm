(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1711709198)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp113432 (list)) (__tmp113431 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp113432
         '(type classes ssxi methods)
         __tmp113431
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args113404_
        (apply make-instance gxc#optimizer-info::t _$args113404_)))
    (define gxc#optimizer-info-type
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#optimizer-info::t 'type)))
    (define gxc#optimizer-info-classes
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#optimizer-info::t 'classes)))
    (define gxc#optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#optimizer-info::t 'ssxi)))
    (define gxc#optimizer-info-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#optimizer-info::t 'methods)))
    (define gxc#optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#optimizer-info::t 'type)))
    (define gxc#optimizer-info-classes-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#optimizer-info::t 'classes)))
    (define gxc#optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#optimizer-info::t 'ssxi)))
    (define gxc#optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#optimizer-info::t 'methods)))
    (define gxc#&optimizer-info-type
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#optimizer-info::t 'type)))
    (define gxc#&optimizer-info-classes
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#optimizer-info::t 'classes)))
    (define gxc#&optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#optimizer-info::t 'ssxi)))
    (define gxc#&optimizer-info-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#optimizer-info::t 'methods)))
    (define gxc#&optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#optimizer-info::t 'type)))
    (define gxc#&optimizer-info-classes-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#optimizer-info::t 'classes)))
    (define gxc#&optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#optimizer-info::t 'ssxi)))
    (define gxc#&optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#optimizer-info::t 'methods)))
    (define gxc#optimizer-info:::init!
      (lambda (_self113402_)
        (if (let ((__tmp113433
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113402_))))
              (declare (not safe))
              (##fx< '4 __tmp113433))
            (begin
              (let ((__tmp113434
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113402_
                 __tmp113434
                 '1
                 '#f
                 '#f))
              (let ((__tmp113435
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113402_
                 __tmp113435
                 '2
                 '#f
                 '#f))
              (let ((__tmp113436
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113402_
                 __tmp113436
                 '3
                 '#f
                 '#f))
              (let ((__tmp113437
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113402_
                 __tmp113437
                 '4
                 '#f
                 '#f))
              '#!void)
            (let ((__tmp113438
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113402_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113402_
                     '4
                     __tmp113438)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp113440 (list))
            (__tmp113439
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp113440
         '(id)
         __tmp113439
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args113277_ (apply make-instance gxc#!type::t _$args113277_)))
    (define gxc#!type-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!type::t 'id)))
    (define gxc#!type-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!type::t 'id)))
    (define gxc#&!type-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!type::t 'id)))
    (define gxc#&!type-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!type::t 'id)))
    (define gxc#!alias::t
      (let ((__tmp113442 (list gxc#!type::t))
            (__tmp113441 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp113442
         '()
         __tmp113441
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args113274_ (apply make-instance gxc#!alias::t _$args113274_)))
    (define gxc#!alias-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!alias::t 'id)))
    (define gxc#!alias-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!alias::t 'id)))
    (define gxc#&!alias-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!alias::t 'id)))
    (define gxc#&!alias-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!alias::t 'id)))
    (define gxc#!procedure::t
      (let ((__tmp113444 (list gxc#!type::t))
            (__tmp113443
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp113444
         '(signature)
         __tmp113443
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (__make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args113271_
        (apply make-instance gxc#!procedure::t _$args113271_)))
    (define gxc#!procedure-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!procedure::t 'signature)))
    (define gxc#!procedure-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!procedure::t 'id)))
    (define gxc#!procedure-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!procedure::t 'signature)))
    (define gxc#!procedure-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!procedure::t 'id)))
    (define gxc#&!procedure-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!procedure::t 'signature)))
    (define gxc#&!procedure-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!procedure::t 'id)))
    (define gxc#&!procedure-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!procedure::t 'signature)))
    (define gxc#&!procedure-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!procedure::t 'id)))
    (define gxc#!signature::t
      (let ((__tmp113446 (list))
            (__tmp113445
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked)
                     (print: return effect arguments unchecked)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp113446
         '(return effect arguments unchecked)
         __tmp113445
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _$args113268_
        (apply make-instance gxc#!signature::t _$args113268_)))
    (define gxc#!signature-return
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!signature::t 'return)))
    (define gxc#!signature-effect
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!signature::t 'effect)))
    (define gxc#!signature-arguments
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!signature::t 'arguments)))
    (define gxc#!signature-unchecked
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!signature::t 'unchecked)))
    (define gxc#!signature-return-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!signature::t 'return)))
    (define gxc#!signature-effect-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!signature::t 'effect)))
    (define gxc#!signature-arguments-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!signature::t 'arguments)))
    (define gxc#!signature-unchecked-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!signature::t 'unchecked)))
    (define gxc#&!signature-return
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!signature::t 'return)))
    (define gxc#&!signature-effect
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!signature::t 'effect)))
    (define gxc#&!signature-arguments
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!signature::t 'arguments)))
    (define gxc#&!signature-unchecked
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!signature::t 'unchecked)))
    (define gxc#&!signature-return-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!signature::t 'return)))
    (define gxc#&!signature-effect-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!signature::t 'effect)))
    (define gxc#&!signature-arguments-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!signature::t 'arguments)))
    (define gxc#&!signature-unchecked-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!signature::t 'unchecked)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp113448 (list gxc#!procedure::t))
            (__tmp113447 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp113448
         '()
         __tmp113447
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _$args113265_
        (apply make-instance gxc#!primitive-predicate::t _$args113265_)))
    (define gxc#!primitive-predicate-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-predicate::t 'signature)))
    (define gxc#!primitive-predicate-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-predicate::t 'id)))
    (define gxc#!primitive-predicate-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-predicate::t 'signature)))
    (define gxc#!primitive-predicate-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-predicate::t 'id)))
    (define gxc#&!primitive-predicate-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-predicate::t
         'signature)))
    (define gxc#&!primitive-predicate-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-predicate::t
         'id)))
    (define gxc#&!primitive-predicate-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-predicate::t
         'signature)))
    (define gxc#&!primitive-predicate-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!primitive-predicate::t 'id)))
    (define gxc#!class-meta::t
      (let ((__tmp113450 (list gxc#!type::t))
            (__tmp113449 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp113450
         '(class)
         __tmp113449
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _$args113262_
        (apply make-instance gxc#!class-meta::t _$args113262_)))
    (define gxc#!class-meta-class
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class-meta::t 'class)))
    (define gxc#!class-meta-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class-meta::t 'id)))
    (define gxc#!class-meta-class-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class-meta::t 'class)))
    (define gxc#!class-meta-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class-meta::t 'id)))
    (define gxc#&!class-meta-class
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class-meta::t 'class)))
    (define gxc#&!class-meta-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class-meta::t 'id)))
    (define gxc#&!class-meta-class-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class-meta::t 'class)))
    (define gxc#&!class-meta-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class-meta::t 'id)))
    (define gxc#!class::t
      (let ((__tmp113452 (list gxc#!type::t))
            (__tmp113451
             (cons (cons 'struct: '#t)
                   '((equal:
                      super
                      precedence-list
                      slots
                      fields
                      constructor
                      struct?
                      final?
                      system?
                      metaclass
                      methods)
                     (print: super precedence-list)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp113452
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp113451
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args113259_ (apply make-instance gxc#!class::t _$args113259_)))
    (define gxc#!class-super
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'super)))
    (define gxc#!class-precedence-list
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'precedence-list)))
    (define gxc#!class-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'slots)))
    (define gxc#!class-fields
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'fields)))
    (define gxc#!class-constructor
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'constructor)))
    (define gxc#!class-struct?
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'struct?)))
    (define gxc#!class-final?
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'final?)))
    (define gxc#!class-system?
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'system?)))
    (define gxc#!class-metaclass
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'metaclass)))
    (define gxc#!class-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'methods)))
    (define gxc#!class-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'id)))
    (define gxc#!class-super-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'super)))
    (define gxc#!class-precedence-list-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'precedence-list)))
    (define gxc#!class-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'slots)))
    (define gxc#!class-fields-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'fields)))
    (define gxc#!class-constructor-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'constructor)))
    (define gxc#!class-struct?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'struct?)))
    (define gxc#!class-final?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'final?)))
    (define gxc#!class-system?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'system?)))
    (define gxc#!class-metaclass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'metaclass)))
    (define gxc#!class-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'methods)))
    (define gxc#!class-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'id)))
    (define gxc#&!class-super
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'super)))
    (define gxc#&!class-precedence-list
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'precedence-list)))
    (define gxc#&!class-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'slots)))
    (define gxc#&!class-fields
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'fields)))
    (define gxc#&!class-constructor
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'constructor)))
    (define gxc#&!class-struct?
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'struct?)))
    (define gxc#&!class-final?
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'final?)))
    (define gxc#&!class-system?
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'system?)))
    (define gxc#&!class-metaclass
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'metaclass)))
    (define gxc#&!class-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'methods)))
    (define gxc#&!class-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'id)))
    (define gxc#&!class-super-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'super)))
    (define gxc#&!class-precedence-list-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'precedence-list)))
    (define gxc#&!class-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'slots)))
    (define gxc#&!class-fields-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'fields)))
    (define gxc#&!class-constructor-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'constructor)))
    (define gxc#&!class-struct?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'struct?)))
    (define gxc#&!class-final?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'final?)))
    (define gxc#&!class-system?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'system?)))
    (define gxc#&!class-metaclass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'metaclass)))
    (define gxc#&!class-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'methods)))
    (define gxc#&!class-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'id)))
    (define gxc#!predicate::t
      (let ((__tmp113454 (list gxc#!procedure::t))
            (__tmp113453 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp113454
         '()
         __tmp113453
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args113256_
        (apply make-instance gxc#!predicate::t _$args113256_)))
    (define gxc#!predicate-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!predicate::t 'signature)))
    (define gxc#!predicate-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!predicate::t 'id)))
    (define gxc#!predicate-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!predicate::t 'signature)))
    (define gxc#!predicate-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!predicate::t 'id)))
    (define gxc#&!predicate-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!predicate::t 'signature)))
    (define gxc#&!predicate-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!predicate::t 'id)))
    (define gxc#&!predicate-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!predicate::t 'signature)))
    (define gxc#&!predicate-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!predicate::t 'id)))
    (define gxc#!constructor::t
      (let ((__tmp113456 (list gxc#!procedure::t))
            (__tmp113455 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp113456
         '()
         __tmp113455
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args113253_
        (apply make-instance gxc#!constructor::t _$args113253_)))
    (define gxc#!constructor-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!constructor::t 'signature)))
    (define gxc#!constructor-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!constructor::t 'id)))
    (define gxc#!constructor-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!constructor::t 'signature)))
    (define gxc#!constructor-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!constructor::t 'id)))
    (define gxc#&!constructor-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!constructor::t 'signature)))
    (define gxc#&!constructor-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!constructor::t 'id)))
    (define gxc#&!constructor-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!constructor::t 'signature)))
    (define gxc#&!constructor-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!constructor::t 'id)))
    (define gxc#!accessor::t
      (let ((__tmp113458 (list gxc#!procedure::t))
            (__tmp113457 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp113458
         '(slot checked?)
         __tmp113457
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args113250_
        (apply make-instance gxc#!accessor::t _$args113250_)))
    (define gxc#!accessor-slot
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!accessor::t 'slot)))
    (define gxc#!accessor-checked?
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!accessor::t 'checked?)))
    (define gxc#!accessor-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!accessor::t 'signature)))
    (define gxc#!accessor-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!accessor::t 'id)))
    (define gxc#!accessor-slot-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!accessor::t 'slot)))
    (define gxc#!accessor-checked?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!accessor::t 'checked?)))
    (define gxc#!accessor-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!accessor::t 'signature)))
    (define gxc#!accessor-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!accessor::t 'id)))
    (define gxc#&!accessor-slot
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!accessor::t 'slot)))
    (define gxc#&!accessor-checked?
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!accessor::t 'checked?)))
    (define gxc#&!accessor-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!accessor::t 'signature)))
    (define gxc#&!accessor-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!accessor::t 'id)))
    (define gxc#&!accessor-slot-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!accessor::t 'slot)))
    (define gxc#&!accessor-checked?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!accessor::t 'checked?)))
    (define gxc#&!accessor-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!accessor::t 'signature)))
    (define gxc#&!accessor-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!accessor::t 'id)))
    (define gxc#!mutator::t
      (let ((__tmp113460 (list gxc#!procedure::t))
            (__tmp113459 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp113460
         '(slot checked?)
         __tmp113459
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args113247_
        (apply make-instance gxc#!mutator::t _$args113247_)))
    (define gxc#!mutator-slot
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!mutator::t 'slot)))
    (define gxc#!mutator-checked?
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!mutator::t 'checked?)))
    (define gxc#!mutator-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!mutator::t 'signature)))
    (define gxc#!mutator-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!mutator::t 'id)))
    (define gxc#!mutator-slot-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!mutator::t 'slot)))
    (define gxc#!mutator-checked?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!mutator::t 'checked?)))
    (define gxc#!mutator-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!mutator::t 'signature)))
    (define gxc#!mutator-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!mutator::t 'id)))
    (define gxc#&!mutator-slot
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!mutator::t 'slot)))
    (define gxc#&!mutator-checked?
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!mutator::t 'checked?)))
    (define gxc#&!mutator-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!mutator::t 'signature)))
    (define gxc#&!mutator-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!mutator::t 'id)))
    (define gxc#&!mutator-slot-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!mutator::t 'slot)))
    (define gxc#&!mutator-checked?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!mutator::t 'checked?)))
    (define gxc#&!mutator-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!mutator::t 'signature)))
    (define gxc#&!mutator-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!mutator::t 'id)))
    (define gxc#!interface::t
      (let ((__tmp113462 (list gxc#!type::t))
            (__tmp113461 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp113462
         '(methods)
         __tmp113461
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _$args113244_
        (apply make-instance gxc#!interface::t _$args113244_)))
    (define gxc#!interface-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!interface::t 'methods)))
    (define gxc#!interface-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!interface::t 'id)))
    (define gxc#!interface-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!interface::t 'methods)))
    (define gxc#!interface-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!interface::t 'id)))
    (define gxc#&!interface-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!interface::t 'methods)))
    (define gxc#&!interface-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!interface::t 'id)))
    (define gxc#&!interface-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!interface::t 'methods)))
    (define gxc#&!interface-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!interface::t 'id)))
    (define gxc#!lambda::t
      (let ((__tmp113464 (list gxc#!procedure::t))
            (__tmp113463
             (cons (cons 'struct: '#t)
                   '((equal:
                      arity
                      dispatch
                      inline
                      inline-typedecl
                      signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp113464
         '(arity dispatch inline inline-typedecl signature)
         __tmp113463
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args113241_
        (apply make-instance gxc#!lambda::t _$args113241_)))
    (define gxc#!lambda-arity
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!lambda::t 'arity)))
    (define gxc#!lambda-dispatch
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!lambda::t 'dispatch)))
    (define gxc#!lambda-inline
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!lambda::t 'inline)))
    (define gxc#!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!lambda::t 'inline-typedecl)))
    (define gxc#!lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!lambda::t 'signature)))
    (define gxc#!lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!lambda::t 'id)))
    (define gxc#!lambda-arity-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!lambda::t 'arity)))
    (define gxc#!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!lambda::t 'dispatch)))
    (define gxc#!lambda-inline-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!lambda::t 'inline)))
    (define gxc#!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!lambda::t 'inline-typedecl)))
    (define gxc#!lambda-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!lambda::t 'signature)))
    (define gxc#!lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!lambda::t 'id)))
    (define gxc#&!lambda-arity
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!lambda::t 'arity)))
    (define gxc#&!lambda-dispatch
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!lambda::t 'dispatch)))
    (define gxc#&!lambda-inline
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!lambda::t 'inline)))
    (define gxc#&!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!lambda::t
         'inline-typedecl)))
    (define gxc#&!lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!lambda::t 'signature)))
    (define gxc#&!lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!lambda::t 'id)))
    (define gxc#&!lambda-arity-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!lambda::t 'arity)))
    (define gxc#&!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!lambda::t 'dispatch)))
    (define gxc#&!lambda-inline-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!lambda::t 'inline)))
    (define gxc#&!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!lambda::t 'inline-typedecl)))
    (define gxc#&!lambda-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!lambda::t 'signature)))
    (define gxc#&!lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!lambda::t 'id)))
    (define gxc#!case-lambda::t
      (let ((__tmp113466 (list gxc#!procedure::t))
            (__tmp113465 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp113466
         '(clauses)
         __tmp113465
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args113238_
        (apply make-instance gxc#!case-lambda::t _$args113238_)))
    (define gxc#!case-lambda-clauses
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!case-lambda::t 'clauses)))
    (define gxc#!case-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!case-lambda::t 'signature)))
    (define gxc#!case-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!case-lambda::t 'id)))
    (define gxc#!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!case-lambda::t 'clauses)))
    (define gxc#!case-lambda-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!case-lambda::t 'signature)))
    (define gxc#!case-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!case-lambda::t 'id)))
    (define gxc#&!case-lambda-clauses
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!case-lambda::t 'clauses)))
    (define gxc#&!case-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!case-lambda::t 'signature)))
    (define gxc#&!case-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!case-lambda::t 'id)))
    (define gxc#&!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!case-lambda::t 'clauses)))
    (define gxc#&!case-lambda-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!case-lambda::t 'signature)))
    (define gxc#&!case-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!case-lambda::t 'id)))
    (define gxc#!kw-lambda::t
      (let ((__tmp113468 (list gxc#!procedure::t))
            (__tmp113467 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp113468
         '(table dispatch)
         __tmp113467
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args113235_
        (apply make-instance gxc#!kw-lambda::t _$args113235_)))
    (define gxc#!kw-lambda-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda::t 'table)))
    (define gxc#!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda::t 'dispatch)))
    (define gxc#!kw-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda::t 'signature)))
    (define gxc#!kw-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda::t 'id)))
    (define gxc#!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda::t 'table)))
    (define gxc#!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda::t 'dispatch)))
    (define gxc#!kw-lambda-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda::t 'signature)))
    (define gxc#!kw-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda::t 'id)))
    (define gxc#&!kw-lambda-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'table)))
    (define gxc#&!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'dispatch)))
    (define gxc#&!kw-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'signature)))
    (define gxc#&!kw-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'id)))
    (define gxc#&!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'table)))
    (define gxc#&!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'dispatch)))
    (define gxc#&!kw-lambda-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'signature)))
    (define gxc#&!kw-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'id)))
    (define gxc#!kw-lambda-primary::t
      (let ((__tmp113470 (list gxc#!procedure::t))
            (__tmp113469 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp113470
         '(keys main)
         __tmp113469
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args113232_
        (apply make-instance gxc#!kw-lambda-primary::t _$args113232_)))
    (define gxc#!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda-primary::t 'main)))
    (define gxc#!kw-lambda-primary-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda-primary::t 'signature)))
    (define gxc#!kw-lambda-primary-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda-primary::t 'id)))
    (define gxc#!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda-primary::t 'main)))
    (define gxc#!kw-lambda-primary-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda-primary::t 'signature)))
    (define gxc#!kw-lambda-primary-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda-primary::t 'id)))
    (define gxc#&!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!kw-lambda-primary::t
         'keys)))
    (define gxc#&!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!kw-lambda-primary::t
         'main)))
    (define gxc#&!kw-lambda-primary-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!kw-lambda-primary::t
         'signature)))
    (define gxc#&!kw-lambda-primary-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'id)))
    (define gxc#&!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#&!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'main)))
    (define gxc#&!kw-lambda-primary-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!kw-lambda-primary::t
         'signature)))
    (define gxc#&!kw-lambda-primary-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'id)))
    (define gxc#!primitive::t
      (let ((__tmp113471 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp113471
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args113229_
        (apply make-instance gxc#!primitive::t _$args113229_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp113472 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp113472
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args113226_
        (apply make-instance gxc#!primitive-lambda::t _$args113226_)))
    (define gxc#!primitive-lambda-arity
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-lambda::t 'arity)))
    (define gxc#!primitive-lambda-dispatch
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-lambda::t 'dispatch)))
    (define gxc#!primitive-lambda-inline
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-lambda::t 'inline)))
    (define gxc#!primitive-lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gxc#!primitive-lambda::t
         'inline-typedecl)))
    (define gxc#!primitive-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-lambda::t 'signature)))
    (define gxc#!primitive-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-lambda::t 'id)))
    (define gxc#!primitive-lambda-arity-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-lambda::t 'arity)))
    (define gxc#!primitive-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-lambda::t 'dispatch)))
    (define gxc#!primitive-lambda-inline-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-lambda::t 'inline)))
    (define gxc#!primitive-lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-lambda::t 'inline-typedecl)))
    (define gxc#!primitive-lambda-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-lambda::t 'signature)))
    (define gxc#!primitive-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-lambda::t 'id)))
    (define gxc#&!primitive-lambda-arity
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-lambda::t
         'arity)))
    (define gxc#&!primitive-lambda-dispatch
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-lambda::t
         'dispatch)))
    (define gxc#&!primitive-lambda-inline
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-lambda::t
         'inline)))
    (define gxc#&!primitive-lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-lambda::t
         'inline-typedecl)))
    (define gxc#&!primitive-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-lambda::t
         'signature)))
    (define gxc#&!primitive-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!primitive-lambda::t 'id)))
    (define gxc#&!primitive-lambda-arity-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!primitive-lambda::t 'arity)))
    (define gxc#&!primitive-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-lambda::t
         'dispatch)))
    (define gxc#&!primitive-lambda-inline-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-lambda::t
         'inline)))
    (define gxc#&!primitive-lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-lambda::t
         'inline-typedecl)))
    (define gxc#&!primitive-lambda-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-lambda::t
         'signature)))
    (define gxc#&!primitive-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!primitive-lambda::t 'id)))
    (define gxc#!primitive-case-lambda::t
      (let ((__tmp113473 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp113473
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args113223_
        (apply make-instance gxc#!primitive-case-lambda::t _$args113223_)))
    (define gxc#!primitive-case-lambda-clauses
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-case-lambda::t 'clauses)))
    (define gxc#!primitive-case-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-case-lambda::t 'signature)))
    (define gxc#!primitive-case-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-case-lambda::t 'id)))
    (define gxc#!primitive-case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-case-lambda::t 'clauses)))
    (define gxc#!primitive-case-lambda-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-case-lambda::t 'signature)))
    (define gxc#!primitive-case-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-case-lambda::t 'id)))
    (define gxc#&!primitive-case-lambda-clauses
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-case-lambda::t
         'clauses)))
    (define gxc#&!primitive-case-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-case-lambda::t
         'signature)))
    (define gxc#&!primitive-case-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-case-lambda::t
         'id)))
    (define gxc#&!primitive-case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-case-lambda::t
         'clauses)))
    (define gxc#&!primitive-case-lambda-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-case-lambda::t
         'signature)))
    (define gxc#&!primitive-case-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-case-lambda::t
         'id)))
    (define gxc#!class-meta:::init!
      (lambda (_self113220_ _klass113221_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self113220_ 'class '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self113220_ _klass113221_ '2 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_self112938_
               _id112939_
               _super112940_
               _slots112941_
               _ctor-method112942_
               _struct?112943_
               _final?112944_
               _system?112945_
               _metaclass112946_)
        (let _lp112948_ ((_rest112950_ _super112940_))
          (let* ((_rest112951112959_ _rest112950_)
                 (_else112953112967_ (lambda () '#!void))
                 (_K112955112973_
                  (lambda (_rest112970_ _super-id112971_)
                    (if (##structure-ref
                         (let ((__tmp113474
                                (cons '!class (cons _id112939_ '()))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp113474
                            _super-id112971_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp113475
                               (cons '!class (cons _id112939_ '()))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp113475
                           _super-id112971_))
                        '#!void)
                    (let () (declare (not safe)) (_lp112948_ _rest112970_)))))
            (if (let () (declare (not safe)) (##pair? _rest112951112959_))
                (let ((_hd112956112976_
                       (let ()
                         (declare (not safe))
                         (##car _rest112951112959_)))
                      (_tl112957112978_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest112951112959_))))
                  (let* ((_super-id112981_ _hd112956112976_)
                         (_rest112983_ _tl112957112978_))
                    (declare (not safe))
                    (_K112955112973_ _rest112983_ _super-id112981_)))
                '#!void)))
        (let* ((_ctor-method113033_
                (let ((_$e112985_ _ctor-method112942_))
                  (if _$e112985_
                      _$e112985_
                      (let _lp112988_ ((_rest112990_ _super112940_)
                                       (_method112991_ '#f))
                        (let* ((_rest112992113000_ _rest112990_)
                               (_else112994113008_ (lambda () _method112991_))
                               (_K112996113021_
                                (lambda (_rest113011_ _super-id113012_)
                                  (let* ((_klass113014_
                                          (let ((__tmp113476
                                                 (cons '!class
                                                       (cons _id112939_ '()))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp113476
                                             _super-id113012_)))
                                         (_$e113016_
                                          (##structure-ref
                                           _klass113014_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e113016_
                                        ((lambda (_ctor-method113019_)
                                           (if _method112991_
                                               (if (eq? _ctor-method113019_
                                                        _method112991_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp112988_
                                                      _rest113011_
                                                      _ctor-method113019_))
                                                   (let ((__tmp113477
                                                          (cons '!class
                                                                (cons _id112939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp113477
                                                      _method112991_
                                                      _ctor-method113019_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112988_
                                                  _rest113011_
                                                  _ctor-method113019_))))
                                         _$e113016_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp112988_
                                           _rest113011_
                                           _method112991_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest112992113000_))
                              (let ((_hd112997113024_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest112992113000_)))
                                    (_tl112998113026_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest112992113000_))))
                                (let* ((_super-id113029_ _hd112997113024_)
                                       (_rest113031_ _tl112998113026_))
                                  (declare (not safe))
                                  (_K112996113021_
                                   _rest113031_
                                   _super-id113029_)))
                              (let ()
                                (declare (not safe))
                                (_else112994113008_))))))))
               (_g113478_
                (let ((__tmp113482
                       (lambda (_klass-id113035_)
                         (cons _klass-id113035_
                               (##structure-ref
                                (let ((__tmp113483
                                       (cons '!class (cons _id112939_ '()))))
                                  (declare (not safe))
                                  (gxc#optimizer-resolve-class
                                   __tmp113483
                                   _klass-id113035_))
                                '3
                                gxc#!class::t
                                '#f))))
                      (__tmp113480
                       (lambda (_klass-id113037_)
                         (##structure-ref
                          (let ((__tmp113481
                                 (cons '!class (cons _id112939_ '()))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp113481
                             _klass-id113037_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super112940_
                   'get-precedence-list:
                   __tmp113482
                   'struct:
                   __tmp113480
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g113479_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g113478_)
                         (##vector-length _g113478_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g113479_ 2)))
                  (error "Context expects 2 values" _g113479_)))
            (let ((_precedence-list113039_
                   (let () (declare (not safe)) (##vector-ref _g113478_ 0)))
                  (_base-struct113040_
                   (let () (declare (not safe)) (##vector-ref _g113478_ 1))))
              (let* ((_precedence-list113080_
                      (if (let ()
                            (declare (not safe))
                            (##memq _id112939_ '(t object class)))
                          _precedence-list113039_
                          (if (memq 'object::t _precedence-list113039_)
                              _precedence-list113039_
                              (if _system?112945_
                                  (if (memq 't::t _precedence-list113039_)
                                      _precedence-list113039_
                                      (let ()
                                        (declare (not safe))
                                        (##append
                                         _precedence-list113039_
                                         '(t::t))))
                                  (let _loop113042_ ((_tail113044_
                                                      _precedence-list113039_)
                                                     (_head113045_ '()))
                                    (let* ((_tail113046113054_ _tail113044_)
                                           (_else113048113062_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 '(object::t t::t)
                                                 _head113045_))))
                                           (_K113050113068_
                                            (lambda (_rest113065_ _hd113066_)
                                              (if (eq? _hd113066_ 't::t)
                                                  (let ((__tmp113484
                                                         (cons 'object::t
                                                               _tail113044_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp113484
                                                     _head113045_))
                                                  (let ((__tmp113485
                                                         (cons _hd113066_
                                                               _head113045_)))
                                                    (declare (not safe))
                                                    (_loop113042_
                                                     _rest113065_
                                                     __tmp113485))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tail113046113054_))
                                          (let ((_hd113051113071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tail113046113054_)))
                                                (_tl113052113073_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tail113046113054_))))
                                            (let* ((_hd113076_
                                                    _hd113051113071_)
                                                   (_rest113078_
                                                    _tl113052113073_))
                                              (declare (not safe))
                                              (_K113050113068_
                                               _rest113078_
                                               _hd113076_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else113048113062_)))))))))
                     (_fields113082_
                      (let ((__tmp113486 (cons '!class (cons _id112939_ '()))))
                        (declare (not safe))
                        (gxc#compute-class-fields
                         __tmp113486
                         _base-struct113040_
                         _precedence-list113080_
                         _slots112941_))))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112938_
                   _id112939_
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112938_
                   _super112940_
                   '2
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112938_
                   _precedence-list113080_
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112938_
                   _slots112941_
                   '4
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112938_
                   _fields113082_
                   '5
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112938_
                   _ctor-method113033_
                   '6
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112938_
                   _struct?112943_
                   '7
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112938_
                   _final?112944_
                   '8
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112938_
                   _metaclass112946_
                   '10
                   '#f
                   '#f))))))))
    (define gxc#!class:::init!__1
      (lambda (_self113085_
               _id113086_
               _super113087_
               _precedence-list113088_
               _slots113089_
               _fields113090_
               _constructor113091_
               _struct?113092_
               _final?113093_
               _system?113094_
               _metaclass113095_
               _methods113096_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self113085_ _id113086_ '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self113085_ _super113087_ '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _self113085_
           _precedence-list113088_
           '3
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self113085_ _slots113089_ '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self113085_ _fields113090_ '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _self113085_
           _constructor113091_
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self113085_ _struct?113092_ '7 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self113085_ _final?113093_ '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _self113085_
           _metaclass113095_
           '10
           '#f
           '#f))
        (if _methods113096_
            (let ((__tmp113487
                   (let ()
                     (declare (not safe))
                     (list->hash-table-eq _methods113096_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _self113085_
               __tmp113487
               '11
               '#f
               '#f))
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g113489_
        (let ((_g113488_ (let () (declare (not safe)) (##length _g113489_))))
          (cond ((let () (declare (not safe)) (##fx= _g113488_ 9))
                 (apply (lambda (_self112938_
                                 _id112939_
                                 _super112940_
                                 _slots112941_
                                 _ctor-method112942_
                                 _struct?112943_
                                 _final?112944_
                                 _system?112945_
                                 _metaclass112946_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self112938_
                             _id112939_
                             _super112940_
                             _slots112941_
                             _ctor-method112942_
                             _struct?112943_
                             _final?112944_
                             _system?112945_
                             _metaclass112946_)))
                        _g113489_))
                ((let () (declare (not safe)) (##fx= _g113488_ 12))
                 (apply (lambda (_self113085_
                                 _id113086_
                                 _super113087_
                                 _precedence-list113088_
                                 _slots113089_
                                 _fields113090_
                                 _constructor113091_
                                 _struct?113092_
                                 _final?113093_
                                 _system?113094_
                                 _metaclass113095_
                                 _methods113096_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self113085_
                             _id113086_
                             _super113087_
                             _precedence-list113088_
                             _slots113089_
                             _fields113090_
                             _constructor113091_
                             _struct?113092_
                             _final?113093_
                             _system?113094_
                             _metaclass113095_
                             _methods113096_)))
                        _g113489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g113489_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where112790_
               _base-struct112791_
               _precedence-list112792_
               _direct-slots112793_)
        (let* ((_base-fields112795_
                (if _base-struct112791_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where112790_
                        _base-struct112791_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields112797_ (reverse _base-fields112795_))
               (_seen-slots112805_
                (let ((_tab112799_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g112800112802_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab112799_ _g112800112802_ '#t)))
                   _base-fields112795_)
                  _tab112799_))
               (_process-slot112809_
                (lambda (_slot112807_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots112805_ _slot112807_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots112805_ _slot112807_ '#t))
                        (set! _r-fields112797_
                              (cons _slot112807_ _r-fields112797_)))))))
          (for-each
           (lambda (_mixin112812_)
             (let ((_klass112814_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where112790_
                       _mixin112812_))))
               (if (##structure-ref _klass112814_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot112809_
                    (##structure-ref _klass112814_ '5 gxc#!class::t '#f)))))
           _precedence-list112792_)
          (for-each _process-slot112809_ _direct-slots112793_)
          (let () (declare (not safe)) (##reverse _r-fields112797_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass112749_ _slot112750_)
        (let _lp112752_ ((_rest112754_
                          (##structure-ref _klass112749_ '5 gxc#!class::t '#f))
                         (_offset112755_ '1))
          (let* ((_rest112756112764_ _rest112754_)
                 (_else112758112772_
                  (lambda ()
                    (let ((__tmp113491
                           (##structure-ref _klass112749_ '1 gxc#!type::t '#f))
                          (__tmp113490
                           (##structure-ref
                            _klass112749_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp113491
                       __tmp113490
                       _slot112750_))))
                 (_K112760112778_
                  (lambda (_rest112775_ _s112776_)
                    (if (eq? _s112776_ _slot112750_)
                        _offset112755_
                        (let ((__tmp113492
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _offset112755_ '1))))
                          (declare (not safe))
                          (_lp112752_ _rest112775_ __tmp113492))))))
            (if (let () (declare (not safe)) (##pair? _rest112756112764_))
                (let ((_hd112761112781_
                       (let ()
                         (declare (not safe))
                         (##car _rest112756112764_)))
                      (_tl112762112783_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest112756112764_))))
                  (let* ((_s112786_ _hd112761112781_)
                         (_rest112788_ _tl112762112783_))
                    (declare (not safe))
                    (_K112760112778_ _rest112788_ _s112786_)))
                (let () (declare (not safe)) (_else112758112772_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass112707_ _slot112708_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass112707_ _slot112708_))
            _klass112707_
            (let _lp112710_ ((_rest112712_
                              (##structure-ref
                               _klass112707_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest112713112721_ _rest112712_)
                     (_else112715112729_ (lambda () '#f))
                     (_K112717112737_
                      (lambda (_rest112732_ _super112733_)
                        (let ((_super-class112735_
                               (let ((__tmp113493
                                      (cons '!class-slot-find-struct
                                            (cons (##structure-ref
                                                   _klass112707_
                                                   '1
                                                   gxc#!type::t
                                                   '#f)
                                                  (cons _slot112708_ '())))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp113493
                                  _super112733_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class112735_
                                 _slot112708_))
                              _super-class112735_
                              (let ()
                                (declare (not safe))
                                (_lp112710_ _rest112732_)))))))
                (if (let () (declare (not safe)) (##pair? _rest112713112721_))
                    (let ((_hd112718112740_
                           (let ()
                             (declare (not safe))
                             (##car _rest112713112721_)))
                          (_tl112719112742_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest112713112721_))))
                      (let* ((_super112745_ _hd112718112740_)
                             (_rest112747_ _tl112719112742_))
                        (declare (not safe))
                        (_K112717112737_ _rest112747_ _super112745_)))
                    (let () (declare (not safe)) (_else112715112729_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass112704_ _slot112705_)
        (if (##structure-ref _klass112704_ '7 gxc#!class::t '#f)
            (memq _slot112705_
                  (##structure-ref _klass112704_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self112701_ _id112702_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self112701_ _id112702_ '1 '#f '#f))
        (let ((__tmp113494
               (let ((__obj113426
                      (let ()
                        (declare (not safe))
                        (##structure gxc#!signature::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-set!
                    __obj113426
                    'boolean::t
                    '1
                    '#f
                    '#f))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-set!
                    __obj113426
                    '(pure predicate)
                    '2
                    '#f
                    '#f))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-set! __obj113426 '(t::t) '3 '#f '#f))
                 __obj113426)))
          (declare (not safe))
          (##unchecked-structure-set! _self112701_ __tmp113494 '2 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_self112576_ _id112577_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self112576_ _id112577_ '1 '#f '#f))
        (let ((__tmp113495
               (let ((__obj113427
                      (let ()
                        (declare (not safe))
                        (##structure gxc#!signature::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-set!
                    __obj113427
                    _id112577_
                    '1
                    '#f
                    '#f))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-set!
                    __obj113427
                    '(alloc)
                    '2
                    '#f
                    '#f))
                 __obj113427)))
          (declare (not safe))
          (##unchecked-structure-set! _self112576_ __tmp113495 '2 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_self112449_ _id112450_ _slot112451_ _checked?112452_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self112449_ _id112450_ '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self112449_ _slot112451_ '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _self112449_
           _checked?112452_
           '4
           '#f
           '#f))
        (let ((__tmp113496
               (let ((__obj113428
                      (let ()
                        (declare (not safe))
                        (##structure gxc#!signature::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-set! __obj113428 't::t '1 '#f '#f))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-set! __obj113428 '(pure) '2 '#f '#f))
                 (let ((__tmp113497 (cons _id112450_ '())))
                   (declare (not safe))
                   (##unchecked-structure-set!
                    __obj113428
                    __tmp113497
                    '3
                    '#f
                    '#f))
                 __obj113428)))
          (declare (not safe))
          (##unchecked-structure-set! _self112449_ __tmp113496 '2 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_self112322_ _id112323_ _slot112324_ _checked?112325_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self112322_ _id112323_ '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self112322_ _slot112324_ '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _self112322_
           _checked?112325_
           '4
           '#f
           '#f))
        (let ((__tmp113498
               (let ((__obj113429
                      (let ()
                        (declare (not safe))
                        (##structure gxc#!signature::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-set!
                    __obj113429
                    'void::t
                    '1
                    '#f
                    '#f))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-set! __obj113429 '(mut) '2 '#f '#f))
                 (let ((__tmp113499 (cons _id112323_ (cons 't::t '()))))
                   (declare (not safe))
                   (##unchecked-structure-set!
                    __obj113429
                    __tmp113499
                    '3
                    '#f
                    '#f))
                 __obj113429)))
          (declare (not safe))
          (##unchecked-structure-set! _self112322_ __tmp113498 '2 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (__112176_
               _signature112173112178_
               _self112180_
               _arity112181_
               _dispatch112182_)
        (let ((_signature112184_
               (if (eq? _signature112173112178_ absent-value)
                   '#f
                   _signature112173112178_)))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _self112180_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _self112180_ _arity112181_ '3 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _self112180_
             _dispatch112182_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _self112180_
             _signature112184_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_keys112172112189_ . _args112191_)
        (apply gxc#!lambda:::init!__%
               _keys112172112189_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys112172112189_
                  'signature:
                  absent-value))
               _args112191_)))
    (define gxc#!lambda:::init!
      (lambda _args112174112197_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _args112174112197_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!
      (lambda (_self112046_ _clauses112047_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self112046_ 'procedure '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _self112046_
           _clauses112047_
           '3
           '#f
           '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_self111920_ _tab111921_ _dispatch111922_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self111920_ 'procedure '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self111920_ _tab111921_ '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _self111920_
           _dispatch111922_
           '4
           '#f
           '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_self111794_ _keys111795_ _main111796_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self111794_ 'procedure '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self111794_ _keys111795_ '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self111794_ _main111796_ '4 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       ':init!
       gxc#!kw-lambda-primary:::init!
       '#f))
    (define gxc#!primitive-lambda:::init! gxc#!lambda:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-lambda::t
       ':init!
       gxc#!primitive-lambda:::init!
       '#f))
    (define gxc#!primitive-case-lambda:::init! gxc#!case-lambda:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!primitive-predicate:::init!
      (lambda (_self111425_ _id111426_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! _self111425_ _id111426_ '1 '#f '#f))
        (let ((__tmp113500
               (let ((__obj113430
                      (let ()
                        (declare (not safe))
                        (##structure gxc#!signature::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-set!
                    __obj113430
                    'boolean::t
                    '1
                    '#f
                    '#f))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-set! __obj113430 '(pure) '2 '#f '#f))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-set! __obj113430 '(t::t) '3 '#f '#f))
                 __obj113430)))
          (declare (not safe))
          (##unchecked-structure-set! _self111425_ __tmp113500 '2 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       ':init!
       gxc#!primitive-predicate:::init!
       '#f))
    (define gxc#!class-method-table
      (lambda (_klass111295_)
        (let ((_$e111297_
               (##structure-ref _klass111295_ '11 gxc#!class::t '#f)))
          (if _$e111297_
              _$e111297_
              (let ((_tab111300_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass111295_
                 _tab111300_
                 '11
                 gxc#!class::t
                 '#f)
                _tab111300_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass111286_ _method111287_)
        (let ((_tab111288111290_
               (##structure-ref _klass111286_ '11 gxc#!class::t '#f)))
          (if _tab111288111290_
              (let ((_tab111293_ _tab111288111290_))
                (declare (not safe))
                (hash-get _tab111293_ _method111287_))
              '#f))))
    (define gxc#!type-subclass?
      (lambda (_klass-a111271_ _klass-b111272_)
        (if _klass-a111271_
            (if _klass-b111272_
                (let ((_$e111274_ (eq? _klass-a111271_ _klass-b111272_)))
                  (if _$e111274_
                      _$e111274_
                      (let ((_$e111277_
                             (eq? (##structure-ref
                                   _klass-a111271_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  (##structure-ref
                                   _klass-b111272_
                                   '1
                                   gxc#!type::t
                                   '#f))))
                        (if _$e111277_
                            _$e111277_
                            (let ((_$e111280_
                                   (eq? (##structure-ref
                                         _klass-b111272_
                                         '1
                                         gxc#!type::t
                                         '#f)
                                        't)))
                              (if _$e111280_
                                  _$e111280_
                                  (let ((_$e111283_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _klass-a111271_
                                                'gxc#!procedure::t))
                                             (eq? (##structure-ref
                                                   _klass-b111272_
                                                   '1
                                                   gxc#!type::t
                                                   '#f)
                                                  'procedure)
                                             '#f)))
                                    (if _$e111283_
                                        _$e111283_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _klass-a111271_
                                               'gxc#!class::t))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _klass-b111272_
                                                   'gxc#!class::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#!class-subclass?
                                                   _klass-a111271_
                                                   _klass-b111272_))
                                                '#f)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_klass-a111225_ _klass-b111226_)
        (let ((_klass-id-b111228_
               (##structure-ref _klass-b111226_ '1 gxc#!type::t '#f))
              (_precedence-list111229_
               (##structure-ref _klass-a111225_ '3 gxc#!class::t '#f)))
          (let _loop111231_ ((_rest111233_ _precedence-list111229_))
            (let* ((_rest111234111242_ _rest111233_)
                   (_else111236111250_ (lambda () '#f))
                   (_K111238111259_
                    (lambda (_rest111253_ _klass-name111254_)
                      (let ((_$e111256_
                             (eq? (##structure-ref
                                   (let ((__tmp113501
                                          (cons 'subclass?
                                                (cons _klass-a111225_
                                                      (cons _klass-b111226_
                                                            '())))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      __tmp113501
                                      _klass-name111254_))
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  _klass-id-b111228_)))
                        (if _$e111256_
                            _$e111256_
                            (let ()
                              (declare (not safe))
                              (_loop111231_ _rest111253_)))))))
              (if (let () (declare (not safe)) (##pair? _rest111234111242_))
                  (let ((_hd111239111262_
                         (let ()
                           (declare (not safe))
                           (##car _rest111234111242_)))
                        (_tl111240111264_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest111234111242_))))
                    (let* ((_klass-name111267_ _hd111239111262_)
                           (_rest111269_ _tl111240111264_))
                      (declare (not safe))
                      (_K111238111259_ _rest111269_ _klass-name111267_)))
                  (let () (declare (not safe)) (_else111236111250_))))))))
    (define gxc#!interface-instance?
      (lambda (_type111223_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111223_ 'gxc#!class::t))
            (memq 'gerbil#interface-instance::t
                  (##structure-ref _type111223_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym111205_ _type111206_ _local?111207_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111206_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym111205_
                     _type111206_)))
        (let ((__tmp113502
               (let () (declare (not safe)) (struct->list _type111206_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym111205_ '" " __tmp113502))
        (let ((_table111209_
               (if _local?111207_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! _table111209_ _sym111205_ _type111206_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym111214_ _type111215_)
        (let ((_local?111217_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym111214_
           _type111215_
           _local?111217_))))
    (define gxc#optimizer-declare-type!
      (lambda _g113504_
        (let ((_g113503_ (let () (declare (not safe)) (##length _g113504_))))
          (cond ((let () (declare (not safe)) (##fx= _g113503_ 2))
                 (apply (lambda (_sym111214_ _type111215_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym111214_
                             _type111215_)))
                        _g113504_))
                ((let () (declare (not safe)) (##fx= _g113503_ 3))
                 (apply (lambda (_sym111219_ _type111220_ _local?111221_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym111219_
                             _type111220_
                             _local?111221_)))
                        _g113504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g113504_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_sym111199_ _type111200_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111200_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _sym111199_
                     _type111200_)))
        (let ((_table111202_
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp113505
                 (let () (declare (not safe)) (struct->list _type111200_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _sym111199_ '" " __tmp113505))
          (let ()
            (declare (not safe))
            (hash-put! _table111202_ _sym111199_ _type111200_))
          (let ()
            (declare (not safe))
            (hash-put! _table111202_ _type111200_ _sym111199_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_sym111194_ _type111195_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111195_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _sym111194_
                     _type111195_)))
        (let ((_table111197_
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _table111197_ _sym111194_))
              '#!void
              (begin
                (let ((__tmp113506
                       (let ()
                         (declare (not safe))
                         (struct->list _type111195_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _sym111194_
                   '" "
                   __tmp113506))
                (let ()
                  (declare (not safe))
                  (hash-put! _table111197_ _sym111194_ _type111195_))
                (let ()
                  (declare (not safe))
                  (hash-put! _table111197_ _type111195_ _sym111194_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_sym111192_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym111192_))
        (let ((__tmp113507 (gxc#current-compile-local-type)))
          (declare (not safe))
          (hash-remove! __tmp113507 _sym111192_))
        (let ((__tmp113508
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp113508 _sym111192_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t111164_ _method111165_ _sym111166_ _rebind?111167_)
        (let ((_klass111169_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _type-t111164_))))
          (if _klass111169_
              (let* ((_vtab111171_
                      (let ()
                        (declare (not safe))
                        (gxc#!class-method-table _klass111169_)))
                     (_$e111173_
                      (let ()
                        (declare (not safe))
                        (hash-get _vtab111171_ _method111165_))))
                (if _$e111173_
                    ((lambda (_existing111176_)
                       (if _rebind?111167_
                           (begin
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _type-t111164_
                                '" "
                                _method111165_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _vtab111171_
                                _method111165_
                                _sym111166_)))
                           (if (eq? _existing111176_ _sym111166_)
                               '#!void
                               (let ((__tmp113509
                                      (cons 'bind-method!
                                            (cons _type-t111164_
                                                  (cons _method111165_
                                                        (cons _sym111166_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp113509
                                  _method111165_)))))
                     _$e111173_)
                    (begin
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _type-t111164_
                         '" "
                         _method111165_
                         '" => "
                         _sym111166_))
                      (let ()
                        (declare (not safe))
                        (hash-put! _vtab111171_ _method111165_ _sym111166_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _type-t111164_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t111181_ _method111182_ _sym111183_)
        (let ((_rebind?111185_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t111181_
           _method111182_
           _sym111183_
           _rebind?111185_))))
    (define gxc#optimizer-declare-method!
      (lambda _g113511_
        (let ((_g113510_ (let () (declare (not safe)) (##length _g113511_))))
          (cond ((let () (declare (not safe)) (##fx= _g113510_ 3))
                 (apply (lambda (_type-t111181_ _method111182_ _sym111183_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t111181_
                             _method111182_
                             _sym111183_)))
                        _g113511_))
                ((let () (declare (not safe)) (##fx= _g113510_ 4))
                 (apply (lambda (_type-t111187_
                                 _method111188_
                                 _sym111189_
                                 _rebind?111190_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t111187_
                             _method111188_
                             _sym111189_
                             _rebind?111190_)))
                        _g113511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g113511_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym111152_)
        (let ((_$e111160_
               (let ((_ht111153111155_ (gxc#current-compile-local-type)))
                 (if _ht111153111155_
                     (let ((_ht111158_ _ht111153111155_))
                       (declare (not safe))
                       (hash-get _ht111158_ _sym111152_))
                     '#f))))
          (if _$e111160_
              _$e111160_
              (let ((__tmp113512
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp113512 _sym111152_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym111144_)
        (let ((_type111145111147_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym111144_))))
          (if _type111145111147_
              (let ((_type111150_ _type111145111147_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type111150_ 'gxc#!alias::t))
                    (let ((__tmp113513
                           (##structure-ref _type111150_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp113513))
                    _type111150_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_sym111140_)
        (let ((_table111142_
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _table111142_ _sym111140_))))
    (define gxc#optimizer-resolve-class
      (lambda (_where111134_ _sym111135_)
        (let ((_$e111137_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _sym111135_))))
          (if _$e111137_
              _$e111137_
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where111134_
                 _sym111135_))))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_klass111132_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass111132_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"not a class"
               'lookup-class-name
               _klass111132_)))
        (let ((__tmp113514
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp113514 _klass111132_))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t111129_ _method111130_)
        (let ((__tmp113515
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-class 'lookup-method _type-t111129_))))
          (declare (not safe))
          (gxc#!class-lookup-method __tmp113515 _method111130_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym111127_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym111127_))
        (let ((__tmp113516
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp113516 _sym111127_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym111125_)
        (let ((__tmp113517
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp113517 _sym111125_))))
    (define gxc#identifier-symbol
      (lambda (_stx111123_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx111123_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx111123_))
            (let () (declare (not safe)) (gx#stx-e _stx111123_)))))))
