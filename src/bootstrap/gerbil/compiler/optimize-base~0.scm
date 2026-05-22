(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1779435584)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp211430 (list)) (__tmp211429 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp211430
         '(type classes ssxi methods)
         __tmp211429
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args211349%_
        (apply make-instance gxc#optimizer-info::t _%$args211349%_)))
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
      (lambda (_%self211336%_)
        (let ((_%self211339%_ _%self211336%_))
          (if (let ((__tmp211431
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self211339%_))))
                (declare (not safe))
                (##fx< '4 __tmp211431))
              (begin
                (let ((__tmp211432
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self211339%_
                   __tmp211432
                   '1
                   '#f
                   '#f))
                (let ((__tmp211433
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self211339%_
                   __tmp211433
                   '2
                   '#f
                   '#f))
                (let ((__tmp211434
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self211339%_
                   __tmp211434
                   '3
                   '#f
                   '#f))
                (let ((__tmp211435
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self211339%_
                   __tmp211435
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp211436
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self211339%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self211339%_
                       '4
                       __tmp211436))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp211438 (list))
            (__tmp211437
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp211438
         '(id)
         __tmp211437
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args211211%_
        (apply make-instance gxc#!type::t _%$args211211%_)))
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
      (let ((__tmp211440 (list gxc#!type::t))
            (__tmp211439 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp211440
         '()
         __tmp211439
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args211208%_
        (apply make-instance gxc#!abort::t _%$args211208%_)))
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
      (let ((__tmp211442 (list gxc#!type::t))
            (__tmp211441 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp211442
         '()
         __tmp211441
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args211205%_
        (apply make-instance gxc#!alias::t _%$args211205%_)))
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
      (let ((__tmp211444 (list))
            (__tmp211443
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp211444
         '(return effect arguments unchecked origin)
         __tmp211443
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args211202%_
        (apply make-instance gxc#!signature::t _%$args211202%_)))
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
      (let ((__tmp211446 (list gxc#!type::t))
            (__tmp211445
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp211446
         '(signature)
         __tmp211445
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
      (lambda (_%id211189%_ _%signature211190%_)
        (let ((_%signature211193%_ _%signature211190%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id211189%_ _%signature211193%_))))
    (define gxc#make-!procedure
      (lambda (_%id208014%_ _%signature208016%_)
        (if (or (not _%signature208016%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%signature208016%_
                   'gxc#!signature::t)))
            (let ((_%signature208027%_ _%signature208016%_))
              (gxc#__make-!procedure _%id208014%_ _%signature208027%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature208016%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj211168%_ _%signature211169%_)
        (let* ((_%$obj211172%_ _%$obj211168%_)
               (_%signature211180%_ _%signature211169%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj211172%_
           _%signature211180%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj208157%_ _%signature208159%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj208157%_ 'gxc#!procedure::t))
            (let ((_%$obj208163%_ _%$obj208157%_))
              (if (or (not _%signature208159%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature208159%_
                         'gxc#!signature::t)))
                  (let ((_%signature208179%_ _%signature208159%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj208163%_
                     _%signature208179%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature208159%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj208157%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp211448 (list gxc#!type::t))
            (__tmp211447 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp211448
         '(class)
         __tmp211447
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args211165%_
        (apply make-instance gxc#!class-meta::t _%$args211165%_)))
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
      (let ((__tmp211450 (list gxc#!type::t))
            (__tmp211449
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
         __tmp211450
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp211449
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args211162%_
        (apply make-instance gxc#!class::t _%$args211162%_)))
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
      (let ((__tmp211452 (list gxc#!procedure::t))
            (__tmp211451 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp211452
         '()
         __tmp211451
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args211159%_
        (apply make-instance gxc#!predicate::t _%$args211159%_)))
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
      (let ((__tmp211454 (list gxc#!procedure::t))
            (__tmp211453 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp211454
         '()
         __tmp211453
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args211156%_
        (apply make-instance gxc#!constructor::t _%$args211156%_)))
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
      (let ((__tmp211456 (list gxc#!procedure::t))
            (__tmp211455 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp211456
         '(slot checked?)
         __tmp211455
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args211153%_
        (apply make-instance gxc#!accessor::t _%$args211153%_)))
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
      (let ((__tmp211458 (list gxc#!procedure::t))
            (__tmp211457 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp211458
         '(slot checked?)
         __tmp211457
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args211150%_
        (apply make-instance gxc#!mutator::t _%$args211150%_)))
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
      (let ((__tmp211460 (list gxc#!type::t))
            (__tmp211459 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp211460
         '(methods)
         __tmp211459
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args211147%_
        (apply make-instance gxc#!interface::t _%$args211147%_)))
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
      (let ((__tmp211462 (list gxc#!procedure::t))
            (__tmp211461
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp211462
         '(arity dispatch inline inline-typedecl)
         __tmp211461
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args211144%_
        (apply make-instance gxc#!lambda::t _%$args211144%_)))
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
      (let ((__tmp211464 (list gxc#!procedure::t))
            (__tmp211463 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp211464
         '(clauses)
         __tmp211463
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args211141%_
        (apply make-instance gxc#!case-lambda::t _%$args211141%_)))
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
      (let ((__tmp211466 (list gxc#!procedure::t))
            (__tmp211465
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp211466
         '(table dispatch)
         __tmp211465
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args211138%_
        (apply make-instance gxc#!kw-lambda::t _%$args211138%_)))
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
      (let ((__tmp211468 (list gxc#!procedure::t))
            (__tmp211467 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp211468
         '(keys main)
         __tmp211467
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args211135%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args211135%_)))
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
      (let ((__tmp211469 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp211469
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args211132%_
        (apply make-instance gxc#!primitive::t _%$args211132%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp211471 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp211470 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp211471
         '()
         __tmp211470
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args211129%_
        (apply make-instance gxc#!primitive-predicate::t _%$args211129%_)))
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
      (let ((__tmp211473 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp211472 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp211473
         '()
         __tmp211472
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args211126%_
        (apply make-instance gxc#!primitive-lambda::t _%$args211126%_)))
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
      (let ((__tmp211475 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp211474 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp211475
         '()
         __tmp211474
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args211123%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args211123%_)))
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
      (lambda (_%self211110%_)
        (let ((_%self211113%_ _%self211110%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self211113%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self210973%_ _%klass210974%_)
        (let ((_%self210977%_ _%self210973%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self210977%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210977%_
             _%klass210974%_
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
      (lambda (_%self210663%_
               _%id210664%_
               _%super210665%_
               _%slots210666%_
               _%ctor-method210667%_
               _%struct?210668%_
               _%final?210669%_
               _%system?210670%_
               _%metaclass210671%_)
        (let ((_%self210674%_ _%self210663%_))
          (let _%lp210685%_ ((_%rest210687%_ _%super210665%_))
            (let* ((_%rest210688210696%_ _%rest210687%_)
                   (_%else210690210704%_ (lambda () '#!void))
                   (_%K210692210710%_
                    (lambda (_%rest210707%_ _%super-id210708%_)
                      (if (let ((__tmp211476
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id210664%_ '()))
                                  _%super-id210708%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp211476 '8 '#f '#f))
                          (let ((__tmp211477
                                 (cons '!class (cons _%id210664%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp211477
                             _%super-id210708%_))
                          '#!void)
                      (_%lp210685%_ _%rest210707%_))))
              (if (pair? _%rest210688210696%_)
                  (let ((_%hd210693210713%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest210688210696%_)))
                        (_%tl210694210715%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest210688210696%_))))
                    (let* ((_%super-id210718%_ _%hd210693210713%_)
                           (_%rest210720%_ _%tl210694210715%_))
                      (_%K210692210710%_ _%rest210720%_ _%super-id210718%_)))
                  '#!void)))
          (let* ((_%ctor-method210771%_
                  (let ((_%$e210722%_ _%ctor-method210667%_))
                    (if _%$e210722%_
                        _%$e210722%_
                        (let _%lp210725%_ ((_%rest210727%_ _%super210665%_)
                                           (_%method210728%_ '#f))
                          (let* ((_%rest210729210737%_ _%rest210727%_)
                                 (_%else210731210745%_
                                  (lambda () _%method210728%_))
                                 (_%K210733210759%_
                                  (lambda (_%rest210748%_ _%super-id210749%_)
                                    (let* ((_%klass210751%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id210664%_ '()))
                                             _%super-id210749%_))
                                           (_%$e210753%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass210751%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e210753%_
                                          (if _%method210728%_
                                              (if (eq? _%$e210753%_
                                                       _%method210728%_)
                                                  (_%lp210725%_
                                                   _%rest210748%_
                                                   _%$e210753%_)
                                                  (let ((__tmp211478
                                                         (cons '!class
                                                               (cons _%id210664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"conflicting implicit constructor methods"
                                                     __tmp211478
                                                     _%method210728%_
                                                     _%$e210753%_)))
                                              (_%lp210725%_
                                               _%rest210748%_
                                               _%$e210753%_))
                                          (_%lp210725%_
                                           _%rest210748%_
                                           _%method210728%_))))))
                            (if (pair? _%rest210729210737%_)
                                (let ((_%hd210734210762%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest210729210737%_)))
                                      (_%tl210735210764%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest210729210737%_))))
                                  (let* ((_%super-id210767%_
                                          _%hd210734210762%_)
                                         (_%rest210769%_ _%tl210735210764%_))
                                    (_%K210733210759%_
                                     _%rest210769%_
                                     _%super-id210767%_)))
                                (_%else210731210745%_)))))))
                 (_g211479_
                  (let ((__tmp211483
                         (lambda (_%klass-id210773%_)
                           (cons _%klass-id210773%_
                                 (let ((__tmp211484
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id210664%_ '()))
                                         _%klass-id210773%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp211484
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp211481
                         (lambda (_%klass-id210775%_)
                           (let ((__tmp211482
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id210664%_ '()))
                                   _%klass-id210775%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp211482
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp211483
                     __tmp211481
                     eq?
                     identity
                     '()
                     _%super210665%_))))
            (begin
              (let ((_g211480_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g211479_)
                           (##values-length _g211479_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g211480_ 2)))
                    (error "Context expects 2 values" _g211480_)))
              (let ((_%precedence-list210777%_
                     (let () (declare (not safe)) (##values-ref _g211479_ 0)))
                    (_%base-struct210778%_
                     (let () (declare (not safe)) (##values-ref _g211479_ 1))))
                (let* ((_%precedence-list210822%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id210664%_ '(t object class)))
                            _%precedence-list210777%_
                            (if (memq 'object::t _%precedence-list210777%_)
                                _%precedence-list210777%_
                                (if _%system?210670%_
                                    (if (memq 't::t _%precedence-list210777%_)
                                        _%precedence-list210777%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list210777%_
                                           '(t::t))))
                                    (let _%loop210784%_ ((_%tail210786%_
                                                          _%precedence-list210777%_)
                                                         (_%head210787%_ '()))
                                      (let* ((_%tail210788210796%_
                                              _%tail210786%_)
                                             (_%else210790210804%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head210787%_))))
                                             (_%K210792210810%_
                                              (lambda (_%rest210807%_
                                                       _%hd210808%_)
                                                (if (eq? _%hd210808%_ 't::t)
                                                    (let ((__tmp211485
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail210786%_)))
              (declare (not safe))
              (foldl__0 cons __tmp211485 _%head210787%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop210784%_
                                                     _%rest210807%_
                                                     (cons _%hd210808%_
                                                           _%head210787%_))))))
                                        (if (pair? _%tail210788210796%_)
                                            (let ((_%hd210793210813%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail210788210796%_)))
                                                  (_%tl210794210815%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail210788210796%_))))
                                              (let* ((_%hd210818%_
                                                      _%hd210793210813%_)
                                                     (_%rest210820%_
                                                      _%tl210794210815%_))
                                                (_%K210792210810%_
                                                 _%rest210820%_
                                                 _%hd210818%_)))
                                            (_%else210790210804%_))))))))
                       (_%fields210824%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id210664%_ '()))
                         _%precedence-list210822%_
                         _%slots210666%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210674%_
                     _%id210664%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210674%_
                     _%super210665%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210674%_
                     _%precedence-list210822%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210674%_
                     _%slots210666%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210674%_
                     _%fields210824%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210674%_
                     _%ctor-method210771%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210674%_
                     _%struct?210668%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210674%_
                     _%final?210669%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210674%_
                     _%metaclass210671%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self210827%_
               _%id210828%_
               _%super210829%_
               _%precedence-list210830%_
               _%slots210831%_
               _%fields210832%_
               _%constructor210833%_
               _%struct?210834%_
               _%final?210835%_
               _%system?210836%_
               _%metaclass210837%_
               _%methods210838%_)
        (let ((_%self210841%_ _%self210827%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210841%_
             _%id210828%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210841%_
             _%super210829%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210841%_
             _%precedence-list210830%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210841%_
             _%slots210831%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210841%_
             _%fields210832%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210841%_
             _%constructor210833%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210841%_
             _%struct?210834%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210841%_
             _%final?210835%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210841%_
             _%metaclass210837%_
             '10
             '#f
             '#f))
          (if _%methods210838%_
              (let ((__tmp211486
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods210838%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self210841%_
                 __tmp211486
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g211487_
        (let ((_g211488_ (let () (declare (not safe)) (##length _g211487_))))
          (cond ((let () (declare (not safe)) (##fx= _g211488_ 9))
                 (apply gxc#!class:::init!__0 _g211487_))
                ((let () (declare (not safe)) (##fx= _g211488_ 12))
                 (apply gxc#!class:::init!__1 _g211487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g211487_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where210532%_
               _%precedence-list210533%_
               _%direct-slots210534%_)
        (let ((__tmp211490
               (lambda (_%mixin210536%_)
                 (let ((__tmp211491
                        (gxc#optimizer-resolve-class
                         _%where210532%_
                         _%mixin210536%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp211491 '5 '#f '#f))))
              (__tmp211489
               (lambda (_%slot-list210538%_ _%slot-table210539%_)
                 (cdr _%slot-list210538%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list210533%_
           _%direct-slots210534%_
           __tmp211490
           __tmp211489))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass210491%_ _%slot210492%_)
        (let _%lp210494%_ ((_%rest210496%_
                            (##structure-ref
                             _%klass210491%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset210497%_ '1))
          (let* ((_%rest210498210506%_ _%rest210496%_)
                 (_%else210500210514%_
                  (lambda ()
                    (let ((__tmp211493
                           (##structure-ref
                            _%klass210491%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp211492
                           (##structure-ref
                            _%klass210491%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp211493
                       __tmp211492
                       _%slot210492%_))))
                 (_%K210502210520%_
                  (lambda (_%rest210517%_ _%s210518%_)
                    (if (eq? _%s210518%_ _%slot210492%_)
                        _%offset210497%_
                        (_%lp210494%_
                         _%rest210517%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset210497%_ '1)))))))
            (if (pair? _%rest210498210506%_)
                (let ((_%hd210503210523%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest210498210506%_)))
                      (_%tl210504210525%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest210498210506%_))))
                  (let* ((_%s210528%_ _%hd210503210523%_)
                         (_%rest210530%_ _%tl210504210525%_))
                    (_%K210502210520%_ _%rest210530%_ _%s210528%_)))
                (_%else210500210514%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass210449%_ _%slot210450%_)
        (if (gxc#!class-struct-slot? _%klass210449%_ _%slot210450%_)
            _%klass210449%_
            (let _%lp210452%_ ((_%rest210454%_
                                (##structure-ref
                                 _%klass210449%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest210455210463%_ _%rest210454%_)
                     (_%else210457210471%_ (lambda () '#f))
                     (_%K210459210479%_
                      (lambda (_%rest210474%_ _%super210475%_)
                        (let ((_%super-class210477%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass210449%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot210450%_ '())))
                                _%super210475%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class210477%_
                               _%slot210450%_)
                              _%super-class210477%_
                              (_%lp210452%_ _%rest210474%_))))))
                (if (pair? _%rest210455210463%_)
                    (let ((_%hd210460210482%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest210455210463%_)))
                          (_%tl210461210484%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest210455210463%_))))
                      (let* ((_%super210487%_ _%hd210460210482%_)
                             (_%rest210489%_ _%tl210461210484%_))
                        (_%K210459210479%_ _%rest210489%_ _%super210487%_)))
                    (_%else210457210471%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass210446%_ _%slot210447%_)
        (if (##structure-ref _%klass210446%_ '7 gxc#!class::t '#f)
            (memq _%slot210447%_
                  (##structure-ref _%klass210446%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self210431%_ _%id210432%_)
        (let ((_%self210435%_ _%self210431%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210435%_
             _%id210432%_
             '1
             '#f
             '#f))
          (let ((__tmp211494
                 (let ((__obj211424
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
                      __obj211424
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211424
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211424
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj211424)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210435%_
             __tmp211494
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self210294%_ _%id210295%_)
        (let ((_%self210298%_ _%self210294%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210298%_
             _%id210295%_
             '1
             '#f
             '#f))
          (let ((__tmp211495
                 (let ((__obj211425
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
                      __obj211425
                      _%id210295%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211425
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj211425)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210298%_
             __tmp211495
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
      (lambda (_%self210155%_ _%id210156%_ _%slot210157%_ _%checked?210158%_)
        (let ((_%self210161%_ _%self210155%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210161%_
             _%id210156%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210161%_
             _%slot210157%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210161%_
             _%checked?210158%_
             '4
             '#f
             '#f))
          (let ((__tmp211496
                 (let ((__obj211426
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
                     (##unchecked-structure-set! __obj211426 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211426
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp211497 (cons _%id210156%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211426
                      __tmp211497
                      '3
                      '#f
                      '#f))
                   __obj211426)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210161%_
             __tmp211496
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self210016%_ _%id210017%_ _%slot210018%_ _%checked?210019%_)
        (let ((_%self210022%_ _%self210016%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210022%_
             _%id210017%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210022%_
             _%slot210018%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210022%_
             _%checked?210019%_
             '4
             '#f
             '#f))
          (let ((__tmp211498
                 (let ((__obj211427
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
                      __obj211427
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211427
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp211499 (cons _%id210017%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211427
                      __tmp211499
                      '3
                      '#f
                      '#f))
                   __obj211427)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210022%_
             __tmp211498
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords209860%_
               _%signature209857209861%_
               _%self209862%_
               _%arity209863%_
               _%dispatch209864%_)
        (let* ((_%signature209866%_
                (if (eq? _%signature209857209861%_ absent-value)
                    '#f
                    _%signature209857209861%_))
               (_%self209869%_ _%self209862%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self209869%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209869%_
             _%arity209863%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209869%_
             _%dispatch209864%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209869%_
             _%signature209866%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords209884%_ . _%args209885%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords209884%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209884%_
                  'signature:
                  absent-value))
               _%args209885%_)))
    (define gxc#!lambda:::init!
      (lambda _%args209858209891%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args209858209891%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords209701%_
               _%signature209698209702%_
               _%self209703%_
               _%clauses209704%_)
        (let* ((_%signature209706%_
                (if (eq? _%signature209698209702%_ absent-value)
                    '#f
                    _%signature209698209702%_))
               (_%self209709%_ _%self209703%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self209709%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209709%_
             _%signature209706%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209709%_
             _%clauses209704%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords209724%_ . _%args209725%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords209724%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209724%_
                  'signature:
                  absent-value))
               _%args209725%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args209699209731%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args209699209731%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self209559%_ _%tab209560%_ _%dispatch209561%_)
        (let ((_%self209564%_ _%self209559%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self209564%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209564%_
             _%tab209560%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209564%_
             _%dispatch209561%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self209421%_ _%keys209422%_ _%main209423%_)
        (let ((_%self209426%_ _%self209421%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self209426%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209426%_
             _%keys209422%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209426%_
             _%main209423%_
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
      (lambda (_%self209040%_ _%id209041%_)
        (let ((_%self209044%_ _%self209040%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209044%_
             _%id209041%_
             '1
             '#f
             '#f))
          (let ((__tmp211500
                 (let ((__obj211428
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
                      __obj211428
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211428
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211428
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj211428)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209044%_
             __tmp211500
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
      (lambda (_%klass208910%_)
        (let ((_%$e208912%_
               (##structure-ref _%klass208910%_ '11 gxc#!class::t '#f)))
          (if _%$e208912%_
              _%$e208912%_
              (let ((_%tab208916%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass208910%_
                 _%tab208916%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab208916%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass208902%_ _%method208903%_)
        (let ((_%tab208904208906%_
               (##structure-ref _%klass208902%_ '11 gxc#!class::t '#f)))
          (if _%tab208904208906%_
              (let ((_%tab208908%_ _%tab208904208906%_))
                (declare (not safe))
                (hash-get _%tab208908%_ _%method208903%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a208887%_ _%type-b208888%_)
        (if _%type-a208887%_
            (if _%type-b208888%_
                (let ((_%$e208890%_ (eq? _%type-a208887%_ _%type-b208888%_)))
                  (if _%$e208890%_
                      _%$e208890%_
                      (let ((_%$e208893%_
                             (eq? (##structure-ref
                                   _%type-b208888%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e208893%_
                            _%$e208893%_
                            (let ((_%$e208896%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a208887%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b208888%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e208896%_
                                  _%$e208896%_
                                  (let ((_%$e208899%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a208887%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b208888%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a208887%_
                                                  _%type-b208888%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e208899%_
                                        _%$e208899%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a208887%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b208888%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a208838%_ _%klass-b208839%_)
        (let ((_%$e208841%_
               (eq? (##structure-ref _%klass-a208838%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b208839%_ '1 gxc#!type::t '#f))))
          (if _%$e208841%_
              _%$e208841%_
              (let ((_%klass-id-b208844%_
                     (##structure-ref _%klass-b208839%_ '1 gxc#!type::t '#f))
                    (_%precedence-list208845%_
                     (##structure-ref _%klass-a208838%_ '3 gxc#!class::t '#f)))
                (let _%loop208847%_ ((_%rest208849%_
                                      _%precedence-list208845%_))
                  (let* ((_%rest208850208858%_ _%rest208849%_)
                         (_%else208852208866%_ (lambda () '#f))
                         (_%K208854208875%_
                          (lambda (_%rest208869%_ _%klass-name208870%_)
                            (let ((_%$e208872%_
                                   (eq? (let ((__tmp211501
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a208838%_
                                                            (cons _%klass-b208839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name208870%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp211501
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b208844%_)))
                              (if _%$e208872%_
                                  _%$e208872%_
                                  (_%loop208847%_ _%rest208869%_))))))
                    (if (pair? _%rest208850208858%_)
                        (let ((_%hd208855208878%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest208850208858%_)))
                              (_%tl208856208880%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest208850208858%_))))
                          (let* ((_%klass-name208883%_ _%hd208855208878%_)
                                 (_%rest208885%_ _%tl208856208880%_))
                            (_%K208854208875%_
                             _%rest208885%_
                             _%klass-name208883%_)))
                        (_%else208852208866%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type208836%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208836%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type208836%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc208825%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc208825%_ 'gxc#!procedure::t))
            (let ((_%proc208828%_ _%proc208825%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc208828%_ '2 '#f '#f))
                  (let ((__tmp211502
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc208828%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp211502 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@365.11-365.15"
               'contract:
               '!procedure?
               'value:
               _%proc208825%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym208807%_ _%type208808%_ _%local?208809%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208808%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym208807%_
                     _%type208808%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym208807%_ '" " _%type208808%_))
        (let ((_%table208811%_
               (if _%local?208809%_
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
          (hash-put! _%table208811%_ _%sym208807%_ _%type208808%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym208816%_ _%type208817%_)
        (let ((_%local?208819%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym208816%_
           _%type208817%_
           _%local?208819%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g211503_
        (let ((_g211504_ (let () (declare (not safe)) (##length _g211503_))))
          (cond ((let () (declare (not safe)) (##fx= _g211504_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g211503_))
                ((let () (declare (not safe)) (##fx= _g211504_ 3))
                 (apply gxc#optimizer-declare-type!__% _g211503_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g211503_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym208801%_ _%type208802%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208802%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym208801%_
                     _%type208802%_)))
        (let ((_%table208804%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp211505
                 (let () (declare (not safe)) (struct->list _%type208802%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym208801%_ '" " __tmp211505))
          (let ()
            (declare (not safe))
            (hash-put! _%table208804%_ _%sym208801%_ _%type208802%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table208804%_ _%type208802%_ _%sym208801%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym208796%_ _%type208797%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208797%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym208796%_
                     _%type208797%_)))
        (let ((_%table208799%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table208799%_ _%sym208796%_))
              '#!void
              (begin
                (let ((__tmp211506
                       (let ()
                         (declare (not safe))
                         (struct->list _%type208797%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym208796%_
                   '" "
                   __tmp211506))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table208799%_ _%sym208796%_ _%type208797%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table208799%_
                   _%type208797%_
                   _%sym208796%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym208794%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym208794%_))
        (let ((__tmp211507
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp211507 _%sym208794%_))
        (let ((__tmp211508
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp211508 _%sym208794%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t208762%_
               _%method208763%_
               _%sym208764%_
               _%rebind?208765%_)
        (let ((__tmp211509
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp211509 _%sym208764%_ '#t))
        (let ((_%klass208767%_ (gxc#optimizer-lookup-class _%type-t208762%_)))
          (if _%klass208767%_
              (let* ((_%vtab208769%_ (gxc#!class-method-table _%klass208767%_))
                     (_%$e208771%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab208769%_ _%method208763%_))))
                (if _%$e208771%_
                    (if _%rebind?208765%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose
                             '"declare-method: rebind existing method"
                             _%type-t208762%_
                             '" "
                             _%method208763%_))
                          (let ()
                            (declare (not safe))
                            (hash-put!
                             _%vtab208769%_
                             _%method208763%_
                             _%sym208764%_)))
                        (if (eq? _%$e208771%_ _%sym208764%_)
                            '#!void
                            (let ((__tmp211510
                                   (cons 'bind-method!
                                         (cons _%type-t208762%_
                                               (cons _%method208763%_
                                                     (cons _%sym208764%_
                                                           '()))))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"declare-method: duplicate method declaration"
                               __tmp211510
                               _%method208763%_))))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t208762%_
                         '" "
                         _%method208763%_
                         '" => "
                         _%sym208764%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab208769%_
                         _%method208763%_
                         _%sym208764%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t208762%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t208783%_ _%method208784%_ _%sym208785%_)
        (let ((_%rebind?208787%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t208783%_
           _%method208784%_
           _%sym208785%_
           _%rebind?208787%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g211511_
        (let ((_g211512_ (let () (declare (not safe)) (##length _g211511_))))
          (cond ((let () (declare (not safe)) (##fx= _g211512_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g211511_))
                ((let () (declare (not safe)) (##fx= _g211512_ 4))
                 (apply gxc#optimizer-declare-method!__% _g211511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g211511_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym208748%_)
        (let ((_%$e208750%_
               (let ((__tmp211513
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym208748%_ __tmp211513))))
          (if _%$e208750%_
              _%$e208750%_
              (let ((_%$e208758%_
                     (let ((_%ht208752208754%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht208752208754%_
                           (let ((_%ht208756%_ _%ht208752208754%_))
                             (declare (not safe))
                             (hash-get _%ht208756%_ _%sym208748%_))
                           '#f))))
                (if _%$e208758%_
                    _%$e208758%_
                    (let ((__tmp211514
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp211514 _%sym208748%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym208741%_)
        (let ((_%type208742208744%_ (gxc#optimizer-lookup-type _%sym208741%_)))
          (if _%type208742208744%_
              (let ((_%type208746%_ _%type208742208744%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type208746%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type208746%_ '1 '#f '#f)))
                    _%type208746%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym208737%_)
        (let ((_%table208739%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table208739%_ _%sym208737%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where208722%_ _%sym208723%_)
        (let ((_%$e208726%_ (gxc#optimizer-lookup-class _%sym208723%_)))
          (if _%$e208726%_
              (let ((_%val208733%_ _%$e208726%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%val208733%_ 'gxc#!class::t))
                    _%val208733%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/compiler/optimize-base
                       'contract:
                       '(!class? val)
                       'value:
                       _%val208733%_)
                      '#!void)))
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where208722%_
                   _%sym208723%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass208720%_)
        (let ((__tmp211515
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp211515 _%klass208720%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t208717%_ _%method208718%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t208717%_)
         _%method208718%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym208715%_)
        (let ((__tmp211516
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp211516 _%sym208715%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e208190%_
                  (lambda (_%t208656%_)
                    (if (symbol? _%t208656%_)
                        (_%type-e208190%_
                         (gxc#optimizer-lookup-type _%t208656%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t208656%_
                               'gxc#!lambda::t))
                            (let* ((_%t208660%_ _%t208656%_)
                                   (_%t208664%_ _%t208660%_))
                              (_%__lambda-type208316%_ _%t208664%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t208656%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t208676%_ _%t208656%_)
                                       (_%t208680%_ _%t208676%_))
                                  (_%__kw-lambda-type208439%_ _%t208680%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t208656%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t208691%_ _%t208656%_)
                                           (_%t208695%_ _%t208691%_))
                                      (_%__kw-lambda-primary-type208562%_
                                       _%t208695%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t208656%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t208706%_ _%t208656%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t208706%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp211517
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t208706%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp211517
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t208656%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t208656%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type208316%_
                  (lambda (_%t208644%_)
                    (let ((_%t208647%_ _%t208644%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t208647%_ '4 '#f '#f))
                          (_%type-e208190%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t208647%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t208647%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp211518
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t208647%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp211518
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type208317%_
                  (lambda (_%t208632%_)
                    (let ((_%t208635%_ _%t208632%_))
                      (_%__lambda-type208316%_ _%t208635%_))))
                 (_%__kw-lambda-type208439%_
                  (lambda (_%t208620%_)
                    (let ((_%t208623%_ _%t208620%_))
                      (_%type-e208190%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t208623%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type208440%_
                  (lambda (_%t208608%_)
                    (let ((_%t208611%_ _%t208608%_))
                      (_%__kw-lambda-type208439%_ _%t208611%_))))
                 (_%__kw-lambda-primary-type208562%_
                  (lambda (_%t208596%_)
                    (let ((_%t208599%_ _%t208596%_))
                      (_%type-e208190%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t208599%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type208563%_
                  (lambda (_%t208584%_)
                    (let ((_%t208587%_ _%t208584%_))
                      (_%__kw-lambda-primary-type208562%_ _%t208587%_)))))
          (let* ((_%ht1208565%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2208567%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result208569%_
                  (if _%ht1208565%_
                      (let () (declare (not safe)) (hash->list _%ht1208565%_))
                      '()))
                 (_%result208571%_
                  (if _%ht2208567%_
                      (let ((__tmp211519
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2208567%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result208569%_ __tmp211519))
                      _%result208569%_)))
            (for-each
             (lambda (_%p208574%_)
               (let* ((_%t208576%_ (cdr _%p208574%_))
                      (_%tr208578%_ (_%type-e208190%_ _%t208576%_)))
                 (set-cdr! _%p208574%_ _%tr208578%_)))
             _%result208571%_)
            (list-sort
             (lambda (_%a208581%_ _%b208582%_)
               (let ((__tmp211521 (symbol->string (car _%a208581%_)))
                     (__tmp211520 (symbol->string (car _%b208582%_))))
                 (declare (not safe))
                 (##string<? __tmp211521 __tmp211520)))
             _%result208571%_)))))))
