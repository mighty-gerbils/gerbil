(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1769382896)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp164579 (list)) (__tmp164578 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp164579
         '(type classes ssxi methods)
         __tmp164578
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args164550%_
        (apply make-instance gxc#optimizer-info::t _%$args164550%_)))
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
      (lambda (_%self164537%_)
        (let ((_%self164540%_ _%self164537%_))
          (if (let ((__tmp164580
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self164540%_))))
                (declare (not safe))
                (##fx< '4 __tmp164580))
              (begin
                (let ((__tmp164581
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164540%_
                   __tmp164581
                   '1
                   '#f
                   '#f))
                (let ((__tmp164582
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164540%_
                   __tmp164582
                   '2
                   '#f
                   '#f))
                (let ((__tmp164583
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164540%_
                   __tmp164583
                   '3
                   '#f
                   '#f))
                (let ((__tmp164584
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164540%_
                   __tmp164584
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp164585
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self164540%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self164540%_
                       '4
                       __tmp164585))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp164587 (list)) (__tmp164586 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp164587
         '(id)
         __tmp164586
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args164412%_
        (apply make-instance gxc#!type::t _%$args164412%_)))
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
      (let ((__tmp164589 (list gxc#!type::t))
            (__tmp164588 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp164589
         '()
         __tmp164588
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args164409%_
        (apply make-instance gxc#!abort::t _%$args164409%_)))
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
      (let ((__tmp164591 (list gxc#!type::t))
            (__tmp164590 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp164591
         '()
         __tmp164590
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args164406%_
        (apply make-instance gxc#!alias::t _%$args164406%_)))
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
      (let ((__tmp164593 (list)) (__tmp164592 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp164593
         '(return effect arguments unchecked origin)
         __tmp164592
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args164403%_
        (apply make-instance gxc#!signature::t _%$args164403%_)))
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
      (let ((__tmp164595 (list gxc#!type::t))
            (__tmp164594 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp164595
         '(signature)
         __tmp164594
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
      (lambda (_%id164382%_ _%signature164383%_)
        (if ((lambda (_%$obj164386%_)
               (or (not _%$obj164386%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj164386%_
                      'gxc#!signature::t))))
             _%signature164383%_)
            (let ((_%signature164393%_ _%signature164383%_))
              (gxc#__make-!procedure _%id164382%_ _%signature164393%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature164383%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id164368%_ _%signature164370%_)
        (let ((_%signature164373%_ _%signature164370%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id164368%_ _%signature164373%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj164337%_ _%signature164338%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj164337%_ 'gxc#!procedure::t))
            (let ((_%$obj164342%_ _%$obj164337%_))
              (if ((lambda (_%$obj164351%_)
                     (or (not _%$obj164351%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj164351%_
                            'gxc#!signature::t))))
                   _%signature164338%_)
                  (let ((_%signature164358%_ _%signature164338%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj164342%_
                     _%signature164358%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature164338%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj164337%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj164314%_ _%signature164316%_)
        (let* ((_%$obj164320%_ _%$obj164314%_)
               (_%signature164328%_ _%signature164316%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj164320%_
           _%signature164328%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp164597 (list gxc#!type::t))
            (__tmp164596 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp164597
         '(class)
         __tmp164596
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args164311%_
        (apply make-instance gxc#!class-meta::t _%$args164311%_)))
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
      (let ((__tmp164599 (list gxc#!type::t))
            (__tmp164598 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp164599
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp164598
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args164308%_
        (apply make-instance gxc#!class::t _%$args164308%_)))
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
      (let ((__tmp164601 (list gxc#!procedure::t))
            (__tmp164600 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp164601
         '()
         __tmp164600
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args164305%_
        (apply make-instance gxc#!predicate::t _%$args164305%_)))
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
      (let ((__tmp164603 (list gxc#!procedure::t))
            (__tmp164602 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp164603
         '()
         __tmp164602
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args164302%_
        (apply make-instance gxc#!constructor::t _%$args164302%_)))
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
      (let ((__tmp164605 (list gxc#!procedure::t))
            (__tmp164604 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp164605
         '(slot checked?)
         __tmp164604
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args164299%_
        (apply make-instance gxc#!accessor::t _%$args164299%_)))
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
      (let ((__tmp164607 (list gxc#!procedure::t))
            (__tmp164606 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp164607
         '(slot checked?)
         __tmp164606
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args164296%_
        (apply make-instance gxc#!mutator::t _%$args164296%_)))
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
      (let ((__tmp164609 (list gxc#!type::t))
            (__tmp164608 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp164609
         '(methods)
         __tmp164608
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args164293%_
        (apply make-instance gxc#!interface::t _%$args164293%_)))
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
      (let ((__tmp164611 (list gxc#!procedure::t))
            (__tmp164610 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp164611
         '(arity dispatch inline inline-typedecl)
         __tmp164610
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args164290%_
        (apply make-instance gxc#!lambda::t _%$args164290%_)))
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
      (let ((__tmp164613 (list gxc#!procedure::t))
            (__tmp164612 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp164613
         '(clauses)
         __tmp164612
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args164287%_
        (apply make-instance gxc#!case-lambda::t _%$args164287%_)))
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
      (let ((__tmp164615 (list gxc#!procedure::t))
            (__tmp164614 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp164615
         '(table dispatch)
         __tmp164614
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args164284%_
        (apply make-instance gxc#!kw-lambda::t _%$args164284%_)))
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
      (let ((__tmp164617 (list gxc#!procedure::t))
            (__tmp164616 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp164617
         '(keys main)
         __tmp164616
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args164281%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args164281%_)))
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
      (let ((__tmp164618 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp164618
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args164278%_
        (apply make-instance gxc#!primitive::t _%$args164278%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp164620 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp164619 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp164620
         '()
         __tmp164619
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args164275%_
        (apply make-instance gxc#!primitive-predicate::t _%$args164275%_)))
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
      (let ((__tmp164622 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp164621 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp164622
         '()
         __tmp164621
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args164272%_
        (apply make-instance gxc#!primitive-lambda::t _%$args164272%_)))
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
      (let ((__tmp164624 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp164623 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp164624
         '()
         __tmp164623
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args164269%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args164269%_)))
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
      (lambda (_%self164256%_)
        (let ((_%self164259%_ _%self164256%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self164259%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self164119%_ _%klass164120%_)
        (let ((_%self164123%_ _%self164119%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self164123%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self164123%_
             _%klass164120%_
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
      (lambda (_%self163809%_
               _%id163810%_
               _%super163811%_
               _%slots163812%_
               _%ctor-method163813%_
               _%struct?163814%_
               _%final?163815%_
               _%system?163816%_
               _%metaclass163817%_)
        (let ((_%self163820%_ _%self163809%_))
          (let _%lp163831%_ ((_%rest163833%_ _%super163811%_))
            (let* ((_%rest163834163842%_ _%rest163833%_)
                   (_%else163836163850%_ (lambda () '#!void))
                   (_%K163838163856%_
                    (lambda (_%rest163853%_ _%super-id163854%_)
                      (if (let ((__tmp164625
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id163810%_ '()))
                                  _%super-id163854%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp164625 '8 '#f '#f))
                          (let ((__tmp164626
                                 (cons '!class (cons _%id163810%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp164626
                             _%super-id163854%_))
                          '#!void)
                      (_%lp163831%_ _%rest163853%_))))
              (if (pair? _%rest163834163842%_)
                  (let ((_%hd163839163859%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest163834163842%_)))
                        (_%tl163840163861%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest163834163842%_))))
                    (let* ((_%super-id163864%_ _%hd163839163859%_)
                           (_%rest163866%_ _%tl163840163861%_))
                      (_%K163838163856%_ _%rest163866%_ _%super-id163864%_)))
                  '#!void)))
          (let* ((_%ctor-method163917%_
                  (let ((_%$e163868%_ _%ctor-method163813%_))
                    (if _%$e163868%_
                        _%$e163868%_
                        (let _%lp163871%_ ((_%rest163873%_ _%super163811%_)
                                           (_%method163874%_ '#f))
                          (let* ((_%rest163875163883%_ _%rest163873%_)
                                 (_%else163877163891%_
                                  (lambda () _%method163874%_))
                                 (_%K163879163905%_
                                  (lambda (_%rest163894%_ _%super-id163895%_)
                                    (let* ((_%klass163897%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id163810%_ '()))
                                             _%super-id163895%_))
                                           (_%$e163899%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass163897%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e163899%_
                                          ((lambda (_%ctor-method163902%_)
                                             (if _%method163874%_
                                                 (if (eq? _%ctor-method163902%_
                                                          _%method163874%_)
                                                     (_%lp163871%_
                                                      _%rest163894%_
                                                      _%ctor-method163902%_)
                                                     (let ((__tmp164627
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id163810%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp164627
                _%method163874%_
                _%ctor-method163902%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp163871%_
                                                  _%rest163894%_
                                                  _%ctor-method163902%_)))
                                           _%$e163899%_)
                                          (_%lp163871%_
                                           _%rest163894%_
                                           _%method163874%_))))))
                            (if (pair? _%rest163875163883%_)
                                (let ((_%hd163880163908%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest163875163883%_)))
                                      (_%tl163881163910%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest163875163883%_))))
                                  (let* ((_%super-id163913%_
                                          _%hd163880163908%_)
                                         (_%rest163915%_ _%tl163881163910%_))
                                    (_%K163879163905%_
                                     _%rest163915%_
                                     _%super-id163913%_)))
                                (_%else163877163891%_)))))))
                 (_g164628_
                  (let ((__tmp164632
                         (lambda (_%klass-id163919%_)
                           (cons _%klass-id163919%_
                                 (let ((__tmp164633
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id163810%_ '()))
                                         _%klass-id163919%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp164633
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp164630
                         (lambda (_%klass-id163921%_)
                           (let ((__tmp164631
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id163810%_ '()))
                                   _%klass-id163921%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp164631
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp164632
                     __tmp164630
                     eq?
                     identity
                     '()
                     _%super163811%_))))
            (begin
              (let ((_g164629_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g164628_)
                           (##values-length _g164628_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g164629_ 2)))
                    (error "Context expects 2 values" _g164629_)))
              (let ((_%precedence-list163923%_
                     (let () (declare (not safe)) (##values-ref _g164628_ 0)))
                    (_%base-struct163924%_
                     (let () (declare (not safe)) (##values-ref _g164628_ 1))))
                (let* ((_%precedence-list163968%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id163810%_ '(t object class)))
                            _%precedence-list163923%_
                            (if (memq 'object::t _%precedence-list163923%_)
                                _%precedence-list163923%_
                                (if _%system?163816%_
                                    (if (memq 't::t _%precedence-list163923%_)
                                        _%precedence-list163923%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list163923%_
                                           '(t::t))))
                                    (let _%loop163930%_ ((_%tail163932%_
                                                          _%precedence-list163923%_)
                                                         (_%head163933%_ '()))
                                      (let* ((_%tail163934163942%_
                                              _%tail163932%_)
                                             (_%else163936163950%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head163933%_))))
                                             (_%K163938163956%_
                                              (lambda (_%rest163953%_
                                                       _%hd163954%_)
                                                (if (eq? _%hd163954%_ 't::t)
                                                    (let ((__tmp164634
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail163932%_)))
              (declare (not safe))
              (__foldl1 cons __tmp164634 _%head163933%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop163930%_
                                                     _%rest163953%_
                                                     (cons _%hd163954%_
                                                           _%head163933%_))))))
                                        (if (pair? _%tail163934163942%_)
                                            (let ((_%hd163939163959%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail163934163942%_)))
                                                  (_%tl163940163961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail163934163942%_))))
                                              (let* ((_%hd163964%_
                                                      _%hd163939163959%_)
                                                     (_%rest163966%_
                                                      _%tl163940163961%_))
                                                (_%K163938163956%_
                                                 _%rest163966%_
                                                 _%hd163964%_)))
                                            (_%else163936163950%_))))))))
                       (_%fields163970%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id163810%_ '()))
                         _%base-struct163924%_
                         _%precedence-list163968%_
                         _%slots163812%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163820%_
                     _%id163810%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163820%_
                     _%super163811%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163820%_
                     _%precedence-list163968%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163820%_
                     _%slots163812%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163820%_
                     _%fields163970%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163820%_
                     _%ctor-method163917%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163820%_
                     _%struct?163814%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163820%_
                     _%final?163815%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163820%_
                     _%metaclass163817%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self163973%_
               _%id163974%_
               _%super163975%_
               _%precedence-list163976%_
               _%slots163977%_
               _%fields163978%_
               _%constructor163979%_
               _%struct?163980%_
               _%final?163981%_
               _%system?163982%_
               _%metaclass163983%_
               _%methods163984%_)
        (let ((_%self163987%_ _%self163973%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163987%_
             _%id163974%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163987%_
             _%super163975%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163987%_
             _%precedence-list163976%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163987%_
             _%slots163977%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163987%_
             _%fields163978%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163987%_
             _%constructor163979%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163987%_
             _%struct?163980%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163987%_
             _%final?163981%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163987%_
             _%metaclass163983%_
             '10
             '#f
             '#f))
          (if _%methods163984%_
              (let ((__tmp164635
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods163984%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self163987%_
                 __tmp164635
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g164636_
        (let ((_g164637_ (let () (declare (not safe)) (##length _g164636_))))
          (cond ((let () (declare (not safe)) (##fx= _g164637_ 9))
                 (apply gxc#!class:::init!__0 _g164636_))
                ((let () (declare (not safe)) (##fx= _g164637_ 12))
                 (apply gxc#!class:::init!__1 _g164636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g164636_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where163661%_
               _%base-struct163662%_
               _%precedence-list163663%_
               _%direct-slots163664%_)
        (let* ((_%base-fields163666%_
                (if _%base-struct163662%_
                    (let ((__tmp164638
                           (gxc#optimizer-resolve-class
                            _%where163661%_
                            _%base-struct163662%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp164638 '5 '#f '#f))
                    '()))
               (_%r-fields163668%_ (reverse _%base-fields163666%_))
               (_%seen-slots163676%_
                (let ((_%tab163670%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g163671163673%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab163670%_ _%g163671163673%_ '#t)))
                   _%base-fields163666%_)
                  _%tab163670%_))
               (_%process-slot163680%_
                (lambda (_%slot163678%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots163676%_ _%slot163678%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots163676%_
                           _%slot163678%_
                           '#t))
                        (set! _%r-fields163668%_
                              (cons _%slot163678%_ _%r-fields163668%_)))))))
          (for-each
           (lambda (_%mixin163683%_)
             (let ((_%klass163685%_
                    (gxc#optimizer-resolve-class
                     _%where163661%_
                     _%mixin163683%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass163685%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot163680%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass163685%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list163663%_)
          (for-each _%process-slot163680%_ _%direct-slots163664%_)
          (let () (declare (not safe)) (##reverse _%r-fields163668%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass163620%_ _%slot163621%_)
        (let _%lp163623%_ ((_%rest163625%_
                            (##structure-ref
                             _%klass163620%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset163626%_ '1))
          (let* ((_%rest163627163635%_ _%rest163625%_)
                 (_%else163629163643%_
                  (lambda ()
                    (let ((__tmp164640
                           (##structure-ref
                            _%klass163620%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp164639
                           (##structure-ref
                            _%klass163620%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp164640
                       __tmp164639
                       _%slot163621%_))))
                 (_%K163631163649%_
                  (lambda (_%rest163646%_ _%s163647%_)
                    (if (eq? _%s163647%_ _%slot163621%_)
                        _%offset163626%_
                        (_%lp163623%_
                         _%rest163646%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset163626%_ '1)))))))
            (if (pair? _%rest163627163635%_)
                (let ((_%hd163632163652%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest163627163635%_)))
                      (_%tl163633163654%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest163627163635%_))))
                  (let* ((_%s163657%_ _%hd163632163652%_)
                         (_%rest163659%_ _%tl163633163654%_))
                    (_%K163631163649%_ _%rest163659%_ _%s163657%_)))
                (_%else163629163643%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass163578%_ _%slot163579%_)
        (if (gxc#!class-struct-slot? _%klass163578%_ _%slot163579%_)
            _%klass163578%_
            (let _%lp163581%_ ((_%rest163583%_
                                (##structure-ref
                                 _%klass163578%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest163584163592%_ _%rest163583%_)
                     (_%else163586163600%_ (lambda () '#f))
                     (_%K163588163608%_
                      (lambda (_%rest163603%_ _%super163604%_)
                        (let ((_%super-class163606%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass163578%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot163579%_ '())))
                                _%super163604%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class163606%_
                               _%slot163579%_)
                              _%super-class163606%_
                              (_%lp163581%_ _%rest163603%_))))))
                (if (pair? _%rest163584163592%_)
                    (let ((_%hd163589163611%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest163584163592%_)))
                          (_%tl163590163613%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest163584163592%_))))
                      (let* ((_%super163616%_ _%hd163589163611%_)
                             (_%rest163618%_ _%tl163590163613%_))
                        (_%K163588163608%_ _%rest163618%_ _%super163616%_)))
                    (_%else163586163600%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass163575%_ _%slot163576%_)
        (if (##structure-ref _%klass163575%_ '7 gxc#!class::t '#f)
            (memq _%slot163576%_
                  (##structure-ref _%klass163575%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self163560%_ _%id163561%_)
        (let ((_%self163564%_ _%self163560%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163564%_
             _%id163561%_
             '1
             '#f
             '#f))
          (let ((__tmp164641
                 (let ((__obj164573
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
                      __obj164573
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164573
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164573
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj164573)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163564%_
             __tmp164641
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self163423%_ _%id163424%_)
        (let ((_%self163427%_ _%self163423%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163427%_
             _%id163424%_
             '1
             '#f
             '#f))
          (let ((__tmp164642
                 (let ((__obj164574
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
                      __obj164574
                      _%id163424%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164574
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj164574)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163427%_
             __tmp164642
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
      (lambda (_%self163284%_ _%id163285%_ _%slot163286%_ _%checked?163287%_)
        (let ((_%self163290%_ _%self163284%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163290%_
             _%id163285%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163290%_
             _%slot163286%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163290%_
             _%checked?163287%_
             '4
             '#f
             '#f))
          (let ((__tmp164643
                 (let ((__obj164575
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
                     (##unchecked-structure-set! __obj164575 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164575
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp164644 (cons _%id163285%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164575
                      __tmp164644
                      '3
                      '#f
                      '#f))
                   __obj164575)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163290%_
             __tmp164643
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self163145%_ _%id163146%_ _%slot163147%_ _%checked?163148%_)
        (let ((_%self163151%_ _%self163145%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163151%_
             _%id163146%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163151%_
             _%slot163147%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163151%_
             _%checked?163148%_
             '4
             '#f
             '#f))
          (let ((__tmp164645
                 (let ((__obj164576
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
                      __obj164576
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164576
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp164646 (cons _%id163146%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164576
                      __tmp164646
                      '3
                      '#f
                      '#f))
                   __obj164576)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163151%_
             __tmp164645
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords162989%_
               _%signature162986162990%_
               _%self162991%_
               _%arity162992%_
               _%dispatch162993%_)
        (let* ((_%signature162995%_
                (if (eq? _%signature162986162990%_ absent-value)
                    '#f
                    _%signature162986162990%_))
               (_%self162998%_ _%self162991%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162998%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162998%_
             _%arity162992%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162998%_
             _%dispatch162993%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162998%_
             _%signature162995%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords163013%_ . _%args163014%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords163013%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords163013%_
                  'signature:
                  absent-value))
               _%args163014%_)))
    (define gxc#!lambda:::init!
      (lambda _%args162987163020%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args162987163020%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords162830%_
               _%signature162827162831%_
               _%self162832%_
               _%clauses162833%_)
        (let* ((_%signature162835%_
                (if (eq? _%signature162827162831%_ absent-value)
                    '#f
                    _%signature162827162831%_))
               (_%self162838%_ _%self162832%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162838%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162838%_
             _%signature162835%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162838%_
             _%clauses162833%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords162853%_ . _%args162854%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords162853%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162853%_
                  'signature:
                  absent-value))
               _%args162854%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args162828162860%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args162828162860%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self162688%_ _%tab162689%_ _%dispatch162690%_)
        (let ((_%self162693%_ _%self162688%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162693%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162693%_
             _%tab162689%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162693%_
             _%dispatch162690%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self162550%_ _%keys162551%_ _%main162552%_)
        (let ((_%self162555%_ _%self162550%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162555%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162555%_
             _%keys162551%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162555%_
             _%main162552%_
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
      (lambda (_%self162169%_ _%id162170%_)
        (let ((_%self162173%_ _%self162169%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162173%_
             _%id162170%_
             '1
             '#f
             '#f))
          (let ((__tmp164647
                 (let ((__obj164577
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
                      __obj164577
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164577
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164577
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj164577)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162173%_
             __tmp164647
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
      (lambda (_%klass162038%_)
        (let ((_%$e162040%_
               (##structure-ref _%klass162038%_ '11 gxc#!class::t '#f)))
          (if _%$e162040%_
              _%$e162040%_
              (let ((_%tab162044%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass162038%_
                 _%tab162044%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab162044%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass162030%_ _%method162031%_)
        (let ((_%tab162032162034%_
               (##structure-ref _%klass162030%_ '11 gxc#!class::t '#f)))
          (if _%tab162032162034%_
              (let ((_%tab162036%_ _%tab162032162034%_))
                (declare (not safe))
                (hash-get _%tab162036%_ _%method162031%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a162018%_ _%type-b162019%_)
        (if _%type-a162018%_
            (if _%type-b162019%_
                (let ((_%$e162021%_ (eq? _%type-a162018%_ _%type-b162019%_)))
                  (if _%$e162021%_
                      _%$e162021%_
                      (let ((_%$e162024%_
                             (eq? (##structure-ref
                                   _%type-b162019%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e162024%_
                            _%$e162024%_
                            (let ((_%$e162027%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a162018%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b162019%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e162027%_
                                  _%$e162027%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a162018%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b162019%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a162018%_
                                           _%type-b162019%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a161969%_ _%klass-b161970%_)
        (let ((_%$e161972%_
               (eq? (##structure-ref _%klass-a161969%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b161970%_ '1 gxc#!type::t '#f))))
          (if _%$e161972%_
              _%$e161972%_
              (let ((_%klass-id-b161975%_
                     (##structure-ref _%klass-b161970%_ '1 gxc#!type::t '#f))
                    (_%precedence-list161976%_
                     (##structure-ref _%klass-a161969%_ '3 gxc#!class::t '#f)))
                (let _%loop161978%_ ((_%rest161980%_
                                      _%precedence-list161976%_))
                  (let* ((_%rest161981161989%_ _%rest161980%_)
                         (_%else161983161997%_ (lambda () '#f))
                         (_%K161985162006%_
                          (lambda (_%rest162000%_ _%klass-name162001%_)
                            (let ((_%$e162003%_
                                   (eq? (let ((__tmp164648
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a161969%_
                                                            (cons _%klass-b161970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name162001%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp164648
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b161975%_)))
                              (if _%$e162003%_
                                  _%$e162003%_
                                  (_%loop161978%_ _%rest162000%_))))))
                    (if (pair? _%rest161981161989%_)
                        (let ((_%hd161986162009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest161981161989%_)))
                              (_%tl161987162011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest161981161989%_))))
                          (let* ((_%klass-name162014%_ _%hd161986162009%_)
                                 (_%rest162016%_ _%tl161987162011%_))
                            (_%K161985162006%_
                             _%rest162016%_
                             _%klass-name162014%_)))
                        (_%else161983161997%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type161967%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161967%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type161967%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc161956%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc161956%_ 'gxc#!procedure::t))
            (let ((_%proc161959%_ _%proc161956%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc161959%_ '2 '#f '#f))
                  (let ((__tmp164649
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc161959%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp164649 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc161956%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym161938%_ _%type161939%_ _%local?161940%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161939%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym161938%_
                     _%type161939%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym161938%_ '" " _%type161939%_))
        (let ((_%table161942%_
               (if _%local?161940%_
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
          (hash-put! _%table161942%_ _%sym161938%_ _%type161939%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym161947%_ _%type161948%_)
        (let ((_%local?161950%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym161947%_
           _%type161948%_
           _%local?161950%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g164650_
        (let ((_g164651_ (let () (declare (not safe)) (##length _g164650_))))
          (cond ((let () (declare (not safe)) (##fx= _g164651_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g164650_))
                ((let () (declare (not safe)) (##fx= _g164651_ 3))
                 (apply gxc#optimizer-declare-type!__% _g164650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g164650_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym161932%_ _%type161933%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161933%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym161932%_
                     _%type161933%_)))
        (let ((_%table161935%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp164652
                 (let () (declare (not safe)) (struct->list _%type161933%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym161932%_ '" " __tmp164652))
          (let ()
            (declare (not safe))
            (hash-put! _%table161935%_ _%sym161932%_ _%type161933%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table161935%_ _%type161933%_ _%sym161932%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym161927%_ _%type161928%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161928%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym161927%_
                     _%type161928%_)))
        (let ((_%table161930%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table161930%_ _%sym161927%_))
              '#!void
              (begin
                (let ((__tmp164653
                       (let ()
                         (declare (not safe))
                         (struct->list _%type161928%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym161927%_
                   '" "
                   __tmp164653))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table161930%_ _%sym161927%_ _%type161928%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table161930%_
                   _%type161928%_
                   _%sym161927%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym161925%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym161925%_))
        (let ((__tmp164654
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp164654 _%sym161925%_))
        (let ((__tmp164655
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp164655 _%sym161925%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t161893%_
               _%method161894%_
               _%sym161895%_
               _%rebind?161896%_)
        (let ((__tmp164656
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp164656 _%sym161895%_ '#t))
        (let ((_%klass161898%_ (gxc#optimizer-lookup-class _%type-t161893%_)))
          (if _%klass161898%_
              (let* ((_%vtab161900%_ (gxc#!class-method-table _%klass161898%_))
                     (_%$e161902%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab161900%_ _%method161894%_))))
                (if _%$e161902%_
                    ((lambda (_%existing161905%_)
                       (if _%rebind?161896%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t161893%_
                                '" "
                                _%method161894%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab161900%_
                                _%method161894%_
                                _%sym161895%_)))
                           (if (eq? _%existing161905%_ _%sym161895%_)
                               '#!void
                               (let ((__tmp164657
                                      (cons 'bind-method!
                                            (cons _%type-t161893%_
                                                  (cons _%method161894%_
                                                        (cons _%sym161895%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp164657
                                  _%method161894%_)))))
                     _%$e161902%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t161893%_
                         '" "
                         _%method161894%_
                         '" => "
                         _%sym161895%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab161900%_
                         _%method161894%_
                         _%sym161895%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t161893%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t161914%_ _%method161915%_ _%sym161916%_)
        (let ((_%rebind?161918%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t161914%_
           _%method161915%_
           _%sym161916%_
           _%rebind?161918%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g164658_
        (let ((_g164659_ (let () (declare (not safe)) (##length _g164658_))))
          (cond ((let () (declare (not safe)) (##fx= _g164659_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g164658_))
                ((let () (declare (not safe)) (##fx= _g164659_ 4))
                 (apply gxc#optimizer-declare-method!__% _g164658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g164658_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym161879%_)
        (let ((_%$e161881%_
               (let ((__tmp164660
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym161879%_ __tmp164660))))
          (if _%$e161881%_
              _%$e161881%_
              (let ((_%$e161889%_
                     (let ((_%ht161883161885%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht161883161885%_
                           (let ((_%ht161887%_ _%ht161883161885%_))
                             (declare (not safe))
                             (hash-get _%ht161887%_ _%sym161879%_))
                           '#f))))
                (if _%$e161889%_
                    _%$e161889%_
                    (let ((__tmp164661
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp164661 _%sym161879%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym161872%_)
        (let ((_%type161873161875%_ (gxc#optimizer-lookup-type _%sym161872%_)))
          (if _%type161873161875%_
              (let ((_%type161877%_ _%type161873161875%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type161877%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type161877%_ '1 '#f '#f)))
                    _%type161877%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym161868%_)
        (let ((_%table161870%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table161870%_ _%sym161868%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where161853%_ _%sym161854%_)
        (let ((_%$e161857%_ (gxc#optimizer-lookup-class _%sym161854%_)))
          (if _%$e161857%_
              ((lambda (_%g161859161861%_)
                 (let ((_%val161864%_ _%g161859161861%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val161864%_
                          'gxc#!class::t))
                       _%val161864%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val161864%_)))))
               _%$e161857%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where161853%_
                   _%sym161854%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass161851%_)
        (let ((__tmp164662
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp164662 _%klass161851%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t161848%_ _%method161849%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t161848%_)
         _%method161849%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym161846%_)
        (let ((__tmp164663
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp164663 _%sym161846%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e161728%_
                  (lambda (_%t161829%_)
                    (if (symbol? _%t161829%_)
                        (_%type-e161728%_
                         (gxc#optimizer-lookup-type _%t161829%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t161829%_
                               'gxc#!lambda::t))
                            (_%__lambda-type161730%_ _%t161829%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t161829%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type161732%_ _%t161829%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t161829%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type161734%_
                                     _%t161829%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t161829%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t161836%_ _%t161829%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t161836%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp164664
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t161836%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp164664
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t161829%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t161829%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type161729%_
                  (lambda (_%t161817%_)
                    (let ((_%t161820%_ _%t161817%_))
                      (_%__lambda-type161730%_ _%t161820%_))))
                 (_%__lambda-type161730%_
                  (lambda (_%t161805%_)
                    (let ((_%t161808%_ _%t161805%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t161808%_ '4 '#f '#f))
                          (_%type-e161728%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t161808%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t161808%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp164665
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t161808%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp164665
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type161731%_
                  (lambda (_%t161793%_)
                    (let ((_%t161796%_ _%t161793%_))
                      (_%__kw-lambda-type161732%_ _%t161796%_))))
                 (_%__kw-lambda-type161732%_
                  (lambda (_%t161781%_)
                    (let ((_%t161784%_ _%t161781%_))
                      (_%type-e161728%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t161784%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type161733%_
                  (lambda (_%t161769%_)
                    (let ((_%t161772%_ _%t161769%_))
                      (_%__kw-lambda-primary-type161734%_ _%t161772%_))))
                 (_%__kw-lambda-primary-type161734%_
                  (lambda (_%t161755%_)
                    (let ((_%t161758%_ _%t161755%_))
                      (_%type-e161728%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t161758%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1161736%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2161738%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result161740%_
                  (if _%ht1161736%_
                      (let () (declare (not safe)) (hash->list _%ht1161736%_))
                      '()))
                 (_%result161742%_
                  (if _%ht2161738%_
                      (let ((__tmp164666
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2161738%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result161740%_ __tmp164666))
                      _%result161740%_)))
            (for-each
             (lambda (_%p161745%_)
               (let* ((_%t161747%_ (cdr _%p161745%_))
                      (_%tr161749%_ (_%type-e161728%_ _%t161747%_)))
                 (set-cdr! _%p161745%_ _%tr161749%_)))
             _%result161742%_)
            (list-sort
             (lambda (_%a161752%_ _%b161753%_)
               (let ((__tmp164668 (symbol->string (car _%a161752%_)))
                     (__tmp164667 (symbol->string (car _%b161753%_))))
                 (declare (not safe))
                 (##string<? __tmp164668 __tmp164667)))
             _%result161742%_)))))))
