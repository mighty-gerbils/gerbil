(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1756142921)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp159489 (list)) (__tmp159488 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp159489
         '(type classes ssxi methods)
         __tmp159488
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args159460%_
        (apply make-instance gxc#optimizer-info::t _%$args159460%_)))
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
      (lambda (_%self159447%_)
        (let ((_%self159450%_ _%self159447%_))
          (if (let ((__tmp159490
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self159450%_))))
                (declare (not safe))
                (##fx< '4 __tmp159490))
              (begin
                (let ((__tmp159491
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self159450%_
                   __tmp159491
                   '1
                   '#f
                   '#f))
                (let ((__tmp159492
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self159450%_
                   __tmp159492
                   '2
                   '#f
                   '#f))
                (let ((__tmp159493
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self159450%_
                   __tmp159493
                   '3
                   '#f
                   '#f))
                (let ((__tmp159494
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self159450%_
                   __tmp159494
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp159495
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self159450%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self159450%_
                       '4
                       __tmp159495))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp159497 (list))
            (__tmp159496
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp159497
         '(id)
         __tmp159496
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args159322%_
        (apply make-instance gxc#!type::t _%$args159322%_)))
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
      (let ((__tmp159499 (list gxc#!type::t))
            (__tmp159498 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp159499
         '()
         __tmp159498
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args159319%_
        (apply make-instance gxc#!abort::t _%$args159319%_)))
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
      (let ((__tmp159501 (list gxc#!type::t))
            (__tmp159500 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp159501
         '()
         __tmp159500
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args159316%_
        (apply make-instance gxc#!alias::t _%$args159316%_)))
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
      (let ((__tmp159503 (list))
            (__tmp159502
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp159503
         '(return effect arguments unchecked origin)
         __tmp159502
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args159313%_
        (apply make-instance gxc#!signature::t _%$args159313%_)))
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
      (let ((__tmp159505 (list gxc#!type::t))
            (__tmp159504
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp159505
         '(signature)
         __tmp159504
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
      (lambda (_%id159292%_ _%signature159293%_)
        (if ((lambda (_%$obj159296%_)
               (or (not _%$obj159296%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj159296%_
                      'gxc#!signature::t))))
             _%signature159293%_)
            (let ((_%signature159303%_ _%signature159293%_))
              (gxc#__make-!procedure _%id159292%_ _%signature159303%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature159293%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id159278%_ _%signature159280%_)
        (let ((_%signature159283%_ _%signature159280%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id159278%_ _%signature159283%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj159247%_ _%signature159248%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj159247%_ 'gxc#!procedure::t))
            (let ((_%$obj159252%_ _%$obj159247%_))
              (if ((lambda (_%$obj159261%_)
                     (or (not _%$obj159261%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj159261%_
                            'gxc#!signature::t))))
                   _%signature159248%_)
                  (let ((_%signature159268%_ _%signature159248%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj159252%_
                     _%signature159268%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature159248%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj159247%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj159224%_ _%signature159226%_)
        (let* ((_%$obj159230%_ _%$obj159224%_)
               (_%signature159238%_ _%signature159226%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj159230%_
           _%signature159238%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp159507 (list gxc#!type::t))
            (__tmp159506 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp159507
         '(class)
         __tmp159506
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args159221%_
        (apply make-instance gxc#!class-meta::t _%$args159221%_)))
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
      (let ((__tmp159509 (list gxc#!type::t))
            (__tmp159508
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
         __tmp159509
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp159508
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args159218%_
        (apply make-instance gxc#!class::t _%$args159218%_)))
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
      (let ((__tmp159511 (list gxc#!procedure::t))
            (__tmp159510 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp159511
         '()
         __tmp159510
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args159215%_
        (apply make-instance gxc#!predicate::t _%$args159215%_)))
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
      (let ((__tmp159513 (list gxc#!procedure::t))
            (__tmp159512 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp159513
         '()
         __tmp159512
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args159212%_
        (apply make-instance gxc#!constructor::t _%$args159212%_)))
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
      (let ((__tmp159515 (list gxc#!procedure::t))
            (__tmp159514 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp159515
         '(slot checked?)
         __tmp159514
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args159209%_
        (apply make-instance gxc#!accessor::t _%$args159209%_)))
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
      (let ((__tmp159517 (list gxc#!procedure::t))
            (__tmp159516 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp159517
         '(slot checked?)
         __tmp159516
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args159206%_
        (apply make-instance gxc#!mutator::t _%$args159206%_)))
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
      (let ((__tmp159519 (list gxc#!type::t))
            (__tmp159518 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp159519
         '(methods)
         __tmp159518
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args159203%_
        (apply make-instance gxc#!interface::t _%$args159203%_)))
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
      (let ((__tmp159521 (list gxc#!procedure::t))
            (__tmp159520
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp159521
         '(arity dispatch inline inline-typedecl)
         __tmp159520
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args159200%_
        (apply make-instance gxc#!lambda::t _%$args159200%_)))
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
      (let ((__tmp159523 (list gxc#!procedure::t))
            (__tmp159522 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp159523
         '(clauses)
         __tmp159522
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args159197%_
        (apply make-instance gxc#!case-lambda::t _%$args159197%_)))
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
      (let ((__tmp159525 (list gxc#!procedure::t))
            (__tmp159524
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp159525
         '(table dispatch)
         __tmp159524
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args159194%_
        (apply make-instance gxc#!kw-lambda::t _%$args159194%_)))
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
      (let ((__tmp159527 (list gxc#!procedure::t))
            (__tmp159526 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp159527
         '(keys main)
         __tmp159526
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args159191%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args159191%_)))
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
      (let ((__tmp159528 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp159528
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args159188%_
        (apply make-instance gxc#!primitive::t _%$args159188%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp159530 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp159529 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp159530
         '()
         __tmp159529
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args159185%_
        (apply make-instance gxc#!primitive-predicate::t _%$args159185%_)))
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
      (let ((__tmp159532 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp159531 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp159532
         '()
         __tmp159531
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args159182%_
        (apply make-instance gxc#!primitive-lambda::t _%$args159182%_)))
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
      (let ((__tmp159534 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp159533 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp159534
         '()
         __tmp159533
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args159179%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args159179%_)))
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
      (lambda (_%self159166%_)
        (let ((_%self159169%_ _%self159166%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self159169%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self159029%_ _%klass159030%_)
        (let ((_%self159033%_ _%self159029%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self159033%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159033%_
             _%klass159030%_
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
      (lambda (_%self158719%_
               _%id158720%_
               _%super158721%_
               _%slots158722%_
               _%ctor-method158723%_
               _%struct?158724%_
               _%final?158725%_
               _%system?158726%_
               _%metaclass158727%_)
        (let ((_%self158730%_ _%self158719%_))
          (let _%lp158741%_ ((_%rest158743%_ _%super158721%_))
            (let* ((_%rest158744158752%_ _%rest158743%_)
                   (_%else158746158760%_ (lambda () '#!void))
                   (_%K158748158766%_
                    (lambda (_%rest158763%_ _%super-id158764%_)
                      (if (let ((__tmp159535
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id158720%_ '()))
                                  _%super-id158764%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp159535 '8 '#f '#f))
                          (let ((__tmp159536
                                 (cons '!class (cons _%id158720%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp159536
                             _%super-id158764%_))
                          '#!void)
                      (_%lp158741%_ _%rest158763%_))))
              (if (pair? _%rest158744158752%_)
                  (let ((_%hd158749158769%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest158744158752%_)))
                        (_%tl158750158771%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest158744158752%_))))
                    (let* ((_%super-id158774%_ _%hd158749158769%_)
                           (_%rest158776%_ _%tl158750158771%_))
                      (_%K158748158766%_ _%rest158776%_ _%super-id158774%_)))
                  '#!void)))
          (let* ((_%ctor-method158827%_
                  (let ((_%$e158778%_ _%ctor-method158723%_))
                    (if _%$e158778%_
                        _%$e158778%_
                        (let _%lp158781%_ ((_%rest158783%_ _%super158721%_)
                                           (_%method158784%_ '#f))
                          (let* ((_%rest158785158793%_ _%rest158783%_)
                                 (_%else158787158801%_
                                  (lambda () _%method158784%_))
                                 (_%K158789158815%_
                                  (lambda (_%rest158804%_ _%super-id158805%_)
                                    (let* ((_%klass158807%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id158720%_ '()))
                                             _%super-id158805%_))
                                           (_%$e158809%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass158807%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e158809%_
                                          ((lambda (_%ctor-method158812%_)
                                             (if _%method158784%_
                                                 (if (eq? _%ctor-method158812%_
                                                          _%method158784%_)
                                                     (_%lp158781%_
                                                      _%rest158804%_
                                                      _%ctor-method158812%_)
                                                     (let ((__tmp159537
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id158720%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp159537
                _%method158784%_
                _%ctor-method158812%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp158781%_
                                                  _%rest158804%_
                                                  _%ctor-method158812%_)))
                                           _%$e158809%_)
                                          (_%lp158781%_
                                           _%rest158804%_
                                           _%method158784%_))))))
                            (if (pair? _%rest158785158793%_)
                                (let ((_%hd158790158818%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest158785158793%_)))
                                      (_%tl158791158820%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest158785158793%_))))
                                  (let* ((_%super-id158823%_
                                          _%hd158790158818%_)
                                         (_%rest158825%_ _%tl158791158820%_))
                                    (_%K158789158815%_
                                     _%rest158825%_
                                     _%super-id158823%_)))
                                (_%else158787158801%_)))))))
                 (_g159538_
                  (let ((__tmp159542
                         (lambda (_%klass-id158829%_)
                           (cons _%klass-id158829%_
                                 (let ((__tmp159543
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id158720%_ '()))
                                         _%klass-id158829%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp159543
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp159540
                         (lambda (_%klass-id158831%_)
                           (let ((__tmp159541
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id158720%_ '()))
                                   _%klass-id158831%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp159541
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp159542
                     __tmp159540
                     eq?
                     identity
                     '()
                     _%super158721%_))))
            (begin
              (let ((_g159539_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g159538_)
                           (##values-length _g159538_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g159539_ 2)))
                    (error "Context expects 2 values" _g159539_)))
              (let ((_%precedence-list158833%_
                     (let () (declare (not safe)) (##values-ref _g159538_ 0)))
                    (_%base-struct158834%_
                     (let () (declare (not safe)) (##values-ref _g159538_ 1))))
                (let* ((_%precedence-list158878%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id158720%_ '(t object class)))
                            _%precedence-list158833%_
                            (if (memq 'object::t _%precedence-list158833%_)
                                _%precedence-list158833%_
                                (if _%system?158726%_
                                    (if (memq 't::t _%precedence-list158833%_)
                                        _%precedence-list158833%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list158833%_
                                           '(t::t))))
                                    (let _%loop158840%_ ((_%tail158842%_
                                                          _%precedence-list158833%_)
                                                         (_%head158843%_ '()))
                                      (let* ((_%tail158844158852%_
                                              _%tail158842%_)
                                             (_%else158846158860%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head158843%_))))
                                             (_%K158848158866%_
                                              (lambda (_%rest158863%_
                                                       _%hd158864%_)
                                                (if (eq? _%hd158864%_ 't::t)
                                                    (let ((__tmp159544
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail158842%_)))
              (declare (not safe))
              (__foldl1 cons __tmp159544 _%head158843%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop158840%_
                                                     _%rest158863%_
                                                     (cons _%hd158864%_
                                                           _%head158843%_))))))
                                        (if (pair? _%tail158844158852%_)
                                            (let ((_%hd158849158869%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail158844158852%_)))
                                                  (_%tl158850158871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail158844158852%_))))
                                              (let* ((_%hd158874%_
                                                      _%hd158849158869%_)
                                                     (_%rest158876%_
                                                      _%tl158850158871%_))
                                                (_%K158848158866%_
                                                 _%rest158876%_
                                                 _%hd158874%_)))
                                            (_%else158846158860%_))))))))
                       (_%fields158880%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id158720%_ '()))
                         _%base-struct158834%_
                         _%precedence-list158878%_
                         _%slots158722%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self158730%_
                     _%id158720%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self158730%_
                     _%super158721%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self158730%_
                     _%precedence-list158878%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self158730%_
                     _%slots158722%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self158730%_
                     _%fields158880%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self158730%_
                     _%ctor-method158827%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self158730%_
                     _%struct?158724%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self158730%_
                     _%final?158725%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self158730%_
                     _%metaclass158727%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self158883%_
               _%id158884%_
               _%super158885%_
               _%precedence-list158886%_
               _%slots158887%_
               _%fields158888%_
               _%constructor158889%_
               _%struct?158890%_
               _%final?158891%_
               _%system?158892%_
               _%metaclass158893%_
               _%methods158894%_)
        (let ((_%self158897%_ _%self158883%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158897%_
             _%id158884%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158897%_
             _%super158885%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158897%_
             _%precedence-list158886%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158897%_
             _%slots158887%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158897%_
             _%fields158888%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158897%_
             _%constructor158889%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158897%_
             _%struct?158890%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158897%_
             _%final?158891%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158897%_
             _%metaclass158893%_
             '10
             '#f
             '#f))
          (if _%methods158894%_
              (let ((__tmp159545
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods158894%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self158897%_
                 __tmp159545
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g159546_
        (let ((_g159547_ (let () (declare (not safe)) (##length _g159546_))))
          (cond ((let () (declare (not safe)) (##fx= _g159547_ 9))
                 (apply gxc#!class:::init!__0 _g159546_))
                ((let () (declare (not safe)) (##fx= _g159547_ 12))
                 (apply gxc#!class:::init!__1 _g159546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g159546_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where158571%_
               _%base-struct158572%_
               _%precedence-list158573%_
               _%direct-slots158574%_)
        (let* ((_%base-fields158576%_
                (if _%base-struct158572%_
                    (let ((__tmp159548
                           (gxc#optimizer-resolve-class
                            _%where158571%_
                            _%base-struct158572%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp159548 '5 '#f '#f))
                    '()))
               (_%r-fields158578%_ (reverse _%base-fields158576%_))
               (_%seen-slots158586%_
                (let ((_%tab158580%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g158581158583%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab158580%_ _%g158581158583%_ '#t)))
                   _%base-fields158576%_)
                  _%tab158580%_))
               (_%process-slot158590%_
                (lambda (_%slot158588%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots158586%_ _%slot158588%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots158586%_
                           _%slot158588%_
                           '#t))
                        (set! _%r-fields158578%_
                              (cons _%slot158588%_ _%r-fields158578%_)))))))
          (for-each
           (lambda (_%mixin158593%_)
             (let ((_%klass158595%_
                    (gxc#optimizer-resolve-class
                     _%where158571%_
                     _%mixin158593%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass158595%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot158590%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass158595%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list158573%_)
          (for-each _%process-slot158590%_ _%direct-slots158574%_)
          (let () (declare (not safe)) (##reverse _%r-fields158578%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass158530%_ _%slot158531%_)
        (let _%lp158533%_ ((_%rest158535%_
                            (##structure-ref
                             _%klass158530%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset158536%_ '1))
          (let* ((_%rest158537158545%_ _%rest158535%_)
                 (_%else158539158553%_
                  (lambda ()
                    (let ((__tmp159550
                           (##structure-ref
                            _%klass158530%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp159549
                           (##structure-ref
                            _%klass158530%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp159550
                       __tmp159549
                       _%slot158531%_))))
                 (_%K158541158559%_
                  (lambda (_%rest158556%_ _%s158557%_)
                    (if (eq? _%s158557%_ _%slot158531%_)
                        _%offset158536%_
                        (_%lp158533%_
                         _%rest158556%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset158536%_ '1)))))))
            (if (pair? _%rest158537158545%_)
                (let ((_%hd158542158562%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest158537158545%_)))
                      (_%tl158543158564%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest158537158545%_))))
                  (let* ((_%s158567%_ _%hd158542158562%_)
                         (_%rest158569%_ _%tl158543158564%_))
                    (_%K158541158559%_ _%rest158569%_ _%s158567%_)))
                (_%else158539158553%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass158488%_ _%slot158489%_)
        (if (gxc#!class-struct-slot? _%klass158488%_ _%slot158489%_)
            _%klass158488%_
            (let _%lp158491%_ ((_%rest158493%_
                                (##structure-ref
                                 _%klass158488%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest158494158502%_ _%rest158493%_)
                     (_%else158496158510%_ (lambda () '#f))
                     (_%K158498158518%_
                      (lambda (_%rest158513%_ _%super158514%_)
                        (let ((_%super-class158516%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass158488%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot158489%_ '())))
                                _%super158514%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class158516%_
                               _%slot158489%_)
                              _%super-class158516%_
                              (_%lp158491%_ _%rest158513%_))))))
                (if (pair? _%rest158494158502%_)
                    (let ((_%hd158499158521%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest158494158502%_)))
                          (_%tl158500158523%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest158494158502%_))))
                      (let* ((_%super158526%_ _%hd158499158521%_)
                             (_%rest158528%_ _%tl158500158523%_))
                        (_%K158498158518%_ _%rest158528%_ _%super158526%_)))
                    (_%else158496158510%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass158485%_ _%slot158486%_)
        (if (##structure-ref _%klass158485%_ '7 gxc#!class::t '#f)
            (memq _%slot158486%_
                  (##structure-ref _%klass158485%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self158470%_ _%id158471%_)
        (let ((_%self158474%_ _%self158470%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158474%_
             _%id158471%_
             '1
             '#f
             '#f))
          (let ((__tmp159551
                 (let ((__obj159483
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
                      __obj159483
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj159483
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj159483
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj159483)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158474%_
             __tmp159551
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self158333%_ _%id158334%_)
        (let ((_%self158337%_ _%self158333%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158337%_
             _%id158334%_
             '1
             '#f
             '#f))
          (let ((__tmp159552
                 (let ((__obj159484
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
                      __obj159484
                      _%id158334%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj159484
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj159484)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158337%_
             __tmp159552
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
      (lambda (_%self158194%_ _%id158195%_ _%slot158196%_ _%checked?158197%_)
        (let ((_%self158200%_ _%self158194%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158200%_
             _%id158195%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158200%_
             _%slot158196%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158200%_
             _%checked?158197%_
             '4
             '#f
             '#f))
          (let ((__tmp159553
                 (let ((__obj159485
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
                     (##unchecked-structure-set! __obj159485 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj159485
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp159554 (cons _%id158195%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj159485
                      __tmp159554
                      '3
                      '#f
                      '#f))
                   __obj159485)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158200%_
             __tmp159553
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self158055%_ _%id158056%_ _%slot158057%_ _%checked?158058%_)
        (let ((_%self158061%_ _%self158055%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158061%_
             _%id158056%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158061%_
             _%slot158057%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158061%_
             _%checked?158058%_
             '4
             '#f
             '#f))
          (let ((__tmp159555
                 (let ((__obj159486
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
                      __obj159486
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj159486
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp159556 (cons _%id158056%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj159486
                      __tmp159556
                      '3
                      '#f
                      '#f))
                   __obj159486)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158061%_
             __tmp159555
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords157898%_
               _%signature157895157899%_
               _%self157901%_
               _%arity157902%_
               _%dispatch157903%_)
        (let* ((_%signature157905%_
                (if (eq? _%signature157895157899%_ absent-value)
                    '#f
                    _%signature157895157899%_))
               (_%self157908%_ _%self157901%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self157908%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self157908%_
             _%arity157902%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self157908%_
             _%dispatch157903%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self157908%_
             _%signature157905%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords157923%_ . _%args157924%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords157923%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords157923%_
                  'signature:
                  absent-value))
               _%args157924%_)))
    (define gxc#!lambda:::init!
      (lambda _%args157896157930%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args157896157930%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords157738%_
               _%signature157735157739%_
               _%self157741%_
               _%clauses157742%_)
        (let* ((_%signature157744%_
                (if (eq? _%signature157735157739%_ absent-value)
                    '#f
                    _%signature157735157739%_))
               (_%self157747%_ _%self157741%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self157747%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self157747%_
             _%signature157744%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self157747%_
             _%clauses157742%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords157762%_ . _%args157763%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords157762%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords157762%_
                  'signature:
                  absent-value))
               _%args157763%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args157736157769%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args157736157769%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self157596%_ _%tab157597%_ _%dispatch157598%_)
        (let ((_%self157601%_ _%self157596%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self157601%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self157601%_
             _%tab157597%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self157601%_
             _%dispatch157598%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self157458%_ _%keys157459%_ _%main157460%_)
        (let ((_%self157463%_ _%self157458%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self157463%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self157463%_
             _%keys157459%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self157463%_
             _%main157460%_
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
      (lambda (_%self157077%_ _%id157078%_)
        (let ((_%self157081%_ _%self157077%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self157081%_
             _%id157078%_
             '1
             '#f
             '#f))
          (let ((__tmp159557
                 (let ((__obj159487
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
                      __obj159487
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj159487
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj159487
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj159487)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self157081%_
             __tmp159557
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
      (lambda (_%klass156946%_)
        (let ((_%$e156948%_
               (##structure-ref _%klass156946%_ '11 gxc#!class::t '#f)))
          (if _%$e156948%_
              _%$e156948%_
              (let ((_%tab156952%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass156946%_
                 _%tab156952%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab156952%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass156937%_ _%method156938%_)
        (let ((_%tab156939156941%_
               (##structure-ref _%klass156937%_ '11 gxc#!class::t '#f)))
          (if _%tab156939156941%_
              (let ((_%tab156944%_ _%tab156939156941%_))
                (declare (not safe))
                (hash-get _%tab156944%_ _%method156938%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a156925%_ _%type-b156926%_)
        (if _%type-a156925%_
            (if _%type-b156926%_
                (let ((_%$e156928%_ (eq? _%type-a156925%_ _%type-b156926%_)))
                  (if _%$e156928%_
                      _%$e156928%_
                      (let ((_%$e156931%_
                             (eq? (##structure-ref
                                   _%type-b156926%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e156931%_
                            _%$e156931%_
                            (let ((_%$e156934%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a156925%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b156926%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e156934%_
                                  _%$e156934%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a156925%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b156926%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a156925%_
                                           _%type-b156926%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a156876%_ _%klass-b156877%_)
        (let ((_%$e156879%_
               (eq? (##structure-ref _%klass-a156876%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b156877%_ '1 gxc#!type::t '#f))))
          (if _%$e156879%_
              _%$e156879%_
              (let ((_%klass-id-b156882%_
                     (##structure-ref _%klass-b156877%_ '1 gxc#!type::t '#f))
                    (_%precedence-list156883%_
                     (##structure-ref _%klass-a156876%_ '3 gxc#!class::t '#f)))
                (let _%loop156885%_ ((_%rest156887%_
                                      _%precedence-list156883%_))
                  (let* ((_%rest156888156896%_ _%rest156887%_)
                         (_%else156890156904%_ (lambda () '#f))
                         (_%K156892156913%_
                          (lambda (_%rest156907%_ _%klass-name156908%_)
                            (let ((_%$e156910%_
                                   (eq? (let ((__tmp159558
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a156876%_
                                                            (cons _%klass-b156877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name156908%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp159558
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b156882%_)))
                              (if _%$e156910%_
                                  _%$e156910%_
                                  (_%loop156885%_ _%rest156907%_))))))
                    (if (pair? _%rest156888156896%_)
                        (let ((_%hd156893156916%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest156888156896%_)))
                              (_%tl156894156918%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest156888156896%_))))
                          (let* ((_%klass-name156921%_ _%hd156893156916%_)
                                 (_%rest156923%_ _%tl156894156918%_))
                            (_%K156892156913%_
                             _%rest156923%_
                             _%klass-name156921%_)))
                        (_%else156890156904%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type156874%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type156874%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type156874%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc156863%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc156863%_ 'gxc#!procedure::t))
            (let ((_%proc156866%_ _%proc156863%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc156866%_ '2 '#f '#f))
                  (let ((__tmp159559
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc156866%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp159559 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc156863%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym156845%_ _%type156846%_ _%local?156847%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type156846%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym156845%_
                     _%type156846%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym156845%_ '" " _%type156846%_))
        (let ((_%table156849%_
               (if _%local?156847%_
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
          (hash-put! _%table156849%_ _%sym156845%_ _%type156846%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym156854%_ _%type156855%_)
        (let ((_%local?156857%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym156854%_
           _%type156855%_
           _%local?156857%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g159560_
        (let ((_g159561_ (let () (declare (not safe)) (##length _g159560_))))
          (cond ((let () (declare (not safe)) (##fx= _g159561_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g159560_))
                ((let () (declare (not safe)) (##fx= _g159561_ 3))
                 (apply gxc#optimizer-declare-type!__% _g159560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g159560_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym156839%_ _%type156840%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type156840%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym156839%_
                     _%type156840%_)))
        (let ((_%table156842%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp159562
                 (let () (declare (not safe)) (struct->list _%type156840%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym156839%_ '" " __tmp159562))
          (let ()
            (declare (not safe))
            (hash-put! _%table156842%_ _%sym156839%_ _%type156840%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table156842%_ _%type156840%_ _%sym156839%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym156834%_ _%type156835%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type156835%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym156834%_
                     _%type156835%_)))
        (let ((_%table156837%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table156837%_ _%sym156834%_))
              '#!void
              (begin
                (let ((__tmp159563
                       (let ()
                         (declare (not safe))
                         (struct->list _%type156835%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym156834%_
                   '" "
                   __tmp159563))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table156837%_ _%sym156834%_ _%type156835%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table156837%_
                   _%type156835%_
                   _%sym156834%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym156832%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym156832%_))
        (let ((__tmp159564
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp159564 _%sym156832%_))
        (let ((__tmp159565
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp159565 _%sym156832%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t156800%_
               _%method156801%_
               _%sym156802%_
               _%rebind?156803%_)
        (let ((__tmp159566
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp159566 _%sym156802%_ '#t))
        (let ((_%klass156805%_ (gxc#optimizer-lookup-class _%type-t156800%_)))
          (if _%klass156805%_
              (let* ((_%vtab156807%_ (gxc#!class-method-table _%klass156805%_))
                     (_%$e156809%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab156807%_ _%method156801%_))))
                (if _%$e156809%_
                    ((lambda (_%existing156812%_)
                       (if _%rebind?156803%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t156800%_
                                '" "
                                _%method156801%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab156807%_
                                _%method156801%_
                                _%sym156802%_)))
                           (if (eq? _%existing156812%_ _%sym156802%_)
                               '#!void
                               (let ((__tmp159567
                                      (cons 'bind-method!
                                            (cons _%type-t156800%_
                                                  (cons _%method156801%_
                                                        (cons _%sym156802%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp159567
                                  _%method156801%_)))))
                     _%$e156809%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t156800%_
                         '" "
                         _%method156801%_
                         '" => "
                         _%sym156802%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab156807%_
                         _%method156801%_
                         _%sym156802%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t156800%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t156821%_ _%method156822%_ _%sym156823%_)
        (let ((_%rebind?156825%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t156821%_
           _%method156822%_
           _%sym156823%_
           _%rebind?156825%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g159568_
        (let ((_g159569_ (let () (declare (not safe)) (##length _g159568_))))
          (cond ((let () (declare (not safe)) (##fx= _g159569_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g159568_))
                ((let () (declare (not safe)) (##fx= _g159569_ 4))
                 (apply gxc#optimizer-declare-method!__% _g159568_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g159568_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym156785%_)
        (let ((_%$e156787%_
               (let ((__tmp159570
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym156785%_ __tmp159570))))
          (if _%$e156787%_
              _%$e156787%_
              (let ((_%$e156796%_
                     (let ((_%ht156789156791%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht156789156791%_
                           (let ((_%ht156794%_ _%ht156789156791%_))
                             (declare (not safe))
                             (hash-get _%ht156794%_ _%sym156785%_))
                           '#f))))
                (if _%$e156796%_
                    _%$e156796%_
                    (let ((__tmp159571
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp159571 _%sym156785%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym156777%_)
        (let ((_%type156778156780%_ (gxc#optimizer-lookup-type _%sym156777%_)))
          (if _%type156778156780%_
              (let ((_%type156783%_ _%type156778156780%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type156783%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type156783%_ '1 '#f '#f)))
                    _%type156783%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym156773%_)
        (let ((_%table156775%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table156775%_ _%sym156773%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where156758%_ _%sym156759%_)
        (let ((_%$e156762%_ (gxc#optimizer-lookup-class _%sym156759%_)))
          (if _%$e156762%_
              ((lambda (_%g156764156766%_)
                 (let ((_%val156769%_ _%g156764156766%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val156769%_
                          'gxc#!class::t))
                       _%val156769%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val156769%_)))))
               _%$e156762%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where156758%_
                   _%sym156759%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass156756%_)
        (let ((__tmp159572
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp159572 _%klass156756%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t156753%_ _%method156754%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t156753%_)
         _%method156754%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym156751%_)
        (let ((__tmp159573
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp159573 _%sym156751%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e156633%_
                  (lambda (_%t156734%_)
                    (if (symbol? _%t156734%_)
                        (_%type-e156633%_
                         (gxc#optimizer-lookup-type _%t156734%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t156734%_
                               'gxc#!lambda::t))
                            (_%__lambda-type156635%_ _%t156734%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t156734%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type156637%_ _%t156734%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t156734%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type156639%_
                                     _%t156734%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t156734%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t156741%_ _%t156734%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t156741%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp159574
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t156741%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp159574
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t156734%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t156734%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type156634%_
                  (lambda (_%t156722%_)
                    (let ((_%t156725%_ _%t156722%_))
                      (_%__lambda-type156635%_ _%t156725%_))))
                 (_%__lambda-type156635%_
                  (lambda (_%t156710%_)
                    (let ((_%t156713%_ _%t156710%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t156713%_ '4 '#f '#f))
                          (_%type-e156633%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t156713%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t156713%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp159575
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t156713%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp159575
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type156636%_
                  (lambda (_%t156698%_)
                    (let ((_%t156701%_ _%t156698%_))
                      (_%__kw-lambda-type156637%_ _%t156701%_))))
                 (_%__kw-lambda-type156637%_
                  (lambda (_%t156686%_)
                    (let ((_%t156689%_ _%t156686%_))
                      (_%type-e156633%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t156689%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type156638%_
                  (lambda (_%t156674%_)
                    (let ((_%t156677%_ _%t156674%_))
                      (_%__kw-lambda-primary-type156639%_ _%t156677%_))))
                 (_%__kw-lambda-primary-type156639%_
                  (lambda (_%t156660%_)
                    (let ((_%t156663%_ _%t156660%_))
                      (_%type-e156633%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t156663%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1156641%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2156643%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result156645%_
                  (if _%ht1156641%_
                      (let () (declare (not safe)) (hash->list _%ht1156641%_))
                      '()))
                 (_%result156647%_
                  (if _%ht2156643%_
                      (let ((__tmp159576
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2156643%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result156645%_ __tmp159576))
                      _%result156645%_)))
            (for-each
             (lambda (_%p156650%_)
               (let* ((_%t156652%_ (cdr _%p156650%_))
                      (_%tr156654%_ (_%type-e156633%_ _%t156652%_)))
                 (set-cdr! _%p156650%_ _%tr156654%_)))
             _%result156647%_)
            (list-sort
             (lambda (_%a156657%_ _%b156658%_)
               (let ((__tmp159578 (symbol->string (car _%a156657%_)))
                     (__tmp159577 (symbol->string (car _%b156658%_))))
                 (declare (not safe))
                 (##string<? __tmp159578 __tmp159577)))
             _%result156647%_)))))))
