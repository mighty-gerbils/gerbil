(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1783939351)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp216469 (list)) (__tmp216468 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp216469
         '(type classes ssxi methods)
         __tmp216468
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args216388%_
        (apply make-instance gxc#optimizer-info::t _%$args216388%_)))
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
      (lambda (_%self216375%_)
        (let ((_%self216378%_ _%self216375%_))
          (if (let ((__tmp216470
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self216378%_))))
                (declare (not safe))
                (##fx< '4 __tmp216470))
              (begin
                (let ((__tmp216471
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self216378%_
                   __tmp216471
                   '1
                   '#f
                   '#f))
                (let ((__tmp216472
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self216378%_
                   __tmp216472
                   '2
                   '#f
                   '#f))
                (let ((__tmp216473
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self216378%_
                   __tmp216473
                   '3
                   '#f
                   '#f))
                (let ((__tmp216474
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self216378%_
                   __tmp216474
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp216475
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self216378%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self216378%_
                       '4
                       __tmp216475))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp216477 (list))
            (__tmp216476
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp216477
         '(id)
         __tmp216476
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args216250%_
        (apply make-instance gxc#!type::t _%$args216250%_)))
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
      (let ((__tmp216479 (list gxc#!type::t))
            (__tmp216478 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp216479
         '()
         __tmp216478
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args216247%_
        (apply make-instance gxc#!abort::t _%$args216247%_)))
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
      (let ((__tmp216481 (list gxc#!type::t))
            (__tmp216480 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp216481
         '()
         __tmp216480
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args216244%_
        (apply make-instance gxc#!alias::t _%$args216244%_)))
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
      (let ((__tmp216483 (list))
            (__tmp216482
             (cons (cons 'final: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp216483
         '(return effect arguments unchecked origin)
         __tmp216482
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args216241%_
        (apply make-instance gxc#!signature::t _%$args216241%_)))
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
      (let ((__tmp216485 (list gxc#!type::t))
            (__tmp216484
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp216485
         '(signature)
         __tmp216484
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
      (lambda (_%id216228%_ _%signature216229%_)
        (let ((_%signature216232%_ _%signature216229%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id216228%_ _%signature216232%_))))
    (define gxc#make-!procedure
      (lambda (_%id216206%_ _%signature216208%_)
        (if (or (not _%signature216208%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%signature216208%_
                   'gxc#!signature::t)))
            (let ((_%signature216218%_ _%signature216208%_))
              (gxc#__make-!procedure _%id216206%_ _%signature216218%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature216208%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj216185%_ _%signature216186%_)
        (let* ((_%$obj216189%_ _%$obj216185%_)
               (_%signature216197%_ _%signature216186%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj216189%_
           _%signature216197%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj216152%_ _%signature216154%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj216152%_ 'gxc#!procedure::t))
            (let ((_%$obj216159%_ _%$obj216152%_))
              (if (or (not _%signature216154%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature216154%_
                         'gxc#!signature::t)))
                  (let ((_%signature216175%_ _%signature216154%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj216159%_
                     _%signature216175%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature216154%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj216152%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp216487 (list gxc#!type::t))
            (__tmp216486 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp216487
         '(class)
         __tmp216486
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args216149%_
        (apply make-instance gxc#!class-meta::t _%$args216149%_)))
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
      (let ((__tmp216489 (list gxc#!type::t))
            (__tmp216488
             (cons (cons 'struct: '#t)
                   '((equal: . #t) (print: super precedence-list)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp216489
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp216488
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args216146%_
        (apply make-instance gxc#!class::t _%$args216146%_)))
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
      (let ((__tmp216491 (list gxc#!procedure::t))
            (__tmp216490 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp216491
         '()
         __tmp216490
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args216143%_
        (apply make-instance gxc#!predicate::t _%$args216143%_)))
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
      (let ((__tmp216493 (list gxc#!procedure::t))
            (__tmp216492 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp216493
         '()
         __tmp216492
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args216140%_
        (apply make-instance gxc#!constructor::t _%$args216140%_)))
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
      (let ((__tmp216495 (list gxc#!procedure::t))
            (__tmp216494 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp216495
         '(slot checked?)
         __tmp216494
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args216137%_
        (apply make-instance gxc#!accessor::t _%$args216137%_)))
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
      (let ((__tmp216497 (list gxc#!procedure::t))
            (__tmp216496 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp216497
         '(slot checked?)
         __tmp216496
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args216134%_
        (apply make-instance gxc#!mutator::t _%$args216134%_)))
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
      (let ((__tmp216499 (list gxc#!type::t))
            (__tmp216498 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp216499
         '(methods)
         __tmp216498
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args216131%_
        (apply make-instance gxc#!interface::t _%$args216131%_)))
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
      (let ((__tmp216501 (list gxc#!procedure::t))
            (__tmp216500 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp216501
         '(arity dispatch inline inline-typedecl)
         __tmp216500
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args216128%_
        (apply make-instance gxc#!lambda::t _%$args216128%_)))
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
      (let ((__tmp216503 (list gxc#!procedure::t))
            (__tmp216502 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp216503
         '(clauses)
         __tmp216502
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args216125%_
        (apply make-instance gxc#!case-lambda::t _%$args216125%_)))
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
      (let ((__tmp216505 (list gxc#!procedure::t))
            (__tmp216504 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp216505
         '(table dispatch)
         __tmp216504
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args216122%_
        (apply make-instance gxc#!kw-lambda::t _%$args216122%_)))
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
      (let ((__tmp216507 (list gxc#!procedure::t))
            (__tmp216506 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp216507
         '(keys main)
         __tmp216506
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args216119%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args216119%_)))
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
      (let ((__tmp216508 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp216508
         '()
         '((equal: . #t))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args216116%_
        (apply make-instance gxc#!primitive::t _%$args216116%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp216510 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp216509 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp216510
         '()
         __tmp216509
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args216113%_
        (apply make-instance gxc#!primitive-predicate::t _%$args216113%_)))
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
      (let ((__tmp216512 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp216511 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp216512
         '()
         __tmp216511
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args216110%_
        (apply make-instance gxc#!primitive-lambda::t _%$args216110%_)))
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
      (let ((__tmp216514 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp216513 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp216514
         '()
         __tmp216513
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args216107%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args216107%_)))
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
      (lambda (_%self216094%_)
        (let ((_%self216097%_ _%self216094%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self216097%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self215957%_ _%klass215958%_)
        (let ((_%self215961%_ _%self215957%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self215961%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215961%_
             _%klass215958%_
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
      (lambda (_%self215647%_
               _%id215648%_
               _%super215649%_
               _%slots215650%_
               _%ctor-method215651%_
               _%struct?215652%_
               _%final?215653%_
               _%system?215654%_
               _%metaclass215655%_)
        (let ((_%self215658%_ _%self215647%_))
          (let _%lp215669%_ ((_%rest215671%_ _%super215649%_))
            (let* ((_%$%rest215672215680%_ _%rest215671%_)
                   (_%$%else215674215688%_ (lambda () '#!void))
                   (_%$%K215676215694%_
                    (lambda (_%rest215691%_ _%super-id215692%_)
                      (if (let ((__tmp216515
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id215648%_ '()))
                                  _%super-id215692%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp216515 '8 '#f '#f))
                          (let ((__tmp216516
                                 (cons '!class (cons _%id215648%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp216516
                             _%super-id215692%_))
                          '#!void)
                      (_%lp215669%_ _%rest215691%_))))
              (if (pair? _%$%rest215672215680%_)
                  (let ((_%$%hd215677215697%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest215672215680%_)))
                        (_%$%tl215678215699%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest215672215680%_))))
                    (let* ((_%super-id215702%_ _%$%hd215677215697%_)
                           (_%rest215704%_ _%$%tl215678215699%_))
                      (_%$%K215676215694%_ _%rest215704%_ _%super-id215702%_)))
                  '#!void)))
          (let* ((_%ctor-method215755%_
                  (let ((_%$e215706%_ _%ctor-method215651%_))
                    (if _%$e215706%_
                        _%$e215706%_
                        (let _%lp215709%_ ((_%rest215711%_ _%super215649%_)
                                           (_%method215712%_ '#f))
                          (let* ((_%$%rest215713215721%_ _%rest215711%_)
                                 (_%$%else215715215729%_
                                  (lambda () _%method215712%_))
                                 (_%$%K215717215743%_
                                  (lambda (_%rest215732%_ _%super-id215733%_)
                                    (let* ((_%klass215735%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id215648%_ '()))
                                             _%super-id215733%_))
                                           (_%$e215737%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass215735%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e215737%_
                                          (if _%method215712%_
                                              (if (eq? _%$e215737%_
                                                       _%method215712%_)
                                                  (_%lp215709%_
                                                   _%rest215732%_
                                                   _%$e215737%_)
                                                  (let ((__tmp216517
                                                         (cons '!class
                                                               (cons _%id215648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"conflicting implicit constructor methods"
                                                     __tmp216517
                                                     _%method215712%_
                                                     _%$e215737%_)))
                                              (_%lp215709%_
                                               _%rest215732%_
                                               _%$e215737%_))
                                          (_%lp215709%_
                                           _%rest215732%_
                                           _%method215712%_))))))
                            (if (pair? _%$%rest215713215721%_)
                                (let ((_%$%hd215718215746%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest215713215721%_)))
                                      (_%$%tl215719215748%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest215713215721%_))))
                                  (let* ((_%super-id215751%_
                                          _%$%hd215718215746%_)
                                         (_%rest215753%_ _%$%tl215719215748%_))
                                    (_%$%K215717215743%_
                                     _%rest215753%_
                                     _%super-id215751%_)))
                                (_%$%else215715215729%_)))))))
                 (_g216518_
                  (let ((__tmp216522
                         (lambda (_%klass-id215757%_)
                           (cons _%klass-id215757%_
                                 (let ((__tmp216523
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id215648%_ '()))
                                         _%klass-id215757%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp216523
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp216520
                         (lambda (_%klass-id215759%_)
                           (let ((__tmp216521
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id215648%_ '()))
                                   _%klass-id215759%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp216521
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp216522
                     __tmp216520
                     eq?
                     identity
                     '()
                     _%super215649%_))))
            (begin
              (let ((_g216519_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g216518_)
                           (##values-length _g216518_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g216519_ 2)))
                    (error "Context expects 2 values" _g216519_)))
              (let ((_%precedence-list215761%_
                     (let () (declare (not safe)) (##values-ref _g216518_ 0)))
                    (_%base-struct215762%_
                     (let () (declare (not safe)) (##values-ref _g216518_ 1))))
                (let* ((_%precedence-list215806%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id215648%_ '(t object class)))
                            _%precedence-list215761%_
                            (if (memq 'object::t _%precedence-list215761%_)
                                _%precedence-list215761%_
                                (if _%system?215654%_
                                    (if (memq 't::t _%precedence-list215761%_)
                                        _%precedence-list215761%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list215761%_
                                           '(t::t))))
                                    (let _%loop215768%_ ((_%tail215770%_
                                                          _%precedence-list215761%_)
                                                         (_%head215771%_ '()))
                                      (let* ((_%$%tail215772215780%_
                                              _%tail215770%_)
                                             (_%$%else215774215788%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head215771%_))))
                                             (_%$%K215776215794%_
                                              (lambda (_%rest215791%_
                                                       _%hd215792%_)
                                                (if (eq? _%hd215792%_ 't::t)
                                                    (let ((__tmp216524
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail215770%_)))
              (declare (not safe))
              (foldl__0 cons __tmp216524 _%head215771%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop215768%_
                                                     _%rest215791%_
                                                     (cons _%hd215792%_
                                                           _%head215771%_))))))
                                        (if (pair? _%$%tail215772215780%_)
                                            (let ((_%$%hd215777215797%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tail215772215780%_)))
                                                  (_%$%tl215778215799%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tail215772215780%_))))
                                              (let* ((_%hd215802%_
                                                      _%$%hd215777215797%_)
                                                     (_%rest215804%_
                                                      _%$%tl215778215799%_))
                                                (_%$%K215776215794%_
                                                 _%rest215804%_
                                                 _%hd215802%_)))
                                            (_%$%else215774215788%_))))))))
                       (_%fields215808%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id215648%_ '()))
                         _%precedence-list215806%_
                         _%slots215650%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215658%_
                     _%id215648%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215658%_
                     _%super215649%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215658%_
                     _%precedence-list215806%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215658%_
                     _%slots215650%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215658%_
                     _%fields215808%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215658%_
                     _%ctor-method215755%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215658%_
                     _%struct?215652%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215658%_
                     _%final?215653%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215658%_
                     _%metaclass215655%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self215811%_
               _%id215812%_
               _%super215813%_
               _%precedence-list215814%_
               _%slots215815%_
               _%fields215816%_
               _%constructor215817%_
               _%struct?215818%_
               _%final?215819%_
               _%system?215820%_
               _%metaclass215821%_
               _%methods215822%_)
        (let ((_%self215825%_ _%self215811%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215825%_
             _%id215812%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215825%_
             _%super215813%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215825%_
             _%precedence-list215814%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215825%_
             _%slots215815%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215825%_
             _%fields215816%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215825%_
             _%constructor215817%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215825%_
             _%struct?215818%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215825%_
             _%final?215819%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215825%_
             _%metaclass215821%_
             '10
             '#f
             '#f))
          (if _%methods215822%_
              (let ((__tmp216525
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods215822%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self215825%_
                 __tmp216525
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g216526_
        (let ((_g216527_ (let () (declare (not safe)) (##length _g216526_))))
          (cond ((let () (declare (not safe)) (##fx= _g216527_ 9))
                 (apply gxc#!class:::init!__0 _g216526_))
                ((let () (declare (not safe)) (##fx= _g216527_ 12))
                 (apply gxc#!class:::init!__1 _g216526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g216526_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where215516%_
               _%precedence-list215517%_
               _%direct-slots215518%_)
        (let ((__tmp216529
               (lambda (_%mixin215520%_)
                 (let ((__tmp216530
                        (gxc#optimizer-resolve-class
                         _%where215516%_
                         _%mixin215520%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp216530 '5 '#f '#f))))
              (__tmp216528
               (lambda (_%slot-list215522%_ _%slot-table215523%_)
                 (cdr _%slot-list215522%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list215517%_
           _%direct-slots215518%_
           __tmp216529
           __tmp216528))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass215475%_ _%slot215476%_)
        (let _%lp215478%_ ((_%rest215480%_
                            (##structure-ref
                             _%klass215475%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset215481%_ '1))
          (let* ((_%$%rest215482215490%_ _%rest215480%_)
                 (_%$%else215484215498%_
                  (lambda ()
                    (let ((__tmp216532
                           (##structure-ref
                            _%klass215475%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp216531
                           (##structure-ref
                            _%klass215475%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp216532
                       __tmp216531
                       _%slot215476%_))))
                 (_%$%K215486215504%_
                  (lambda (_%rest215501%_ _%s215502%_)
                    (if (eq? _%s215502%_ _%slot215476%_)
                        _%offset215481%_
                        (_%lp215478%_
                         _%rest215501%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset215481%_ '1)))))))
            (if (pair? _%$%rest215482215490%_)
                (let ((_%$%hd215487215507%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest215482215490%_)))
                      (_%$%tl215488215509%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest215482215490%_))))
                  (let* ((_%s215512%_ _%$%hd215487215507%_)
                         (_%rest215514%_ _%$%tl215488215509%_))
                    (_%$%K215486215504%_ _%rest215514%_ _%s215512%_)))
                (_%$%else215484215498%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass215433%_ _%slot215434%_)
        (if (gxc#!class-struct-slot? _%klass215433%_ _%slot215434%_)
            _%klass215433%_
            (let _%lp215436%_ ((_%rest215438%_
                                (##structure-ref
                                 _%klass215433%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%$%rest215439215447%_ _%rest215438%_)
                     (_%$%else215441215455%_ (lambda () '#f))
                     (_%$%K215443215463%_
                      (lambda (_%rest215458%_ _%super215459%_)
                        (let ((_%super-class215461%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass215433%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot215434%_ '())))
                                _%super215459%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class215461%_
                               _%slot215434%_)
                              _%super-class215461%_
                              (_%lp215436%_ _%rest215458%_))))))
                (if (pair? _%$%rest215439215447%_)
                    (let ((_%$%hd215444215466%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest215439215447%_)))
                          (_%$%tl215445215468%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest215439215447%_))))
                      (let* ((_%super215471%_ _%$%hd215444215466%_)
                             (_%rest215473%_ _%$%tl215445215468%_))
                        (_%$%K215443215463%_ _%rest215473%_ _%super215471%_)))
                    (_%$%else215441215455%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass215430%_ _%slot215431%_)
        (if (##structure-ref _%klass215430%_ '7 gxc#!class::t '#f)
            (memq _%slot215431%_
                  (##structure-ref _%klass215430%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self215415%_ _%id215416%_)
        (let ((_%self215419%_ _%self215415%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215419%_
             _%id215416%_
             '1
             '#f
             '#f))
          (let ((__tmp216533
                 (let ((__obj216463
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
                      __obj216463
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216463
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216463
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj216463)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215419%_
             __tmp216533
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self215278%_ _%id215279%_)
        (let ((_%self215282%_ _%self215278%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215282%_
             _%id215279%_
             '1
             '#f
             '#f))
          (let ((__tmp216534
                 (let ((__obj216464
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
                      __obj216464
                      _%id215279%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216464
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj216464)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215282%_
             __tmp216534
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
      (lambda (_%self215139%_ _%id215140%_ _%slot215141%_ _%checked?215142%_)
        (let ((_%self215145%_ _%self215139%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215145%_
             _%id215140%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215145%_
             _%slot215141%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215145%_
             _%checked?215142%_
             '4
             '#f
             '#f))
          (let ((__tmp216535
                 (let ((__obj216465
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
                     (##unchecked-structure-set! __obj216465 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216465
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp216536 (cons _%id215140%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216465
                      __tmp216536
                      '3
                      '#f
                      '#f))
                   __obj216465)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215145%_
             __tmp216535
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self215000%_ _%id215001%_ _%slot215002%_ _%checked?215003%_)
        (let ((_%self215006%_ _%self215000%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215006%_
             _%id215001%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215006%_
             _%slot215002%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215006%_
             _%checked?215003%_
             '4
             '#f
             '#f))
          (let ((__tmp216537
                 (let ((__obj216466
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
                      __obj216466
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216466
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp216538 (cons _%id215001%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216466
                      __tmp216538
                      '3
                      '#f
                      '#f))
                   __obj216466)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215006%_
             __tmp216537
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords214844%_
               _%$%signature214841214845%_
               _%self214846%_
               _%arity214847%_
               _%dispatch214848%_)
        (let* ((_%signature214850%_
                (if (eq? _%$%signature214841214845%_ absent-value)
                    '#f
                    _%$%signature214841214845%_))
               (_%self214853%_ _%self214846%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self214853%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214853%_
             _%arity214847%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214853%_
             _%dispatch214848%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214853%_
             _%signature214850%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords214868%_ . _%args214869%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords214868%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214868%_
                  'signature:
                  absent-value))
               _%args214869%_)))
    (define gxc#!lambda:::init!
      (lambda _%$%args214842214875%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%$%args214842214875%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords214685%_
               _%$%signature214682214686%_
               _%self214687%_
               _%clauses214688%_)
        (let* ((_%signature214690%_
                (if (eq? _%$%signature214682214686%_ absent-value)
                    '#f
                    _%$%signature214682214686%_))
               (_%self214693%_ _%self214687%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self214693%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214693%_
             _%signature214690%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214693%_
             _%clauses214688%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords214708%_ . _%args214709%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords214708%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214708%_
                  'signature:
                  absent-value))
               _%args214709%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%$%args214683214715%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%$%args214683214715%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self214543%_ _%tab214544%_ _%dispatch214545%_)
        (let ((_%self214548%_ _%self214543%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self214548%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214548%_
             _%tab214544%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214548%_
             _%dispatch214545%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self214405%_ _%keys214406%_ _%main214407%_)
        (let ((_%self214410%_ _%self214405%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self214410%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214410%_
             _%keys214406%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214410%_
             _%main214407%_
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
      (lambda (_%self214024%_ _%id214025%_)
        (let ((_%self214028%_ _%self214024%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214028%_
             _%id214025%_
             '1
             '#f
             '#f))
          (let ((__tmp216539
                 (let ((__obj216467
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
                      __obj216467
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216467
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216467
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj216467)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214028%_
             __tmp216539
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
      (lambda (_%klass213894%_)
        (let ((_%$e213896%_
               (##structure-ref _%klass213894%_ '11 gxc#!class::t '#f)))
          (if _%$e213896%_
              _%$e213896%_
              (let ((_%tab213900%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass213894%_
                 _%tab213900%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab213900%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass213886%_ _%method213887%_)
        (let ((_%$%tab213888213890%_
               (##structure-ref _%klass213886%_ '11 gxc#!class::t '#f)))
          (if _%$%tab213888213890%_
              (let ((_%tab213892%_ _%$%tab213888213890%_))
                (declare (not safe))
                (hash-get _%tab213892%_ _%method213887%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a213871%_ _%type-b213872%_)
        (if _%type-a213871%_
            (if _%type-b213872%_
                (let ((_%$e213874%_ (eq? _%type-a213871%_ _%type-b213872%_)))
                  (if _%$e213874%_
                      _%$e213874%_
                      (let ((_%$e213877%_
                             (eq? (##structure-ref
                                   _%type-b213872%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e213877%_
                            _%$e213877%_
                            (let ((_%$e213880%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a213871%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b213872%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e213880%_
                                  _%$e213880%_
                                  (let ((_%$e213883%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a213871%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b213872%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a213871%_
                                                  _%type-b213872%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e213883%_
                                        _%$e213883%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a213871%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b213872%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a213822%_ _%klass-b213823%_)
        (let ((_%$e213825%_
               (eq? (##structure-ref _%klass-a213822%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b213823%_ '1 gxc#!type::t '#f))))
          (if _%$e213825%_
              _%$e213825%_
              (let ((_%klass-id-b213828%_
                     (##structure-ref _%klass-b213823%_ '1 gxc#!type::t '#f))
                    (_%precedence-list213829%_
                     (##structure-ref _%klass-a213822%_ '3 gxc#!class::t '#f)))
                (let _%loop213831%_ ((_%rest213833%_
                                      _%precedence-list213829%_))
                  (let* ((_%$%rest213834213842%_ _%rest213833%_)
                         (_%$%else213836213850%_ (lambda () '#f))
                         (_%$%K213838213859%_
                          (lambda (_%rest213853%_ _%klass-name213854%_)
                            (let ((_%$e213856%_
                                   (eq? (let ((__tmp216540
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a213822%_
                                                            (cons _%klass-b213823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name213854%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp216540
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b213828%_)))
                              (if _%$e213856%_
                                  _%$e213856%_
                                  (_%loop213831%_ _%rest213853%_))))))
                    (if (pair? _%$%rest213834213842%_)
                        (let ((_%$%hd213839213862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest213834213842%_)))
                              (_%$%tl213840213864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest213834213842%_))))
                          (let* ((_%klass-name213867%_ _%$%hd213839213862%_)
                                 (_%rest213869%_ _%$%tl213840213864%_))
                            (_%$%K213838213859%_
                             _%rest213869%_
                             _%klass-name213867%_)))
                        (_%$%else213836213850%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type213820%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type213820%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type213820%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc213809%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc213809%_ 'gxc#!procedure::t))
            (let ((_%proc213812%_ _%proc213809%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc213812%_ '2 '#f '#f))
                  (let ((__tmp216541
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc213812%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp216541 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@365.11-365.15"
               'contract:
               '!procedure?
               'value:
               _%proc213809%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym213791%_ _%type213792%_ _%local?213793%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type213792%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym213791%_
                     _%type213792%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym213791%_ '" " _%type213792%_))
        (let ((_%table213795%_
               (if _%local?213793%_
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
          (hash-put! _%table213795%_ _%sym213791%_ _%type213792%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym213800%_ _%type213801%_)
        (let ((_%local?213803%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym213800%_
           _%type213801%_
           _%local?213803%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g216542_
        (let ((_g216543_ (let () (declare (not safe)) (##length _g216542_))))
          (cond ((let () (declare (not safe)) (##fx= _g216543_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g216542_))
                ((let () (declare (not safe)) (##fx= _g216543_ 3))
                 (apply gxc#optimizer-declare-type!__% _g216542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g216542_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym213785%_ _%type213786%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type213786%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym213785%_
                     _%type213786%_)))
        (let ((_%table213788%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp216544
                 (let () (declare (not safe)) (struct->list _%type213786%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym213785%_ '" " __tmp216544))
          (let ()
            (declare (not safe))
            (hash-put! _%table213788%_ _%sym213785%_ _%type213786%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table213788%_ _%type213786%_ _%sym213785%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym213780%_ _%type213781%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type213781%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym213780%_
                     _%type213781%_)))
        (let ((_%table213783%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table213783%_ _%sym213780%_))
              '#!void
              (begin
                (let ((__tmp216545
                       (let ()
                         (declare (not safe))
                         (struct->list _%type213781%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym213780%_
                   '" "
                   __tmp216545))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table213783%_ _%sym213780%_ _%type213781%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table213783%_
                   _%type213781%_
                   _%sym213780%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym213778%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym213778%_))
        (let ((__tmp216546
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp216546 _%sym213778%_))
        (let ((__tmp216547
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp216547 _%sym213778%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t213746%_
               _%method213747%_
               _%sym213748%_
               _%rebind?213749%_)
        (let ((__tmp216548
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp216548 _%sym213748%_ '#t))
        (let ((_%klass213751%_ (gxc#optimizer-lookup-class _%type-t213746%_)))
          (if _%klass213751%_
              (let* ((_%vtab213753%_ (gxc#!class-method-table _%klass213751%_))
                     (_%$e213755%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab213753%_ _%method213747%_))))
                (if _%$e213755%_
                    (if _%rebind?213749%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose
                             '"declare-method: rebind existing method"
                             _%type-t213746%_
                             '" "
                             _%method213747%_))
                          (let ()
                            (declare (not safe))
                            (hash-put!
                             _%vtab213753%_
                             _%method213747%_
                             _%sym213748%_)))
                        (if (eq? _%$e213755%_ _%sym213748%_)
                            '#!void
                            (let ((__tmp216549
                                   (cons 'bind-method!
                                         (cons _%type-t213746%_
                                               (cons _%method213747%_
                                                     (cons _%sym213748%_
                                                           '()))))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"declare-method: duplicate method declaration"
                               __tmp216549
                               _%method213747%_))))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t213746%_
                         '" "
                         _%method213747%_
                         '" => "
                         _%sym213748%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab213753%_
                         _%method213747%_
                         _%sym213748%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t213746%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t213767%_ _%method213768%_ _%sym213769%_)
        (let ((_%rebind?213771%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t213767%_
           _%method213768%_
           _%sym213769%_
           _%rebind?213771%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g216550_
        (let ((_g216551_ (let () (declare (not safe)) (##length _g216550_))))
          (cond ((let () (declare (not safe)) (##fx= _g216551_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g216550_))
                ((let () (declare (not safe)) (##fx= _g216551_ 4))
                 (apply gxc#optimizer-declare-method!__% _g216550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g216550_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym213732%_)
        (let ((_%$e213734%_
               (let ((__tmp216552
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym213732%_ __tmp216552))))
          (if _%$e213734%_
              _%$e213734%_
              (let ((_%$e213742%_
                     (let ((_%$%ht213736213738%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%$%ht213736213738%_
                           (let ((_%ht213740%_ _%$%ht213736213738%_))
                             (declare (not safe))
                             (hash-get _%ht213740%_ _%sym213732%_))
                           '#f))))
                (if _%$e213742%_
                    _%$e213742%_
                    (let ((__tmp216553
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp216553 _%sym213732%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym213725%_)
        (let ((_%$%type213726213728%_
               (gxc#optimizer-lookup-type _%sym213725%_)))
          (if _%$%type213726213728%_
              (let ((_%type213730%_ _%$%type213726213728%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type213730%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type213730%_ '1 '#f '#f)))
                    _%type213730%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym213721%_)
        (let ((_%table213723%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table213723%_ _%sym213721%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where213706%_ _%sym213707%_)
        (let ((_%$e213710%_ (gxc#optimizer-lookup-class _%sym213707%_)))
          (if _%$e213710%_
              (let ((_%val213717%_ _%$e213710%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%val213717%_ 'gxc#!class::t))
                    _%val213717%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/compiler/optimize-base
                       'contract:
                       '(!class? val)
                       'value:
                       _%val213717%_)
                      '#!void)))
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where213706%_
                   _%sym213707%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass213704%_)
        (let ((__tmp216554
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp216554 _%klass213704%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t213701%_ _%method213702%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t213701%_)
         _%method213702%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym213699%_)
        (let ((__tmp216555
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp216555 _%sym213699%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e213174%_
                  (lambda (_%t213640%_)
                    (if (symbol? _%t213640%_)
                        (_%type-e213174%_
                         (gxc#optimizer-lookup-type _%t213640%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t213640%_
                               'gxc#!lambda::t))
                            (let* ((_%t213644%_ _%t213640%_)
                                   (_%t213648%_ _%t213644%_))
                              (_%__lambda-type213300%_ _%t213648%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t213640%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t213660%_ _%t213640%_)
                                       (_%t213664%_ _%t213660%_))
                                  (_%__kw-lambda-type213423%_ _%t213664%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t213640%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t213675%_ _%t213640%_)
                                           (_%t213679%_ _%t213675%_))
                                      (_%__kw-lambda-primary-type213546%_
                                       _%t213679%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t213640%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t213690%_ _%t213640%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t213690%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp216556
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t213690%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp216556
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t213640%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t213640%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type213300%_
                  (lambda (_%t213628%_)
                    (let ((_%t213631%_ _%t213628%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t213631%_ '4 '#f '#f))
                          (_%type-e213174%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t213631%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t213631%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp216557
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t213631%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp216557
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type213301%_
                  (lambda (_%t213616%_)
                    (let ((_%t213619%_ _%t213616%_))
                      (_%__lambda-type213300%_ _%t213619%_))))
                 (_%__kw-lambda-type213423%_
                  (lambda (_%t213604%_)
                    (let ((_%t213607%_ _%t213604%_))
                      (_%type-e213174%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t213607%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type213424%_
                  (lambda (_%t213592%_)
                    (let ((_%t213595%_ _%t213592%_))
                      (_%__kw-lambda-type213423%_ _%t213595%_))))
                 (_%__kw-lambda-primary-type213546%_
                  (lambda (_%t213580%_)
                    (let ((_%t213583%_ _%t213580%_))
                      (_%type-e213174%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t213583%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type213547%_
                  (lambda (_%t213568%_)
                    (let ((_%t213571%_ _%t213568%_))
                      (_%__kw-lambda-primary-type213546%_ _%t213571%_)))))
          (let* ((_%ht1213549%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2213551%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result213553%_
                  (if _%ht1213549%_
                      (let () (declare (not safe)) (hash->list _%ht1213549%_))
                      '()))
                 (_%result213555%_
                  (if _%ht2213551%_
                      (let ((__tmp216558
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2213551%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result213553%_ __tmp216558))
                      _%result213553%_)))
            (for-each
             (lambda (_%p213558%_)
               (let* ((_%t213560%_ (cdr _%p213558%_))
                      (_%tr213562%_ (_%type-e213174%_ _%t213560%_)))
                 (set-cdr! _%p213558%_ _%tr213562%_)))
             _%result213555%_)
            (list-sort
             (lambda (_%a213565%_ _%b213566%_)
               (let ((__tmp216560 (symbol->string (car _%a213565%_)))
                     (__tmp216559 (symbol->string (car _%b213566%_))))
                 (declare (not safe))
                 (##string<? __tmp216560 __tmp216559)))
             _%result213555%_)))))))
