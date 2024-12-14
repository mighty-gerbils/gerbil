(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1734215271)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp152508 (list)) (__tmp152507 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp152508
         '(type classes ssxi methods)
         __tmp152507
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args152479%_
        (apply make-instance gxc#optimizer-info::t _%$args152479%_)))
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
      (lambda (_%self149620152464%_)
        (let* ((_%self152467%_ _%self149620152464%_)
               (_%self152469%_ _%self152467%_))
          (if (let ((__tmp152509
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self152469%_))))
                (declare (not safe))
                (##fx< '4 __tmp152509))
              (begin
                (let ((__tmp152510
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152469%_
                   __tmp152510
                   '1
                   '#f
                   '#f))
                (let ((__tmp152511
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152469%_
                   __tmp152511
                   '2
                   '#f
                   '#f))
                (let ((__tmp152512
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152469%_
                   __tmp152512
                   '3
                   '#f
                   '#f))
                (let ((__tmp152513
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152469%_
                   __tmp152513
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp152514
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self152469%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self152469%_
                       '4
                       __tmp152514))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp152516 (list))
            (__tmp152515
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp152516
         '(id)
         __tmp152515
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args152339%_
        (apply make-instance gxc#!type::t _%$args152339%_)))
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
      (let ((__tmp152518 (list gxc#!type::t))
            (__tmp152517 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp152518
         '()
         __tmp152517
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args152336%_
        (apply make-instance gxc#!abort::t _%$args152336%_)))
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
      (let ((__tmp152520 (list gxc#!type::t))
            (__tmp152519 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp152520
         '()
         __tmp152519
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args152333%_
        (apply make-instance gxc#!alias::t _%$args152333%_)))
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
      (let ((__tmp152522 (list))
            (__tmp152521
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp152522
         '(return effect arguments unchecked origin)
         __tmp152521
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args152330%_
        (apply make-instance gxc#!signature::t _%$args152330%_)))
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
      (let ((__tmp152524 (list gxc#!type::t))
            (__tmp152523
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp152524
         '(signature)
         __tmp152523
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
      (lambda (_%id152309%_ _%signature152310%_)
        (if ((lambda (_%$obj152313%_)
               (or (not _%$obj152313%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj152313%_
                      'gxc#!signature::t))))
             _%signature152310%_)
            (let ((_%signature152320%_ _%signature152310%_))
              (gxc#__make-!procedure _%id152309%_ _%signature152320%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature152310%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id152295%_ _%signature152297%_)
        (let ((_%signature152300%_ _%signature152297%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id152295%_ _%signature152300%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj152264%_ _%signature152265%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj152264%_ 'gxc#!procedure::t))
            (let ((_%$obj152269%_ _%$obj152264%_))
              (if ((lambda (_%$obj152278%_)
                     (or (not _%$obj152278%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj152278%_
                            'gxc#!signature::t))))
                   _%signature152265%_)
                  (let ((_%signature152285%_ _%signature152265%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj152269%_
                     _%signature152285%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature152265%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj152264%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj152241%_ _%signature152243%_)
        (let* ((_%$obj152247%_ _%$obj152241%_)
               (_%signature152255%_ _%signature152243%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj152247%_
           _%signature152255%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp152526 (list gxc#!type::t))
            (__tmp152525 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp152526
         '(class)
         __tmp152525
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args152238%_
        (apply make-instance gxc#!class-meta::t _%$args152238%_)))
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
      (let ((__tmp152528 (list gxc#!type::t))
            (__tmp152527
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
         __tmp152528
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp152527
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args152235%_
        (apply make-instance gxc#!class::t _%$args152235%_)))
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
      (let ((__tmp152530 (list gxc#!procedure::t))
            (__tmp152529 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp152530
         '()
         __tmp152529
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args152232%_
        (apply make-instance gxc#!predicate::t _%$args152232%_)))
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
      (let ((__tmp152532 (list gxc#!procedure::t))
            (__tmp152531 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp152532
         '()
         __tmp152531
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args152229%_
        (apply make-instance gxc#!constructor::t _%$args152229%_)))
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
      (let ((__tmp152534 (list gxc#!procedure::t))
            (__tmp152533 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp152534
         '(slot checked?)
         __tmp152533
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args152226%_
        (apply make-instance gxc#!accessor::t _%$args152226%_)))
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
      (let ((__tmp152536 (list gxc#!procedure::t))
            (__tmp152535 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp152536
         '(slot checked?)
         __tmp152535
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args152223%_
        (apply make-instance gxc#!mutator::t _%$args152223%_)))
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
      (let ((__tmp152538 (list gxc#!type::t))
            (__tmp152537 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp152538
         '(methods)
         __tmp152537
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args152220%_
        (apply make-instance gxc#!interface::t _%$args152220%_)))
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
      (let ((__tmp152540 (list gxc#!procedure::t))
            (__tmp152539
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp152540
         '(arity dispatch inline inline-typedecl)
         __tmp152539
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args152217%_
        (apply make-instance gxc#!lambda::t _%$args152217%_)))
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
      (let ((__tmp152542 (list gxc#!procedure::t))
            (__tmp152541 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp152542
         '(clauses)
         __tmp152541
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args152214%_
        (apply make-instance gxc#!case-lambda::t _%$args152214%_)))
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
      (let ((__tmp152544 (list gxc#!procedure::t))
            (__tmp152543
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp152544
         '(table dispatch)
         __tmp152543
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args152211%_
        (apply make-instance gxc#!kw-lambda::t _%$args152211%_)))
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
      (let ((__tmp152546 (list gxc#!procedure::t))
            (__tmp152545 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp152546
         '(keys main)
         __tmp152545
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args152208%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args152208%_)))
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
      (let ((__tmp152547 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp152547
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args152205%_
        (apply make-instance gxc#!primitive::t _%$args152205%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp152549 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp152548 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp152549
         '()
         __tmp152548
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args152202%_
        (apply make-instance gxc#!primitive-predicate::t _%$args152202%_)))
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
      (let ((__tmp152551 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp152550 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp152551
         '()
         __tmp152550
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args152199%_
        (apply make-instance gxc#!primitive-lambda::t _%$args152199%_)))
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
      (let ((__tmp152553 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp152552 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp152553
         '()
         __tmp152552
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args152196%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args152196%_)))
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
      (lambda (_%self149621152181%_)
        (let* ((_%self152184%_ _%self149621152181%_)
               (_%self152186%_ _%self152184%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self152186%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self149622152043%_ _%klass152045%_)
        (let* ((_%self152047%_ _%self149622152043%_)
               (_%self152049%_ _%self152047%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self152049%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152049%_
             _%klass152045%_
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
      (lambda (_%self149623151731%_
               _%id151733%_
               _%super151734%_
               _%slots151735%_
               _%ctor-method151736%_
               _%struct?151737%_
               _%final?151738%_
               _%system?151739%_
               _%metaclass151740%_)
        (let* ((_%self151742%_ _%self149623151731%_)
               (_%self151744%_ _%self151742%_))
          (let _%lp151754%_ ((_%rest151756%_ _%super151734%_))
            (let* ((_%rest151757151765%_ _%rest151756%_)
                   (_%else151759151773%_ (lambda () '#!void))
                   (_%K151761151779%_
                    (lambda (_%rest151776%_ _%super-id151777%_)
                      (if (let ((__tmp152554
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id151733%_ '()))
                                  _%super-id151777%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp152554 '8 '#f '#f))
                          (let ((__tmp152555
                                 (cons '!class (cons _%id151733%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp152555
                             _%super-id151777%_))
                          '#!void)
                      (_%lp151754%_ _%rest151776%_))))
              (if (pair? _%rest151757151765%_)
                  (let ((_%hd151762151782%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest151757151765%_)))
                        (_%tl151763151784%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest151757151765%_))))
                    (let* ((_%super-id151787%_ _%hd151762151782%_)
                           (_%rest151789%_ _%tl151763151784%_))
                      (_%K151761151779%_ _%rest151789%_ _%super-id151787%_)))
                  '#!void)))
          (let* ((_%ctor-method151840%_
                  (let ((_%$e151791%_ _%ctor-method151736%_))
                    (if _%$e151791%_
                        _%$e151791%_
                        (let _%lp151794%_ ((_%rest151796%_ _%super151734%_)
                                           (_%method151797%_ '#f))
                          (let* ((_%rest151798151806%_ _%rest151796%_)
                                 (_%else151800151814%_
                                  (lambda () _%method151797%_))
                                 (_%K151802151828%_
                                  (lambda (_%rest151817%_ _%super-id151818%_)
                                    (let* ((_%klass151820%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id151733%_ '()))
                                             _%super-id151818%_))
                                           (_%$e151822%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass151820%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e151822%_
                                          ((lambda (_%ctor-method151825%_)
                                             (if _%method151797%_
                                                 (if (eq? _%ctor-method151825%_
                                                          _%method151797%_)
                                                     (_%lp151794%_
                                                      _%rest151817%_
                                                      _%ctor-method151825%_)
                                                     (let ((__tmp152556
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id151733%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp152556
                _%method151797%_
                _%ctor-method151825%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp151794%_
                                                  _%rest151817%_
                                                  _%ctor-method151825%_)))
                                           _%$e151822%_)
                                          (_%lp151794%_
                                           _%rest151817%_
                                           _%method151797%_))))))
                            (if (pair? _%rest151798151806%_)
                                (let ((_%hd151803151831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest151798151806%_)))
                                      (_%tl151804151833%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest151798151806%_))))
                                  (let* ((_%super-id151836%_
                                          _%hd151803151831%_)
                                         (_%rest151838%_ _%tl151804151833%_))
                                    (_%K151802151828%_
                                     _%rest151838%_
                                     _%super-id151836%_)))
                                (_%else151800151814%_)))))))
                 (_g152557_
                  (let ((__tmp152561
                         (lambda (_%klass-id151842%_)
                           (cons _%klass-id151842%_
                                 (let ((__tmp152562
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id151733%_ '()))
                                         _%klass-id151842%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp152562
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp152559
                         (lambda (_%klass-id151844%_)
                           (let ((__tmp152560
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id151733%_ '()))
                                   _%klass-id151844%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp152560
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp152561
                     __tmp152559
                     eq?
                     identity
                     '()
                     _%super151734%_))))
            (begin
              (let ((_g152558_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g152557_)
                           (##values-length _g152557_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g152558_ 2)))
                    (error "Context expects 2 values" _g152558_)))
              (let ((_%precedence-list151846%_
                     (let () (declare (not safe)) (##values-ref _g152557_ 0)))
                    (_%base-struct151847%_
                     (let () (declare (not safe)) (##values-ref _g152557_ 1))))
                (let* ((_%precedence-list151891%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id151733%_ '(t object class)))
                            _%precedence-list151846%_
                            (if (memq 'object::t _%precedence-list151846%_)
                                _%precedence-list151846%_
                                (if _%system?151739%_
                                    (if (memq 't::t _%precedence-list151846%_)
                                        _%precedence-list151846%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list151846%_
                                           '(t::t))))
                                    (let _%loop151853%_ ((_%tail151855%_
                                                          _%precedence-list151846%_)
                                                         (_%head151856%_ '()))
                                      (let* ((_%tail151857151865%_
                                              _%tail151855%_)
                                             (_%else151859151873%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head151856%_))))
                                             (_%K151861151879%_
                                              (lambda (_%rest151876%_
                                                       _%hd151877%_)
                                                (if (eq? _%hd151877%_ 't::t)
                                                    (let ((__tmp152563
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail151855%_)))
              (declare (not safe))
              (__foldl1 cons __tmp152563 _%head151856%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop151853%_
                                                     _%rest151876%_
                                                     (cons _%hd151877%_
                                                           _%head151856%_))))))
                                        (if (pair? _%tail151857151865%_)
                                            (let ((_%hd151862151882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail151857151865%_)))
                                                  (_%tl151863151884%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail151857151865%_))))
                                              (let* ((_%hd151887%_
                                                      _%hd151862151882%_)
                                                     (_%rest151889%_
                                                      _%tl151863151884%_))
                                                (_%K151861151879%_
                                                 _%rest151889%_
                                                 _%hd151887%_)))
                                            (_%else151859151873%_))))))))
                       (_%fields151893%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id151733%_ '()))
                         _%base-struct151847%_
                         _%precedence-list151891%_
                         _%slots151735%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151744%_
                     _%id151733%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151744%_
                     _%super151734%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151744%_
                     _%precedence-list151891%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151744%_
                     _%slots151735%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151744%_
                     _%fields151893%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151744%_
                     _%ctor-method151840%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151744%_
                     _%struct?151737%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151744%_
                     _%final?151738%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151744%_
                     _%metaclass151740%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self149624151896%_
               _%id151898%_
               _%super151899%_
               _%precedence-list151900%_
               _%slots151901%_
               _%fields151902%_
               _%constructor151903%_
               _%struct?151904%_
               _%final?151905%_
               _%system?151906%_
               _%metaclass151907%_
               _%methods151908%_)
        (let* ((_%self151910%_ _%self149624151896%_)
               (_%self151912%_ _%self151910%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151912%_
             _%id151898%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151912%_
             _%super151899%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151912%_
             _%precedence-list151900%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151912%_
             _%slots151901%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151912%_
             _%fields151902%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151912%_
             _%constructor151903%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151912%_
             _%struct?151904%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151912%_
             _%final?151905%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151912%_
             _%metaclass151907%_
             '10
             '#f
             '#f))
          (if _%methods151908%_
              (let ((__tmp152564
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods151908%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self151912%_
                 __tmp152564
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g152566_
        (let ((_g152565_ (let () (declare (not safe)) (##length _g152566_))))
          (cond ((let () (declare (not safe)) (##fx= _g152565_ 9))
                 (apply gxc#!class:::init!__0 _g152566_))
                ((let () (declare (not safe)) (##fx= _g152565_ 12))
                 (apply gxc#!class:::init!__1 _g152566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g152566_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where151583%_
               _%base-struct151584%_
               _%precedence-list151585%_
               _%direct-slots151586%_)
        (let* ((_%base-fields151588%_
                (if _%base-struct151584%_
                    (let ((__tmp152567
                           (gxc#optimizer-resolve-class
                            _%where151583%_
                            _%base-struct151584%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp152567 '5 '#f '#f))
                    '()))
               (_%r-fields151590%_ (reverse _%base-fields151588%_))
               (_%seen-slots151598%_
                (let ((_%tab151592%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g151593151595%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab151592%_ _%g151593151595%_ '#t)))
                   _%base-fields151588%_)
                  _%tab151592%_))
               (_%process-slot151602%_
                (lambda (_%slot151600%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots151598%_ _%slot151600%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots151598%_
                           _%slot151600%_
                           '#t))
                        (set! _%r-fields151590%_
                              (cons _%slot151600%_ _%r-fields151590%_)))))))
          (for-each
           (lambda (_%mixin151605%_)
             (let ((_%klass151607%_
                    (gxc#optimizer-resolve-class
                     _%where151583%_
                     _%mixin151605%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass151607%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot151602%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass151607%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list151585%_)
          (for-each _%process-slot151602%_ _%direct-slots151586%_)
          (let () (declare (not safe)) (##reverse _%r-fields151590%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass151542%_ _%slot151543%_)
        (let _%lp151545%_ ((_%rest151547%_
                            (##structure-ref
                             _%klass151542%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset151548%_ '1))
          (let* ((_%rest151549151557%_ _%rest151547%_)
                 (_%else151551151565%_
                  (lambda ()
                    (let ((__tmp152569
                           (##structure-ref
                            _%klass151542%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp152568
                           (##structure-ref
                            _%klass151542%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp152569
                       __tmp152568
                       _%slot151543%_))))
                 (_%K151553151571%_
                  (lambda (_%rest151568%_ _%s151569%_)
                    (if (eq? _%s151569%_ _%slot151543%_)
                        _%offset151548%_
                        (_%lp151545%_
                         _%rest151568%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset151548%_ '1)))))))
            (if (pair? _%rest151549151557%_)
                (let ((_%hd151554151574%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest151549151557%_)))
                      (_%tl151555151576%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest151549151557%_))))
                  (let* ((_%s151579%_ _%hd151554151574%_)
                         (_%rest151581%_ _%tl151555151576%_))
                    (_%K151553151571%_ _%rest151581%_ _%s151579%_)))
                (_%else151551151565%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass151500%_ _%slot151501%_)
        (if (gxc#!class-struct-slot? _%klass151500%_ _%slot151501%_)
            _%klass151500%_
            (let _%lp151503%_ ((_%rest151505%_
                                (##structure-ref
                                 _%klass151500%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest151506151514%_ _%rest151505%_)
                     (_%else151508151522%_ (lambda () '#f))
                     (_%K151510151530%_
                      (lambda (_%rest151525%_ _%super151526%_)
                        (let ((_%super-class151528%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass151500%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot151501%_ '())))
                                _%super151526%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class151528%_
                               _%slot151501%_)
                              _%super-class151528%_
                              (_%lp151503%_ _%rest151525%_))))))
                (if (pair? _%rest151506151514%_)
                    (let ((_%hd151511151533%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest151506151514%_)))
                          (_%tl151512151535%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest151506151514%_))))
                      (let* ((_%super151538%_ _%hd151511151533%_)
                             (_%rest151540%_ _%tl151512151535%_))
                        (_%K151510151530%_ _%rest151540%_ _%super151538%_)))
                    (_%else151508151522%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass151497%_ _%slot151498%_)
        (if (##structure-ref _%klass151497%_ '7 gxc#!class::t '#f)
            (memq _%slot151498%_
                  (##structure-ref _%klass151497%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self149625151481%_ _%id151483%_)
        (let* ((_%self151485%_ _%self149625151481%_)
               (_%self151487%_ _%self151485%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151487%_
             _%id151483%_
             '1
             '#f
             '#f))
          (let ((__tmp152570
                 (let ((__obj152502
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
                      __obj152502
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152502
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152502
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj152502)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151487%_
             __tmp152570
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self149626151343%_ _%id151345%_)
        (let* ((_%self151347%_ _%self149626151343%_)
               (_%self151349%_ _%self151347%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151349%_
             _%id151345%_
             '1
             '#f
             '#f))
          (let ((__tmp152571
                 (let ((__obj152503
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
                      __obj152503
                      _%id151345%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152503
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj152503)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151349%_
             __tmp152571
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
      (lambda (_%self149627151203%_
               _%id151205%_
               _%slot151206%_
               _%checked?151207%_)
        (let* ((_%self151209%_ _%self149627151203%_)
               (_%self151211%_ _%self151209%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151211%_
             _%id151205%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151211%_
             _%slot151206%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151211%_
             _%checked?151207%_
             '4
             '#f
             '#f))
          (let ((__tmp152572
                 (let ((__obj152504
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
                     (##unchecked-structure-set! __obj152504 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152504
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp152573 (cons _%id151205%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152504
                      __tmp152573
                      '3
                      '#f
                      '#f))
                   __obj152504)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151211%_
             __tmp152572
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self149628151063%_
               _%id151065%_
               _%slot151066%_
               _%checked?151067%_)
        (let* ((_%self151069%_ _%self149628151063%_)
               (_%self151071%_ _%self151069%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151071%_
             _%id151065%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151071%_
             _%slot151066%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151071%_
             _%checked?151067%_
             '4
             '#f
             '#f))
          (let ((__tmp152574
                 (let ((__obj152505
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
                      __obj152505
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152505
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp152575 (cons _%id151065%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152505
                      __tmp152575
                      '3
                      '#f
                      '#f))
                   __obj152505)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151071%_
             __tmp152574
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords150905%_
               _%signature150902150906%_
               _%self149629150908%_
               _%arity150910%_
               _%dispatch150911%_)
        (let* ((_%signature150913%_
                (if (eq? _%signature150902150906%_ absent-value)
                    '#f
                    _%signature150902150906%_))
               (_%self150915%_ _%self149629150908%_)
               (_%self150917%_ _%self150915%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150917%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150917%_
             _%arity150910%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150917%_
             _%dispatch150911%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150917%_
             _%signature150913%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords150931%_ . _%args150932%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords150931%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150931%_
                  'signature:
                  absent-value))
               _%args150932%_)))
    (define gxc#!lambda:::init!
      (lambda _%args150903150938%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args150903150938%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords150744%_
               _%signature150741150745%_
               _%self149630150747%_
               _%clauses150749%_)
        (let* ((_%signature150751%_
                (if (eq? _%signature150741150745%_ absent-value)
                    '#f
                    _%signature150741150745%_))
               (_%self150753%_ _%self149630150747%_)
               (_%self150755%_ _%self150753%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150755%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150755%_
             _%signature150751%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150755%_
             _%clauses150749%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords150769%_ . _%args150770%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords150769%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150769%_
                  'signature:
                  absent-value))
               _%args150770%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args150742150776%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args150742150776%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self149631150601%_ _%tab150603%_ _%dispatch150604%_)
        (let* ((_%self150606%_ _%self149631150601%_)
               (_%self150608%_ _%self150606%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150608%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150608%_
             _%tab150603%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150608%_
             _%dispatch150604%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self149632150462%_ _%keys150464%_ _%main150465%_)
        (let* ((_%self150467%_ _%self149632150462%_)
               (_%self150469%_ _%self150467%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150469%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150469%_
             _%keys150464%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150469%_
             _%main150465%_
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
      (lambda (_%self149633150080%_ _%id150082%_)
        (let* ((_%self150084%_ _%self149633150080%_)
               (_%self150086%_ _%self150084%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150086%_
             _%id150082%_
             '1
             '#f
             '#f))
          (let ((__tmp152576
                 (let ((__obj152506
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
                      __obj152506
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152506
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152506
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj152506)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150086%_
             __tmp152576
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
      (lambda (_%klass149949%_)
        (let ((_%$e149951%_
               (##structure-ref _%klass149949%_ '11 gxc#!class::t '#f)))
          (if _%$e149951%_
              _%$e149951%_
              (let ((_%tab149955%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass149949%_
                 _%tab149955%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab149955%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass149940%_ _%method149941%_)
        (let ((_%tab149942149944%_
               (##structure-ref _%klass149940%_ '11 gxc#!class::t '#f)))
          (if _%tab149942149944%_
              (let ((_%tab149947%_ _%tab149942149944%_))
                (declare (not safe))
                (hash-get _%tab149947%_ _%method149941%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a149928%_ _%type-b149929%_)
        (if _%type-a149928%_
            (if _%type-b149929%_
                (let ((_%$e149931%_ (eq? _%type-a149928%_ _%type-b149929%_)))
                  (if _%$e149931%_
                      _%$e149931%_
                      (let ((_%$e149934%_
                             (eq? (##structure-ref
                                   _%type-b149929%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e149934%_
                            _%$e149934%_
                            (let ((_%$e149937%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a149928%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b149929%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e149937%_
                                  _%$e149937%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a149928%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b149929%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a149928%_
                                           _%type-b149929%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a149879%_ _%klass-b149880%_)
        (let ((_%$e149882%_
               (eq? (##structure-ref _%klass-a149879%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b149880%_ '1 gxc#!type::t '#f))))
          (if _%$e149882%_
              _%$e149882%_
              (let ((_%klass-id-b149885%_
                     (##structure-ref _%klass-b149880%_ '1 gxc#!type::t '#f))
                    (_%precedence-list149886%_
                     (##structure-ref _%klass-a149879%_ '3 gxc#!class::t '#f)))
                (let _%loop149888%_ ((_%rest149890%_
                                      _%precedence-list149886%_))
                  (let* ((_%rest149891149899%_ _%rest149890%_)
                         (_%else149893149907%_ (lambda () '#f))
                         (_%K149895149916%_
                          (lambda (_%rest149910%_ _%klass-name149911%_)
                            (let ((_%$e149913%_
                                   (eq? (let ((__tmp152577
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a149879%_
                                                            (cons _%klass-b149880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name149911%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp152577
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b149885%_)))
                              (if _%$e149913%_
                                  _%$e149913%_
                                  (_%loop149888%_ _%rest149910%_))))))
                    (if (pair? _%rest149891149899%_)
                        (let ((_%hd149896149919%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest149891149899%_)))
                              (_%tl149897149921%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest149891149899%_))))
                          (let* ((_%klass-name149924%_ _%hd149896149919%_)
                                 (_%rest149926%_ _%tl149897149921%_))
                            (_%K149895149916%_
                             _%rest149926%_
                             _%klass-name149924%_)))
                        (_%else149893149907%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type149877%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149877%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type149877%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc149866%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc149866%_ 'gxc#!procedure::t))
            (let ((_%proc149869%_ _%proc149866%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc149869%_ '2 '#f '#f))
                  (let ((__tmp152578
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc149869%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp152578 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc149866%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym149848%_ _%type149849%_ _%local?149850%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149849%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym149848%_
                     _%type149849%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym149848%_ '" " _%type149849%_))
        (let ((_%table149852%_
               (if _%local?149850%_
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
          (hash-put! _%table149852%_ _%sym149848%_ _%type149849%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym149857%_ _%type149858%_)
        (let ((_%local?149860%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym149857%_
           _%type149858%_
           _%local?149860%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g152580_
        (let ((_g152579_ (let () (declare (not safe)) (##length _g152580_))))
          (cond ((let () (declare (not safe)) (##fx= _g152579_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g152580_))
                ((let () (declare (not safe)) (##fx= _g152579_ 3))
                 (apply gxc#optimizer-declare-type!__% _g152580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g152580_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym149842%_ _%type149843%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149843%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym149842%_
                     _%type149843%_)))
        (let ((_%table149845%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp152581
                 (let () (declare (not safe)) (struct->list _%type149843%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym149842%_ '" " __tmp152581))
          (let ()
            (declare (not safe))
            (hash-put! _%table149845%_ _%sym149842%_ _%type149843%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table149845%_ _%type149843%_ _%sym149842%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym149837%_ _%type149838%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149838%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym149837%_
                     _%type149838%_)))
        (let ((_%table149840%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table149840%_ _%sym149837%_))
              '#!void
              (begin
                (let ((__tmp152582
                       (let ()
                         (declare (not safe))
                         (struct->list _%type149838%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym149837%_
                   '" "
                   __tmp152582))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table149840%_ _%sym149837%_ _%type149838%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table149840%_
                   _%type149838%_
                   _%sym149837%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym149835%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym149835%_))
        (let ((__tmp152583
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp152583 _%sym149835%_))
        (let ((__tmp152584
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp152584 _%sym149835%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t149803%_
               _%method149804%_
               _%sym149805%_
               _%rebind?149806%_)
        (let ((__tmp152585
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp152585 _%sym149805%_ '#t))
        (let ((_%klass149808%_ (gxc#optimizer-lookup-class _%type-t149803%_)))
          (if _%klass149808%_
              (let* ((_%vtab149810%_ (gxc#!class-method-table _%klass149808%_))
                     (_%$e149812%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab149810%_ _%method149804%_))))
                (if _%$e149812%_
                    ((lambda (_%existing149815%_)
                       (if _%rebind?149806%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t149803%_
                                '" "
                                _%method149804%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab149810%_
                                _%method149804%_
                                _%sym149805%_)))
                           (if (eq? _%existing149815%_ _%sym149805%_)
                               '#!void
                               (let ((__tmp152586
                                      (cons 'bind-method!
                                            (cons _%type-t149803%_
                                                  (cons _%method149804%_
                                                        (cons _%sym149805%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp152586
                                  _%method149804%_)))))
                     _%$e149812%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t149803%_
                         '" "
                         _%method149804%_
                         '" => "
                         _%sym149805%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab149810%_
                         _%method149804%_
                         _%sym149805%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t149803%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t149824%_ _%method149825%_ _%sym149826%_)
        (let ((_%rebind?149828%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t149824%_
           _%method149825%_
           _%sym149826%_
           _%rebind?149828%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g152588_
        (let ((_g152587_ (let () (declare (not safe)) (##length _g152588_))))
          (cond ((let () (declare (not safe)) (##fx= _g152587_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g152588_))
                ((let () (declare (not safe)) (##fx= _g152587_ 4))
                 (apply gxc#optimizer-declare-method!__% _g152588_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g152588_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym149788%_)
        (let ((_%$e149790%_
               (let ((__tmp152589
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym149788%_ __tmp152589))))
          (if _%$e149790%_
              _%$e149790%_
              (let ((_%$e149799%_
                     (let ((_%ht149792149794%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht149792149794%_
                           (let ((_%ht149797%_ _%ht149792149794%_))
                             (declare (not safe))
                             (hash-get _%ht149797%_ _%sym149788%_))
                           '#f))))
                (if _%$e149799%_
                    _%$e149799%_
                    (let ((__tmp152590
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp152590 _%sym149788%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym149780%_)
        (let ((_%type149781149783%_ (gxc#optimizer-lookup-type _%sym149780%_)))
          (if _%type149781149783%_
              (let ((_%type149786%_ _%type149781149783%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type149786%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type149786%_ '1 '#f '#f)))
                    _%type149786%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym149776%_)
        (let ((_%table149778%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table149778%_ _%sym149776%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where149761%_ _%sym149762%_)
        (let ((_%$e149765%_ (gxc#optimizer-lookup-class _%sym149762%_)))
          (if _%$e149765%_
              ((lambda (_%g149767149769%_)
                 (let ((_%val149772%_ _%g149767149769%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val149772%_
                          'gxc#!class::t))
                       _%val149772%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val149772%_)))))
               _%$e149765%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where149761%_
                   _%sym149762%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass149759%_)
        (let ((__tmp152591
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp152591 _%klass149759%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t149756%_ _%method149757%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t149756%_)
         _%method149757%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym149754%_)
        (let ((__tmp152592
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp152592 _%sym149754%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e149636%_
                  (lambda (_%t149737%_)
                    (if (symbol? _%t149737%_)
                        (_%type-e149636%_
                         (gxc#optimizer-lookup-type _%t149737%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t149737%_
                               'gxc#!lambda::t))
                            (_%__lambda-type149638%_ _%t149737%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t149737%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type149640%_ _%t149737%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t149737%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type149642%_
                                     _%t149737%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t149737%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t149744%_ _%t149737%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t149744%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp152593
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t149744%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp152593
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t149737%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t149737%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type149637%_
                  (lambda (_%t149725%_)
                    (let ((_%t149728%_ _%t149725%_))
                      (_%__lambda-type149638%_ _%t149728%_))))
                 (_%__lambda-type149638%_
                  (lambda (_%t149713%_)
                    (let ((_%t149716%_ _%t149713%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t149716%_ '4 '#f '#f))
                          (_%type-e149636%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t149716%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t149716%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp152594
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t149716%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp152594
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type149639%_
                  (lambda (_%t149701%_)
                    (let ((_%t149704%_ _%t149701%_))
                      (_%__kw-lambda-type149640%_ _%t149704%_))))
                 (_%__kw-lambda-type149640%_
                  (lambda (_%t149689%_)
                    (let ((_%t149692%_ _%t149689%_))
                      (_%type-e149636%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t149692%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type149641%_
                  (lambda (_%t149677%_)
                    (let ((_%t149680%_ _%t149677%_))
                      (_%__kw-lambda-primary-type149642%_ _%t149680%_))))
                 (_%__kw-lambda-primary-type149642%_
                  (lambda (_%t149663%_)
                    (let ((_%t149666%_ _%t149663%_))
                      (_%type-e149636%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t149666%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1149644%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2149646%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result149648%_
                  (if _%ht1149644%_
                      (let () (declare (not safe)) (hash->list _%ht1149644%_))
                      '()))
                 (_%result149650%_
                  (if _%ht2149646%_
                      (let ((__tmp152595
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2149646%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result149648%_ __tmp152595))
                      _%result149648%_)))
            (for-each
             (lambda (_%p149653%_)
               (let* ((_%t149655%_ (cdr _%p149653%_))
                      (_%tr149657%_ (_%type-e149636%_ _%t149655%_)))
                 (set-cdr! _%p149653%_ _%tr149657%_)))
             _%result149650%_)
            (list-sort
             (lambda (_%a149660%_ _%b149661%_)
               (let ((__tmp152597 (symbol->string (car _%a149660%_)))
                     (__tmp152596 (symbol->string (car _%b149661%_))))
                 (declare (not safe))
                 (##string<? __tmp152597 __tmp152596)))
             _%result149650%_)))))))
