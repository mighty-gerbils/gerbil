(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1742237314)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp153500 (list)) (__tmp153499 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp153500
         '(type classes ssxi methods)
         __tmp153499
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args153471%_
        (apply make-instance gxc#optimizer-info::t _%$args153471%_)))
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
      (lambda (_%self150612153456%_)
        (let* ((_%self153459%_ _%self150612153456%_)
               (_%self153461%_ _%self153459%_))
          (if (let ((__tmp153501
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self153461%_))))
                (declare (not safe))
                (##fx< '4 __tmp153501))
              (begin
                (let ((__tmp153502
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153461%_
                   __tmp153502
                   '1
                   '#f
                   '#f))
                (let ((__tmp153503
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153461%_
                   __tmp153503
                   '2
                   '#f
                   '#f))
                (let ((__tmp153504
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153461%_
                   __tmp153504
                   '3
                   '#f
                   '#f))
                (let ((__tmp153505
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153461%_
                   __tmp153505
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp153506
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self153461%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self153461%_
                       '4
                       __tmp153506))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp153508 (list))
            (__tmp153507
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp153508
         '(id)
         __tmp153507
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args153331%_
        (apply make-instance gxc#!type::t _%$args153331%_)))
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
      (let ((__tmp153510 (list gxc#!type::t))
            (__tmp153509 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp153510
         '()
         __tmp153509
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args153328%_
        (apply make-instance gxc#!abort::t _%$args153328%_)))
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
      (let ((__tmp153512 (list gxc#!type::t))
            (__tmp153511 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp153512
         '()
         __tmp153511
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args153325%_
        (apply make-instance gxc#!alias::t _%$args153325%_)))
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
      (let ((__tmp153514 (list))
            (__tmp153513
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp153514
         '(return effect arguments unchecked origin)
         __tmp153513
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args153322%_
        (apply make-instance gxc#!signature::t _%$args153322%_)))
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
      (let ((__tmp153516 (list gxc#!type::t))
            (__tmp153515
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp153516
         '(signature)
         __tmp153515
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
      (lambda (_%id153301%_ _%signature153302%_)
        (if ((lambda (_%$obj153305%_)
               (or (not _%$obj153305%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj153305%_
                      'gxc#!signature::t))))
             _%signature153302%_)
            (let ((_%signature153312%_ _%signature153302%_))
              (gxc#__make-!procedure _%id153301%_ _%signature153312%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature153302%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id153287%_ _%signature153289%_)
        (let ((_%signature153292%_ _%signature153289%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id153287%_ _%signature153292%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj153256%_ _%signature153257%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj153256%_ 'gxc#!procedure::t))
            (let ((_%$obj153261%_ _%$obj153256%_))
              (if ((lambda (_%$obj153270%_)
                     (or (not _%$obj153270%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj153270%_
                            'gxc#!signature::t))))
                   _%signature153257%_)
                  (let ((_%signature153277%_ _%signature153257%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj153261%_
                     _%signature153277%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature153257%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj153256%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj153233%_ _%signature153235%_)
        (let* ((_%$obj153239%_ _%$obj153233%_)
               (_%signature153247%_ _%signature153235%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj153239%_
           _%signature153247%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp153518 (list gxc#!type::t))
            (__tmp153517 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp153518
         '(class)
         __tmp153517
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args153230%_
        (apply make-instance gxc#!class-meta::t _%$args153230%_)))
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
      (let ((__tmp153520 (list gxc#!type::t))
            (__tmp153519
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
         __tmp153520
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp153519
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args153227%_
        (apply make-instance gxc#!class::t _%$args153227%_)))
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
      (let ((__tmp153522 (list gxc#!procedure::t))
            (__tmp153521 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp153522
         '()
         __tmp153521
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args153224%_
        (apply make-instance gxc#!predicate::t _%$args153224%_)))
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
      (let ((__tmp153524 (list gxc#!procedure::t))
            (__tmp153523 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp153524
         '()
         __tmp153523
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args153221%_
        (apply make-instance gxc#!constructor::t _%$args153221%_)))
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
      (let ((__tmp153526 (list gxc#!procedure::t))
            (__tmp153525 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp153526
         '(slot checked?)
         __tmp153525
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args153218%_
        (apply make-instance gxc#!accessor::t _%$args153218%_)))
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
      (let ((__tmp153528 (list gxc#!procedure::t))
            (__tmp153527 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp153528
         '(slot checked?)
         __tmp153527
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args153215%_
        (apply make-instance gxc#!mutator::t _%$args153215%_)))
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
      (let ((__tmp153530 (list gxc#!type::t))
            (__tmp153529 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp153530
         '(methods)
         __tmp153529
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args153212%_
        (apply make-instance gxc#!interface::t _%$args153212%_)))
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
      (let ((__tmp153532 (list gxc#!procedure::t))
            (__tmp153531
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp153532
         '(arity dispatch inline inline-typedecl)
         __tmp153531
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args153209%_
        (apply make-instance gxc#!lambda::t _%$args153209%_)))
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
      (let ((__tmp153534 (list gxc#!procedure::t))
            (__tmp153533 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp153534
         '(clauses)
         __tmp153533
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args153206%_
        (apply make-instance gxc#!case-lambda::t _%$args153206%_)))
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
      (let ((__tmp153536 (list gxc#!procedure::t))
            (__tmp153535
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp153536
         '(table dispatch)
         __tmp153535
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args153203%_
        (apply make-instance gxc#!kw-lambda::t _%$args153203%_)))
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
      (let ((__tmp153538 (list gxc#!procedure::t))
            (__tmp153537 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp153538
         '(keys main)
         __tmp153537
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args153200%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args153200%_)))
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
      (let ((__tmp153539 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp153539
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args153197%_
        (apply make-instance gxc#!primitive::t _%$args153197%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp153541 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp153540 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp153541
         '()
         __tmp153540
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args153194%_
        (apply make-instance gxc#!primitive-predicate::t _%$args153194%_)))
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
      (let ((__tmp153543 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp153542 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp153543
         '()
         __tmp153542
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args153191%_
        (apply make-instance gxc#!primitive-lambda::t _%$args153191%_)))
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
      (let ((__tmp153545 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp153544 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp153545
         '()
         __tmp153544
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args153188%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args153188%_)))
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
      (lambda (_%self150613153173%_)
        (let* ((_%self153176%_ _%self150613153173%_)
               (_%self153178%_ _%self153176%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self153178%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self150614153035%_ _%klass153037%_)
        (let* ((_%self153039%_ _%self150614153035%_)
               (_%self153041%_ _%self153039%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self153041%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self153041%_
             _%klass153037%_
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
      (lambda (_%self150615152723%_
               _%id152725%_
               _%super152726%_
               _%slots152727%_
               _%ctor-method152728%_
               _%struct?152729%_
               _%final?152730%_
               _%system?152731%_
               _%metaclass152732%_)
        (let* ((_%self152734%_ _%self150615152723%_)
               (_%self152736%_ _%self152734%_))
          (let _%lp152746%_ ((_%rest152748%_ _%super152726%_))
            (let* ((_%rest152749152757%_ _%rest152748%_)
                   (_%else152751152765%_ (lambda () '#!void))
                   (_%K152753152771%_
                    (lambda (_%rest152768%_ _%super-id152769%_)
                      (if (let ((__tmp153546
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id152725%_ '()))
                                  _%super-id152769%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp153546 '8 '#f '#f))
                          (let ((__tmp153547
                                 (cons '!class (cons _%id152725%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp153547
                             _%super-id152769%_))
                          '#!void)
                      (_%lp152746%_ _%rest152768%_))))
              (if (pair? _%rest152749152757%_)
                  (let ((_%hd152754152774%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest152749152757%_)))
                        (_%tl152755152776%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest152749152757%_))))
                    (let* ((_%super-id152779%_ _%hd152754152774%_)
                           (_%rest152781%_ _%tl152755152776%_))
                      (_%K152753152771%_ _%rest152781%_ _%super-id152779%_)))
                  '#!void)))
          (let* ((_%ctor-method152832%_
                  (let ((_%$e152783%_ _%ctor-method152728%_))
                    (if _%$e152783%_
                        _%$e152783%_
                        (let _%lp152786%_ ((_%rest152788%_ _%super152726%_)
                                           (_%method152789%_ '#f))
                          (let* ((_%rest152790152798%_ _%rest152788%_)
                                 (_%else152792152806%_
                                  (lambda () _%method152789%_))
                                 (_%K152794152820%_
                                  (lambda (_%rest152809%_ _%super-id152810%_)
                                    (let* ((_%klass152812%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id152725%_ '()))
                                             _%super-id152810%_))
                                           (_%$e152814%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass152812%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e152814%_
                                          ((lambda (_%ctor-method152817%_)
                                             (if _%method152789%_
                                                 (if (eq? _%ctor-method152817%_
                                                          _%method152789%_)
                                                     (_%lp152786%_
                                                      _%rest152809%_
                                                      _%ctor-method152817%_)
                                                     (let ((__tmp153548
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id152725%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp153548
                _%method152789%_
                _%ctor-method152817%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp152786%_
                                                  _%rest152809%_
                                                  _%ctor-method152817%_)))
                                           _%$e152814%_)
                                          (_%lp152786%_
                                           _%rest152809%_
                                           _%method152789%_))))))
                            (if (pair? _%rest152790152798%_)
                                (let ((_%hd152795152823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest152790152798%_)))
                                      (_%tl152796152825%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest152790152798%_))))
                                  (let* ((_%super-id152828%_
                                          _%hd152795152823%_)
                                         (_%rest152830%_ _%tl152796152825%_))
                                    (_%K152794152820%_
                                     _%rest152830%_
                                     _%super-id152828%_)))
                                (_%else152792152806%_)))))))
                 (_g153549_
                  (let ((__tmp153553
                         (lambda (_%klass-id152834%_)
                           (cons _%klass-id152834%_
                                 (let ((__tmp153554
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id152725%_ '()))
                                         _%klass-id152834%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp153554
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp153551
                         (lambda (_%klass-id152836%_)
                           (let ((__tmp153552
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id152725%_ '()))
                                   _%klass-id152836%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp153552
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp153553
                     __tmp153551
                     eq?
                     identity
                     '()
                     _%super152726%_))))
            (begin
              (let ((_g153550_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g153549_)
                           (##values-length _g153549_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g153550_ 2)))
                    (error "Context expects 2 values" _g153550_)))
              (let ((_%precedence-list152838%_
                     (let () (declare (not safe)) (##values-ref _g153549_ 0)))
                    (_%base-struct152839%_
                     (let () (declare (not safe)) (##values-ref _g153549_ 1))))
                (let* ((_%precedence-list152883%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id152725%_ '(t object class)))
                            _%precedence-list152838%_
                            (if (memq 'object::t _%precedence-list152838%_)
                                _%precedence-list152838%_
                                (if _%system?152731%_
                                    (if (memq 't::t _%precedence-list152838%_)
                                        _%precedence-list152838%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list152838%_
                                           '(t::t))))
                                    (let _%loop152845%_ ((_%tail152847%_
                                                          _%precedence-list152838%_)
                                                         (_%head152848%_ '()))
                                      (let* ((_%tail152849152857%_
                                              _%tail152847%_)
                                             (_%else152851152865%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head152848%_))))
                                             (_%K152853152871%_
                                              (lambda (_%rest152868%_
                                                       _%hd152869%_)
                                                (if (eq? _%hd152869%_ 't::t)
                                                    (let ((__tmp153555
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail152847%_)))
              (declare (not safe))
              (__foldl1 cons __tmp153555 _%head152848%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop152845%_
                                                     _%rest152868%_
                                                     (cons _%hd152869%_
                                                           _%head152848%_))))))
                                        (if (pair? _%tail152849152857%_)
                                            (let ((_%hd152854152874%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail152849152857%_)))
                                                  (_%tl152855152876%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail152849152857%_))))
                                              (let* ((_%hd152879%_
                                                      _%hd152854152874%_)
                                                     (_%rest152881%_
                                                      _%tl152855152876%_))
                                                (_%K152853152871%_
                                                 _%rest152881%_
                                                 _%hd152879%_)))
                                            (_%else152851152865%_))))))))
                       (_%fields152885%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id152725%_ '()))
                         _%base-struct152839%_
                         _%precedence-list152883%_
                         _%slots152727%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152736%_
                     _%id152725%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152736%_
                     _%super152726%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152736%_
                     _%precedence-list152883%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152736%_
                     _%slots152727%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152736%_
                     _%fields152885%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152736%_
                     _%ctor-method152832%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152736%_
                     _%struct?152729%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152736%_
                     _%final?152730%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152736%_
                     _%metaclass152732%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self150616152888%_
               _%id152890%_
               _%super152891%_
               _%precedence-list152892%_
               _%slots152893%_
               _%fields152894%_
               _%constructor152895%_
               _%struct?152896%_
               _%final?152897%_
               _%system?152898%_
               _%metaclass152899%_
               _%methods152900%_)
        (let* ((_%self152902%_ _%self150616152888%_)
               (_%self152904%_ _%self152902%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152904%_
             _%id152890%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152904%_
             _%super152891%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152904%_
             _%precedence-list152892%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152904%_
             _%slots152893%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152904%_
             _%fields152894%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152904%_
             _%constructor152895%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152904%_
             _%struct?152896%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152904%_
             _%final?152897%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152904%_
             _%metaclass152899%_
             '10
             '#f
             '#f))
          (if _%methods152900%_
              (let ((__tmp153556
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods152900%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self152904%_
                 __tmp153556
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g153558_
        (let ((_g153557_ (let () (declare (not safe)) (##length _g153558_))))
          (cond ((let () (declare (not safe)) (##fx= _g153557_ 9))
                 (apply gxc#!class:::init!__0 _g153558_))
                ((let () (declare (not safe)) (##fx= _g153557_ 12))
                 (apply gxc#!class:::init!__1 _g153558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g153558_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where152575%_
               _%base-struct152576%_
               _%precedence-list152577%_
               _%direct-slots152578%_)
        (let* ((_%base-fields152580%_
                (if _%base-struct152576%_
                    (let ((__tmp153559
                           (gxc#optimizer-resolve-class
                            _%where152575%_
                            _%base-struct152576%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp153559 '5 '#f '#f))
                    '()))
               (_%r-fields152582%_ (reverse _%base-fields152580%_))
               (_%seen-slots152590%_
                (let ((_%tab152584%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g152585152587%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab152584%_ _%g152585152587%_ '#t)))
                   _%base-fields152580%_)
                  _%tab152584%_))
               (_%process-slot152594%_
                (lambda (_%slot152592%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots152590%_ _%slot152592%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots152590%_
                           _%slot152592%_
                           '#t))
                        (set! _%r-fields152582%_
                              (cons _%slot152592%_ _%r-fields152582%_)))))))
          (for-each
           (lambda (_%mixin152597%_)
             (let ((_%klass152599%_
                    (gxc#optimizer-resolve-class
                     _%where152575%_
                     _%mixin152597%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass152599%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot152594%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass152599%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list152577%_)
          (for-each _%process-slot152594%_ _%direct-slots152578%_)
          (let () (declare (not safe)) (##reverse _%r-fields152582%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass152534%_ _%slot152535%_)
        (let _%lp152537%_ ((_%rest152539%_
                            (##structure-ref
                             _%klass152534%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset152540%_ '1))
          (let* ((_%rest152541152549%_ _%rest152539%_)
                 (_%else152543152557%_
                  (lambda ()
                    (let ((__tmp153561
                           (##structure-ref
                            _%klass152534%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp153560
                           (##structure-ref
                            _%klass152534%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp153561
                       __tmp153560
                       _%slot152535%_))))
                 (_%K152545152563%_
                  (lambda (_%rest152560%_ _%s152561%_)
                    (if (eq? _%s152561%_ _%slot152535%_)
                        _%offset152540%_
                        (_%lp152537%_
                         _%rest152560%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset152540%_ '1)))))))
            (if (pair? _%rest152541152549%_)
                (let ((_%hd152546152566%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest152541152549%_)))
                      (_%tl152547152568%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest152541152549%_))))
                  (let* ((_%s152571%_ _%hd152546152566%_)
                         (_%rest152573%_ _%tl152547152568%_))
                    (_%K152545152563%_ _%rest152573%_ _%s152571%_)))
                (_%else152543152557%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass152492%_ _%slot152493%_)
        (if (gxc#!class-struct-slot? _%klass152492%_ _%slot152493%_)
            _%klass152492%_
            (let _%lp152495%_ ((_%rest152497%_
                                (##structure-ref
                                 _%klass152492%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest152498152506%_ _%rest152497%_)
                     (_%else152500152514%_ (lambda () '#f))
                     (_%K152502152522%_
                      (lambda (_%rest152517%_ _%super152518%_)
                        (let ((_%super-class152520%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass152492%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot152493%_ '())))
                                _%super152518%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class152520%_
                               _%slot152493%_)
                              _%super-class152520%_
                              (_%lp152495%_ _%rest152517%_))))))
                (if (pair? _%rest152498152506%_)
                    (let ((_%hd152503152525%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest152498152506%_)))
                          (_%tl152504152527%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest152498152506%_))))
                      (let* ((_%super152530%_ _%hd152503152525%_)
                             (_%rest152532%_ _%tl152504152527%_))
                        (_%K152502152522%_ _%rest152532%_ _%super152530%_)))
                    (_%else152500152514%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass152489%_ _%slot152490%_)
        (if (##structure-ref _%klass152489%_ '7 gxc#!class::t '#f)
            (memq _%slot152490%_
                  (##structure-ref _%klass152489%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self150617152473%_ _%id152475%_)
        (let* ((_%self152477%_ _%self150617152473%_)
               (_%self152479%_ _%self152477%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152479%_
             _%id152475%_
             '1
             '#f
             '#f))
          (let ((__tmp153562
                 (let ((__obj153494
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
                      __obj153494
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153494
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153494
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj153494)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152479%_
             __tmp153562
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self150618152335%_ _%id152337%_)
        (let* ((_%self152339%_ _%self150618152335%_)
               (_%self152341%_ _%self152339%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152341%_
             _%id152337%_
             '1
             '#f
             '#f))
          (let ((__tmp153563
                 (let ((__obj153495
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
                      __obj153495
                      _%id152337%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153495
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj153495)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152341%_
             __tmp153563
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
      (lambda (_%self150619152195%_
               _%id152197%_
               _%slot152198%_
               _%checked?152199%_)
        (let* ((_%self152201%_ _%self150619152195%_)
               (_%self152203%_ _%self152201%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152203%_
             _%id152197%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152203%_
             _%slot152198%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152203%_
             _%checked?152199%_
             '4
             '#f
             '#f))
          (let ((__tmp153564
                 (let ((__obj153496
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
                     (##unchecked-structure-set! __obj153496 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153496
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp153565 (cons _%id152197%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153496
                      __tmp153565
                      '3
                      '#f
                      '#f))
                   __obj153496)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152203%_
             __tmp153564
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self150620152055%_
               _%id152057%_
               _%slot152058%_
               _%checked?152059%_)
        (let* ((_%self152061%_ _%self150620152055%_)
               (_%self152063%_ _%self152061%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152063%_
             _%id152057%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152063%_
             _%slot152058%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152063%_
             _%checked?152059%_
             '4
             '#f
             '#f))
          (let ((__tmp153566
                 (let ((__obj153497
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
                      __obj153497
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153497
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp153567 (cons _%id152057%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153497
                      __tmp153567
                      '3
                      '#f
                      '#f))
                   __obj153497)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152063%_
             __tmp153566
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords151897%_
               _%signature151894151898%_
               _%self150621151900%_
               _%arity151902%_
               _%dispatch151903%_)
        (let* ((_%signature151905%_
                (if (eq? _%signature151894151898%_ absent-value)
                    '#f
                    _%signature151894151898%_))
               (_%self151907%_ _%self150621151900%_)
               (_%self151909%_ _%self151907%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151909%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151909%_
             _%arity151902%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151909%_
             _%dispatch151903%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151909%_
             _%signature151905%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords151923%_ . _%args151924%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords151923%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151923%_
                  'signature:
                  absent-value))
               _%args151924%_)))
    (define gxc#!lambda:::init!
      (lambda _%args151895151930%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args151895151930%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords151736%_
               _%signature151733151737%_
               _%self150622151739%_
               _%clauses151741%_)
        (let* ((_%signature151743%_
                (if (eq? _%signature151733151737%_ absent-value)
                    '#f
                    _%signature151733151737%_))
               (_%self151745%_ _%self150622151739%_)
               (_%self151747%_ _%self151745%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151747%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151747%_
             _%signature151743%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151747%_
             _%clauses151741%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords151761%_ . _%args151762%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords151761%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151761%_
                  'signature:
                  absent-value))
               _%args151762%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args151734151768%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args151734151768%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self150623151593%_ _%tab151595%_ _%dispatch151596%_)
        (let* ((_%self151598%_ _%self150623151593%_)
               (_%self151600%_ _%self151598%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151600%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151600%_
             _%tab151595%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151600%_
             _%dispatch151596%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self150624151454%_ _%keys151456%_ _%main151457%_)
        (let* ((_%self151459%_ _%self150624151454%_)
               (_%self151461%_ _%self151459%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151461%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151461%_
             _%keys151456%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151461%_
             _%main151457%_
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
      (lambda (_%self150625151072%_ _%id151074%_)
        (let* ((_%self151076%_ _%self150625151072%_)
               (_%self151078%_ _%self151076%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151078%_
             _%id151074%_
             '1
             '#f
             '#f))
          (let ((__tmp153568
                 (let ((__obj153498
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
                      __obj153498
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153498
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153498
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj153498)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151078%_
             __tmp153568
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
      (lambda (_%klass150941%_)
        (let ((_%$e150943%_
               (##structure-ref _%klass150941%_ '11 gxc#!class::t '#f)))
          (if _%$e150943%_
              _%$e150943%_
              (let ((_%tab150947%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass150941%_
                 _%tab150947%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab150947%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass150932%_ _%method150933%_)
        (let ((_%tab150934150936%_
               (##structure-ref _%klass150932%_ '11 gxc#!class::t '#f)))
          (if _%tab150934150936%_
              (let ((_%tab150939%_ _%tab150934150936%_))
                (declare (not safe))
                (hash-get _%tab150939%_ _%method150933%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a150920%_ _%type-b150921%_)
        (if _%type-a150920%_
            (if _%type-b150921%_
                (let ((_%$e150923%_ (eq? _%type-a150920%_ _%type-b150921%_)))
                  (if _%$e150923%_
                      _%$e150923%_
                      (let ((_%$e150926%_
                             (eq? (##structure-ref
                                   _%type-b150921%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e150926%_
                            _%$e150926%_
                            (let ((_%$e150929%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a150920%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b150921%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e150929%_
                                  _%$e150929%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a150920%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b150921%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a150920%_
                                           _%type-b150921%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a150871%_ _%klass-b150872%_)
        (let ((_%$e150874%_
               (eq? (##structure-ref _%klass-a150871%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b150872%_ '1 gxc#!type::t '#f))))
          (if _%$e150874%_
              _%$e150874%_
              (let ((_%klass-id-b150877%_
                     (##structure-ref _%klass-b150872%_ '1 gxc#!type::t '#f))
                    (_%precedence-list150878%_
                     (##structure-ref _%klass-a150871%_ '3 gxc#!class::t '#f)))
                (let _%loop150880%_ ((_%rest150882%_
                                      _%precedence-list150878%_))
                  (let* ((_%rest150883150891%_ _%rest150882%_)
                         (_%else150885150899%_ (lambda () '#f))
                         (_%K150887150908%_
                          (lambda (_%rest150902%_ _%klass-name150903%_)
                            (let ((_%$e150905%_
                                   (eq? (let ((__tmp153569
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a150871%_
                                                            (cons _%klass-b150872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name150903%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp153569
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b150877%_)))
                              (if _%$e150905%_
                                  _%$e150905%_
                                  (_%loop150880%_ _%rest150902%_))))))
                    (if (pair? _%rest150883150891%_)
                        (let ((_%hd150888150911%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest150883150891%_)))
                              (_%tl150889150913%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest150883150891%_))))
                          (let* ((_%klass-name150916%_ _%hd150888150911%_)
                                 (_%rest150918%_ _%tl150889150913%_))
                            (_%K150887150908%_
                             _%rest150918%_
                             _%klass-name150916%_)))
                        (_%else150885150899%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type150869%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150869%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type150869%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc150858%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc150858%_ 'gxc#!procedure::t))
            (let ((_%proc150861%_ _%proc150858%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc150861%_ '2 '#f '#f))
                  (let ((__tmp153570
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc150861%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp153570 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc150858%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym150840%_ _%type150841%_ _%local?150842%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150841%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym150840%_
                     _%type150841%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym150840%_ '" " _%type150841%_))
        (let ((_%table150844%_
               (if _%local?150842%_
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
          (hash-put! _%table150844%_ _%sym150840%_ _%type150841%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym150849%_ _%type150850%_)
        (let ((_%local?150852%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym150849%_
           _%type150850%_
           _%local?150852%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g153572_
        (let ((_g153571_ (let () (declare (not safe)) (##length _g153572_))))
          (cond ((let () (declare (not safe)) (##fx= _g153571_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g153572_))
                ((let () (declare (not safe)) (##fx= _g153571_ 3))
                 (apply gxc#optimizer-declare-type!__% _g153572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g153572_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym150834%_ _%type150835%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150835%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym150834%_
                     _%type150835%_)))
        (let ((_%table150837%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp153573
                 (let () (declare (not safe)) (struct->list _%type150835%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym150834%_ '" " __tmp153573))
          (let ()
            (declare (not safe))
            (hash-put! _%table150837%_ _%sym150834%_ _%type150835%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table150837%_ _%type150835%_ _%sym150834%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym150829%_ _%type150830%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150830%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym150829%_
                     _%type150830%_)))
        (let ((_%table150832%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table150832%_ _%sym150829%_))
              '#!void
              (begin
                (let ((__tmp153574
                       (let ()
                         (declare (not safe))
                         (struct->list _%type150830%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym150829%_
                   '" "
                   __tmp153574))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table150832%_ _%sym150829%_ _%type150830%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table150832%_
                   _%type150830%_
                   _%sym150829%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym150827%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym150827%_))
        (let ((__tmp153575
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp153575 _%sym150827%_))
        (let ((__tmp153576
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp153576 _%sym150827%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t150795%_
               _%method150796%_
               _%sym150797%_
               _%rebind?150798%_)
        (let ((__tmp153577
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp153577 _%sym150797%_ '#t))
        (let ((_%klass150800%_ (gxc#optimizer-lookup-class _%type-t150795%_)))
          (if _%klass150800%_
              (let* ((_%vtab150802%_ (gxc#!class-method-table _%klass150800%_))
                     (_%$e150804%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab150802%_ _%method150796%_))))
                (if _%$e150804%_
                    ((lambda (_%existing150807%_)
                       (if _%rebind?150798%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t150795%_
                                '" "
                                _%method150796%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab150802%_
                                _%method150796%_
                                _%sym150797%_)))
                           (if (eq? _%existing150807%_ _%sym150797%_)
                               '#!void
                               (let ((__tmp153578
                                      (cons 'bind-method!
                                            (cons _%type-t150795%_
                                                  (cons _%method150796%_
                                                        (cons _%sym150797%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp153578
                                  _%method150796%_)))))
                     _%$e150804%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t150795%_
                         '" "
                         _%method150796%_
                         '" => "
                         _%sym150797%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab150802%_
                         _%method150796%_
                         _%sym150797%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t150795%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t150816%_ _%method150817%_ _%sym150818%_)
        (let ((_%rebind?150820%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t150816%_
           _%method150817%_
           _%sym150818%_
           _%rebind?150820%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g153580_
        (let ((_g153579_ (let () (declare (not safe)) (##length _g153580_))))
          (cond ((let () (declare (not safe)) (##fx= _g153579_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g153580_))
                ((let () (declare (not safe)) (##fx= _g153579_ 4))
                 (apply gxc#optimizer-declare-method!__% _g153580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g153580_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym150780%_)
        (let ((_%$e150782%_
               (let ((__tmp153581
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym150780%_ __tmp153581))))
          (if _%$e150782%_
              _%$e150782%_
              (let ((_%$e150791%_
                     (let ((_%ht150784150786%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht150784150786%_
                           (let ((_%ht150789%_ _%ht150784150786%_))
                             (declare (not safe))
                             (hash-get _%ht150789%_ _%sym150780%_))
                           '#f))))
                (if _%$e150791%_
                    _%$e150791%_
                    (let ((__tmp153582
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp153582 _%sym150780%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym150772%_)
        (let ((_%type150773150775%_ (gxc#optimizer-lookup-type _%sym150772%_)))
          (if _%type150773150775%_
              (let ((_%type150778%_ _%type150773150775%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type150778%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type150778%_ '1 '#f '#f)))
                    _%type150778%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym150768%_)
        (let ((_%table150770%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table150770%_ _%sym150768%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where150753%_ _%sym150754%_)
        (let ((_%$e150757%_ (gxc#optimizer-lookup-class _%sym150754%_)))
          (if _%$e150757%_
              ((lambda (_%g150759150761%_)
                 (let ((_%val150764%_ _%g150759150761%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val150764%_
                          'gxc#!class::t))
                       _%val150764%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val150764%_)))))
               _%$e150757%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where150753%_
                   _%sym150754%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass150751%_)
        (let ((__tmp153583
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp153583 _%klass150751%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t150748%_ _%method150749%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t150748%_)
         _%method150749%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym150746%_)
        (let ((__tmp153584
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp153584 _%sym150746%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e150628%_
                  (lambda (_%t150729%_)
                    (if (symbol? _%t150729%_)
                        (_%type-e150628%_
                         (gxc#optimizer-lookup-type _%t150729%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t150729%_
                               'gxc#!lambda::t))
                            (_%__lambda-type150630%_ _%t150729%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t150729%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type150632%_ _%t150729%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t150729%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type150634%_
                                     _%t150729%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t150729%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t150736%_ _%t150729%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t150736%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp153585
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t150736%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp153585
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t150729%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t150729%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type150629%_
                  (lambda (_%t150717%_)
                    (let ((_%t150720%_ _%t150717%_))
                      (_%__lambda-type150630%_ _%t150720%_))))
                 (_%__lambda-type150630%_
                  (lambda (_%t150705%_)
                    (let ((_%t150708%_ _%t150705%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t150708%_ '4 '#f '#f))
                          (_%type-e150628%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t150708%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t150708%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp153586
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t150708%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp153586
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type150631%_
                  (lambda (_%t150693%_)
                    (let ((_%t150696%_ _%t150693%_))
                      (_%__kw-lambda-type150632%_ _%t150696%_))))
                 (_%__kw-lambda-type150632%_
                  (lambda (_%t150681%_)
                    (let ((_%t150684%_ _%t150681%_))
                      (_%type-e150628%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t150684%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type150633%_
                  (lambda (_%t150669%_)
                    (let ((_%t150672%_ _%t150669%_))
                      (_%__kw-lambda-primary-type150634%_ _%t150672%_))))
                 (_%__kw-lambda-primary-type150634%_
                  (lambda (_%t150655%_)
                    (let ((_%t150658%_ _%t150655%_))
                      (_%type-e150628%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t150658%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1150636%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2150638%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result150640%_
                  (if _%ht1150636%_
                      (let () (declare (not safe)) (hash->list _%ht1150636%_))
                      '()))
                 (_%result150642%_
                  (if _%ht2150638%_
                      (let ((__tmp153587
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2150638%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result150640%_ __tmp153587))
                      _%result150640%_)))
            (for-each
             (lambda (_%p150645%_)
               (let* ((_%t150647%_ (cdr _%p150645%_))
                      (_%tr150649%_ (_%type-e150628%_ _%t150647%_)))
                 (set-cdr! _%p150645%_ _%tr150649%_)))
             _%result150642%_)
            (list-sort
             (lambda (_%a150652%_ _%b150653%_)
               (let ((__tmp153589 (symbol->string (car _%a150652%_)))
                     (__tmp153588 (symbol->string (car _%b150653%_))))
                 (declare (not safe))
                 (##string<? __tmp153589 __tmp153588)))
             _%result150642%_)))))))
