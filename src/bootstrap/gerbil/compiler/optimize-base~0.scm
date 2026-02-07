(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1770505722)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp206584 (list)) (__tmp206583 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp206584
         '(type classes ssxi methods)
         __tmp206583
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args206503%_
        (apply make-instance gxc#optimizer-info::t _%$args206503%_)))
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
      (lambda (_%self206490%_)
        (let ((_%self206493%_ _%self206490%_))
          (if (let ((__tmp206585
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self206493%_))))
                (declare (not safe))
                (##fx< '4 __tmp206585))
              (begin
                (let ((__tmp206586
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self206493%_
                   __tmp206586
                   '1
                   '#f
                   '#f))
                (let ((__tmp206587
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self206493%_
                   __tmp206587
                   '2
                   '#f
                   '#f))
                (let ((__tmp206588
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self206493%_
                   __tmp206588
                   '3
                   '#f
                   '#f))
                (let ((__tmp206589
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self206493%_
                   __tmp206589
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp206590
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self206493%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self206493%_
                       '4
                       __tmp206590))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp206592 (list)) (__tmp206591 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp206592
         '(id)
         __tmp206591
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args206365%_
        (apply make-instance gxc#!type::t _%$args206365%_)))
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
    (define gxc#!abort::t
      (let ((__tmp206594 (list gxc#!type::t))
            (__tmp206593 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp206594
         '()
         __tmp206593
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args206362%_
        (apply make-instance gxc#!abort::t _%$args206362%_)))
    (define gxc#!abort-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!abort::t 'id)))
    (define gxc#!abort-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!abort::t 'id)))
    (define gxc#&!abort-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!abort::t 'id)))
    (define gxc#&!abort-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!abort::t 'id)))
    (define gxc#!alias::t
      (let ((__tmp206596 (list gxc#!type::t))
            (__tmp206595 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp206596
         '()
         __tmp206595
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args206359%_
        (apply make-instance gxc#!alias::t _%$args206359%_)))
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
    (define gxc#!signature::t
      (let ((__tmp206598 (list)) (__tmp206597 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp206598
         '(return effect arguments unchecked origin)
         __tmp206597
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args206356%_
        (apply make-instance gxc#!signature::t _%$args206356%_)))
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
    (define gxc#!signature-origin
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!signature::t 'origin)))
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
    (define gxc#!signature-origin-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!signature::t 'origin)))
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
    (define gxc#&!signature-origin
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!signature::t 'origin)))
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
    (define gxc#&!signature-origin-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!signature::t 'origin)))
    (define gxc#!procedure::t
      (let ((__tmp206600 (list gxc#!type::t))
            (__tmp206599 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp206600
         '(signature)
         __tmp206599
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (__make-class-predicate gxc#!procedure::t)))
    (define gxc#!procedure-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!procedure::t 'signature)))
    (define gxc#!procedure-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!procedure::t 'id)))
    (define gxc#!procedure-unchecked-signature-set!
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
    (define gxc#&!procedure-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!procedure::t 'signature)))
    (define gxc#&!procedure-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!procedure::t 'id)))
    (define gxc#__make-!procedure
      (lambda (_%id206343%_ _%signature206344%_)
        (let ((_%signature206347%_ _%signature206344%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id206343%_ _%signature206347%_))))
    (define gxc#make-!procedure
      (lambda (_%id203154%_ _%signature203156%_)
        (if ((lambda (_%$obj203160%_)
               (or (not _%$obj203160%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj203160%_
                      'gxc#!signature::t))))
             _%signature203156%_)
            (let ((_%signature203167%_ _%signature203156%_))
              (gxc#__make-!procedure _%id203154%_ _%signature203167%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature203156%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj206322%_ _%signature206323%_)
        (let* ((_%$obj206326%_ _%$obj206322%_)
               (_%signature206334%_ _%signature206323%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj206326%_
           _%signature206334%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj203297%_ _%signature203299%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj203297%_ 'gxc#!procedure::t))
            (let ((_%$obj203303%_ _%$obj203297%_))
              (if ((lambda (_%$obj203312%_)
                     (or (not _%$obj203312%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj203312%_
                            'gxc#!signature::t))))
                   _%signature203299%_)
                  (let ((_%signature203319%_ _%signature203299%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj203303%_
                     _%signature203319%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature203299%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj203297%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp206602 (list gxc#!type::t))
            (__tmp206601 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp206602
         '(class)
         __tmp206601
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args206319%_
        (apply make-instance gxc#!class-meta::t _%$args206319%_)))
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
      (let ((__tmp206604 (list gxc#!type::t))
            (__tmp206603 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp206604
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp206603
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args206316%_
        (apply make-instance gxc#!class::t _%$args206316%_)))
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
      (let ((__tmp206606 (list gxc#!procedure::t))
            (__tmp206605 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp206606
         '()
         __tmp206605
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args206313%_
        (apply make-instance gxc#!predicate::t _%$args206313%_)))
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
      (let ((__tmp206608 (list gxc#!procedure::t))
            (__tmp206607 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp206608
         '()
         __tmp206607
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args206310%_
        (apply make-instance gxc#!constructor::t _%$args206310%_)))
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
      (let ((__tmp206610 (list gxc#!procedure::t))
            (__tmp206609 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp206610
         '(slot checked?)
         __tmp206609
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args206307%_
        (apply make-instance gxc#!accessor::t _%$args206307%_)))
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
      (let ((__tmp206612 (list gxc#!procedure::t))
            (__tmp206611 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp206612
         '(slot checked?)
         __tmp206611
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args206304%_
        (apply make-instance gxc#!mutator::t _%$args206304%_)))
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
      (let ((__tmp206614 (list gxc#!type::t))
            (__tmp206613 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp206614
         '(methods)
         __tmp206613
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args206301%_
        (apply make-instance gxc#!interface::t _%$args206301%_)))
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
      (let ((__tmp206616 (list gxc#!procedure::t))
            (__tmp206615 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp206616
         '(arity dispatch inline inline-typedecl)
         __tmp206615
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args206298%_
        (apply make-instance gxc#!lambda::t _%$args206298%_)))
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
      (let ((__tmp206618 (list gxc#!procedure::t))
            (__tmp206617 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp206618
         '(clauses)
         __tmp206617
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args206295%_
        (apply make-instance gxc#!case-lambda::t _%$args206295%_)))
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
      (let ((__tmp206620 (list gxc#!procedure::t))
            (__tmp206619 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp206620
         '(table dispatch)
         __tmp206619
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args206292%_
        (apply make-instance gxc#!kw-lambda::t _%$args206292%_)))
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
      (let ((__tmp206622 (list gxc#!procedure::t))
            (__tmp206621 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp206622
         '(keys main)
         __tmp206621
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args206289%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args206289%_)))
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
      (let ((__tmp206623 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp206623
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args206286%_
        (apply make-instance gxc#!primitive::t _%$args206286%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp206625 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp206624 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp206625
         '()
         __tmp206624
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args206283%_
        (apply make-instance gxc#!primitive-predicate::t _%$args206283%_)))
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
    (define gxc#!primitive-lambda::t
      (let ((__tmp206627 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp206626 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp206627
         '()
         __tmp206626
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args206280%_
        (apply make-instance gxc#!primitive-lambda::t _%$args206280%_)))
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
      (let ((__tmp206629 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp206628 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp206629
         '()
         __tmp206628
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args206277%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args206277%_)))
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
    (define gxc#!abort:::init!
      (lambda (_%self206264%_)
        (let ((_%self206267%_ _%self206264%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self206267%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self206127%_ _%klass206128%_)
        (let ((_%self206131%_ _%self206127%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self206131%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206131%_
             _%klass206128%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!class-meta::t
       ':init!
       gxc#!class-meta:::init!
       '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self205817%_
               _%id205818%_
               _%super205819%_
               _%slots205820%_
               _%ctor-method205821%_
               _%struct?205822%_
               _%final?205823%_
               _%system?205824%_
               _%metaclass205825%_)
        (let ((_%self205828%_ _%self205817%_))
          (let _%lp205839%_ ((_%rest205841%_ _%super205819%_))
            (let* ((_%rest205842205850%_ _%rest205841%_)
                   (_%else205844205858%_ (lambda () '#!void))
                   (_%K205846205864%_
                    (lambda (_%rest205861%_ _%super-id205862%_)
                      (if (let ((__tmp206630
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id205818%_ '()))
                                  _%super-id205862%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp206630 '8 '#f '#f))
                          (let ((__tmp206631
                                 (cons '!class (cons _%id205818%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp206631
                             _%super-id205862%_))
                          '#!void)
                      (_%lp205839%_ _%rest205861%_))))
              (if (pair? _%rest205842205850%_)
                  (let ((_%hd205847205867%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest205842205850%_)))
                        (_%tl205848205869%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest205842205850%_))))
                    (let* ((_%super-id205872%_ _%hd205847205867%_)
                           (_%rest205874%_ _%tl205848205869%_))
                      (_%K205846205864%_ _%rest205874%_ _%super-id205872%_)))
                  '#!void)))
          (let* ((_%ctor-method205925%_
                  (let ((_%$e205876%_ _%ctor-method205821%_))
                    (if _%$e205876%_
                        _%$e205876%_
                        (let _%lp205879%_ ((_%rest205881%_ _%super205819%_)
                                           (_%method205882%_ '#f))
                          (let* ((_%rest205883205891%_ _%rest205881%_)
                                 (_%else205885205899%_
                                  (lambda () _%method205882%_))
                                 (_%K205887205913%_
                                  (lambda (_%rest205902%_ _%super-id205903%_)
                                    (let* ((_%klass205905%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id205818%_ '()))
                                             _%super-id205903%_))
                                           (_%$e205907%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass205905%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e205907%_
                                          ((lambda (_%ctor-method205910%_)
                                             (if _%method205882%_
                                                 (if (eq? _%ctor-method205910%_
                                                          _%method205882%_)
                                                     (_%lp205879%_
                                                      _%rest205902%_
                                                      _%ctor-method205910%_)
                                                     (let ((__tmp206632
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id205818%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp206632
                _%method205882%_
                _%ctor-method205910%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp205879%_
                                                  _%rest205902%_
                                                  _%ctor-method205910%_)))
                                           _%$e205907%_)
                                          (_%lp205879%_
                                           _%rest205902%_
                                           _%method205882%_))))))
                            (if (pair? _%rest205883205891%_)
                                (let ((_%hd205888205916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest205883205891%_)))
                                      (_%tl205889205918%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest205883205891%_))))
                                  (let* ((_%super-id205921%_
                                          _%hd205888205916%_)
                                         (_%rest205923%_ _%tl205889205918%_))
                                    (_%K205887205913%_
                                     _%rest205923%_
                                     _%super-id205921%_)))
                                (_%else205885205899%_)))))))
                 (_g206633_
                  (let ((__tmp206637
                         (lambda (_%klass-id205927%_)
                           (cons _%klass-id205927%_
                                 (let ((__tmp206638
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id205818%_ '()))
                                         _%klass-id205927%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp206638
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp206635
                         (lambda (_%klass-id205929%_)
                           (let ((__tmp206636
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id205818%_ '()))
                                   _%klass-id205929%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp206636
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp206637
                     __tmp206635
                     eq?
                     identity
                     '()
                     _%super205819%_))))
            (begin
              (let ((_g206634_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g206633_)
                           (##values-length _g206633_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g206634_ 2)))
                    (error "Context expects 2 values" _g206634_)))
              (let ((_%precedence-list205931%_
                     (let () (declare (not safe)) (##values-ref _g206633_ 0)))
                    (_%base-struct205932%_
                     (let () (declare (not safe)) (##values-ref _g206633_ 1))))
                (let* ((_%precedence-list205976%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id205818%_ '(t object class)))
                            _%precedence-list205931%_
                            (if (memq 'object::t _%precedence-list205931%_)
                                _%precedence-list205931%_
                                (if _%system?205824%_
                                    (if (memq 't::t _%precedence-list205931%_)
                                        _%precedence-list205931%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list205931%_
                                           '(t::t))))
                                    (let _%loop205938%_ ((_%tail205940%_
                                                          _%precedence-list205931%_)
                                                         (_%head205941%_ '()))
                                      (let* ((_%tail205942205950%_
                                              _%tail205940%_)
                                             (_%else205944205958%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head205941%_))))
                                             (_%K205946205964%_
                                              (lambda (_%rest205961%_
                                                       _%hd205962%_)
                                                (if (eq? _%hd205962%_ 't::t)
                                                    (let ((__tmp206639
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail205940%_)))
              (declare (not safe))
              (foldl__0 cons __tmp206639 _%head205941%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop205938%_
                                                     _%rest205961%_
                                                     (cons _%hd205962%_
                                                           _%head205941%_))))))
                                        (if (pair? _%tail205942205950%_)
                                            (let ((_%hd205947205967%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail205942205950%_)))
                                                  (_%tl205948205969%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail205942205950%_))))
                                              (let* ((_%hd205972%_
                                                      _%hd205947205967%_)
                                                     (_%rest205974%_
                                                      _%tl205948205969%_))
                                                (_%K205946205964%_
                                                 _%rest205974%_
                                                 _%hd205972%_)))
                                            (_%else205944205958%_))))))))
                       (_%fields205978%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id205818%_ '()))
                         _%base-struct205932%_
                         _%precedence-list205976%_
                         _%slots205820%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205828%_
                     _%id205818%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205828%_
                     _%super205819%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205828%_
                     _%precedence-list205976%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205828%_
                     _%slots205820%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205828%_
                     _%fields205978%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205828%_
                     _%ctor-method205925%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205828%_
                     _%struct?205822%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205828%_
                     _%final?205823%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205828%_
                     _%metaclass205825%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self205981%_
               _%id205982%_
               _%super205983%_
               _%precedence-list205984%_
               _%slots205985%_
               _%fields205986%_
               _%constructor205987%_
               _%struct?205988%_
               _%final?205989%_
               _%system?205990%_
               _%metaclass205991%_
               _%methods205992%_)
        (let ((_%self205995%_ _%self205981%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205995%_
             _%id205982%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205995%_
             _%super205983%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205995%_
             _%precedence-list205984%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205995%_
             _%slots205985%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205995%_
             _%fields205986%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205995%_
             _%constructor205987%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205995%_
             _%struct?205988%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205995%_
             _%final?205989%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205995%_
             _%metaclass205991%_
             '10
             '#f
             '#f))
          (if _%methods205992%_
              (let ((__tmp206640
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods205992%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self205995%_
                 __tmp206640
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g206641_
        (let ((_g206642_ (let () (declare (not safe)) (##length _g206641_))))
          (cond ((let () (declare (not safe)) (##fx= _g206642_ 9))
                 (apply gxc#!class:::init!__0 _g206641_))
                ((let () (declare (not safe)) (##fx= _g206642_ 12))
                 (apply gxc#!class:::init!__1 _g206641_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g206641_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where205669%_
               _%base-struct205670%_
               _%precedence-list205671%_
               _%direct-slots205672%_)
        (let* ((_%base-fields205674%_
                (if _%base-struct205670%_
                    (let ((__tmp206643
                           (gxc#optimizer-resolve-class
                            _%where205669%_
                            _%base-struct205670%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp206643 '5 '#f '#f))
                    '()))
               (_%r-fields205676%_ (reverse _%base-fields205674%_))
               (_%seen-slots205684%_
                (let ((_%tab205678%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g205679205681%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab205678%_ _%g205679205681%_ '#t)))
                   _%base-fields205674%_)
                  _%tab205678%_))
               (_%process-slot205688%_
                (lambda (_%slot205686%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots205684%_ _%slot205686%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots205684%_
                           _%slot205686%_
                           '#t))
                        (set! _%r-fields205676%_
                              (cons _%slot205686%_ _%r-fields205676%_)))))))
          (for-each
           (lambda (_%mixin205691%_)
             (let ((_%klass205693%_
                    (gxc#optimizer-resolve-class
                     _%where205669%_
                     _%mixin205691%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass205693%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot205688%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass205693%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list205671%_)
          (for-each _%process-slot205688%_ _%direct-slots205672%_)
          (let () (declare (not safe)) (##reverse _%r-fields205676%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass205628%_ _%slot205629%_)
        (let _%lp205631%_ ((_%rest205633%_
                            (##structure-ref
                             _%klass205628%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset205634%_ '1))
          (let* ((_%rest205635205643%_ _%rest205633%_)
                 (_%else205637205651%_
                  (lambda ()
                    (let ((__tmp206645
                           (##structure-ref
                            _%klass205628%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp206644
                           (##structure-ref
                            _%klass205628%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp206645
                       __tmp206644
                       _%slot205629%_))))
                 (_%K205639205657%_
                  (lambda (_%rest205654%_ _%s205655%_)
                    (if (eq? _%s205655%_ _%slot205629%_)
                        _%offset205634%_
                        (_%lp205631%_
                         _%rest205654%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset205634%_ '1)))))))
            (if (pair? _%rest205635205643%_)
                (let ((_%hd205640205660%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest205635205643%_)))
                      (_%tl205641205662%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest205635205643%_))))
                  (let* ((_%s205665%_ _%hd205640205660%_)
                         (_%rest205667%_ _%tl205641205662%_))
                    (_%K205639205657%_ _%rest205667%_ _%s205665%_)))
                (_%else205637205651%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass205586%_ _%slot205587%_)
        (if (gxc#!class-struct-slot? _%klass205586%_ _%slot205587%_)
            _%klass205586%_
            (let _%lp205589%_ ((_%rest205591%_
                                (##structure-ref
                                 _%klass205586%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest205592205600%_ _%rest205591%_)
                     (_%else205594205608%_ (lambda () '#f))
                     (_%K205596205616%_
                      (lambda (_%rest205611%_ _%super205612%_)
                        (let ((_%super-class205614%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass205586%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot205587%_ '())))
                                _%super205612%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class205614%_
                               _%slot205587%_)
                              _%super-class205614%_
                              (_%lp205589%_ _%rest205611%_))))))
                (if (pair? _%rest205592205600%_)
                    (let ((_%hd205597205619%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest205592205600%_)))
                          (_%tl205598205621%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest205592205600%_))))
                      (let* ((_%super205624%_ _%hd205597205619%_)
                             (_%rest205626%_ _%tl205598205621%_))
                        (_%K205596205616%_ _%rest205626%_ _%super205624%_)))
                    (_%else205594205608%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass205583%_ _%slot205584%_)
        (if (##structure-ref _%klass205583%_ '7 gxc#!class::t '#f)
            (memq _%slot205584%_
                  (##structure-ref _%klass205583%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self205568%_ _%id205569%_)
        (let ((_%self205572%_ _%self205568%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205572%_
             _%id205569%_
             '1
             '#f
             '#f))
          (let ((__tmp206646
                 (let ((__obj206578
                        (let ()
                          (declare (not safe))
                          (##structure
                           gxc#!signature::t
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206578
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206578
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206578
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj206578)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205572%_
             __tmp206646
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self205431%_ _%id205432%_)
        (let ((_%self205435%_ _%self205431%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205435%_
             _%id205432%_
             '1
             '#f
             '#f))
          (let ((__tmp206647
                 (let ((__obj206579
                        (let ()
                          (declare (not safe))
                          (##structure
                           gxc#!signature::t
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206579
                      _%id205432%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206579
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj206579)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205435%_
             __tmp206647
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_%self205292%_ _%id205293%_ _%slot205294%_ _%checked?205295%_)
        (let ((_%self205298%_ _%self205292%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205298%_
             _%id205293%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205298%_
             _%slot205294%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205298%_
             _%checked?205295%_
             '4
             '#f
             '#f))
          (let ((__tmp206648
                 (let ((__obj206580
                        (let ()
                          (declare (not safe))
                          (##structure
                           gxc#!signature::t
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set! __obj206580 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206580
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp206649 (cons _%id205293%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206580
                      __tmp206649
                      '3
                      '#f
                      '#f))
                   __obj206580)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205298%_
             __tmp206648
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self205153%_ _%id205154%_ _%slot205155%_ _%checked?205156%_)
        (let ((_%self205159%_ _%self205153%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205159%_
             _%id205154%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205159%_
             _%slot205155%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205159%_
             _%checked?205156%_
             '4
             '#f
             '#f))
          (let ((__tmp206650
                 (let ((__obj206581
                        (let ()
                          (declare (not safe))
                          (##structure
                           gxc#!signature::t
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206581
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206581
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp206651 (cons _%id205154%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206581
                      __tmp206651
                      '3
                      '#f
                      '#f))
                   __obj206581)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205159%_
             __tmp206650
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords204997%_
               _%signature204994204998%_
               _%self204999%_
               _%arity205000%_
               _%dispatch205001%_)
        (let* ((_%signature205003%_
                (if (eq? _%signature204994204998%_ absent-value)
                    '#f
                    _%signature204994204998%_))
               (_%self205006%_ _%self204999%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self205006%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205006%_
             _%arity205000%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205006%_
             _%dispatch205001%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205006%_
             _%signature205003%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords205021%_ . _%args205022%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords205021%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205021%_
                  'signature:
                  absent-value))
               _%args205022%_)))
    (define gxc#!lambda:::init!
      (lambda _%args204995205028%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args204995205028%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords204838%_
               _%signature204835204839%_
               _%self204840%_
               _%clauses204841%_)
        (let* ((_%signature204843%_
                (if (eq? _%signature204835204839%_ absent-value)
                    '#f
                    _%signature204835204839%_))
               (_%self204846%_ _%self204840%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self204846%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204846%_
             _%signature204843%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204846%_
             _%clauses204841%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords204861%_ . _%args204862%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords204861%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204861%_
                  'signature:
                  absent-value))
               _%args204862%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args204836204868%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args204836204868%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self204696%_ _%tab204697%_ _%dispatch204698%_)
        (let ((_%self204701%_ _%self204696%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self204701%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204701%_
             _%tab204697%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204701%_
             _%dispatch204698%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self204558%_ _%keys204559%_ _%main204560%_)
        (let ((_%self204563%_ _%self204558%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self204563%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204563%_
             _%keys204559%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204563%_
             _%main204560%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       ':init!
       gxc#!kw-lambda-primary:::init!
       '#f))
    (define gxc#!primitive-lambda:::init! gxc#!lambda:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-lambda::t
       ':init!
       gxc#!primitive-lambda:::init!
       '#f))
    (define gxc#!primitive-case-lambda:::init! gxc#!case-lambda:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!primitive-predicate:::init!
      (lambda (_%self204177%_ _%id204178%_)
        (let ((_%self204181%_ _%self204177%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204181%_
             _%id204178%_
             '1
             '#f
             '#f))
          (let ((__tmp206652
                 (let ((__obj206582
                        (let ()
                          (declare (not safe))
                          (##structure
                           gxc#!signature::t
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206582
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206582
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206582
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj206582)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204181%_
             __tmp206652
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       ':init!
       gxc#!primitive-predicate:::init!
       '#f))
    (define gxc#!class-method-table
      (lambda (_%klass204047%_)
        (let ((_%$e204049%_
               (##structure-ref _%klass204047%_ '11 gxc#!class::t '#f)))
          (if _%$e204049%_
              _%$e204049%_
              (let ((_%tab204053%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass204047%_
                 _%tab204053%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab204053%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass204039%_ _%method204040%_)
        (let ((_%tab204041204043%_
               (##structure-ref _%klass204039%_ '11 gxc#!class::t '#f)))
          (if _%tab204041204043%_
              (let ((_%tab204045%_ _%tab204041204043%_))
                (declare (not safe))
                (hash-get _%tab204045%_ _%method204040%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a204027%_ _%type-b204028%_)
        (if _%type-a204027%_
            (if _%type-b204028%_
                (let ((_%$e204030%_ (eq? _%type-a204027%_ _%type-b204028%_)))
                  (if _%$e204030%_
                      _%$e204030%_
                      (let ((_%$e204033%_
                             (eq? (##structure-ref
                                   _%type-b204028%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e204033%_
                            _%$e204033%_
                            (let ((_%$e204036%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a204027%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b204028%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e204036%_
                                  _%$e204036%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a204027%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b204028%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a204027%_
                                           _%type-b204028%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a203978%_ _%klass-b203979%_)
        (let ((_%$e203981%_
               (eq? (##structure-ref _%klass-a203978%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b203979%_ '1 gxc#!type::t '#f))))
          (if _%$e203981%_
              _%$e203981%_
              (let ((_%klass-id-b203984%_
                     (##structure-ref _%klass-b203979%_ '1 gxc#!type::t '#f))
                    (_%precedence-list203985%_
                     (##structure-ref _%klass-a203978%_ '3 gxc#!class::t '#f)))
                (let _%loop203987%_ ((_%rest203989%_
                                      _%precedence-list203985%_))
                  (let* ((_%rest203990203998%_ _%rest203989%_)
                         (_%else203992204006%_ (lambda () '#f))
                         (_%K203994204015%_
                          (lambda (_%rest204009%_ _%klass-name204010%_)
                            (let ((_%$e204012%_
                                   (eq? (let ((__tmp206653
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a203978%_
                                                            (cons _%klass-b203979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name204010%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp206653
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b203984%_)))
                              (if _%$e204012%_
                                  _%$e204012%_
                                  (_%loop203987%_ _%rest204009%_))))))
                    (if (pair? _%rest203990203998%_)
                        (let ((_%hd203995204018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest203990203998%_)))
                              (_%tl203996204020%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest203990203998%_))))
                          (let* ((_%klass-name204023%_ _%hd203995204018%_)
                                 (_%rest204025%_ _%tl203996204020%_))
                            (_%K203994204015%_
                             _%rest204025%_
                             _%klass-name204023%_)))
                        (_%else203992204006%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type203976%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type203976%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type203976%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc203965%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc203965%_ 'gxc#!procedure::t))
            (let ((_%proc203968%_ _%proc203965%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc203968%_ '2 '#f '#f))
                  (let ((__tmp206654
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc203968%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp206654 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc203965%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym203947%_ _%type203948%_ _%local?203949%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type203948%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym203947%_
                     _%type203948%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym203947%_ '" " _%type203948%_))
        (let ((_%table203951%_
               (if _%local?203949%_
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-local-type))
                   (##structure-ref
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-optimizer-info))
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! _%table203951%_ _%sym203947%_ _%type203948%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym203956%_ _%type203957%_)
        (let ((_%local?203959%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym203956%_
           _%type203957%_
           _%local?203959%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g206655_
        (let ((_g206656_ (let () (declare (not safe)) (##length _g206655_))))
          (cond ((let () (declare (not safe)) (##fx= _g206656_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g206655_))
                ((let () (declare (not safe)) (##fx= _g206656_ 3))
                 (apply gxc#optimizer-declare-type!__% _g206655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g206655_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym203941%_ _%type203942%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type203942%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym203941%_
                     _%type203942%_)))
        (let ((_%table203944%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp206657
                 (let () (declare (not safe)) (struct->list _%type203942%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym203941%_ '" " __tmp206657))
          (let ()
            (declare (not safe))
            (hash-put! _%table203944%_ _%sym203941%_ _%type203942%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table203944%_ _%type203942%_ _%sym203941%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym203936%_ _%type203937%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type203937%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym203936%_
                     _%type203937%_)))
        (let ((_%table203939%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table203939%_ _%sym203936%_))
              '#!void
              (begin
                (let ((__tmp206658
                       (let ()
                         (declare (not safe))
                         (struct->list _%type203937%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym203936%_
                   '" "
                   __tmp206658))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table203939%_ _%sym203936%_ _%type203937%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table203939%_
                   _%type203937%_
                   _%sym203936%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym203934%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym203934%_))
        (let ((__tmp206659
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp206659 _%sym203934%_))
        (let ((__tmp206660
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp206660 _%sym203934%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t203902%_
               _%method203903%_
               _%sym203904%_
               _%rebind?203905%_)
        (let ((__tmp206661
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp206661 _%sym203904%_ '#t))
        (let ((_%klass203907%_ (gxc#optimizer-lookup-class _%type-t203902%_)))
          (if _%klass203907%_
              (let* ((_%vtab203909%_ (gxc#!class-method-table _%klass203907%_))
                     (_%$e203911%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab203909%_ _%method203903%_))))
                (if _%$e203911%_
                    ((lambda (_%existing203914%_)
                       (if _%rebind?203905%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t203902%_
                                '" "
                                _%method203903%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab203909%_
                                _%method203903%_
                                _%sym203904%_)))
                           (if (eq? _%existing203914%_ _%sym203904%_)
                               '#!void
                               (let ((__tmp206662
                                      (cons 'bind-method!
                                            (cons _%type-t203902%_
                                                  (cons _%method203903%_
                                                        (cons _%sym203904%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp206662
                                  _%method203903%_)))))
                     _%$e203911%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t203902%_
                         '" "
                         _%method203903%_
                         '" => "
                         _%sym203904%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab203909%_
                         _%method203903%_
                         _%sym203904%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t203902%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t203923%_ _%method203924%_ _%sym203925%_)
        (let ((_%rebind?203927%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t203923%_
           _%method203924%_
           _%sym203925%_
           _%rebind?203927%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g206663_
        (let ((_g206664_ (let () (declare (not safe)) (##length _g206663_))))
          (cond ((let () (declare (not safe)) (##fx= _g206664_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g206663_))
                ((let () (declare (not safe)) (##fx= _g206664_ 4))
                 (apply gxc#optimizer-declare-method!__% _g206663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g206663_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym203888%_)
        (let ((_%$e203890%_
               (let ((__tmp206665
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym203888%_ __tmp206665))))
          (if _%$e203890%_
              _%$e203890%_
              (let ((_%$e203898%_
                     (let ((_%ht203892203894%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht203892203894%_
                           (let ((_%ht203896%_ _%ht203892203894%_))
                             (declare (not safe))
                             (hash-get _%ht203896%_ _%sym203888%_))
                           '#f))))
                (if _%$e203898%_
                    _%$e203898%_
                    (let ((__tmp206666
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp206666 _%sym203888%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym203881%_)
        (let ((_%type203882203884%_ (gxc#optimizer-lookup-type _%sym203881%_)))
          (if _%type203882203884%_
              (let ((_%type203886%_ _%type203882203884%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type203886%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type203886%_ '1 '#f '#f)))
                    _%type203886%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym203877%_)
        (let ((_%table203879%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table203879%_ _%sym203877%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where203862%_ _%sym203863%_)
        (let ((_%$e203866%_ (gxc#optimizer-lookup-class _%sym203863%_)))
          (if _%$e203866%_
              ((lambda (_%g203868203870%_)
                 (let ((_%val203873%_ _%g203868203870%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val203873%_
                          'gxc#!class::t))
                       _%val203873%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val203873%_)
                         '#!void))))
               _%$e203866%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where203862%_
                   _%sym203863%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass203860%_)
        (let ((__tmp206667
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp206667 _%klass203860%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t203857%_ _%method203858%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t203857%_)
         _%method203858%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym203855%_)
        (let ((__tmp206668
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp206668 _%sym203855%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e203330%_
                  (lambda (_%t203796%_)
                    (if (symbol? _%t203796%_)
                        (_%type-e203330%_
                         (gxc#optimizer-lookup-type _%t203796%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t203796%_
                               'gxc#!lambda::t))
                            (let* ((_%t203800%_ _%t203796%_)
                                   (_%t203804%_ _%t203800%_))
                              (_%__lambda-type203456%_ _%t203804%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t203796%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t203816%_ _%t203796%_)
                                       (_%t203820%_ _%t203816%_))
                                  (_%__kw-lambda-type203579%_ _%t203820%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t203796%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t203831%_ _%t203796%_)
                                           (_%t203835%_ _%t203831%_))
                                      (_%__kw-lambda-primary-type203702%_
                                       _%t203835%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t203796%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t203846%_ _%t203796%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t203846%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp206669
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t203846%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp206669
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t203796%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t203796%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type203456%_
                  (lambda (_%t203784%_)
                    (let ((_%t203787%_ _%t203784%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t203787%_ '4 '#f '#f))
                          (_%type-e203330%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t203787%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t203787%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp206670
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t203787%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp206670
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type203457%_
                  (lambda (_%t203772%_)
                    (let ((_%t203775%_ _%t203772%_))
                      (_%__lambda-type203456%_ _%t203775%_))))
                 (_%__kw-lambda-type203579%_
                  (lambda (_%t203760%_)
                    (let ((_%t203763%_ _%t203760%_))
                      (_%type-e203330%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t203763%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type203580%_
                  (lambda (_%t203748%_)
                    (let ((_%t203751%_ _%t203748%_))
                      (_%__kw-lambda-type203579%_ _%t203751%_))))
                 (_%__kw-lambda-primary-type203702%_
                  (lambda (_%t203736%_)
                    (let ((_%t203739%_ _%t203736%_))
                      (_%type-e203330%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t203739%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type203703%_
                  (lambda (_%t203724%_)
                    (let ((_%t203727%_ _%t203724%_))
                      (_%__kw-lambda-primary-type203702%_ _%t203727%_)))))
          (let* ((_%ht1203705%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2203707%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result203709%_
                  (if _%ht1203705%_
                      (let () (declare (not safe)) (hash->list _%ht1203705%_))
                      '()))
                 (_%result203711%_
                  (if _%ht2203707%_
                      (let ((__tmp206671
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2203707%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result203709%_ __tmp206671))
                      _%result203709%_)))
            (for-each
             (lambda (_%p203714%_)
               (let* ((_%t203716%_ (cdr _%p203714%_))
                      (_%tr203718%_ (_%type-e203330%_ _%t203716%_)))
                 (set-cdr! _%p203714%_ _%tr203718%_)))
             _%result203711%_)
            (list-sort
             (lambda (_%a203721%_ _%b203722%_)
               (let ((__tmp206673 (symbol->string (car _%a203721%_)))
                     (__tmp206672 (symbol->string (car _%b203722%_))))
                 (declare (not safe))
                 (##string<? __tmp206673 __tmp206672)))
             _%result203711%_)))))))
