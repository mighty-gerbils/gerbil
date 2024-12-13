(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1734131748)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp152406 (list)) (__tmp152405 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp152406
         '(type classes ssxi methods)
         __tmp152405
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args152377%_
        (apply make-instance gxc#optimizer-info::t _%$args152377%_)))
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
      (lambda (_%self149518152362%_)
        (let* ((_%self152365%_ _%self149518152362%_)
               (_%self152367%_ _%self152365%_))
          (if (let ((__tmp152407
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self152367%_))))
                (declare (not safe))
                (##fx< '4 __tmp152407))
              (begin
                (let ((__tmp152408
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152367%_
                   __tmp152408
                   '1
                   '#f
                   '#f))
                (let ((__tmp152409
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152367%_
                   __tmp152409
                   '2
                   '#f
                   '#f))
                (let ((__tmp152410
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152367%_
                   __tmp152410
                   '3
                   '#f
                   '#f))
                (let ((__tmp152411
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152367%_
                   __tmp152411
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp152412
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self152367%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self152367%_
                       '4
                       __tmp152412))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp152414 (list))
            (__tmp152413
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp152414
         '(id)
         __tmp152413
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args152237%_
        (apply make-instance gxc#!type::t _%$args152237%_)))
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
      (let ((__tmp152416 (list gxc#!type::t))
            (__tmp152415 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp152416
         '()
         __tmp152415
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args152234%_
        (apply make-instance gxc#!abort::t _%$args152234%_)))
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
      (let ((__tmp152418 (list gxc#!type::t))
            (__tmp152417 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp152418
         '()
         __tmp152417
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args152231%_
        (apply make-instance gxc#!alias::t _%$args152231%_)))
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
      (let ((__tmp152420 (list))
            (__tmp152419
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp152420
         '(return effect arguments unchecked origin)
         __tmp152419
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args152228%_
        (apply make-instance gxc#!signature::t _%$args152228%_)))
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
      (let ((__tmp152422 (list gxc#!type::t))
            (__tmp152421
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp152422
         '(signature)
         __tmp152421
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
      (lambda (_%id152207%_ _%signature152208%_)
        (if ((lambda (_%$obj152211%_)
               (or (not _%$obj152211%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj152211%_
                      'gxc#!signature::t))))
             _%signature152208%_)
            (let ((_%signature152218%_ _%signature152208%_))
              (gxc#__make-!procedure _%id152207%_ _%signature152218%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature152208%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id152193%_ _%signature152195%_)
        (let ((_%signature152198%_ _%signature152195%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id152193%_ _%signature152198%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj152162%_ _%signature152163%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj152162%_ 'gxc#!procedure::t))
            (let ((_%$obj152167%_ _%$obj152162%_))
              (if ((lambda (_%$obj152176%_)
                     (or (not _%$obj152176%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj152176%_
                            'gxc#!signature::t))))
                   _%signature152163%_)
                  (let ((_%signature152183%_ _%signature152163%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj152167%_
                     _%signature152183%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature152163%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj152162%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj152139%_ _%signature152141%_)
        (let* ((_%$obj152145%_ _%$obj152139%_)
               (_%signature152153%_ _%signature152141%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj152145%_
           _%signature152153%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp152424 (list gxc#!type::t))
            (__tmp152423 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp152424
         '(class)
         __tmp152423
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args152136%_
        (apply make-instance gxc#!class-meta::t _%$args152136%_)))
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
      (let ((__tmp152426 (list gxc#!type::t))
            (__tmp152425
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
         __tmp152426
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp152425
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args152133%_
        (apply make-instance gxc#!class::t _%$args152133%_)))
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
      (let ((__tmp152428 (list gxc#!procedure::t))
            (__tmp152427 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp152428
         '()
         __tmp152427
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args152130%_
        (apply make-instance gxc#!predicate::t _%$args152130%_)))
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
      (let ((__tmp152430 (list gxc#!procedure::t))
            (__tmp152429 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp152430
         '()
         __tmp152429
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args152127%_
        (apply make-instance gxc#!constructor::t _%$args152127%_)))
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
      (let ((__tmp152432 (list gxc#!procedure::t))
            (__tmp152431 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp152432
         '(slot checked?)
         __tmp152431
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args152124%_
        (apply make-instance gxc#!accessor::t _%$args152124%_)))
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
      (let ((__tmp152434 (list gxc#!procedure::t))
            (__tmp152433 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp152434
         '(slot checked?)
         __tmp152433
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args152121%_
        (apply make-instance gxc#!mutator::t _%$args152121%_)))
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
      (let ((__tmp152436 (list gxc#!type::t))
            (__tmp152435 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp152436
         '(methods)
         __tmp152435
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args152118%_
        (apply make-instance gxc#!interface::t _%$args152118%_)))
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
      (let ((__tmp152438 (list gxc#!procedure::t))
            (__tmp152437
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp152438
         '(arity dispatch inline inline-typedecl)
         __tmp152437
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args152115%_
        (apply make-instance gxc#!lambda::t _%$args152115%_)))
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
      (let ((__tmp152440 (list gxc#!procedure::t))
            (__tmp152439 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp152440
         '(clauses)
         __tmp152439
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args152112%_
        (apply make-instance gxc#!case-lambda::t _%$args152112%_)))
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
      (let ((__tmp152442 (list gxc#!procedure::t))
            (__tmp152441
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp152442
         '(table dispatch)
         __tmp152441
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args152109%_
        (apply make-instance gxc#!kw-lambda::t _%$args152109%_)))
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
      (let ((__tmp152444 (list gxc#!procedure::t))
            (__tmp152443 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp152444
         '(keys main)
         __tmp152443
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args152106%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args152106%_)))
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
      (let ((__tmp152445 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp152445
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args152103%_
        (apply make-instance gxc#!primitive::t _%$args152103%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp152447 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp152446 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp152447
         '()
         __tmp152446
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args152100%_
        (apply make-instance gxc#!primitive-predicate::t _%$args152100%_)))
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
      (let ((__tmp152449 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp152448 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp152449
         '()
         __tmp152448
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args152097%_
        (apply make-instance gxc#!primitive-lambda::t _%$args152097%_)))
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
      (let ((__tmp152451 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp152450 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp152451
         '()
         __tmp152450
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args152094%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args152094%_)))
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
      (lambda (_%self149519152079%_)
        (let* ((_%self152082%_ _%self149519152079%_)
               (_%self152084%_ _%self152082%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self152084%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self149520151941%_ _%klass151943%_)
        (let* ((_%self151945%_ _%self149520151941%_)
               (_%self151947%_ _%self151945%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151947%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151947%_
             _%klass151943%_
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
      (lambda (_%self149521151629%_
               _%id151631%_
               _%super151632%_
               _%slots151633%_
               _%ctor-method151634%_
               _%struct?151635%_
               _%final?151636%_
               _%system?151637%_
               _%metaclass151638%_)
        (let* ((_%self151640%_ _%self149521151629%_)
               (_%self151642%_ _%self151640%_))
          (let _%lp151652%_ ((_%rest151654%_ _%super151632%_))
            (let* ((_%rest151655151663%_ _%rest151654%_)
                   (_%else151657151671%_ (lambda () '#!void))
                   (_%K151659151677%_
                    (lambda (_%rest151674%_ _%super-id151675%_)
                      (if (let ((__tmp152452
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id151631%_ '()))
                                  _%super-id151675%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp152452 '8 '#f '#f))
                          (let ((__tmp152453
                                 (cons '!class (cons _%id151631%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp152453
                             _%super-id151675%_))
                          '#!void)
                      (_%lp151652%_ _%rest151674%_))))
              (if (pair? _%rest151655151663%_)
                  (let ((_%hd151660151680%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest151655151663%_)))
                        (_%tl151661151682%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest151655151663%_))))
                    (let* ((_%super-id151685%_ _%hd151660151680%_)
                           (_%rest151687%_ _%tl151661151682%_))
                      (_%K151659151677%_ _%rest151687%_ _%super-id151685%_)))
                  '#!void)))
          (let* ((_%ctor-method151738%_
                  (let ((_%$e151689%_ _%ctor-method151634%_))
                    (if _%$e151689%_
                        _%$e151689%_
                        (let _%lp151692%_ ((_%rest151694%_ _%super151632%_)
                                           (_%method151695%_ '#f))
                          (let* ((_%rest151696151704%_ _%rest151694%_)
                                 (_%else151698151712%_
                                  (lambda () _%method151695%_))
                                 (_%K151700151726%_
                                  (lambda (_%rest151715%_ _%super-id151716%_)
                                    (let* ((_%klass151718%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id151631%_ '()))
                                             _%super-id151716%_))
                                           (_%$e151720%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass151718%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e151720%_
                                          ((lambda (_%ctor-method151723%_)
                                             (if _%method151695%_
                                                 (if (eq? _%ctor-method151723%_
                                                          _%method151695%_)
                                                     (_%lp151692%_
                                                      _%rest151715%_
                                                      _%ctor-method151723%_)
                                                     (let ((__tmp152454
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id151631%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp152454
                _%method151695%_
                _%ctor-method151723%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp151692%_
                                                  _%rest151715%_
                                                  _%ctor-method151723%_)))
                                           _%$e151720%_)
                                          (_%lp151692%_
                                           _%rest151715%_
                                           _%method151695%_))))))
                            (if (pair? _%rest151696151704%_)
                                (let ((_%hd151701151729%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest151696151704%_)))
                                      (_%tl151702151731%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest151696151704%_))))
                                  (let* ((_%super-id151734%_
                                          _%hd151701151729%_)
                                         (_%rest151736%_ _%tl151702151731%_))
                                    (_%K151700151726%_
                                     _%rest151736%_
                                     _%super-id151734%_)))
                                (_%else151698151712%_)))))))
                 (_g152455_
                  (let ((__tmp152459
                         (lambda (_%klass-id151740%_)
                           (cons _%klass-id151740%_
                                 (let ((__tmp152460
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id151631%_ '()))
                                         _%klass-id151740%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp152460
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp152457
                         (lambda (_%klass-id151742%_)
                           (let ((__tmp152458
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id151631%_ '()))
                                   _%klass-id151742%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp152458
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp152459
                     __tmp152457
                     eq?
                     identity
                     '()
                     _%super151632%_))))
            (begin
              (let ((_g152456_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g152455_)
                           (##values-length _g152455_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g152456_ 2)))
                    (error "Context expects 2 values" _g152456_)))
              (let ((_%precedence-list151744%_
                     (let () (declare (not safe)) (##values-ref _g152455_ 0)))
                    (_%base-struct151745%_
                     (let () (declare (not safe)) (##values-ref _g152455_ 1))))
                (let* ((_%precedence-list151789%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id151631%_ '(t object class)))
                            _%precedence-list151744%_
                            (if (memq 'object::t _%precedence-list151744%_)
                                _%precedence-list151744%_
                                (if _%system?151637%_
                                    (if (memq 't::t _%precedence-list151744%_)
                                        _%precedence-list151744%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list151744%_
                                           '(t::t))))
                                    (let _%loop151751%_ ((_%tail151753%_
                                                          _%precedence-list151744%_)
                                                         (_%head151754%_ '()))
                                      (let* ((_%tail151755151763%_
                                              _%tail151753%_)
                                             (_%else151757151771%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head151754%_))))
                                             (_%K151759151777%_
                                              (lambda (_%rest151774%_
                                                       _%hd151775%_)
                                                (if (eq? _%hd151775%_ 't::t)
                                                    (let ((__tmp152461
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail151753%_)))
              (declare (not safe))
              (__foldl1 cons __tmp152461 _%head151754%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop151751%_
                                                     _%rest151774%_
                                                     (cons _%hd151775%_
                                                           _%head151754%_))))))
                                        (if (pair? _%tail151755151763%_)
                                            (let ((_%hd151760151780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail151755151763%_)))
                                                  (_%tl151761151782%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail151755151763%_))))
                                              (let* ((_%hd151785%_
                                                      _%hd151760151780%_)
                                                     (_%rest151787%_
                                                      _%tl151761151782%_))
                                                (_%K151759151777%_
                                                 _%rest151787%_
                                                 _%hd151785%_)))
                                            (_%else151757151771%_))))))))
                       (_%fields151791%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id151631%_ '()))
                         _%base-struct151745%_
                         _%precedence-list151789%_
                         _%slots151633%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151642%_
                     _%id151631%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151642%_
                     _%super151632%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151642%_
                     _%precedence-list151789%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151642%_
                     _%slots151633%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151642%_
                     _%fields151791%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151642%_
                     _%ctor-method151738%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151642%_
                     _%struct?151635%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151642%_
                     _%final?151636%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151642%_
                     _%metaclass151638%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self149522151794%_
               _%id151796%_
               _%super151797%_
               _%precedence-list151798%_
               _%slots151799%_
               _%fields151800%_
               _%constructor151801%_
               _%struct?151802%_
               _%final?151803%_
               _%system?151804%_
               _%metaclass151805%_
               _%methods151806%_)
        (let* ((_%self151808%_ _%self149522151794%_)
               (_%self151810%_ _%self151808%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151810%_
             _%id151796%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151810%_
             _%super151797%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151810%_
             _%precedence-list151798%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151810%_
             _%slots151799%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151810%_
             _%fields151800%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151810%_
             _%constructor151801%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151810%_
             _%struct?151802%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151810%_
             _%final?151803%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151810%_
             _%metaclass151805%_
             '10
             '#f
             '#f))
          (if _%methods151806%_
              (let ((__tmp152462
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods151806%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self151810%_
                 __tmp152462
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g152464_
        (let ((_g152463_ (let () (declare (not safe)) (##length _g152464_))))
          (cond ((let () (declare (not safe)) (##fx= _g152463_ 9))
                 (apply gxc#!class:::init!__0 _g152464_))
                ((let () (declare (not safe)) (##fx= _g152463_ 12))
                 (apply gxc#!class:::init!__1 _g152464_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g152464_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where151481%_
               _%base-struct151482%_
               _%precedence-list151483%_
               _%direct-slots151484%_)
        (let* ((_%base-fields151486%_
                (if _%base-struct151482%_
                    (let ((__tmp152465
                           (gxc#optimizer-resolve-class
                            _%where151481%_
                            _%base-struct151482%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp152465 '5 '#f '#f))
                    '()))
               (_%r-fields151488%_ (reverse _%base-fields151486%_))
               (_%seen-slots151496%_
                (let ((_%tab151490%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g151491151493%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab151490%_ _%g151491151493%_ '#t)))
                   _%base-fields151486%_)
                  _%tab151490%_))
               (_%process-slot151500%_
                (lambda (_%slot151498%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots151496%_ _%slot151498%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots151496%_
                           _%slot151498%_
                           '#t))
                        (set! _%r-fields151488%_
                              (cons _%slot151498%_ _%r-fields151488%_)))))))
          (for-each
           (lambda (_%mixin151503%_)
             (let ((_%klass151505%_
                    (gxc#optimizer-resolve-class
                     _%where151481%_
                     _%mixin151503%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass151505%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot151500%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass151505%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list151483%_)
          (for-each _%process-slot151500%_ _%direct-slots151484%_)
          (let () (declare (not safe)) (##reverse _%r-fields151488%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass151440%_ _%slot151441%_)
        (let _%lp151443%_ ((_%rest151445%_
                            (##structure-ref
                             _%klass151440%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset151446%_ '1))
          (let* ((_%rest151447151455%_ _%rest151445%_)
                 (_%else151449151463%_
                  (lambda ()
                    (let ((__tmp152467
                           (##structure-ref
                            _%klass151440%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp152466
                           (##structure-ref
                            _%klass151440%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp152467
                       __tmp152466
                       _%slot151441%_))))
                 (_%K151451151469%_
                  (lambda (_%rest151466%_ _%s151467%_)
                    (if (eq? _%s151467%_ _%slot151441%_)
                        _%offset151446%_
                        (_%lp151443%_
                         _%rest151466%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset151446%_ '1)))))))
            (if (pair? _%rest151447151455%_)
                (let ((_%hd151452151472%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest151447151455%_)))
                      (_%tl151453151474%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest151447151455%_))))
                  (let* ((_%s151477%_ _%hd151452151472%_)
                         (_%rest151479%_ _%tl151453151474%_))
                    (_%K151451151469%_ _%rest151479%_ _%s151477%_)))
                (_%else151449151463%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass151398%_ _%slot151399%_)
        (if (gxc#!class-struct-slot? _%klass151398%_ _%slot151399%_)
            _%klass151398%_
            (let _%lp151401%_ ((_%rest151403%_
                                (##structure-ref
                                 _%klass151398%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest151404151412%_ _%rest151403%_)
                     (_%else151406151420%_ (lambda () '#f))
                     (_%K151408151428%_
                      (lambda (_%rest151423%_ _%super151424%_)
                        (let ((_%super-class151426%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass151398%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot151399%_ '())))
                                _%super151424%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class151426%_
                               _%slot151399%_)
                              _%super-class151426%_
                              (_%lp151401%_ _%rest151423%_))))))
                (if (pair? _%rest151404151412%_)
                    (let ((_%hd151409151431%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest151404151412%_)))
                          (_%tl151410151433%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest151404151412%_))))
                      (let* ((_%super151436%_ _%hd151409151431%_)
                             (_%rest151438%_ _%tl151410151433%_))
                        (_%K151408151428%_ _%rest151438%_ _%super151436%_)))
                    (_%else151406151420%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass151395%_ _%slot151396%_)
        (if (##structure-ref _%klass151395%_ '7 gxc#!class::t '#f)
            (memq _%slot151396%_
                  (##structure-ref _%klass151395%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self149523151379%_ _%id151381%_)
        (let* ((_%self151383%_ _%self149523151379%_)
               (_%self151385%_ _%self151383%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151385%_
             _%id151381%_
             '1
             '#f
             '#f))
          (let ((__tmp152468
                 (let ((__obj152400
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
                      __obj152400
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152400
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152400
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj152400)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151385%_
             __tmp152468
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self149524151241%_ _%id151243%_)
        (let* ((_%self151245%_ _%self149524151241%_)
               (_%self151247%_ _%self151245%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151247%_
             _%id151243%_
             '1
             '#f
             '#f))
          (let ((__tmp152469
                 (let ((__obj152401
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
                      __obj152401
                      _%id151243%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152401
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj152401)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151247%_
             __tmp152469
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
      (lambda (_%self149525151101%_
               _%id151103%_
               _%slot151104%_
               _%checked?151105%_)
        (let* ((_%self151107%_ _%self149525151101%_)
               (_%self151109%_ _%self151107%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151109%_
             _%id151103%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151109%_
             _%slot151104%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151109%_
             _%checked?151105%_
             '4
             '#f
             '#f))
          (let ((__tmp152470
                 (let ((__obj152402
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
                     (##unchecked-structure-set! __obj152402 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152402
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp152471 (cons _%id151103%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152402
                      __tmp152471
                      '3
                      '#f
                      '#f))
                   __obj152402)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151109%_
             __tmp152470
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self149526150961%_
               _%id150963%_
               _%slot150964%_
               _%checked?150965%_)
        (let* ((_%self150967%_ _%self149526150961%_)
               (_%self150969%_ _%self150967%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150969%_
             _%id150963%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150969%_
             _%slot150964%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150969%_
             _%checked?150965%_
             '4
             '#f
             '#f))
          (let ((__tmp152472
                 (let ((__obj152403
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
                      __obj152403
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152403
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp152473 (cons _%id150963%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152403
                      __tmp152473
                      '3
                      '#f
                      '#f))
                   __obj152403)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150969%_
             __tmp152472
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords150803%_
               _%signature150800150804%_
               _%self149527150806%_
               _%arity150808%_
               _%dispatch150809%_)
        (let* ((_%signature150811%_
                (if (eq? _%signature150800150804%_ absent-value)
                    '#f
                    _%signature150800150804%_))
               (_%self150813%_ _%self149527150806%_)
               (_%self150815%_ _%self150813%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150815%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150815%_
             _%arity150808%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150815%_
             _%dispatch150809%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150815%_
             _%signature150811%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords150829%_ . _%args150830%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords150829%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150829%_
                  'signature:
                  absent-value))
               _%args150830%_)))
    (define gxc#!lambda:::init!
      (lambda _%args150801150836%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args150801150836%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords150642%_
               _%signature150639150643%_
               _%self149528150645%_
               _%clauses150647%_)
        (let* ((_%signature150649%_
                (if (eq? _%signature150639150643%_ absent-value)
                    '#f
                    _%signature150639150643%_))
               (_%self150651%_ _%self149528150645%_)
               (_%self150653%_ _%self150651%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150653%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150653%_
             _%signature150649%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150653%_
             _%clauses150647%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords150667%_ . _%args150668%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords150667%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150667%_
                  'signature:
                  absent-value))
               _%args150668%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args150640150674%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args150640150674%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self149529150499%_ _%tab150501%_ _%dispatch150502%_)
        (let* ((_%self150504%_ _%self149529150499%_)
               (_%self150506%_ _%self150504%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150506%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150506%_
             _%tab150501%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150506%_
             _%dispatch150502%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self149530150360%_ _%keys150362%_ _%main150363%_)
        (let* ((_%self150365%_ _%self149530150360%_)
               (_%self150367%_ _%self150365%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150367%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150367%_
             _%keys150362%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150367%_
             _%main150363%_
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
      (lambda (_%self149531149978%_ _%id149980%_)
        (let* ((_%self149982%_ _%self149531149978%_)
               (_%self149984%_ _%self149982%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149984%_
             _%id149980%_
             '1
             '#f
             '#f))
          (let ((__tmp152474
                 (let ((__obj152404
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
                      __obj152404
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152404
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152404
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj152404)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149984%_
             __tmp152474
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
      (lambda (_%klass149847%_)
        (let ((_%$e149849%_
               (##structure-ref _%klass149847%_ '11 gxc#!class::t '#f)))
          (if _%$e149849%_
              _%$e149849%_
              (let ((_%tab149853%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass149847%_
                 _%tab149853%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab149853%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass149838%_ _%method149839%_)
        (let ((_%tab149840149842%_
               (##structure-ref _%klass149838%_ '11 gxc#!class::t '#f)))
          (if _%tab149840149842%_
              (let ((_%tab149845%_ _%tab149840149842%_))
                (declare (not safe))
                (hash-get _%tab149845%_ _%method149839%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a149826%_ _%type-b149827%_)
        (if _%type-a149826%_
            (if _%type-b149827%_
                (let ((_%$e149829%_ (eq? _%type-a149826%_ _%type-b149827%_)))
                  (if _%$e149829%_
                      _%$e149829%_
                      (let ((_%$e149832%_
                             (eq? (##structure-ref
                                   _%type-b149827%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e149832%_
                            _%$e149832%_
                            (let ((_%$e149835%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a149826%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b149827%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e149835%_
                                  _%$e149835%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a149826%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b149827%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a149826%_
                                           _%type-b149827%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a149777%_ _%klass-b149778%_)
        (let ((_%$e149780%_
               (eq? (##structure-ref _%klass-a149777%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b149778%_ '1 gxc#!type::t '#f))))
          (if _%$e149780%_
              _%$e149780%_
              (let ((_%klass-id-b149783%_
                     (##structure-ref _%klass-b149778%_ '1 gxc#!type::t '#f))
                    (_%precedence-list149784%_
                     (##structure-ref _%klass-a149777%_ '3 gxc#!class::t '#f)))
                (let _%loop149786%_ ((_%rest149788%_
                                      _%precedence-list149784%_))
                  (let* ((_%rest149789149797%_ _%rest149788%_)
                         (_%else149791149805%_ (lambda () '#f))
                         (_%K149793149814%_
                          (lambda (_%rest149808%_ _%klass-name149809%_)
                            (let ((_%$e149811%_
                                   (eq? (let ((__tmp152475
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a149777%_
                                                            (cons _%klass-b149778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name149809%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp152475
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b149783%_)))
                              (if _%$e149811%_
                                  _%$e149811%_
                                  (_%loop149786%_ _%rest149808%_))))))
                    (if (pair? _%rest149789149797%_)
                        (let ((_%hd149794149817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest149789149797%_)))
                              (_%tl149795149819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest149789149797%_))))
                          (let* ((_%klass-name149822%_ _%hd149794149817%_)
                                 (_%rest149824%_ _%tl149795149819%_))
                            (_%K149793149814%_
                             _%rest149824%_
                             _%klass-name149822%_)))
                        (_%else149791149805%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type149775%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149775%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type149775%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc149764%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc149764%_ 'gxc#!procedure::t))
            (let ((_%proc149767%_ _%proc149764%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc149767%_ '2 '#f '#f))
                  (let ((__tmp152476
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc149767%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp152476 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc149764%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym149746%_ _%type149747%_ _%local?149748%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149747%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym149746%_
                     _%type149747%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym149746%_ '" " _%type149747%_))
        (let ((_%table149750%_
               (if _%local?149748%_
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
          (hash-put! _%table149750%_ _%sym149746%_ _%type149747%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym149755%_ _%type149756%_)
        (let ((_%local?149758%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym149755%_
           _%type149756%_
           _%local?149758%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g152478_
        (let ((_g152477_ (let () (declare (not safe)) (##length _g152478_))))
          (cond ((let () (declare (not safe)) (##fx= _g152477_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g152478_))
                ((let () (declare (not safe)) (##fx= _g152477_ 3))
                 (apply gxc#optimizer-declare-type!__% _g152478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g152478_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym149740%_ _%type149741%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149741%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym149740%_
                     _%type149741%_)))
        (let ((_%table149743%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp152479
                 (let () (declare (not safe)) (struct->list _%type149741%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym149740%_ '" " __tmp152479))
          (let ()
            (declare (not safe))
            (hash-put! _%table149743%_ _%sym149740%_ _%type149741%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table149743%_ _%type149741%_ _%sym149740%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym149735%_ _%type149736%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149736%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym149735%_
                     _%type149736%_)))
        (let ((_%table149738%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table149738%_ _%sym149735%_))
              '#!void
              (begin
                (let ((__tmp152480
                       (let ()
                         (declare (not safe))
                         (struct->list _%type149736%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym149735%_
                   '" "
                   __tmp152480))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table149738%_ _%sym149735%_ _%type149736%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table149738%_
                   _%type149736%_
                   _%sym149735%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym149733%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym149733%_))
        (let ((__tmp152481
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp152481 _%sym149733%_))
        (let ((__tmp152482
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp152482 _%sym149733%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t149701%_
               _%method149702%_
               _%sym149703%_
               _%rebind?149704%_)
        (let ((__tmp152483
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp152483 _%sym149703%_ '#t))
        (let ((_%klass149706%_ (gxc#optimizer-lookup-class _%type-t149701%_)))
          (if _%klass149706%_
              (let* ((_%vtab149708%_ (gxc#!class-method-table _%klass149706%_))
                     (_%$e149710%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab149708%_ _%method149702%_))))
                (if _%$e149710%_
                    ((lambda (_%existing149713%_)
                       (if _%rebind?149704%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t149701%_
                                '" "
                                _%method149702%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab149708%_
                                _%method149702%_
                                _%sym149703%_)))
                           (if (eq? _%existing149713%_ _%sym149703%_)
                               '#!void
                               (let ((__tmp152484
                                      (cons 'bind-method!
                                            (cons _%type-t149701%_
                                                  (cons _%method149702%_
                                                        (cons _%sym149703%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp152484
                                  _%method149702%_)))))
                     _%$e149710%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t149701%_
                         '" "
                         _%method149702%_
                         '" => "
                         _%sym149703%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab149708%_
                         _%method149702%_
                         _%sym149703%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t149701%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t149722%_ _%method149723%_ _%sym149724%_)
        (let ((_%rebind?149726%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t149722%_
           _%method149723%_
           _%sym149724%_
           _%rebind?149726%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g152486_
        (let ((_g152485_ (let () (declare (not safe)) (##length _g152486_))))
          (cond ((let () (declare (not safe)) (##fx= _g152485_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g152486_))
                ((let () (declare (not safe)) (##fx= _g152485_ 4))
                 (apply gxc#optimizer-declare-method!__% _g152486_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g152486_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym149686%_)
        (let ((_%$e149688%_
               (let ((__tmp152487
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym149686%_ __tmp152487))))
          (if _%$e149688%_
              _%$e149688%_
              (let ((_%$e149697%_
                     (let ((_%ht149690149692%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht149690149692%_
                           (let ((_%ht149695%_ _%ht149690149692%_))
                             (declare (not safe))
                             (hash-get _%ht149695%_ _%sym149686%_))
                           '#f))))
                (if _%$e149697%_
                    _%$e149697%_
                    (let ((__tmp152488
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp152488 _%sym149686%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym149678%_)
        (let ((_%type149679149681%_ (gxc#optimizer-lookup-type _%sym149678%_)))
          (if _%type149679149681%_
              (let ((_%type149684%_ _%type149679149681%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type149684%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type149684%_ '1 '#f '#f)))
                    _%type149684%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym149674%_)
        (let ((_%table149676%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table149676%_ _%sym149674%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where149659%_ _%sym149660%_)
        (let ((_%$e149663%_ (gxc#optimizer-lookup-class _%sym149660%_)))
          (if _%$e149663%_
              ((lambda (_%g149665149667%_)
                 (let ((_%val149670%_ _%g149665149667%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val149670%_
                          'gxc#!class::t))
                       _%val149670%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val149670%_)))))
               _%$e149663%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where149659%_
                   _%sym149660%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass149657%_)
        (let ((__tmp152489
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp152489 _%klass149657%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t149654%_ _%method149655%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t149654%_)
         _%method149655%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym149652%_)
        (let ((__tmp152490
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp152490 _%sym149652%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e149534%_
                  (lambda (_%t149635%_)
                    (if (symbol? _%t149635%_)
                        (_%type-e149534%_
                         (gxc#optimizer-lookup-type _%t149635%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t149635%_
                               'gxc#!lambda::t))
                            (_%__lambda-type149536%_ _%t149635%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t149635%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type149538%_ _%t149635%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t149635%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type149540%_
                                     _%t149635%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t149635%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t149642%_ _%t149635%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t149642%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp152491
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t149642%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp152491
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t149635%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t149635%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type149535%_
                  (lambda (_%t149623%_)
                    (let ((_%t149626%_ _%t149623%_))
                      (_%__lambda-type149536%_ _%t149626%_))))
                 (_%__lambda-type149536%_
                  (lambda (_%t149611%_)
                    (let ((_%t149614%_ _%t149611%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t149614%_ '4 '#f '#f))
                          (_%type-e149534%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t149614%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t149614%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp152492
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t149614%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp152492
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type149537%_
                  (lambda (_%t149599%_)
                    (let ((_%t149602%_ _%t149599%_))
                      (_%__kw-lambda-type149538%_ _%t149602%_))))
                 (_%__kw-lambda-type149538%_
                  (lambda (_%t149587%_)
                    (let ((_%t149590%_ _%t149587%_))
                      (_%type-e149534%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t149590%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type149539%_
                  (lambda (_%t149575%_)
                    (let ((_%t149578%_ _%t149575%_))
                      (_%__kw-lambda-primary-type149540%_ _%t149578%_))))
                 (_%__kw-lambda-primary-type149540%_
                  (lambda (_%t149561%_)
                    (let ((_%t149564%_ _%t149561%_))
                      (_%type-e149534%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t149564%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1149542%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2149544%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result149546%_
                  (if _%ht1149542%_
                      (let () (declare (not safe)) (hash->list _%ht1149542%_))
                      '()))
                 (_%result149548%_
                  (if _%ht2149544%_
                      (let ((__tmp152493
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2149544%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result149546%_ __tmp152493))
                      _%result149546%_)))
            (for-each
             (lambda (_%p149551%_)
               (let* ((_%t149553%_ (cdr _%p149551%_))
                      (_%tr149555%_ (_%type-e149534%_ _%t149553%_)))
                 (set-cdr! _%p149551%_ _%tr149555%_)))
             _%result149548%_)
            (list-sort
             (lambda (_%a149558%_ _%b149559%_)
               (let ((__tmp152495 (symbol->string (car _%a149558%_)))
                     (__tmp152494 (symbol->string (car _%b149559%_))))
                 (declare (not safe))
                 (##string<? __tmp152495 __tmp152494)))
             _%result149548%_)))))))
