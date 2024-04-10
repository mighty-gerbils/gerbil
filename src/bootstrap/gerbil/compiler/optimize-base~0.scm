(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712757956)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp148573 (list)) (__tmp148572 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp148573
         '(type classes ssxi methods)
         __tmp148572
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args148544%_
        (apply make-instance gxc#optimizer-info::t _%$args148544%_)))
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
      (lambda (_%self148531%_)
        (let ((_%self148534%_ _%self148531%_))
          (if (let ((__tmp148574
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self148534%_))))
                (declare (not safe))
                (##fx< '4 __tmp148574))
              (begin
                (let ((__tmp148575
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148534%_
                   __tmp148575
                   '1
                   '#f
                   '#f))
                (let ((__tmp148576
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148534%_
                   __tmp148576
                   '2
                   '#f
                   '#f))
                (let ((__tmp148577
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148534%_
                   __tmp148577
                   '3
                   '#f
                   '#f))
                (let ((__tmp148578
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148534%_
                   __tmp148578
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp148579
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self148534%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self148534%_
                       '4
                       __tmp148579))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp148581 (list))
            (__tmp148580
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp148581
         '(id)
         __tmp148580
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args148406%_
        (apply make-instance gxc#!type::t _%$args148406%_)))
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
      (let ((__tmp148583 (list gxc#!type::t))
            (__tmp148582 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp148583
         '()
         __tmp148582
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args148403%_
        (apply make-instance gxc#!abort::t _%$args148403%_)))
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
      (let ((__tmp148585 (list gxc#!type::t))
            (__tmp148584 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp148585
         '()
         __tmp148584
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args148400%_
        (apply make-instance gxc#!alias::t _%$args148400%_)))
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
      (let ((__tmp148587 (list))
            (__tmp148586
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp148587
         '(return effect arguments unchecked origin)
         __tmp148586
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args148397%_
        (apply make-instance gxc#!signature::t _%$args148397%_)))
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
      (let ((__tmp148589 (list gxc#!type::t))
            (__tmp148588
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp148589
         '(signature)
         __tmp148588
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
    (define gxc#make-!procedure
      (lambda (_%id148376%_ _%signature148377%_)
        (if ((lambda (_%$obj148380%_)
               (or (not _%$obj148380%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj148380%_
                      'gxc#!signature::t))))
             _%signature148377%_)
            (let ((_%signature148387%_ _%signature148377%_))
              (gxc#__make-!procedure _%id148376%_ _%signature148387%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature148377%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id148362%_ _%signature148364%_)
        (let ((_%signature148367%_ _%signature148364%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id148362%_ _%signature148367%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj148331%_ _%signature148332%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj148331%_ 'gxc#!procedure::t))
            (let ((_%$obj148336%_ _%$obj148331%_))
              (if ((lambda (_%$obj148345%_)
                     (or (not _%$obj148345%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj148345%_
                            'gxc#!signature::t))))
                   _%signature148332%_)
                  (let ((_%signature148352%_ _%signature148332%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj148336%_
                     _%signature148352%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature148332%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj148331%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj148308%_ _%signature148310%_)
        (let* ((_%$obj148314%_ _%$obj148308%_)
               (_%signature148322%_ _%signature148310%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj148314%_
           _%signature148322%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp148591 (list gxc#!type::t))
            (__tmp148590 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp148591
         '(class)
         __tmp148590
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args148305%_
        (apply make-instance gxc#!class-meta::t _%$args148305%_)))
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
      (let ((__tmp148593 (list gxc#!type::t))
            (__tmp148592
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
         __tmp148593
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp148592
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args148302%_
        (apply make-instance gxc#!class::t _%$args148302%_)))
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
      (let ((__tmp148595 (list gxc#!procedure::t))
            (__tmp148594 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp148595
         '()
         __tmp148594
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args148299%_
        (apply make-instance gxc#!predicate::t _%$args148299%_)))
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
      (let ((__tmp148597 (list gxc#!procedure::t))
            (__tmp148596 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp148597
         '()
         __tmp148596
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args148296%_
        (apply make-instance gxc#!constructor::t _%$args148296%_)))
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
      (let ((__tmp148599 (list gxc#!procedure::t))
            (__tmp148598 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp148599
         '(slot checked?)
         __tmp148598
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args148293%_
        (apply make-instance gxc#!accessor::t _%$args148293%_)))
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
      (let ((__tmp148601 (list gxc#!procedure::t))
            (__tmp148600 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148601
         '(slot checked?)
         __tmp148600
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args148290%_
        (apply make-instance gxc#!mutator::t _%$args148290%_)))
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
      (let ((__tmp148603 (list gxc#!type::t))
            (__tmp148602 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148603
         '(methods)
         __tmp148602
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args148287%_
        (apply make-instance gxc#!interface::t _%$args148287%_)))
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
      (let ((__tmp148605 (list gxc#!procedure::t))
            (__tmp148604
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148605
         '(arity dispatch inline inline-typedecl)
         __tmp148604
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args148284%_
        (apply make-instance gxc#!lambda::t _%$args148284%_)))
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
      (let ((__tmp148607 (list gxc#!procedure::t))
            (__tmp148606 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148607
         '(clauses)
         __tmp148606
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args148281%_
        (apply make-instance gxc#!case-lambda::t _%$args148281%_)))
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
      (let ((__tmp148609 (list gxc#!procedure::t))
            (__tmp148608 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148609
         '(table dispatch)
         __tmp148608
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args148278%_
        (apply make-instance gxc#!kw-lambda::t _%$args148278%_)))
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
      (let ((__tmp148611 (list gxc#!procedure::t))
            (__tmp148610 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148611
         '(keys main)
         __tmp148610
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args148275%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args148275%_)))
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
      (let ((__tmp148612 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148612
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args148272%_
        (apply make-instance gxc#!primitive::t _%$args148272%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp148614 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp148613 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148614
         '()
         __tmp148613
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args148269%_
        (apply make-instance gxc#!primitive-predicate::t _%$args148269%_)))
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
      (let ((__tmp148616 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp148615 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148616
         '()
         __tmp148615
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args148266%_
        (apply make-instance gxc#!primitive-lambda::t _%$args148266%_)))
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
      (let ((__tmp148618 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp148617 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148618
         '()
         __tmp148617
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args148263%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args148263%_)))
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
      (lambda (_%self148250%_)
        (let ((_%self148253%_ _%self148250%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self148253%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self148114%_ _%klass148115%_)
        (let ((_%self148118%_ _%self148114%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148118%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148118%_
             _%klass148115%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self147806%_
               _%id147807%_
               _%super147808%_
               _%slots147809%_
               _%ctor-method147810%_
               _%struct?147811%_
               _%final?147812%_
               _%system?147813%_
               _%metaclass147814%_)
        (let ((_%self147817%_ _%self147806%_))
          (let _%lp147827%_ ((_%rest147829%_ _%super147808%_))
            (let* ((_%rest147830147838%_ _%rest147829%_)
                   (_%else147832147846%_ (lambda () '#!void))
                   (_%K147834147852%_
                    (lambda (_%rest147849%_ _%super-id147850%_)
                      (if (let ((__tmp148619
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id147807%_ '()))
                                  _%super-id147850%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp148619 '8 '#f '#f))
                          (let ((__tmp148620
                                 (cons '!class (cons _%id147807%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp148620
                             _%super-id147850%_))
                          '#!void)
                      (_%lp147827%_ _%rest147849%_))))
              (if (let () (declare (not safe)) (##pair? _%rest147830147838%_))
                  (let ((_%hd147835147855%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest147830147838%_)))
                        (_%tl147836147857%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest147830147838%_))))
                    (let* ((_%super-id147860%_ _%hd147835147855%_)
                           (_%rest147862%_ _%tl147836147857%_))
                      (_%K147834147852%_ _%rest147862%_ _%super-id147860%_)))
                  '#!void)))
          (let* ((_%ctor-method147913%_
                  (let ((_%$e147864%_ _%ctor-method147810%_))
                    (if _%$e147864%_
                        _%$e147864%_
                        (let _%lp147867%_ ((_%rest147869%_ _%super147808%_)
                                           (_%method147870%_ '#f))
                          (let* ((_%rest147871147879%_ _%rest147869%_)
                                 (_%else147873147887%_
                                  (lambda () _%method147870%_))
                                 (_%K147875147901%_
                                  (lambda (_%rest147890%_ _%super-id147891%_)
                                    (let* ((_%klass147893%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id147807%_ '()))
                                             _%super-id147891%_))
                                           (_%$e147895%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass147893%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e147895%_
                                          ((lambda (_%ctor-method147898%_)
                                             (if _%method147870%_
                                                 (if (eq? _%ctor-method147898%_
                                                          _%method147870%_)
                                                     (_%lp147867%_
                                                      _%rest147890%_
                                                      _%ctor-method147898%_)
                                                     (let ((__tmp148621
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id147807%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp148621
                _%method147870%_
                _%ctor-method147898%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp147867%_
                                                  _%rest147890%_
                                                  _%ctor-method147898%_)))
                                           _%$e147895%_)
                                          (_%lp147867%_
                                           _%rest147890%_
                                           _%method147870%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest147871147879%_))
                                (let ((_%hd147876147904%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest147871147879%_)))
                                      (_%tl147877147906%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest147871147879%_))))
                                  (let* ((_%super-id147909%_
                                          _%hd147876147904%_)
                                         (_%rest147911%_ _%tl147877147906%_))
                                    (_%K147875147901%_
                                     _%rest147911%_
                                     _%super-id147909%_)))
                                (_%else147873147887%_)))))))
                 (_g148622_
                  (let ((__tmp148626
                         (lambda (_%klass-id147915%_)
                           (cons _%klass-id147915%_
                                 (let ((__tmp148627
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id147807%_ '()))
                                         _%klass-id147915%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp148627
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp148624
                         (lambda (_%klass-id147917%_)
                           (let ((__tmp148625
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id147807%_ '()))
                                   _%klass-id147917%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp148625
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp148626
                     __tmp148624
                     eq?
                     identity
                     '()
                     _%super147808%_))))
            (begin
              (let ((_g148623_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g148622_)
                           (##vector-length _g148622_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g148623_ 2)))
                    (error "Context expects 2 values" _g148623_)))
              (let ((_%precedence-list147919%_
                     (let () (declare (not safe)) (##vector-ref _g148622_ 0)))
                    (_%base-struct147920%_
                     (let () (declare (not safe)) (##vector-ref _g148622_ 1))))
                (let* ((_%precedence-list147964%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id147807%_ '(t object class)))
                            _%precedence-list147919%_
                            (if (memq 'object::t _%precedence-list147919%_)
                                _%precedence-list147919%_
                                (if _%system?147813%_
                                    (if (memq 't::t _%precedence-list147919%_)
                                        _%precedence-list147919%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list147919%_
                                           '(t::t))))
                                    (let _%loop147926%_ ((_%tail147928%_
                                                          _%precedence-list147919%_)
                                                         (_%head147929%_ '()))
                                      (let* ((_%tail147930147938%_
                                              _%tail147928%_)
                                             (_%else147932147946%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head147929%_))))
                                             (_%K147934147952%_
                                              (lambda (_%rest147949%_
                                                       _%hd147950%_)
                                                (if (eq? _%hd147950%_ 't::t)
                                                    (let ((__tmp148628
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail147928%_)))
              (declare (not safe))
              (__foldl1 cons __tmp148628 _%head147929%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop147926%_
                                                     _%rest147949%_
                                                     (cons _%hd147950%_
                                                           _%head147929%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail147930147938%_))
                                            (let ((_%hd147935147955%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail147930147938%_)))
                                                  (_%tl147936147957%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail147930147938%_))))
                                              (let* ((_%hd147960%_
                                                      _%hd147935147955%_)
                                                     (_%rest147962%_
                                                      _%tl147936147957%_))
                                                (_%K147934147952%_
                                                 _%rest147962%_
                                                 _%hd147960%_)))
                                            (_%else147932147946%_))))))))
                       (_%fields147966%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id147807%_ '()))
                         _%base-struct147920%_
                         _%precedence-list147964%_
                         _%slots147809%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147817%_
                     _%id147807%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147817%_
                     _%super147808%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147817%_
                     _%precedence-list147964%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147817%_
                     _%slots147809%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147817%_
                     _%fields147966%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147817%_
                     _%ctor-method147913%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147817%_
                     _%struct?147811%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147817%_
                     _%final?147812%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147817%_
                     _%metaclass147814%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147969%_
               _%id147970%_
               _%super147971%_
               _%precedence-list147972%_
               _%slots147973%_
               _%fields147974%_
               _%constructor147975%_
               _%struct?147976%_
               _%final?147977%_
               _%system?147978%_
               _%metaclass147979%_
               _%methods147980%_)
        (let ((_%self147983%_ _%self147969%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147983%_
             _%id147970%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147983%_
             _%super147971%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147983%_
             _%precedence-list147972%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147983%_
             _%slots147973%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147983%_
             _%fields147974%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147983%_
             _%constructor147975%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147983%_
             _%struct?147976%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147983%_
             _%final?147977%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147983%_
             _%metaclass147979%_
             '10
             '#f
             '#f))
          (if _%methods147980%_
              (let ((__tmp148629
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods147980%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147983%_
                 __tmp148629
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g148631_
        (let ((_g148630_ (let () (declare (not safe)) (##length _g148631_))))
          (cond ((let () (declare (not safe)) (##fx= _g148630_ 9))
                 (apply gxc#!class:::init!__0 _g148631_))
                ((let () (declare (not safe)) (##fx= _g148630_ 12))
                 (apply gxc#!class:::init!__1 _g148631_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148631_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where147658%_
               _%base-struct147659%_
               _%precedence-list147660%_
               _%direct-slots147661%_)
        (let* ((_%base-fields147663%_
                (if _%base-struct147659%_
                    (let ((__tmp148632
                           (gxc#optimizer-resolve-class
                            _%where147658%_
                            _%base-struct147659%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148632 '5 '#f '#f))
                    '()))
               (_%r-fields147665%_ (reverse _%base-fields147663%_))
               (_%seen-slots147673%_
                (let ((_%tab147667%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g147668147670%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab147667%_ _%g147668147670%_ '#t)))
                   _%base-fields147663%_)
                  _%tab147667%_))
               (_%process-slot147677%_
                (lambda (_%slot147675%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots147673%_ _%slot147675%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots147673%_ _%slot147675%_ '#t))
                        (set! _%r-fields147665%_
                              (cons _%slot147675%_ _%r-fields147665%_)))))))
          (for-each
           (lambda (_%mixin147680%_)
             (let ((_%klass147682%_
                    (gxc#optimizer-resolve-class
                     _%where147658%_
                     _%mixin147680%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass147682%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot147677%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass147682%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list147660%_)
          (for-each _%process-slot147677%_ _%direct-slots147661%_)
          (let () (declare (not safe)) (##reverse _%r-fields147665%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147617%_ _%slot147618%_)
        (let _%lp147620%_ ((_%rest147622%_
                            (##structure-ref
                             _%klass147617%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147623%_ '1))
          (let* ((_%rest147624147632%_ _%rest147622%_)
                 (_%else147626147640%_
                  (lambda ()
                    (let ((__tmp148634
                           (##structure-ref
                            _%klass147617%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148633
                           (##structure-ref
                            _%klass147617%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148634
                       __tmp148633
                       _%slot147618%_))))
                 (_%K147628147646%_
                  (lambda (_%rest147643%_ _%s147644%_)
                    (if (eq? _%s147644%_ _%slot147618%_)
                        _%offset147623%_
                        (_%lp147620%_
                         _%rest147643%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset147623%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest147624147632%_))
                (let ((_%hd147629147649%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147624147632%_)))
                      (_%tl147630147651%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147624147632%_))))
                  (let* ((_%s147654%_ _%hd147629147649%_)
                         (_%rest147656%_ _%tl147630147651%_))
                    (_%K147628147646%_ _%rest147656%_ _%s147654%_)))
                (_%else147626147640%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass147575%_ _%slot147576%_)
        (if (gxc#!class-struct-slot? _%klass147575%_ _%slot147576%_)
            _%klass147575%_
            (let _%lp147578%_ ((_%rest147580%_
                                (##structure-ref
                                 _%klass147575%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest147581147589%_ _%rest147580%_)
                     (_%else147583147597%_ (lambda () '#f))
                     (_%K147585147605%_
                      (lambda (_%rest147600%_ _%super147601%_)
                        (let ((_%super-class147603%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass147575%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot147576%_ '())))
                                _%super147601%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class147603%_
                               _%slot147576%_)
                              _%super-class147603%_
                              (_%lp147578%_ _%rest147600%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest147581147589%_))
                    (let ((_%hd147586147608%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147581147589%_)))
                          (_%tl147587147610%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147581147589%_))))
                      (let* ((_%super147613%_ _%hd147586147608%_)
                             (_%rest147615%_ _%tl147587147610%_))
                        (_%K147585147605%_ _%rest147615%_ _%super147613%_)))
                    (_%else147583147597%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass147572%_ _%slot147573%_)
        (if (##structure-ref _%klass147572%_ '7 gxc#!class::t '#f)
            (memq _%slot147573%_
                  (##structure-ref _%klass147572%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147558%_ _%id147559%_)
        (let ((_%self147562%_ _%self147558%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147562%_
             _%id147559%_
             '1
             '#f
             '#f))
          (let ((__tmp148635
                 (let ((__obj148567
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
                      __obj148567
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148567
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148567
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148567)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147562%_
             __tmp148635
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147422%_ _%id147423%_)
        (let ((_%self147426%_ _%self147422%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147426%_
             _%id147423%_
             '1
             '#f
             '#f))
          (let ((__tmp148636
                 (let ((__obj148568
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
                      __obj148568
                      _%id147423%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148568
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj148568)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147426%_
             __tmp148636
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_%self147284%_ _%id147285%_ _%slot147286%_ _%checked?147287%_)
        (let ((_%self147290%_ _%self147284%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147290%_
             _%id147285%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147290%_
             _%slot147286%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147290%_
             _%checked?147287%_
             '4
             '#f
             '#f))
          (let ((__tmp148637
                 (let ((__obj148569
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
                     (##unchecked-structure-set! __obj148569 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148569
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148638 (cons _%id147285%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148569
                      __tmp148638
                      '3
                      '#f
                      '#f))
                   __obj148569)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147290%_
             __tmp148637
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self147146%_ _%id147147%_ _%slot147148%_ _%checked?147149%_)
        (let ((_%self147152%_ _%self147146%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147152%_
             _%id147147%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147152%_
             _%slot147148%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147152%_
             _%checked?147149%_
             '4
             '#f
             '#f))
          (let ((__tmp148639
                 (let ((__obj148570
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
                      __obj148570
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148570
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148640 (cons _%id147147%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148570
                      __tmp148640
                      '3
                      '#f
                      '#f))
                   __obj148570)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147152%_
             __tmp148639
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords146990%_
               _%signature146987146991%_
               _%self146993%_
               _%arity146994%_
               _%dispatch146995%_)
        (let* ((_%signature146997%_
                (if (eq? _%signature146987146991%_ absent-value)
                    '#f
                    _%signature146987146991%_))
               (_%self147000%_ _%self146993%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147000%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147000%_
             _%arity146994%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147000%_
             _%dispatch146995%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147000%_
             _%signature146997%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords147014%_ . _%args147015%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords147014%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147014%_
                  'signature:
                  absent-value))
               _%args147015%_)))
    (define gxc#!lambda:::init!
      (lambda _%args146988147021%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args146988147021%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords146831%_
               _%signature146828146832%_
               _%self146834%_
               _%clauses146835%_)
        (let* ((_%signature146837%_
                (if (eq? _%signature146828146832%_ absent-value)
                    '#f
                    _%signature146828146832%_))
               (_%self146840%_ _%self146834%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146840%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146840%_
             _%signature146837%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146840%_
             _%clauses146835%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords146854%_ . _%args146855%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords146854%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146854%_
                  'signature:
                  absent-value))
               _%args146855%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args146829146861%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args146829146861%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self146690%_ _%tab146691%_ _%dispatch146692%_)
        (let ((_%self146695%_ _%self146690%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146695%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146695%_
             _%tab146691%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146695%_
             _%dispatch146692%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146553%_ _%keys146554%_ _%main146555%_)
        (let ((_%self146558%_ _%self146553%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146558%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146558%_
             _%keys146554%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146558%_
             _%main146555%_
             '4
             '#f
             '#f)))))
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
      (lambda (_%self146173%_ _%id146174%_)
        (let ((_%self146177%_ _%self146173%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146177%_
             _%id146174%_
             '1
             '#f
             '#f))
          (let ((__tmp148641
                 (let ((__obj148571
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
                      __obj148571
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148571
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148571
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148571)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146177%_
             __tmp148641
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       ':init!
       gxc#!primitive-predicate:::init!
       '#f))
    (define gxc#!class-method-table
      (lambda (_%klass146042%_)
        (let ((_%$e146044%_
               (##structure-ref _%klass146042%_ '11 gxc#!class::t '#f)))
          (if _%$e146044%_
              _%$e146044%_
              (let ((_%tab146048%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass146042%_
                 _%tab146048%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab146048%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass146033%_ _%method146034%_)
        (let ((_%tab146035146037%_
               (##structure-ref _%klass146033%_ '11 gxc#!class::t '#f)))
          (if _%tab146035146037%_
              (let ((_%tab146040%_ _%tab146035146037%_))
                (declare (not safe))
                (hash-get _%tab146040%_ _%method146034%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a146021%_ _%type-b146022%_)
        (if _%type-a146021%_
            (if _%type-b146022%_
                (let ((_%$e146024%_ (eq? _%type-a146021%_ _%type-b146022%_)))
                  (if _%$e146024%_
                      _%$e146024%_
                      (let ((_%$e146027%_
                             (eq? (##structure-ref
                                   _%type-b146022%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e146027%_
                            _%$e146027%_
                            (let ((_%$e146030%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a146021%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b146022%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e146030%_
                                  _%$e146030%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a146021%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b146022%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a146021%_
                                           _%type-b146022%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a145972%_ _%klass-b145973%_)
        (let ((_%$e145975%_
               (eq? (##structure-ref _%klass-a145972%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b145973%_ '1 gxc#!type::t '#f))))
          (if _%$e145975%_
              _%$e145975%_
              (let ((_%klass-id-b145978%_
                     (##structure-ref _%klass-b145973%_ '1 gxc#!type::t '#f))
                    (_%precedence-list145979%_
                     (##structure-ref _%klass-a145972%_ '3 gxc#!class::t '#f)))
                (let _%loop145981%_ ((_%rest145983%_
                                      _%precedence-list145979%_))
                  (let* ((_%rest145984145992%_ _%rest145983%_)
                         (_%else145986146000%_ (lambda () '#f))
                         (_%K145988146009%_
                          (lambda (_%rest146003%_ _%klass-name146004%_)
                            (let ((_%$e146006%_
                                   (eq? (let ((__tmp148642
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a145972%_
                                                            (cons _%klass-b145973%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name146004%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148642
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b145978%_)))
                              (if _%$e146006%_
                                  _%$e146006%_
                                  (_%loop145981%_ _%rest146003%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145984145992%_))
                        (let ((_%hd145989146012%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145984145992%_)))
                              (_%tl145990146014%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145984145992%_))))
                          (let* ((_%klass-name146017%_ _%hd145989146012%_)
                                 (_%rest146019%_ _%tl145990146014%_))
                            (_%K145988146009%_
                             _%rest146019%_
                             _%klass-name146017%_)))
                        (_%else145986146000%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type145970%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145970%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type145970%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc145959%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc145959%_ 'gxc#!procedure::t))
            (let ((_%proc145962%_ _%proc145959%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc145962%_ '2 '#f '#f))
                  (let ((__tmp148643
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc145962%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp148643 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@374.11-374.15"
               'contract:
               '!procedure?
               'value:
               _%proc145959%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym145941%_ _%type145942%_ _%local?145943%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145942%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym145941%_
                     _%type145942%_)))
        (let ((__tmp148644
               (let () (declare (not safe)) (struct->list _%type145942%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym145941%_ '" " __tmp148644))
        (let ((_%table145945%_
               (if _%local?145943%_
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
          (hash-put! _%table145945%_ _%sym145941%_ _%type145942%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym145950%_ _%type145951%_)
        (let ((_%local?145953%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym145950%_
           _%type145951%_
           _%local?145953%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148646_
        (let ((_g148645_ (let () (declare (not safe)) (##length _g148646_))))
          (cond ((let () (declare (not safe)) (##fx= _g148645_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g148646_))
                ((let () (declare (not safe)) (##fx= _g148645_ 3))
                 (apply gxc#optimizer-declare-type!__% _g148646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148646_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym145935%_ _%type145936%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145936%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145935%_
                     _%type145936%_)))
        (let ((_%table145938%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148647
                 (let () (declare (not safe)) (struct->list _%type145936%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym145935%_ '" " __tmp148647))
          (let ()
            (declare (not safe))
            (hash-put! _%table145938%_ _%sym145935%_ _%type145936%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table145938%_ _%type145936%_ _%sym145935%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym145930%_ _%type145931%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145931%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145930%_
                     _%type145931%_)))
        (let ((_%table145933%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table145933%_ _%sym145930%_))
              '#!void
              (begin
                (let ((__tmp148648
                       (let ()
                         (declare (not safe))
                         (struct->list _%type145931%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym145930%_
                   '" "
                   __tmp148648))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table145933%_ _%sym145930%_ _%type145931%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table145933%_
                   _%type145931%_
                   _%sym145930%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym145928%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym145928%_))
        (let ((__tmp148649
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148649 _%sym145928%_))
        (let ((__tmp148650
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148650 _%sym145928%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t145896%_
               _%method145897%_
               _%sym145898%_
               _%rebind?145899%_)
        (let ((__tmp148651
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148651 _%sym145898%_ '#t))
        (let ((_%klass145901%_ (gxc#optimizer-lookup-class _%type-t145896%_)))
          (if _%klass145901%_
              (let* ((_%vtab145903%_ (gxc#!class-method-table _%klass145901%_))
                     (_%$e145905%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab145903%_ _%method145897%_))))
                (if _%$e145905%_
                    ((lambda (_%existing145908%_)
                       (if _%rebind?145899%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t145896%_
                                '" "
                                _%method145897%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab145903%_
                                _%method145897%_
                                _%sym145898%_)))
                           (if (eq? _%existing145908%_ _%sym145898%_)
                               '#!void
                               (let ((__tmp148652
                                      (cons 'bind-method!
                                            (cons _%type-t145896%_
                                                  (cons _%method145897%_
                                                        (cons _%sym145898%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp148652
                                  _%method145897%_)))))
                     _%$e145905%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t145896%_
                         '" "
                         _%method145897%_
                         '" => "
                         _%sym145898%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab145903%_
                         _%method145897%_
                         _%sym145898%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t145896%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t145917%_ _%method145918%_ _%sym145919%_)
        (let ((_%rebind?145921%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t145917%_
           _%method145918%_
           _%sym145919%_
           _%rebind?145921%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148654_
        (let ((_g148653_ (let () (declare (not safe)) (##length _g148654_))))
          (cond ((let () (declare (not safe)) (##fx= _g148653_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g148654_))
                ((let () (declare (not safe)) (##fx= _g148653_ 4))
                 (apply gxc#optimizer-declare-method!__% _g148654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148654_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym145884%_)
        (let ((_%$e145892%_
               (let ((_%ht145885145887%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht145885145887%_
                     (let ((_%ht145890%_ _%ht145885145887%_))
                       (declare (not safe))
                       (hash-get _%ht145890%_ _%sym145884%_))
                     '#f))))
          (if _%$e145892%_
              _%$e145892%_
              (let ((__tmp148655
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148655 _%sym145884%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym145876%_)
        (let ((_%type145877145879%_ (gxc#optimizer-lookup-type _%sym145876%_)))
          (if _%type145877145879%_
              (let ((_%type145882%_ _%type145877145879%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type145882%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (##structure-ref _%type145882%_ '1 gxc#!type::t '#f))
                    _%type145882%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym145872%_)
        (let ((_%table145874%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table145874%_ _%sym145872%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where145857%_ _%sym145858%_)
        (let ((_%$e145861%_ (gxc#optimizer-lookup-class _%sym145858%_)))
          (if _%$e145861%_
              ((lambda (_%g145863145865%_)
                 (let ((_%val145868%_ _%g145863145865%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val145868%_
                          'gxc#!class::t))
                       _%val145868%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val145868%_)))))
               _%$e145861%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where145857%_
                   _%sym145858%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass145855%_)
        (let ((__tmp148656
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148656 _%klass145855%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t145852%_ _%method145853%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t145852%_)
         _%method145853%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym145850%_)
        (let ((__tmp148657
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148657 _%sym145850%_))))))
