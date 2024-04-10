(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712784667)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp149449 (list)) (__tmp149448 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp149449
         '(type classes ssxi methods)
         __tmp149448
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args149420%_
        (apply make-instance gxc#optimizer-info::t _%$args149420%_)))
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
      (lambda (_%self146683149405%_)
        (let* ((_%self149408%_ _%self146683149405%_)
               (_%self149410%_ _%self149408%_))
          (if (let ((__tmp149450
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self149410%_))))
                (declare (not safe))
                (##fx< '4 __tmp149450))
              (begin
                (let ((__tmp149451
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self149410%_
                   __tmp149451
                   '1
                   '#f
                   '#f))
                (let ((__tmp149452
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self149410%_
                   __tmp149452
                   '2
                   '#f
                   '#f))
                (let ((__tmp149453
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self149410%_
                   __tmp149453
                   '3
                   '#f
                   '#f))
                (let ((__tmp149454
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self149410%_
                   __tmp149454
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp149455
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self149410%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self149410%_
                       '4
                       __tmp149455))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp149457 (list))
            (__tmp149456
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp149457
         '(id)
         __tmp149456
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args149280%_
        (apply make-instance gxc#!type::t _%$args149280%_)))
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
      (let ((__tmp149459 (list gxc#!type::t))
            (__tmp149458 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp149459
         '()
         __tmp149458
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args149277%_
        (apply make-instance gxc#!abort::t _%$args149277%_)))
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
      (let ((__tmp149461 (list gxc#!type::t))
            (__tmp149460 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp149461
         '()
         __tmp149460
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args149274%_
        (apply make-instance gxc#!alias::t _%$args149274%_)))
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
      (let ((__tmp149463 (list))
            (__tmp149462
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp149463
         '(return effect arguments unchecked origin)
         __tmp149462
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args149271%_
        (apply make-instance gxc#!signature::t _%$args149271%_)))
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
      (let ((__tmp149465 (list gxc#!type::t))
            (__tmp149464
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp149465
         '(signature)
         __tmp149464
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
      (lambda (_%id149250%_ _%signature149251%_)
        (if ((lambda (_%$obj149254%_)
               (or (not _%$obj149254%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj149254%_
                      'gxc#!signature::t))))
             _%signature149251%_)
            (let ((_%signature149261%_ _%signature149251%_))
              (gxc#__make-!procedure _%id149250%_ _%signature149261%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature149251%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id149236%_ _%signature149238%_)
        (let ((_%signature149241%_ _%signature149238%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id149236%_ _%signature149241%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj149205%_ _%signature149206%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj149205%_ 'gxc#!procedure::t))
            (let ((_%$obj149210%_ _%$obj149205%_))
              (if ((lambda (_%$obj149219%_)
                     (or (not _%$obj149219%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj149219%_
                            'gxc#!signature::t))))
                   _%signature149206%_)
                  (let ((_%signature149226%_ _%signature149206%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj149210%_
                     _%signature149226%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature149206%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj149205%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj149182%_ _%signature149184%_)
        (let* ((_%$obj149188%_ _%$obj149182%_)
               (_%signature149196%_ _%signature149184%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj149188%_
           _%signature149196%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp149467 (list gxc#!type::t))
            (__tmp149466 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp149467
         '(class)
         __tmp149466
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args149179%_
        (apply make-instance gxc#!class-meta::t _%$args149179%_)))
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
      (let ((__tmp149469 (list gxc#!type::t))
            (__tmp149468
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
         __tmp149469
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp149468
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args149176%_
        (apply make-instance gxc#!class::t _%$args149176%_)))
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
      (let ((__tmp149471 (list gxc#!procedure::t))
            (__tmp149470 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp149471
         '()
         __tmp149470
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args149173%_
        (apply make-instance gxc#!predicate::t _%$args149173%_)))
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
      (let ((__tmp149473 (list gxc#!procedure::t))
            (__tmp149472 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp149473
         '()
         __tmp149472
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args149170%_
        (apply make-instance gxc#!constructor::t _%$args149170%_)))
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
      (let ((__tmp149475 (list gxc#!procedure::t))
            (__tmp149474 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp149475
         '(slot checked?)
         __tmp149474
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args149167%_
        (apply make-instance gxc#!accessor::t _%$args149167%_)))
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
      (let ((__tmp149477 (list gxc#!procedure::t))
            (__tmp149476 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp149477
         '(slot checked?)
         __tmp149476
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args149164%_
        (apply make-instance gxc#!mutator::t _%$args149164%_)))
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
      (let ((__tmp149479 (list gxc#!type::t))
            (__tmp149478 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp149479
         '(methods)
         __tmp149478
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args149161%_
        (apply make-instance gxc#!interface::t _%$args149161%_)))
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
      (let ((__tmp149481 (list gxc#!procedure::t))
            (__tmp149480
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp149481
         '(arity dispatch inline inline-typedecl)
         __tmp149480
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args149158%_
        (apply make-instance gxc#!lambda::t _%$args149158%_)))
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
      (let ((__tmp149483 (list gxc#!procedure::t))
            (__tmp149482 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp149483
         '(clauses)
         __tmp149482
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args149155%_
        (apply make-instance gxc#!case-lambda::t _%$args149155%_)))
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
      (let ((__tmp149485 (list gxc#!procedure::t))
            (__tmp149484 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp149485
         '(table dispatch)
         __tmp149484
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args149152%_
        (apply make-instance gxc#!kw-lambda::t _%$args149152%_)))
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
      (let ((__tmp149487 (list gxc#!procedure::t))
            (__tmp149486 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp149487
         '(keys main)
         __tmp149486
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args149149%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args149149%_)))
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
      (let ((__tmp149488 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp149488
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args149146%_
        (apply make-instance gxc#!primitive::t _%$args149146%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp149490 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp149489 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp149490
         '()
         __tmp149489
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args149143%_
        (apply make-instance gxc#!primitive-predicate::t _%$args149143%_)))
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
      (let ((__tmp149492 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp149491 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp149492
         '()
         __tmp149491
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args149140%_
        (apply make-instance gxc#!primitive-lambda::t _%$args149140%_)))
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
      (let ((__tmp149494 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp149493 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp149494
         '()
         __tmp149493
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args149137%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args149137%_)))
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
      (lambda (_%self146684149122%_)
        (let* ((_%self149125%_ _%self146684149122%_)
               (_%self149127%_ _%self149125%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self149127%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self146685148984%_ _%klass148986%_)
        (let* ((_%self148988%_ _%self146685148984%_)
               (_%self148990%_ _%self148988%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148990%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148990%_
             _%klass148986%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self146686148672%_
               _%id148674%_
               _%super148675%_
               _%slots148676%_
               _%ctor-method148677%_
               _%struct?148678%_
               _%final?148679%_
               _%system?148680%_
               _%metaclass148681%_)
        (let* ((_%self148683%_ _%self146686148672%_)
               (_%self148685%_ _%self148683%_))
          (let _%lp148695%_ ((_%rest148697%_ _%super148675%_))
            (let* ((_%rest148698148706%_ _%rest148697%_)
                   (_%else148700148714%_ (lambda () '#!void))
                   (_%K148702148720%_
                    (lambda (_%rest148717%_ _%super-id148718%_)
                      (if (let ((__tmp149495
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id148674%_ '()))
                                  _%super-id148718%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp149495 '8 '#f '#f))
                          (let ((__tmp149496
                                 (cons '!class (cons _%id148674%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp149496
                             _%super-id148718%_))
                          '#!void)
                      (_%lp148695%_ _%rest148717%_))))
              (if (let () (declare (not safe)) (##pair? _%rest148698148706%_))
                  (let ((_%hd148703148723%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest148698148706%_)))
                        (_%tl148704148725%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest148698148706%_))))
                    (let* ((_%super-id148728%_ _%hd148703148723%_)
                           (_%rest148730%_ _%tl148704148725%_))
                      (_%K148702148720%_ _%rest148730%_ _%super-id148728%_)))
                  '#!void)))
          (let* ((_%ctor-method148781%_
                  (let ((_%$e148732%_ _%ctor-method148677%_))
                    (if _%$e148732%_
                        _%$e148732%_
                        (let _%lp148735%_ ((_%rest148737%_ _%super148675%_)
                                           (_%method148738%_ '#f))
                          (let* ((_%rest148739148747%_ _%rest148737%_)
                                 (_%else148741148755%_
                                  (lambda () _%method148738%_))
                                 (_%K148743148769%_
                                  (lambda (_%rest148758%_ _%super-id148759%_)
                                    (let* ((_%klass148761%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id148674%_ '()))
                                             _%super-id148759%_))
                                           (_%$e148763%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass148761%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e148763%_
                                          ((lambda (_%ctor-method148766%_)
                                             (if _%method148738%_
                                                 (if (eq? _%ctor-method148766%_
                                                          _%method148738%_)
                                                     (_%lp148735%_
                                                      _%rest148758%_
                                                      _%ctor-method148766%_)
                                                     (let ((__tmp149497
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id148674%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp149497
                _%method148738%_
                _%ctor-method148766%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp148735%_
                                                  _%rest148758%_
                                                  _%ctor-method148766%_)))
                                           _%$e148763%_)
                                          (_%lp148735%_
                                           _%rest148758%_
                                           _%method148738%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest148739148747%_))
                                (let ((_%hd148744148772%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest148739148747%_)))
                                      (_%tl148745148774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest148739148747%_))))
                                  (let* ((_%super-id148777%_
                                          _%hd148744148772%_)
                                         (_%rest148779%_ _%tl148745148774%_))
                                    (_%K148743148769%_
                                     _%rest148779%_
                                     _%super-id148777%_)))
                                (_%else148741148755%_)))))))
                 (_g149498_
                  (let ((__tmp149502
                         (lambda (_%klass-id148783%_)
                           (cons _%klass-id148783%_
                                 (let ((__tmp149503
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id148674%_ '()))
                                         _%klass-id148783%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp149503
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp149500
                         (lambda (_%klass-id148785%_)
                           (let ((__tmp149501
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id148674%_ '()))
                                   _%klass-id148785%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp149501
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp149502
                     __tmp149500
                     eq?
                     identity
                     '()
                     _%super148675%_))))
            (begin
              (let ((_g149499_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g149498_)
                           (##vector-length _g149498_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g149499_ 2)))
                    (error "Context expects 2 values" _g149499_)))
              (let ((_%precedence-list148787%_
                     (let () (declare (not safe)) (##vector-ref _g149498_ 0)))
                    (_%base-struct148788%_
                     (let () (declare (not safe)) (##vector-ref _g149498_ 1))))
                (let* ((_%precedence-list148832%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id148674%_ '(t object class)))
                            _%precedence-list148787%_
                            (if (memq 'object::t _%precedence-list148787%_)
                                _%precedence-list148787%_
                                (if _%system?148680%_
                                    (if (memq 't::t _%precedence-list148787%_)
                                        _%precedence-list148787%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list148787%_
                                           '(t::t))))
                                    (let _%loop148794%_ ((_%tail148796%_
                                                          _%precedence-list148787%_)
                                                         (_%head148797%_ '()))
                                      (let* ((_%tail148798148806%_
                                              _%tail148796%_)
                                             (_%else148800148814%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head148797%_))))
                                             (_%K148802148820%_
                                              (lambda (_%rest148817%_
                                                       _%hd148818%_)
                                                (if (eq? _%hd148818%_ 't::t)
                                                    (let ((__tmp149504
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail148796%_)))
              (declare (not safe))
              (__foldl1 cons __tmp149504 _%head148797%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop148794%_
                                                     _%rest148817%_
                                                     (cons _%hd148818%_
                                                           _%head148797%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail148798148806%_))
                                            (let ((_%hd148803148823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail148798148806%_)))
                                                  (_%tl148804148825%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail148798148806%_))))
                                              (let* ((_%hd148828%_
                                                      _%hd148803148823%_)
                                                     (_%rest148830%_
                                                      _%tl148804148825%_))
                                                (_%K148802148820%_
                                                 _%rest148830%_
                                                 _%hd148828%_)))
                                            (_%else148800148814%_))))))))
                       (_%fields148834%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id148674%_ '()))
                         _%base-struct148788%_
                         _%precedence-list148832%_
                         _%slots148676%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148685%_
                     _%id148674%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148685%_
                     _%super148675%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148685%_
                     _%precedence-list148832%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148685%_
                     _%slots148676%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148685%_
                     _%fields148834%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148685%_
                     _%ctor-method148781%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148685%_
                     _%struct?148678%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148685%_
                     _%final?148679%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148685%_
                     _%metaclass148681%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self146687148837%_
               _%id148839%_
               _%super148840%_
               _%precedence-list148841%_
               _%slots148842%_
               _%fields148843%_
               _%constructor148844%_
               _%struct?148845%_
               _%final?148846%_
               _%system?148847%_
               _%metaclass148848%_
               _%methods148849%_)
        (let* ((_%self148851%_ _%self146687148837%_)
               (_%self148853%_ _%self148851%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148853%_
             _%id148839%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148853%_
             _%super148840%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148853%_
             _%precedence-list148841%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148853%_
             _%slots148842%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148853%_
             _%fields148843%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148853%_
             _%constructor148844%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148853%_
             _%struct?148845%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148853%_
             _%final?148846%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148853%_
             _%metaclass148848%_
             '10
             '#f
             '#f))
          (if _%methods148849%_
              (let ((__tmp149505
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods148849%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self148853%_
                 __tmp149505
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g149507_
        (let ((_g149506_ (let () (declare (not safe)) (##length _g149507_))))
          (cond ((let () (declare (not safe)) (##fx= _g149506_ 9))
                 (apply gxc#!class:::init!__0 _g149507_))
                ((let () (declare (not safe)) (##fx= _g149506_ 12))
                 (apply gxc#!class:::init!__1 _g149507_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g149507_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where148524%_
               _%base-struct148525%_
               _%precedence-list148526%_
               _%direct-slots148527%_)
        (let* ((_%base-fields148529%_
                (if _%base-struct148525%_
                    (let ((__tmp149508
                           (gxc#optimizer-resolve-class
                            _%where148524%_
                            _%base-struct148525%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp149508 '5 '#f '#f))
                    '()))
               (_%r-fields148531%_ (reverse _%base-fields148529%_))
               (_%seen-slots148539%_
                (let ((_%tab148533%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g148534148536%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab148533%_ _%g148534148536%_ '#t)))
                   _%base-fields148529%_)
                  _%tab148533%_))
               (_%process-slot148543%_
                (lambda (_%slot148541%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots148539%_ _%slot148541%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots148539%_ _%slot148541%_ '#t))
                        (set! _%r-fields148531%_
                              (cons _%slot148541%_ _%r-fields148531%_)))))))
          (for-each
           (lambda (_%mixin148546%_)
             (let ((_%klass148548%_
                    (gxc#optimizer-resolve-class
                     _%where148524%_
                     _%mixin148546%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass148548%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot148543%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass148548%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list148526%_)
          (for-each _%process-slot148543%_ _%direct-slots148527%_)
          (let () (declare (not safe)) (##reverse _%r-fields148531%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass148483%_ _%slot148484%_)
        (let _%lp148486%_ ((_%rest148488%_
                            (##structure-ref
                             _%klass148483%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset148489%_ '1))
          (let* ((_%rest148490148498%_ _%rest148488%_)
                 (_%else148492148506%_
                  (lambda ()
                    (let ((__tmp149510
                           (##structure-ref
                            _%klass148483%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp149509
                           (##structure-ref
                            _%klass148483%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp149510
                       __tmp149509
                       _%slot148484%_))))
                 (_%K148494148512%_
                  (lambda (_%rest148509%_ _%s148510%_)
                    (if (eq? _%s148510%_ _%slot148484%_)
                        _%offset148489%_
                        (_%lp148486%_
                         _%rest148509%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset148489%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest148490148498%_))
                (let ((_%hd148495148515%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest148490148498%_)))
                      (_%tl148496148517%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest148490148498%_))))
                  (let* ((_%s148520%_ _%hd148495148515%_)
                         (_%rest148522%_ _%tl148496148517%_))
                    (_%K148494148512%_ _%rest148522%_ _%s148520%_)))
                (_%else148492148506%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass148441%_ _%slot148442%_)
        (if (gxc#!class-struct-slot? _%klass148441%_ _%slot148442%_)
            _%klass148441%_
            (let _%lp148444%_ ((_%rest148446%_
                                (##structure-ref
                                 _%klass148441%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest148447148455%_ _%rest148446%_)
                     (_%else148449148463%_ (lambda () '#f))
                     (_%K148451148471%_
                      (lambda (_%rest148466%_ _%super148467%_)
                        (let ((_%super-class148469%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass148441%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot148442%_ '())))
                                _%super148467%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class148469%_
                               _%slot148442%_)
                              _%super-class148469%_
                              (_%lp148444%_ _%rest148466%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest148447148455%_))
                    (let ((_%hd148452148474%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest148447148455%_)))
                          (_%tl148453148476%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest148447148455%_))))
                      (let* ((_%super148479%_ _%hd148452148474%_)
                             (_%rest148481%_ _%tl148453148476%_))
                        (_%K148451148471%_ _%rest148481%_ _%super148479%_)))
                    (_%else148449148463%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass148438%_ _%slot148439%_)
        (if (##structure-ref _%klass148438%_ '7 gxc#!class::t '#f)
            (memq _%slot148439%_
                  (##structure-ref _%klass148438%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self146688148422%_ _%id148424%_)
        (let* ((_%self148426%_ _%self146688148422%_)
               (_%self148428%_ _%self148426%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148428%_
             _%id148424%_
             '1
             '#f
             '#f))
          (let ((__tmp149511
                 (let ((__obj149443
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
                      __obj149443
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149443
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149443
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj149443)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148428%_
             __tmp149511
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self146689148284%_ _%id148286%_)
        (let* ((_%self148288%_ _%self146689148284%_)
               (_%self148290%_ _%self148288%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148290%_
             _%id148286%_
             '1
             '#f
             '#f))
          (let ((__tmp149512
                 (let ((__obj149444
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
                      __obj149444
                      _%id148286%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149444
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj149444)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148290%_
             __tmp149512
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
      (lambda (_%self146690148144%_
               _%id148146%_
               _%slot148147%_
               _%checked?148148%_)
        (let* ((_%self148150%_ _%self146690148144%_)
               (_%self148152%_ _%self148150%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148152%_
             _%id148146%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148152%_
             _%slot148147%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148152%_
             _%checked?148148%_
             '4
             '#f
             '#f))
          (let ((__tmp149513
                 (let ((__obj149445
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
                     (##unchecked-structure-set! __obj149445 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149445
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp149514 (cons _%id148146%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149445
                      __tmp149514
                      '3
                      '#f
                      '#f))
                   __obj149445)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148152%_
             __tmp149513
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self146691148004%_
               _%id148006%_
               _%slot148007%_
               _%checked?148008%_)
        (let* ((_%self148010%_ _%self146691148004%_)
               (_%self148012%_ _%self148010%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148012%_
             _%id148006%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148012%_
             _%slot148007%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148012%_
             _%checked?148008%_
             '4
             '#f
             '#f))
          (let ((__tmp149515
                 (let ((__obj149446
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
                      __obj149446
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149446
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp149516 (cons _%id148006%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149446
                      __tmp149516
                      '3
                      '#f
                      '#f))
                   __obj149446)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148012%_
             __tmp149515
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords147846%_
               _%signature147843147847%_
               _%self146692147849%_
               _%arity147851%_
               _%dispatch147852%_)
        (let* ((_%signature147854%_
                (if (eq? _%signature147843147847%_ absent-value)
                    '#f
                    _%signature147843147847%_))
               (_%self147856%_ _%self146692147849%_)
               (_%self147858%_ _%self147856%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147858%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147858%_
             _%arity147851%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147858%_
             _%dispatch147852%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147858%_
             _%signature147854%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords147872%_ . _%args147873%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords147872%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147872%_
                  'signature:
                  absent-value))
               _%args147873%_)))
    (define gxc#!lambda:::init!
      (lambda _%args147844147879%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args147844147879%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords147685%_
               _%signature147682147686%_
               _%self146693147688%_
               _%clauses147690%_)
        (let* ((_%signature147692%_
                (if (eq? _%signature147682147686%_ absent-value)
                    '#f
                    _%signature147682147686%_))
               (_%self147694%_ _%self146693147688%_)
               (_%self147696%_ _%self147694%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147696%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147696%_
             _%signature147692%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147696%_
             _%clauses147690%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords147710%_ . _%args147711%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords147710%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147710%_
                  'signature:
                  absent-value))
               _%args147711%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args147683147717%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args147683147717%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self146694147542%_ _%tab147544%_ _%dispatch147545%_)
        (let* ((_%self147547%_ _%self146694147542%_)
               (_%self147549%_ _%self147547%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147549%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147549%_
             _%tab147544%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147549%_
             _%dispatch147545%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146695147403%_ _%keys147405%_ _%main147406%_)
        (let* ((_%self147408%_ _%self146695147403%_)
               (_%self147410%_ _%self147408%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147410%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147410%_
             _%keys147405%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147410%_
             _%main147406%_
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
      (lambda (_%self146696147021%_ _%id147023%_)
        (let* ((_%self147025%_ _%self146696147021%_)
               (_%self147027%_ _%self147025%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147027%_
             _%id147023%_
             '1
             '#f
             '#f))
          (let ((__tmp149517
                 (let ((__obj149447
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
                      __obj149447
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149447
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149447
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj149447)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147027%_
             __tmp149517
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
      (lambda (_%klass146890%_)
        (let ((_%$e146892%_
               (##structure-ref _%klass146890%_ '11 gxc#!class::t '#f)))
          (if _%$e146892%_
              _%$e146892%_
              (let ((_%tab146896%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass146890%_
                 _%tab146896%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab146896%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass146881%_ _%method146882%_)
        (let ((_%tab146883146885%_
               (##structure-ref _%klass146881%_ '11 gxc#!class::t '#f)))
          (if _%tab146883146885%_
              (let ((_%tab146888%_ _%tab146883146885%_))
                (declare (not safe))
                (hash-get _%tab146888%_ _%method146882%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a146869%_ _%type-b146870%_)
        (if _%type-a146869%_
            (if _%type-b146870%_
                (let ((_%$e146872%_ (eq? _%type-a146869%_ _%type-b146870%_)))
                  (if _%$e146872%_
                      _%$e146872%_
                      (let ((_%$e146875%_
                             (eq? (##structure-ref
                                   _%type-b146870%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e146875%_
                            _%$e146875%_
                            (let ((_%$e146878%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a146869%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b146870%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e146878%_
                                  _%$e146878%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a146869%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b146870%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a146869%_
                                           _%type-b146870%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a146820%_ _%klass-b146821%_)
        (let ((_%$e146823%_
               (eq? (##structure-ref _%klass-a146820%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b146821%_ '1 gxc#!type::t '#f))))
          (if _%$e146823%_
              _%$e146823%_
              (let ((_%klass-id-b146826%_
                     (##structure-ref _%klass-b146821%_ '1 gxc#!type::t '#f))
                    (_%precedence-list146827%_
                     (##structure-ref _%klass-a146820%_ '3 gxc#!class::t '#f)))
                (let _%loop146829%_ ((_%rest146831%_
                                      _%precedence-list146827%_))
                  (let* ((_%rest146832146840%_ _%rest146831%_)
                         (_%else146834146848%_ (lambda () '#f))
                         (_%K146836146857%_
                          (lambda (_%rest146851%_ _%klass-name146852%_)
                            (let ((_%$e146854%_
                                   (eq? (let ((__tmp149518
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a146820%_
                                                            (cons _%klass-b146821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name146852%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp149518
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b146826%_)))
                              (if _%$e146854%_
                                  _%$e146854%_
                                  (_%loop146829%_ _%rest146851%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest146832146840%_))
                        (let ((_%hd146837146860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest146832146840%_)))
                              (_%tl146838146862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest146832146840%_))))
                          (let* ((_%klass-name146865%_ _%hd146837146860%_)
                                 (_%rest146867%_ _%tl146838146862%_))
                            (_%K146836146857%_
                             _%rest146867%_
                             _%klass-name146865%_)))
                        (_%else146834146848%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type146818%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146818%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type146818%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc146807%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc146807%_ 'gxc#!procedure::t))
            (let ((_%proc146810%_ _%proc146807%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc146810%_ '2 '#f '#f))
                  (let ((__tmp149519
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc146810%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp149519 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@374.11-374.15"
               'contract:
               '!procedure?
               'value:
               _%proc146807%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym146789%_ _%type146790%_ _%local?146791%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146790%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym146789%_
                     _%type146790%_)))
        (let ((__tmp149520
               (let () (declare (not safe)) (struct->list _%type146790%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym146789%_ '" " __tmp149520))
        (let ((_%table146793%_
               (if _%local?146791%_
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
          (hash-put! _%table146793%_ _%sym146789%_ _%type146790%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym146798%_ _%type146799%_)
        (let ((_%local?146801%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym146798%_
           _%type146799%_
           _%local?146801%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g149522_
        (let ((_g149521_ (let () (declare (not safe)) (##length _g149522_))))
          (cond ((let () (declare (not safe)) (##fx= _g149521_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g149522_))
                ((let () (declare (not safe)) (##fx= _g149521_ 3))
                 (apply gxc#optimizer-declare-type!__% _g149522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g149522_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym146783%_ _%type146784%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146784%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146783%_
                     _%type146784%_)))
        (let ((_%table146786%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp149523
                 (let () (declare (not safe)) (struct->list _%type146784%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym146783%_ '" " __tmp149523))
          (let ()
            (declare (not safe))
            (hash-put! _%table146786%_ _%sym146783%_ _%type146784%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table146786%_ _%type146784%_ _%sym146783%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym146778%_ _%type146779%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146779%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146778%_
                     _%type146779%_)))
        (let ((_%table146781%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table146781%_ _%sym146778%_))
              '#!void
              (begin
                (let ((__tmp149524
                       (let ()
                         (declare (not safe))
                         (struct->list _%type146779%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym146778%_
                   '" "
                   __tmp149524))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table146781%_ _%sym146778%_ _%type146779%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table146781%_
                   _%type146779%_
                   _%sym146778%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym146776%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym146776%_))
        (let ((__tmp149525
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp149525 _%sym146776%_))
        (let ((__tmp149526
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp149526 _%sym146776%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t146744%_
               _%method146745%_
               _%sym146746%_
               _%rebind?146747%_)
        (let ((__tmp149527
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp149527 _%sym146746%_ '#t))
        (let ((_%klass146749%_ (gxc#optimizer-lookup-class _%type-t146744%_)))
          (if _%klass146749%_
              (let* ((_%vtab146751%_ (gxc#!class-method-table _%klass146749%_))
                     (_%$e146753%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab146751%_ _%method146745%_))))
                (if _%$e146753%_
                    ((lambda (_%existing146756%_)
                       (if _%rebind?146747%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t146744%_
                                '" "
                                _%method146745%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab146751%_
                                _%method146745%_
                                _%sym146746%_)))
                           (if (eq? _%existing146756%_ _%sym146746%_)
                               '#!void
                               (let ((__tmp149528
                                      (cons 'bind-method!
                                            (cons _%type-t146744%_
                                                  (cons _%method146745%_
                                                        (cons _%sym146746%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp149528
                                  _%method146745%_)))))
                     _%$e146753%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t146744%_
                         '" "
                         _%method146745%_
                         '" => "
                         _%sym146746%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab146751%_
                         _%method146745%_
                         _%sym146746%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t146744%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t146765%_ _%method146766%_ _%sym146767%_)
        (let ((_%rebind?146769%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t146765%_
           _%method146766%_
           _%sym146767%_
           _%rebind?146769%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g149530_
        (let ((_g149529_ (let () (declare (not safe)) (##length _g149530_))))
          (cond ((let () (declare (not safe)) (##fx= _g149529_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g149530_))
                ((let () (declare (not safe)) (##fx= _g149529_ 4))
                 (apply gxc#optimizer-declare-method!__% _g149530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g149530_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym146732%_)
        (let ((_%$e146740%_
               (let ((_%ht146733146735%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht146733146735%_
                     (let ((_%ht146738%_ _%ht146733146735%_))
                       (declare (not safe))
                       (hash-get _%ht146738%_ _%sym146732%_))
                     '#f))))
          (if _%$e146740%_
              _%$e146740%_
              (let ((__tmp149531
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp149531 _%sym146732%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym146724%_)
        (let ((_%type146725146727%_ (gxc#optimizer-lookup-type _%sym146724%_)))
          (if _%type146725146727%_
              (let ((_%type146730%_ _%type146725146727%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type146730%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (##structure-ref _%type146730%_ '1 gxc#!type::t '#f))
                    _%type146730%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym146720%_)
        (let ((_%table146722%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table146722%_ _%sym146720%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where146705%_ _%sym146706%_)
        (let ((_%$e146709%_ (gxc#optimizer-lookup-class _%sym146706%_)))
          (if _%$e146709%_
              ((lambda (_%g146711146713%_)
                 (let ((_%val146716%_ _%g146711146713%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val146716%_
                          'gxc#!class::t))
                       _%val146716%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val146716%_)))))
               _%$e146709%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where146705%_
                   _%sym146706%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass146703%_)
        (let ((__tmp149532
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp149532 _%klass146703%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t146700%_ _%method146701%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t146700%_)
         _%method146701%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym146698%_)
        (let ((__tmp149533
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp149533 _%sym146698%_))))))
