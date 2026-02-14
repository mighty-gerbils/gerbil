(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1771036679)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp392464 (list)) (__tmp392463 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp392464
         '(type classes ssxi methods)
         __tmp392463
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args392383%_
        (apply make-instance gxc#optimizer-info::t _%$args392383%_)))
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
      (lambda (_%self392370%_)
        (let ((_%self392373%_ _%self392370%_))
          (if (let ((__tmp392465
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self392373%_))))
                (declare (not safe))
                (##fx< '4 __tmp392465))
              (begin
                (let ((__tmp392466
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self392373%_
                   __tmp392466
                   '1
                   '#f
                   '#f))
                (let ((__tmp392467
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self392373%_
                   __tmp392467
                   '2
                   '#f
                   '#f))
                (let ((__tmp392468
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self392373%_
                   __tmp392468
                   '3
                   '#f
                   '#f))
                (let ((__tmp392469
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self392373%_
                   __tmp392469
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp392470
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self392373%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self392373%_
                       '4
                       __tmp392470))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp392472 (list))
            (__tmp392471
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp392472
         '(id)
         __tmp392471
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args392245%_
        (apply make-instance gxc#!type::t _%$args392245%_)))
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
      (let ((__tmp392474 (list gxc#!type::t))
            (__tmp392473 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp392474
         '()
         __tmp392473
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args392242%_
        (apply make-instance gxc#!abort::t _%$args392242%_)))
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
      (let ((__tmp392476 (list gxc#!type::t))
            (__tmp392475 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp392476
         '()
         __tmp392475
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args392239%_
        (apply make-instance gxc#!alias::t _%$args392239%_)))
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
      (let ((__tmp392478 (list))
            (__tmp392477
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp392478
         '(return effect arguments unchecked origin)
         __tmp392477
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args392236%_
        (apply make-instance gxc#!signature::t _%$args392236%_)))
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
      (let ((__tmp392480 (list gxc#!type::t))
            (__tmp392479
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp392480
         '(signature)
         __tmp392479
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
      (lambda (_%id392223%_ _%signature392224%_)
        (let ((_%signature392227%_ _%signature392224%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id392223%_ _%signature392227%_))))
    (define gxc#make-!procedure
      (lambda (_%id389031%_ _%signature389033%_)
        (if ((lambda (_%$obj389037%_)
               (or (not _%$obj389037%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj389037%_
                      'gxc#!signature::t))))
             _%signature389033%_)
            (let ((_%signature389044%_ _%signature389033%_))
              (gxc#__make-!procedure _%id389031%_ _%signature389044%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature389033%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj392202%_ _%signature392203%_)
        (let* ((_%$obj392206%_ _%$obj392202%_)
               (_%signature392214%_ _%signature392203%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj392206%_
           _%signature392214%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj389174%_ _%signature389176%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj389174%_ 'gxc#!procedure::t))
            (let ((_%$obj389180%_ _%$obj389174%_))
              (if ((lambda (_%$obj389189%_)
                     (or (not _%$obj389189%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj389189%_
                            'gxc#!signature::t))))
                   _%signature389176%_)
                  (let ((_%signature389196%_ _%signature389176%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj389180%_
                     _%signature389196%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature389176%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj389174%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp392482 (list gxc#!type::t))
            (__tmp392481 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp392482
         '(class)
         __tmp392481
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args392199%_
        (apply make-instance gxc#!class-meta::t _%$args392199%_)))
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
      (let ((__tmp392484 (list gxc#!type::t))
            (__tmp392483
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
         __tmp392484
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp392483
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args392196%_
        (apply make-instance gxc#!class::t _%$args392196%_)))
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
      (let ((__tmp392486 (list gxc#!procedure::t))
            (__tmp392485 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp392486
         '()
         __tmp392485
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args392193%_
        (apply make-instance gxc#!predicate::t _%$args392193%_)))
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
      (let ((__tmp392488 (list gxc#!procedure::t))
            (__tmp392487 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp392488
         '()
         __tmp392487
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args392190%_
        (apply make-instance gxc#!constructor::t _%$args392190%_)))
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
      (let ((__tmp392490 (list gxc#!procedure::t))
            (__tmp392489 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp392490
         '(slot checked?)
         __tmp392489
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args392187%_
        (apply make-instance gxc#!accessor::t _%$args392187%_)))
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
      (let ((__tmp392492 (list gxc#!procedure::t))
            (__tmp392491 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp392492
         '(slot checked?)
         __tmp392491
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args392184%_
        (apply make-instance gxc#!mutator::t _%$args392184%_)))
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
      (let ((__tmp392494 (list gxc#!type::t))
            (__tmp392493 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp392494
         '(methods)
         __tmp392493
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args392181%_
        (apply make-instance gxc#!interface::t _%$args392181%_)))
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
      (let ((__tmp392496 (list gxc#!procedure::t))
            (__tmp392495
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp392496
         '(arity dispatch inline inline-typedecl)
         __tmp392495
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args392178%_
        (apply make-instance gxc#!lambda::t _%$args392178%_)))
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
      (let ((__tmp392498 (list gxc#!procedure::t))
            (__tmp392497 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp392498
         '(clauses)
         __tmp392497
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args392175%_
        (apply make-instance gxc#!case-lambda::t _%$args392175%_)))
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
      (let ((__tmp392500 (list gxc#!procedure::t))
            (__tmp392499
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp392500
         '(table dispatch)
         __tmp392499
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args392172%_
        (apply make-instance gxc#!kw-lambda::t _%$args392172%_)))
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
      (let ((__tmp392502 (list gxc#!procedure::t))
            (__tmp392501 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp392502
         '(keys main)
         __tmp392501
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args392169%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args392169%_)))
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
      (let ((__tmp392503 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp392503
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args392166%_
        (apply make-instance gxc#!primitive::t _%$args392166%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp392505 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp392504 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp392505
         '()
         __tmp392504
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args392163%_
        (apply make-instance gxc#!primitive-predicate::t _%$args392163%_)))
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
      (let ((__tmp392507 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp392506 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp392507
         '()
         __tmp392506
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args392160%_
        (apply make-instance gxc#!primitive-lambda::t _%$args392160%_)))
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
      (let ((__tmp392509 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp392508 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp392509
         '()
         __tmp392508
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args392157%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args392157%_)))
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
      (lambda (_%self392144%_)
        (let ((_%self392147%_ _%self392144%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self392147%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self392007%_ _%klass392008%_)
        (let ((_%self392011%_ _%self392007%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self392011%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self392011%_
             _%klass392008%_
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
      (lambda (_%self391697%_
               _%id391698%_
               _%super391699%_
               _%slots391700%_
               _%ctor-method391701%_
               _%struct?391702%_
               _%final?391703%_
               _%system?391704%_
               _%metaclass391705%_)
        (let ((_%self391708%_ _%self391697%_))
          (let _%lp391719%_ ((_%rest391721%_ _%super391699%_))
            (let* ((_%rest391722391730%_ _%rest391721%_)
                   (_%else391724391738%_ (lambda () '#!void))
                   (_%K391726391744%_
                    (lambda (_%rest391741%_ _%super-id391742%_)
                      (if (let ((__tmp392510
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id391698%_ '()))
                                  _%super-id391742%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp392510 '8 '#f '#f))
                          (let ((__tmp392511
                                 (cons '!class (cons _%id391698%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp392511
                             _%super-id391742%_))
                          '#!void)
                      (_%lp391719%_ _%rest391741%_))))
              (if (pair? _%rest391722391730%_)
                  (let ((_%hd391727391747%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest391722391730%_)))
                        (_%tl391728391749%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest391722391730%_))))
                    (let* ((_%super-id391752%_ _%hd391727391747%_)
                           (_%rest391754%_ _%tl391728391749%_))
                      (_%K391726391744%_ _%rest391754%_ _%super-id391752%_)))
                  '#!void)))
          (let* ((_%ctor-method391805%_
                  (let ((_%$e391756%_ _%ctor-method391701%_))
                    (if _%$e391756%_
                        _%$e391756%_
                        (let _%lp391759%_ ((_%rest391761%_ _%super391699%_)
                                           (_%method391762%_ '#f))
                          (let* ((_%rest391763391771%_ _%rest391761%_)
                                 (_%else391765391779%_
                                  (lambda () _%method391762%_))
                                 (_%K391767391793%_
                                  (lambda (_%rest391782%_ _%super-id391783%_)
                                    (let* ((_%klass391785%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id391698%_ '()))
                                             _%super-id391783%_))
                                           (_%$e391787%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass391785%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e391787%_
                                          ((lambda (_%ctor-method391790%_)
                                             (if _%method391762%_
                                                 (if (eq? _%ctor-method391790%_
                                                          _%method391762%_)
                                                     (_%lp391759%_
                                                      _%rest391782%_
                                                      _%ctor-method391790%_)
                                                     (let ((__tmp392512
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id391698%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp392512
                _%method391762%_
                _%ctor-method391790%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp391759%_
                                                  _%rest391782%_
                                                  _%ctor-method391790%_)))
                                           _%$e391787%_)
                                          (_%lp391759%_
                                           _%rest391782%_
                                           _%method391762%_))))))
                            (if (pair? _%rest391763391771%_)
                                (let ((_%hd391768391796%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest391763391771%_)))
                                      (_%tl391769391798%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest391763391771%_))))
                                  (let* ((_%super-id391801%_
                                          _%hd391768391796%_)
                                         (_%rest391803%_ _%tl391769391798%_))
                                    (_%K391767391793%_
                                     _%rest391803%_
                                     _%super-id391801%_)))
                                (_%else391765391779%_)))))))
                 (_g392513_
                  (let ((__tmp392517
                         (lambda (_%klass-id391807%_)
                           (cons _%klass-id391807%_
                                 (let ((__tmp392518
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id391698%_ '()))
                                         _%klass-id391807%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp392518
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp392515
                         (lambda (_%klass-id391809%_)
                           (let ((__tmp392516
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id391698%_ '()))
                                   _%klass-id391809%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp392516
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp392517
                     __tmp392515
                     eq?
                     identity
                     '()
                     _%super391699%_))))
            (begin
              (let ((_g392514_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g392513_)
                           (##values-length _g392513_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g392514_ 2)))
                    (error "Context expects 2 values" _g392514_)))
              (let ((_%precedence-list391811%_
                     (let () (declare (not safe)) (##values-ref _g392513_ 0)))
                    (_%base-struct391812%_
                     (let () (declare (not safe)) (##values-ref _g392513_ 1))))
                (let* ((_%precedence-list391856%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id391698%_ '(t object class)))
                            _%precedence-list391811%_
                            (if (memq 'object::t _%precedence-list391811%_)
                                _%precedence-list391811%_
                                (if _%system?391704%_
                                    (if (memq 't::t _%precedence-list391811%_)
                                        _%precedence-list391811%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list391811%_
                                           '(t::t))))
                                    (let _%loop391818%_ ((_%tail391820%_
                                                          _%precedence-list391811%_)
                                                         (_%head391821%_ '()))
                                      (let* ((_%tail391822391830%_
                                              _%tail391820%_)
                                             (_%else391824391838%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head391821%_))))
                                             (_%K391826391844%_
                                              (lambda (_%rest391841%_
                                                       _%hd391842%_)
                                                (if (eq? _%hd391842%_ 't::t)
                                                    (let ((__tmp392519
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail391820%_)))
              (declare (not safe))
              (foldl__0 cons __tmp392519 _%head391821%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop391818%_
                                                     _%rest391841%_
                                                     (cons _%hd391842%_
                                                           _%head391821%_))))))
                                        (if (pair? _%tail391822391830%_)
                                            (let ((_%hd391827391847%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail391822391830%_)))
                                                  (_%tl391828391849%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail391822391830%_))))
                                              (let* ((_%hd391852%_
                                                      _%hd391827391847%_)
                                                     (_%rest391854%_
                                                      _%tl391828391849%_))
                                                (_%K391826391844%_
                                                 _%rest391854%_
                                                 _%hd391852%_)))
                                            (_%else391824391838%_))))))))
                       (_%fields391858%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id391698%_ '()))
                         _%base-struct391812%_
                         _%precedence-list391856%_
                         _%slots391700%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self391708%_
                     _%id391698%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self391708%_
                     _%super391699%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self391708%_
                     _%precedence-list391856%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self391708%_
                     _%slots391700%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self391708%_
                     _%fields391858%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self391708%_
                     _%ctor-method391805%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self391708%_
                     _%struct?391702%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self391708%_
                     _%final?391703%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self391708%_
                     _%metaclass391705%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self391861%_
               _%id391862%_
               _%super391863%_
               _%precedence-list391864%_
               _%slots391865%_
               _%fields391866%_
               _%constructor391867%_
               _%struct?391868%_
               _%final?391869%_
               _%system?391870%_
               _%metaclass391871%_
               _%methods391872%_)
        (let ((_%self391875%_ _%self391861%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391875%_
             _%id391862%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391875%_
             _%super391863%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391875%_
             _%precedence-list391864%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391875%_
             _%slots391865%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391875%_
             _%fields391866%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391875%_
             _%constructor391867%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391875%_
             _%struct?391868%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391875%_
             _%final?391869%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391875%_
             _%metaclass391871%_
             '10
             '#f
             '#f))
          (if _%methods391872%_
              (let ((__tmp392520
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods391872%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self391875%_
                 __tmp392520
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g392521_
        (let ((_g392522_ (let () (declare (not safe)) (##length _g392521_))))
          (cond ((let () (declare (not safe)) (##fx= _g392522_ 9))
                 (apply gxc#!class:::init!__0 _g392521_))
                ((let () (declare (not safe)) (##fx= _g392522_ 12))
                 (apply gxc#!class:::init!__1 _g392521_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g392521_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where391549%_
               _%base-struct391550%_
               _%precedence-list391551%_
               _%direct-slots391552%_)
        (let* ((_%base-fields391554%_
                (if _%base-struct391550%_
                    (let ((__tmp392523
                           (gxc#optimizer-resolve-class
                            _%where391549%_
                            _%base-struct391550%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp392523 '5 '#f '#f))
                    '()))
               (_%r-fields391556%_ (reverse _%base-fields391554%_))
               (_%seen-slots391564%_
                (let ((_%tab391558%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g391559391561%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab391558%_ _%g391559391561%_ '#t)))
                   _%base-fields391554%_)
                  _%tab391558%_))
               (_%process-slot391568%_
                (lambda (_%slot391566%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots391564%_ _%slot391566%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots391564%_
                           _%slot391566%_
                           '#t))
                        (set! _%r-fields391556%_
                              (cons _%slot391566%_ _%r-fields391556%_)))))))
          (for-each
           (lambda (_%mixin391571%_)
             (let ((_%klass391573%_
                    (gxc#optimizer-resolve-class
                     _%where391549%_
                     _%mixin391571%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass391573%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot391568%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass391573%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list391551%_)
          (for-each _%process-slot391568%_ _%direct-slots391552%_)
          (let () (declare (not safe)) (##reverse _%r-fields391556%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass391508%_ _%slot391509%_)
        (let _%lp391511%_ ((_%rest391513%_
                            (##structure-ref
                             _%klass391508%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset391514%_ '1))
          (let* ((_%rest391515391523%_ _%rest391513%_)
                 (_%else391517391531%_
                  (lambda ()
                    (let ((__tmp392525
                           (##structure-ref
                            _%klass391508%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp392524
                           (##structure-ref
                            _%klass391508%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp392525
                       __tmp392524
                       _%slot391509%_))))
                 (_%K391519391537%_
                  (lambda (_%rest391534%_ _%s391535%_)
                    (if (eq? _%s391535%_ _%slot391509%_)
                        _%offset391514%_
                        (_%lp391511%_
                         _%rest391534%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset391514%_ '1)))))))
            (if (pair? _%rest391515391523%_)
                (let ((_%hd391520391540%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest391515391523%_)))
                      (_%tl391521391542%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest391515391523%_))))
                  (let* ((_%s391545%_ _%hd391520391540%_)
                         (_%rest391547%_ _%tl391521391542%_))
                    (_%K391519391537%_ _%rest391547%_ _%s391545%_)))
                (_%else391517391531%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass391466%_ _%slot391467%_)
        (if (gxc#!class-struct-slot? _%klass391466%_ _%slot391467%_)
            _%klass391466%_
            (let _%lp391469%_ ((_%rest391471%_
                                (##structure-ref
                                 _%klass391466%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest391472391480%_ _%rest391471%_)
                     (_%else391474391488%_ (lambda () '#f))
                     (_%K391476391496%_
                      (lambda (_%rest391491%_ _%super391492%_)
                        (let ((_%super-class391494%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass391466%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot391467%_ '())))
                                _%super391492%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class391494%_
                               _%slot391467%_)
                              _%super-class391494%_
                              (_%lp391469%_ _%rest391491%_))))))
                (if (pair? _%rest391472391480%_)
                    (let ((_%hd391477391499%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest391472391480%_)))
                          (_%tl391478391501%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest391472391480%_))))
                      (let* ((_%super391504%_ _%hd391477391499%_)
                             (_%rest391506%_ _%tl391478391501%_))
                        (_%K391476391496%_ _%rest391506%_ _%super391504%_)))
                    (_%else391474391488%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass391463%_ _%slot391464%_)
        (if (##structure-ref _%klass391463%_ '7 gxc#!class::t '#f)
            (memq _%slot391464%_
                  (##structure-ref _%klass391463%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self391448%_ _%id391449%_)
        (let ((_%self391452%_ _%self391448%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391452%_
             _%id391449%_
             '1
             '#f
             '#f))
          (let ((__tmp392526
                 (let ((__obj392458
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
                      __obj392458
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj392458
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj392458
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj392458)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391452%_
             __tmp392526
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self391311%_ _%id391312%_)
        (let ((_%self391315%_ _%self391311%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391315%_
             _%id391312%_
             '1
             '#f
             '#f))
          (let ((__tmp392527
                 (let ((__obj392459
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
                      __obj392459
                      _%id391312%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj392459
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj392459)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391315%_
             __tmp392527
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
      (lambda (_%self391172%_ _%id391173%_ _%slot391174%_ _%checked?391175%_)
        (let ((_%self391178%_ _%self391172%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391178%_
             _%id391173%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391178%_
             _%slot391174%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391178%_
             _%checked?391175%_
             '4
             '#f
             '#f))
          (let ((__tmp392528
                 (let ((__obj392460
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
                     (##unchecked-structure-set! __obj392460 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj392460
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp392529 (cons _%id391173%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj392460
                      __tmp392529
                      '3
                      '#f
                      '#f))
                   __obj392460)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391178%_
             __tmp392528
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self391033%_ _%id391034%_ _%slot391035%_ _%checked?391036%_)
        (let ((_%self391039%_ _%self391033%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391039%_
             _%id391034%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391039%_
             _%slot391035%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391039%_
             _%checked?391036%_
             '4
             '#f
             '#f))
          (let ((__tmp392530
                 (let ((__obj392461
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
                      __obj392461
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj392461
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp392531 (cons _%id391034%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj392461
                      __tmp392531
                      '3
                      '#f
                      '#f))
                   __obj392461)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self391039%_
             __tmp392530
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords390877%_
               _%signature390874390878%_
               _%self390879%_
               _%arity390880%_
               _%dispatch390881%_)
        (let* ((_%signature390883%_
                (if (eq? _%signature390874390878%_ absent-value)
                    '#f
                    _%signature390874390878%_))
               (_%self390886%_ _%self390879%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self390886%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self390886%_
             _%arity390880%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self390886%_
             _%dispatch390881%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self390886%_
             _%signature390883%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords390901%_ . _%args390902%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords390901%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords390901%_
                  'signature:
                  absent-value))
               _%args390902%_)))
    (define gxc#!lambda:::init!
      (lambda _%args390875390908%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args390875390908%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords390718%_
               _%signature390715390719%_
               _%self390720%_
               _%clauses390721%_)
        (let* ((_%signature390723%_
                (if (eq? _%signature390715390719%_ absent-value)
                    '#f
                    _%signature390715390719%_))
               (_%self390726%_ _%self390720%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self390726%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self390726%_
             _%signature390723%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self390726%_
             _%clauses390721%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords390741%_ . _%args390742%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords390741%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords390741%_
                  'signature:
                  absent-value))
               _%args390742%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args390716390748%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args390716390748%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self390576%_ _%tab390577%_ _%dispatch390578%_)
        (let ((_%self390581%_ _%self390576%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self390581%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self390581%_
             _%tab390577%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self390581%_
             _%dispatch390578%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self390438%_ _%keys390439%_ _%main390440%_)
        (let ((_%self390443%_ _%self390438%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self390443%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self390443%_
             _%keys390439%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self390443%_
             _%main390440%_
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
      (lambda (_%self390057%_ _%id390058%_)
        (let ((_%self390061%_ _%self390057%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self390061%_
             _%id390058%_
             '1
             '#f
             '#f))
          (let ((__tmp392532
                 (let ((__obj392462
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
                      __obj392462
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj392462
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj392462
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj392462)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self390061%_
             __tmp392532
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
      (lambda (_%klass389927%_)
        (let ((_%$e389929%_
               (##structure-ref _%klass389927%_ '11 gxc#!class::t '#f)))
          (if _%$e389929%_
              _%$e389929%_
              (let ((_%tab389933%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass389927%_
                 _%tab389933%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab389933%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass389919%_ _%method389920%_)
        (let ((_%tab389921389923%_
               (##structure-ref _%klass389919%_ '11 gxc#!class::t '#f)))
          (if _%tab389921389923%_
              (let ((_%tab389925%_ _%tab389921389923%_))
                (declare (not safe))
                (hash-get _%tab389925%_ _%method389920%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a389904%_ _%type-b389905%_)
        (if _%type-a389904%_
            (if _%type-b389905%_
                (let ((_%$e389907%_ (eq? _%type-a389904%_ _%type-b389905%_)))
                  (if _%$e389907%_
                      _%$e389907%_
                      (let ((_%$e389910%_
                             (eq? (##structure-ref
                                   _%type-b389905%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e389910%_
                            _%$e389910%_
                            (let ((_%$e389913%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a389904%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b389905%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e389913%_
                                  _%$e389913%_
                                  (let ((_%$e389916%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a389904%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b389905%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a389904%_
                                                  _%type-b389905%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e389916%_
                                        _%$e389916%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a389904%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b389905%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'gerbil#interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a389855%_ _%klass-b389856%_)
        (let ((_%$e389858%_
               (eq? (##structure-ref _%klass-a389855%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b389856%_ '1 gxc#!type::t '#f))))
          (if _%$e389858%_
              _%$e389858%_
              (let ((_%klass-id-b389861%_
                     (##structure-ref _%klass-b389856%_ '1 gxc#!type::t '#f))
                    (_%precedence-list389862%_
                     (##structure-ref _%klass-a389855%_ '3 gxc#!class::t '#f)))
                (let _%loop389864%_ ((_%rest389866%_
                                      _%precedence-list389862%_))
                  (let* ((_%rest389867389875%_ _%rest389866%_)
                         (_%else389869389883%_ (lambda () '#f))
                         (_%K389871389892%_
                          (lambda (_%rest389886%_ _%klass-name389887%_)
                            (let ((_%$e389889%_
                                   (eq? (let ((__tmp392533
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a389855%_
                                                            (cons _%klass-b389856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name389887%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp392533
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b389861%_)))
                              (if _%$e389889%_
                                  _%$e389889%_
                                  (_%loop389864%_ _%rest389886%_))))))
                    (if (pair? _%rest389867389875%_)
                        (let ((_%hd389872389895%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest389867389875%_)))
                              (_%tl389873389897%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest389867389875%_))))
                          (let* ((_%klass-name389900%_ _%hd389872389895%_)
                                 (_%rest389902%_ _%tl389873389897%_))
                            (_%K389871389892%_
                             _%rest389902%_
                             _%klass-name389900%_)))
                        (_%else389869389883%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type389853%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type389853%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type389853%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc389842%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc389842%_ 'gxc#!procedure::t))
            (let ((_%proc389845%_ _%proc389842%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc389845%_ '2 '#f '#f))
                  (let ((__tmp392534
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc389845%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp392534 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@382.11-382.15"
               'contract:
               '!procedure?
               'value:
               _%proc389842%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym389824%_ _%type389825%_ _%local?389826%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type389825%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym389824%_
                     _%type389825%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym389824%_ '" " _%type389825%_))
        (let ((_%table389828%_
               (if _%local?389826%_
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
          (hash-put! _%table389828%_ _%sym389824%_ _%type389825%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym389833%_ _%type389834%_)
        (let ((_%local?389836%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym389833%_
           _%type389834%_
           _%local?389836%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g392535_
        (let ((_g392536_ (let () (declare (not safe)) (##length _g392535_))))
          (cond ((let () (declare (not safe)) (##fx= _g392536_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g392535_))
                ((let () (declare (not safe)) (##fx= _g392536_ 3))
                 (apply gxc#optimizer-declare-type!__% _g392535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g392535_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym389818%_ _%type389819%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type389819%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym389818%_
                     _%type389819%_)))
        (let ((_%table389821%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp392537
                 (let () (declare (not safe)) (struct->list _%type389819%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym389818%_ '" " __tmp392537))
          (let ()
            (declare (not safe))
            (hash-put! _%table389821%_ _%sym389818%_ _%type389819%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table389821%_ _%type389819%_ _%sym389818%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym389813%_ _%type389814%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type389814%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym389813%_
                     _%type389814%_)))
        (let ((_%table389816%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table389816%_ _%sym389813%_))
              '#!void
              (begin
                (let ((__tmp392538
                       (let ()
                         (declare (not safe))
                         (struct->list _%type389814%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym389813%_
                   '" "
                   __tmp392538))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table389816%_ _%sym389813%_ _%type389814%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table389816%_
                   _%type389814%_
                   _%sym389813%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym389811%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym389811%_))
        (let ((__tmp392539
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp392539 _%sym389811%_))
        (let ((__tmp392540
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp392540 _%sym389811%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t389779%_
               _%method389780%_
               _%sym389781%_
               _%rebind?389782%_)
        (let ((__tmp392541
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp392541 _%sym389781%_ '#t))
        (let ((_%klass389784%_ (gxc#optimizer-lookup-class _%type-t389779%_)))
          (if _%klass389784%_
              (let* ((_%vtab389786%_ (gxc#!class-method-table _%klass389784%_))
                     (_%$e389788%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab389786%_ _%method389780%_))))
                (if _%$e389788%_
                    ((lambda (_%existing389791%_)
                       (if _%rebind?389782%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t389779%_
                                '" "
                                _%method389780%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab389786%_
                                _%method389780%_
                                _%sym389781%_)))
                           (if (eq? _%existing389791%_ _%sym389781%_)
                               '#!void
                               (let ((__tmp392542
                                      (cons 'bind-method!
                                            (cons _%type-t389779%_
                                                  (cons _%method389780%_
                                                        (cons _%sym389781%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp392542
                                  _%method389780%_)))))
                     _%$e389788%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t389779%_
                         '" "
                         _%method389780%_
                         '" => "
                         _%sym389781%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab389786%_
                         _%method389780%_
                         _%sym389781%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t389779%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t389800%_ _%method389801%_ _%sym389802%_)
        (let ((_%rebind?389804%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t389800%_
           _%method389801%_
           _%sym389802%_
           _%rebind?389804%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g392543_
        (let ((_g392544_ (let () (declare (not safe)) (##length _g392543_))))
          (cond ((let () (declare (not safe)) (##fx= _g392544_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g392543_))
                ((let () (declare (not safe)) (##fx= _g392544_ 4))
                 (apply gxc#optimizer-declare-method!__% _g392543_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g392543_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym389765%_)
        (let ((_%$e389767%_
               (let ((__tmp392545
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym389765%_ __tmp392545))))
          (if _%$e389767%_
              _%$e389767%_
              (let ((_%$e389775%_
                     (let ((_%ht389769389771%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht389769389771%_
                           (let ((_%ht389773%_ _%ht389769389771%_))
                             (declare (not safe))
                             (hash-get _%ht389773%_ _%sym389765%_))
                           '#f))))
                (if _%$e389775%_
                    _%$e389775%_
                    (let ((__tmp392546
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp392546 _%sym389765%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym389758%_)
        (let ((_%type389759389761%_ (gxc#optimizer-lookup-type _%sym389758%_)))
          (if _%type389759389761%_
              (let ((_%type389763%_ _%type389759389761%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type389763%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type389763%_ '1 '#f '#f)))
                    _%type389763%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym389754%_)
        (let ((_%table389756%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table389756%_ _%sym389754%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where389739%_ _%sym389740%_)
        (let ((_%$e389743%_ (gxc#optimizer-lookup-class _%sym389740%_)))
          (if _%$e389743%_
              ((lambda (_%g389745389747%_)
                 (let ((_%val389750%_ _%g389745389747%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val389750%_
                          'gxc#!class::t))
                       _%val389750%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val389750%_)
                         '#!void))))
               _%$e389743%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where389739%_
                   _%sym389740%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass389737%_)
        (let ((__tmp392547
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp392547 _%klass389737%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t389734%_ _%method389735%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t389734%_)
         _%method389735%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym389732%_)
        (let ((__tmp392548
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp392548 _%sym389732%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e389207%_
                  (lambda (_%t389673%_)
                    (if (symbol? _%t389673%_)
                        (_%type-e389207%_
                         (gxc#optimizer-lookup-type _%t389673%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t389673%_
                               'gxc#!lambda::t))
                            (let* ((_%t389677%_ _%t389673%_)
                                   (_%t389681%_ _%t389677%_))
                              (_%__lambda-type389333%_ _%t389681%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t389673%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t389693%_ _%t389673%_)
                                       (_%t389697%_ _%t389693%_))
                                  (_%__kw-lambda-type389456%_ _%t389697%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t389673%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t389708%_ _%t389673%_)
                                           (_%t389712%_ _%t389708%_))
                                      (_%__kw-lambda-primary-type389579%_
                                       _%t389712%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t389673%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t389723%_ _%t389673%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t389723%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp392549
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t389723%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp392549
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t389673%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t389673%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type389333%_
                  (lambda (_%t389661%_)
                    (let ((_%t389664%_ _%t389661%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t389664%_ '4 '#f '#f))
                          (_%type-e389207%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t389664%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t389664%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp392550
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t389664%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp392550
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type389334%_
                  (lambda (_%t389649%_)
                    (let ((_%t389652%_ _%t389649%_))
                      (_%__lambda-type389333%_ _%t389652%_))))
                 (_%__kw-lambda-type389456%_
                  (lambda (_%t389637%_)
                    (let ((_%t389640%_ _%t389637%_))
                      (_%type-e389207%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t389640%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type389457%_
                  (lambda (_%t389625%_)
                    (let ((_%t389628%_ _%t389625%_))
                      (_%__kw-lambda-type389456%_ _%t389628%_))))
                 (_%__kw-lambda-primary-type389579%_
                  (lambda (_%t389613%_)
                    (let ((_%t389616%_ _%t389613%_))
                      (_%type-e389207%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t389616%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type389580%_
                  (lambda (_%t389601%_)
                    (let ((_%t389604%_ _%t389601%_))
                      (_%__kw-lambda-primary-type389579%_ _%t389604%_)))))
          (let* ((_%ht1389582%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2389584%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result389586%_
                  (if _%ht1389582%_
                      (let () (declare (not safe)) (hash->list _%ht1389582%_))
                      '()))
                 (_%result389588%_
                  (if _%ht2389584%_
                      (let ((__tmp392551
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2389584%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result389586%_ __tmp392551))
                      _%result389586%_)))
            (for-each
             (lambda (_%p389591%_)
               (let* ((_%t389593%_ (cdr _%p389591%_))
                      (_%tr389595%_ (_%type-e389207%_ _%t389593%_)))
                 (set-cdr! _%p389591%_ _%tr389595%_)))
             _%result389588%_)
            (list-sort
             (lambda (_%a389598%_ _%b389599%_)
               (let ((__tmp392553 (symbol->string (car _%a389598%_)))
                     (__tmp392552 (symbol->string (car _%b389599%_))))
                 (declare (not safe))
                 (##string<? __tmp392553 __tmp392552)))
             _%result389588%_)))))))
