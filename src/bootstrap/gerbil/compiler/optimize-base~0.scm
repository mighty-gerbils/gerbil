(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1713001409)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp150639 (list)) (__tmp150638 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp150639
         '(type classes ssxi methods)
         __tmp150638
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args150610%_
        (apply make-instance gxc#optimizer-info::t _%$args150610%_)))
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
      (lambda (_%self147751150595%_)
        (let* ((_%self150598%_ _%self147751150595%_)
               (_%self150600%_ _%self150598%_))
          (if (let ((__tmp150640
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self150600%_))))
                (declare (not safe))
                (##fx< '4 __tmp150640))
              (begin
                (let ((__tmp150641
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150600%_
                   __tmp150641
                   '1
                   '#f
                   '#f))
                (let ((__tmp150642
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150600%_
                   __tmp150642
                   '2
                   '#f
                   '#f))
                (let ((__tmp150643
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150600%_
                   __tmp150643
                   '3
                   '#f
                   '#f))
                (let ((__tmp150644
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150600%_
                   __tmp150644
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp150645
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self150600%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self150600%_
                       '4
                       __tmp150645))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp150647 (list))
            (__tmp150646
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp150647
         '(id)
         __tmp150646
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args150470%_
        (apply make-instance gxc#!type::t _%$args150470%_)))
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
      (let ((__tmp150649 (list gxc#!type::t))
            (__tmp150648 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp150649
         '()
         __tmp150648
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args150467%_
        (apply make-instance gxc#!abort::t _%$args150467%_)))
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
      (let ((__tmp150651 (list gxc#!type::t))
            (__tmp150650 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp150651
         '()
         __tmp150650
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args150464%_
        (apply make-instance gxc#!alias::t _%$args150464%_)))
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
      (let ((__tmp150653 (list))
            (__tmp150652
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp150653
         '(return effect arguments unchecked origin)
         __tmp150652
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args150461%_
        (apply make-instance gxc#!signature::t _%$args150461%_)))
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
      (let ((__tmp150655 (list gxc#!type::t))
            (__tmp150654
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp150655
         '(signature)
         __tmp150654
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
      (lambda (_%id150440%_ _%signature150441%_)
        (if ((lambda (_%$obj150444%_)
               (or (not _%$obj150444%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj150444%_
                      'gxc#!signature::t))))
             _%signature150441%_)
            (let ((_%signature150451%_ _%signature150441%_))
              (gxc#__make-!procedure _%id150440%_ _%signature150451%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature150441%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id150426%_ _%signature150428%_)
        (let ((_%signature150431%_ _%signature150428%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id150426%_ _%signature150431%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj150395%_ _%signature150396%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj150395%_ 'gxc#!procedure::t))
            (let ((_%$obj150400%_ _%$obj150395%_))
              (if ((lambda (_%$obj150409%_)
                     (or (not _%$obj150409%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj150409%_
                            'gxc#!signature::t))))
                   _%signature150396%_)
                  (let ((_%signature150416%_ _%signature150396%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj150400%_
                     _%signature150416%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature150396%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj150395%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj150372%_ _%signature150374%_)
        (let* ((_%$obj150378%_ _%$obj150372%_)
               (_%signature150386%_ _%signature150374%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj150378%_
           _%signature150386%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp150657 (list gxc#!type::t))
            (__tmp150656 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp150657
         '(class)
         __tmp150656
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args150369%_
        (apply make-instance gxc#!class-meta::t _%$args150369%_)))
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
      (let ((__tmp150659 (list gxc#!type::t))
            (__tmp150658
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
         __tmp150659
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp150658
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args150366%_
        (apply make-instance gxc#!class::t _%$args150366%_)))
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
      (let ((__tmp150661 (list gxc#!procedure::t))
            (__tmp150660 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp150661
         '()
         __tmp150660
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args150363%_
        (apply make-instance gxc#!predicate::t _%$args150363%_)))
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
      (let ((__tmp150663 (list gxc#!procedure::t))
            (__tmp150662 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp150663
         '()
         __tmp150662
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args150360%_
        (apply make-instance gxc#!constructor::t _%$args150360%_)))
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
      (let ((__tmp150665 (list gxc#!procedure::t))
            (__tmp150664 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp150665
         '(slot checked?)
         __tmp150664
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args150357%_
        (apply make-instance gxc#!accessor::t _%$args150357%_)))
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
      (let ((__tmp150667 (list gxc#!procedure::t))
            (__tmp150666 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp150667
         '(slot checked?)
         __tmp150666
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args150354%_
        (apply make-instance gxc#!mutator::t _%$args150354%_)))
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
      (let ((__tmp150669 (list gxc#!type::t))
            (__tmp150668 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp150669
         '(methods)
         __tmp150668
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args150351%_
        (apply make-instance gxc#!interface::t _%$args150351%_)))
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
      (let ((__tmp150671 (list gxc#!procedure::t))
            (__tmp150670
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp150671
         '(arity dispatch inline inline-typedecl)
         __tmp150670
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args150348%_
        (apply make-instance gxc#!lambda::t _%$args150348%_)))
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
      (let ((__tmp150673 (list gxc#!procedure::t))
            (__tmp150672 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp150673
         '(clauses)
         __tmp150672
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args150345%_
        (apply make-instance gxc#!case-lambda::t _%$args150345%_)))
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
      (let ((__tmp150675 (list gxc#!procedure::t))
            (__tmp150674
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp150675
         '(table dispatch)
         __tmp150674
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args150342%_
        (apply make-instance gxc#!kw-lambda::t _%$args150342%_)))
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
      (let ((__tmp150677 (list gxc#!procedure::t))
            (__tmp150676 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp150677
         '(keys main)
         __tmp150676
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args150339%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args150339%_)))
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
      (let ((__tmp150678 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp150678
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args150336%_
        (apply make-instance gxc#!primitive::t _%$args150336%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp150680 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp150679 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp150680
         '()
         __tmp150679
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args150333%_
        (apply make-instance gxc#!primitive-predicate::t _%$args150333%_)))
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
      (let ((__tmp150682 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp150681 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp150682
         '()
         __tmp150681
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args150330%_
        (apply make-instance gxc#!primitive-lambda::t _%$args150330%_)))
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
      (let ((__tmp150684 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp150683 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp150684
         '()
         __tmp150683
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args150327%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args150327%_)))
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
      (lambda (_%self147752150312%_)
        (let* ((_%self150315%_ _%self147752150312%_)
               (_%self150317%_ _%self150315%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self150317%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147753150174%_ _%klass150176%_)
        (let* ((_%self150178%_ _%self147753150174%_)
               (_%self150180%_ _%self150178%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150180%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150180%_
             _%klass150176%_
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
      (lambda (_%self147754149862%_
               _%id149864%_
               _%super149865%_
               _%slots149866%_
               _%ctor-method149867%_
               _%struct?149868%_
               _%final?149869%_
               _%system?149870%_
               _%metaclass149871%_)
        (let* ((_%self149873%_ _%self147754149862%_)
               (_%self149875%_ _%self149873%_))
          (let _%lp149885%_ ((_%rest149887%_ _%super149865%_))
            (let* ((_%rest149888149896%_ _%rest149887%_)
                   (_%else149890149904%_ (lambda () '#!void))
                   (_%K149892149910%_
                    (lambda (_%rest149907%_ _%super-id149908%_)
                      (if (let ((__tmp150685
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id149864%_ '()))
                                  _%super-id149908%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp150685 '8 '#f '#f))
                          (let ((__tmp150686
                                 (cons '!class (cons _%id149864%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp150686
                             _%super-id149908%_))
                          '#!void)
                      (_%lp149885%_ _%rest149907%_))))
              (if (let () (declare (not safe)) (##pair? _%rest149888149896%_))
                  (let ((_%hd149893149913%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest149888149896%_)))
                        (_%tl149894149915%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest149888149896%_))))
                    (let* ((_%super-id149918%_ _%hd149893149913%_)
                           (_%rest149920%_ _%tl149894149915%_))
                      (_%K149892149910%_ _%rest149920%_ _%super-id149918%_)))
                  '#!void)))
          (let* ((_%ctor-method149971%_
                  (let ((_%$e149922%_ _%ctor-method149867%_))
                    (if _%$e149922%_
                        _%$e149922%_
                        (let _%lp149925%_ ((_%rest149927%_ _%super149865%_)
                                           (_%method149928%_ '#f))
                          (let* ((_%rest149929149937%_ _%rest149927%_)
                                 (_%else149931149945%_
                                  (lambda () _%method149928%_))
                                 (_%K149933149959%_
                                  (lambda (_%rest149948%_ _%super-id149949%_)
                                    (let* ((_%klass149951%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id149864%_ '()))
                                             _%super-id149949%_))
                                           (_%$e149953%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass149951%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e149953%_
                                          ((lambda (_%ctor-method149956%_)
                                             (if _%method149928%_
                                                 (if (eq? _%ctor-method149956%_
                                                          _%method149928%_)
                                                     (_%lp149925%_
                                                      _%rest149948%_
                                                      _%ctor-method149956%_)
                                                     (let ((__tmp150687
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id149864%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp150687
                _%method149928%_
                _%ctor-method149956%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp149925%_
                                                  _%rest149948%_
                                                  _%ctor-method149956%_)))
                                           _%$e149953%_)
                                          (_%lp149925%_
                                           _%rest149948%_
                                           _%method149928%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest149929149937%_))
                                (let ((_%hd149934149962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest149929149937%_)))
                                      (_%tl149935149964%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest149929149937%_))))
                                  (let* ((_%super-id149967%_
                                          _%hd149934149962%_)
                                         (_%rest149969%_ _%tl149935149964%_))
                                    (_%K149933149959%_
                                     _%rest149969%_
                                     _%super-id149967%_)))
                                (_%else149931149945%_)))))))
                 (_g150688_
                  (let ((__tmp150692
                         (lambda (_%klass-id149973%_)
                           (cons _%klass-id149973%_
                                 (let ((__tmp150693
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id149864%_ '()))
                                         _%klass-id149973%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp150693
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp150690
                         (lambda (_%klass-id149975%_)
                           (let ((__tmp150691
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id149864%_ '()))
                                   _%klass-id149975%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp150691
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp150692
                     __tmp150690
                     eq?
                     identity
                     '()
                     _%super149865%_))))
            (begin
              (let ((_g150689_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g150688_)
                           (##vector-length _g150688_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g150689_ 2)))
                    (error "Context expects 2 values" _g150689_)))
              (let ((_%precedence-list149977%_
                     (let () (declare (not safe)) (##vector-ref _g150688_ 0)))
                    (_%base-struct149978%_
                     (let () (declare (not safe)) (##vector-ref _g150688_ 1))))
                (let* ((_%precedence-list150022%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id149864%_ '(t object class)))
                            _%precedence-list149977%_
                            (if (memq 'object::t _%precedence-list149977%_)
                                _%precedence-list149977%_
                                (if _%system?149870%_
                                    (if (memq 't::t _%precedence-list149977%_)
                                        _%precedence-list149977%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list149977%_
                                           '(t::t))))
                                    (let _%loop149984%_ ((_%tail149986%_
                                                          _%precedence-list149977%_)
                                                         (_%head149987%_ '()))
                                      (let* ((_%tail149988149996%_
                                              _%tail149986%_)
                                             (_%else149990150004%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head149987%_))))
                                             (_%K149992150010%_
                                              (lambda (_%rest150007%_
                                                       _%hd150008%_)
                                                (if (eq? _%hd150008%_ 't::t)
                                                    (let ((__tmp150694
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail149986%_)))
              (declare (not safe))
              (__foldl1 cons __tmp150694 _%head149987%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop149984%_
                                                     _%rest150007%_
                                                     (cons _%hd150008%_
                                                           _%head149987%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail149988149996%_))
                                            (let ((_%hd149993150013%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail149988149996%_)))
                                                  (_%tl149994150015%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail149988149996%_))))
                                              (let* ((_%hd150018%_
                                                      _%hd149993150013%_)
                                                     (_%rest150020%_
                                                      _%tl149994150015%_))
                                                (_%K149992150010%_
                                                 _%rest150020%_
                                                 _%hd150018%_)))
                                            (_%else149990150004%_))))))))
                       (_%fields150024%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id149864%_ '()))
                         _%base-struct149978%_
                         _%precedence-list150022%_
                         _%slots149866%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149875%_
                     _%id149864%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149875%_
                     _%super149865%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149875%_
                     _%precedence-list150022%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149875%_
                     _%slots149866%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149875%_
                     _%fields150024%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149875%_
                     _%ctor-method149971%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149875%_
                     _%struct?149868%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149875%_
                     _%final?149869%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149875%_
                     _%metaclass149871%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147755150027%_
               _%id150029%_
               _%super150030%_
               _%precedence-list150031%_
               _%slots150032%_
               _%fields150033%_
               _%constructor150034%_
               _%struct?150035%_
               _%final?150036%_
               _%system?150037%_
               _%metaclass150038%_
               _%methods150039%_)
        (let* ((_%self150041%_ _%self147755150027%_)
               (_%self150043%_ _%self150041%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150043%_
             _%id150029%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150043%_
             _%super150030%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150043%_
             _%precedence-list150031%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150043%_
             _%slots150032%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150043%_
             _%fields150033%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150043%_
             _%constructor150034%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150043%_
             _%struct?150035%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150043%_
             _%final?150036%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150043%_
             _%metaclass150038%_
             '10
             '#f
             '#f))
          (if _%methods150039%_
              (let ((__tmp150695
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods150039%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self150043%_
                 __tmp150695
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g150697_
        (let ((_g150696_ (let () (declare (not safe)) (##length _g150697_))))
          (cond ((let () (declare (not safe)) (##fx= _g150696_ 9))
                 (apply gxc#!class:::init!__0 _g150697_))
                ((let () (declare (not safe)) (##fx= _g150696_ 12))
                 (apply gxc#!class:::init!__1 _g150697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g150697_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where149714%_
               _%base-struct149715%_
               _%precedence-list149716%_
               _%direct-slots149717%_)
        (let* ((_%base-fields149719%_
                (if _%base-struct149715%_
                    (let ((__tmp150698
                           (gxc#optimizer-resolve-class
                            _%where149714%_
                            _%base-struct149715%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp150698 '5 '#f '#f))
                    '()))
               (_%r-fields149721%_ (reverse _%base-fields149719%_))
               (_%seen-slots149729%_
                (let ((_%tab149723%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g149724149726%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab149723%_ _%g149724149726%_ '#t)))
                   _%base-fields149719%_)
                  _%tab149723%_))
               (_%process-slot149733%_
                (lambda (_%slot149731%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots149729%_ _%slot149731%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots149729%_
                           _%slot149731%_
                           '#t))
                        (set! _%r-fields149721%_
                              (cons _%slot149731%_ _%r-fields149721%_)))))))
          (for-each
           (lambda (_%mixin149736%_)
             (let ((_%klass149738%_
                    (gxc#optimizer-resolve-class
                     _%where149714%_
                     _%mixin149736%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass149738%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot149733%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass149738%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list149716%_)
          (for-each _%process-slot149733%_ _%direct-slots149717%_)
          (let () (declare (not safe)) (##reverse _%r-fields149721%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass149673%_ _%slot149674%_)
        (let _%lp149676%_ ((_%rest149678%_
                            (##structure-ref
                             _%klass149673%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset149679%_ '1))
          (let* ((_%rest149680149688%_ _%rest149678%_)
                 (_%else149682149696%_
                  (lambda ()
                    (let ((__tmp150700
                           (##structure-ref
                            _%klass149673%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp150699
                           (##structure-ref
                            _%klass149673%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp150700
                       __tmp150699
                       _%slot149674%_))))
                 (_%K149684149702%_
                  (lambda (_%rest149699%_ _%s149700%_)
                    (if (eq? _%s149700%_ _%slot149674%_)
                        _%offset149679%_
                        (_%lp149676%_
                         _%rest149699%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset149679%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest149680149688%_))
                (let ((_%hd149685149705%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest149680149688%_)))
                      (_%tl149686149707%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest149680149688%_))))
                  (let* ((_%s149710%_ _%hd149685149705%_)
                         (_%rest149712%_ _%tl149686149707%_))
                    (_%K149684149702%_ _%rest149712%_ _%s149710%_)))
                (_%else149682149696%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass149631%_ _%slot149632%_)
        (if (gxc#!class-struct-slot? _%klass149631%_ _%slot149632%_)
            _%klass149631%_
            (let _%lp149634%_ ((_%rest149636%_
                                (##structure-ref
                                 _%klass149631%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest149637149645%_ _%rest149636%_)
                     (_%else149639149653%_ (lambda () '#f))
                     (_%K149641149661%_
                      (lambda (_%rest149656%_ _%super149657%_)
                        (let ((_%super-class149659%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass149631%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot149632%_ '())))
                                _%super149657%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class149659%_
                               _%slot149632%_)
                              _%super-class149659%_
                              (_%lp149634%_ _%rest149656%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest149637149645%_))
                    (let ((_%hd149642149664%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest149637149645%_)))
                          (_%tl149643149666%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest149637149645%_))))
                      (let* ((_%super149669%_ _%hd149642149664%_)
                             (_%rest149671%_ _%tl149643149666%_))
                        (_%K149641149661%_ _%rest149671%_ _%super149669%_)))
                    (_%else149639149653%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass149628%_ _%slot149629%_)
        (if (##structure-ref _%klass149628%_ '7 gxc#!class::t '#f)
            (memq _%slot149629%_
                  (##structure-ref _%klass149628%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147756149612%_ _%id149614%_)
        (let* ((_%self149616%_ _%self147756149612%_)
               (_%self149618%_ _%self149616%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149618%_
             _%id149614%_
             '1
             '#f
             '#f))
          (let ((__tmp150701
                 (let ((__obj150633
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
                      __obj150633
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150633
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150633
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150633)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149618%_
             __tmp150701
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147757149474%_ _%id149476%_)
        (let* ((_%self149478%_ _%self147757149474%_)
               (_%self149480%_ _%self149478%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149480%_
             _%id149476%_
             '1
             '#f
             '#f))
          (let ((__tmp150702
                 (let ((__obj150634
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
                      __obj150634
                      _%id149476%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150634
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj150634)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149480%_
             __tmp150702
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
      (lambda (_%self147758149334%_
               _%id149336%_
               _%slot149337%_
               _%checked?149338%_)
        (let* ((_%self149340%_ _%self147758149334%_)
               (_%self149342%_ _%self149340%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149342%_
             _%id149336%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149342%_
             _%slot149337%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149342%_
             _%checked?149338%_
             '4
             '#f
             '#f))
          (let ((__tmp150703
                 (let ((__obj150635
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
                     (##unchecked-structure-set! __obj150635 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150635
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150704 (cons _%id149336%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150635
                      __tmp150704
                      '3
                      '#f
                      '#f))
                   __obj150635)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149342%_
             __tmp150703
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self147759149194%_
               _%id149196%_
               _%slot149197%_
               _%checked?149198%_)
        (let* ((_%self149200%_ _%self147759149194%_)
               (_%self149202%_ _%self149200%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149202%_
             _%id149196%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149202%_
             _%slot149197%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149202%_
             _%checked?149198%_
             '4
             '#f
             '#f))
          (let ((__tmp150705
                 (let ((__obj150636
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
                      __obj150636
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150636
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150706 (cons _%id149196%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150636
                      __tmp150706
                      '3
                      '#f
                      '#f))
                   __obj150636)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149202%_
             __tmp150705
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords149036%_
               _%signature149033149037%_
               _%self147760149039%_
               _%arity149041%_
               _%dispatch149042%_)
        (let* ((_%signature149044%_
                (if (eq? _%signature149033149037%_ absent-value)
                    '#f
                    _%signature149033149037%_))
               (_%self149046%_ _%self147760149039%_)
               (_%self149048%_ _%self149046%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self149048%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149048%_
             _%arity149041%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149048%_
             _%dispatch149042%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149048%_
             _%signature149044%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords149062%_ . _%args149063%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords149062%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149062%_
                  'signature:
                  absent-value))
               _%args149063%_)))
    (define gxc#!lambda:::init!
      (lambda _%args149034149069%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args149034149069%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords148875%_
               _%signature148872148876%_
               _%self147761148878%_
               _%clauses148880%_)
        (let* ((_%signature148882%_
                (if (eq? _%signature148872148876%_ absent-value)
                    '#f
                    _%signature148872148876%_))
               (_%self148884%_ _%self147761148878%_)
               (_%self148886%_ _%self148884%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148886%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148886%_
             _%signature148882%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148886%_
             _%clauses148880%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords148900%_ . _%args148901%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords148900%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148900%_
                  'signature:
                  absent-value))
               _%args148901%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args148873148907%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args148873148907%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self147762148732%_ _%tab148734%_ _%dispatch148735%_)
        (let* ((_%self148737%_ _%self147762148732%_)
               (_%self148739%_ _%self148737%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148739%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148739%_
             _%tab148734%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148739%_
             _%dispatch148735%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self147763148593%_ _%keys148595%_ _%main148596%_)
        (let* ((_%self148598%_ _%self147763148593%_)
               (_%self148600%_ _%self148598%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148600%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148600%_
             _%keys148595%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148600%_
             _%main148596%_
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
      (lambda (_%self147764148211%_ _%id148213%_)
        (let* ((_%self148215%_ _%self147764148211%_)
               (_%self148217%_ _%self148215%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148217%_
             _%id148213%_
             '1
             '#f
             '#f))
          (let ((__tmp150707
                 (let ((__obj150637
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
                      __obj150637
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150637
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150637
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150637)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148217%_
             __tmp150707
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
      (lambda (_%klass148080%_)
        (let ((_%$e148082%_
               (##structure-ref _%klass148080%_ '11 gxc#!class::t '#f)))
          (if _%$e148082%_
              _%$e148082%_
              (let ((_%tab148086%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass148080%_
                 _%tab148086%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab148086%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass148071%_ _%method148072%_)
        (let ((_%tab148073148075%_
               (##structure-ref _%klass148071%_ '11 gxc#!class::t '#f)))
          (if _%tab148073148075%_
              (let ((_%tab148078%_ _%tab148073148075%_))
                (declare (not safe))
                (hash-get _%tab148078%_ _%method148072%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a148059%_ _%type-b148060%_)
        (if _%type-a148059%_
            (if _%type-b148060%_
                (let ((_%$e148062%_ (eq? _%type-a148059%_ _%type-b148060%_)))
                  (if _%$e148062%_
                      _%$e148062%_
                      (let ((_%$e148065%_
                             (eq? (##structure-ref
                                   _%type-b148060%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e148065%_
                            _%$e148065%_
                            (let ((_%$e148068%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a148059%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b148060%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e148068%_
                                  _%$e148068%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a148059%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b148060%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a148059%_
                                           _%type-b148060%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a148010%_ _%klass-b148011%_)
        (let ((_%$e148013%_
               (eq? (##structure-ref _%klass-a148010%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b148011%_ '1 gxc#!type::t '#f))))
          (if _%$e148013%_
              _%$e148013%_
              (let ((_%klass-id-b148016%_
                     (##structure-ref _%klass-b148011%_ '1 gxc#!type::t '#f))
                    (_%precedence-list148017%_
                     (##structure-ref _%klass-a148010%_ '3 gxc#!class::t '#f)))
                (let _%loop148019%_ ((_%rest148021%_
                                      _%precedence-list148017%_))
                  (let* ((_%rest148022148030%_ _%rest148021%_)
                         (_%else148024148038%_ (lambda () '#f))
                         (_%K148026148047%_
                          (lambda (_%rest148041%_ _%klass-name148042%_)
                            (let ((_%$e148044%_
                                   (eq? (let ((__tmp150708
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a148010%_
                                                            (cons _%klass-b148011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name148042%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp150708
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b148016%_)))
                              (if _%$e148044%_
                                  _%$e148044%_
                                  (_%loop148019%_ _%rest148041%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest148022148030%_))
                        (let ((_%hd148027148050%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest148022148030%_)))
                              (_%tl148028148052%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest148022148030%_))))
                          (let* ((_%klass-name148055%_ _%hd148027148050%_)
                                 (_%rest148057%_ _%tl148028148052%_))
                            (_%K148026148047%_
                             _%rest148057%_
                             _%klass-name148055%_)))
                        (_%else148024148038%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type148008%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type148008%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type148008%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc147997%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc147997%_ 'gxc#!procedure::t))
            (let ((_%proc148000%_ _%proc147997%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc148000%_ '2 '#f '#f))
                  (let ((__tmp150709
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc148000%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp150709 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc147997%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym147979%_ _%type147980%_ _%local?147981%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147980%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym147979%_
                     _%type147980%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym147979%_ '" " _%type147980%_))
        (let ((_%table147983%_
               (if _%local?147981%_
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
          (hash-put! _%table147983%_ _%sym147979%_ _%type147980%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym147988%_ _%type147989%_)
        (let ((_%local?147991%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym147988%_
           _%type147989%_
           _%local?147991%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g150711_
        (let ((_g150710_ (let () (declare (not safe)) (##length _g150711_))))
          (cond ((let () (declare (not safe)) (##fx= _g150710_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g150711_))
                ((let () (declare (not safe)) (##fx= _g150710_ 3))
                 (apply gxc#optimizer-declare-type!__% _g150711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g150711_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym147973%_ _%type147974%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147974%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym147973%_
                     _%type147974%_)))
        (let ((_%table147976%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp150712
                 (let () (declare (not safe)) (struct->list _%type147974%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym147973%_ '" " __tmp150712))
          (let ()
            (declare (not safe))
            (hash-put! _%table147976%_ _%sym147973%_ _%type147974%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table147976%_ _%type147974%_ _%sym147973%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym147968%_ _%type147969%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147969%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym147968%_
                     _%type147969%_)))
        (let ((_%table147971%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table147971%_ _%sym147968%_))
              '#!void
              (begin
                (let ((__tmp150713
                       (let ()
                         (declare (not safe))
                         (struct->list _%type147969%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym147968%_
                   '" "
                   __tmp150713))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table147971%_ _%sym147968%_ _%type147969%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table147971%_
                   _%type147969%_
                   _%sym147968%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym147966%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym147966%_))
        (let ((__tmp150714
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp150714 _%sym147966%_))
        (let ((__tmp150715
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp150715 _%sym147966%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t147934%_
               _%method147935%_
               _%sym147936%_
               _%rebind?147937%_)
        (let ((__tmp150716
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp150716 _%sym147936%_ '#t))
        (let ((_%klass147939%_ (gxc#optimizer-lookup-class _%type-t147934%_)))
          (if _%klass147939%_
              (let* ((_%vtab147941%_ (gxc#!class-method-table _%klass147939%_))
                     (_%$e147943%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab147941%_ _%method147935%_))))
                (if _%$e147943%_
                    ((lambda (_%existing147946%_)
                       (if _%rebind?147937%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t147934%_
                                '" "
                                _%method147935%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab147941%_
                                _%method147935%_
                                _%sym147936%_)))
                           (if (eq? _%existing147946%_ _%sym147936%_)
                               '#!void
                               (let ((__tmp150717
                                      (cons 'bind-method!
                                            (cons _%type-t147934%_
                                                  (cons _%method147935%_
                                                        (cons _%sym147936%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp150717
                                  _%method147935%_)))))
                     _%$e147943%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t147934%_
                         '" "
                         _%method147935%_
                         '" => "
                         _%sym147936%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab147941%_
                         _%method147935%_
                         _%sym147936%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t147934%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t147955%_ _%method147956%_ _%sym147957%_)
        (let ((_%rebind?147959%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t147955%_
           _%method147956%_
           _%sym147957%_
           _%rebind?147959%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g150719_
        (let ((_g150718_ (let () (declare (not safe)) (##length _g150719_))))
          (cond ((let () (declare (not safe)) (##fx= _g150718_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g150719_))
                ((let () (declare (not safe)) (##fx= _g150718_ 4))
                 (apply gxc#optimizer-declare-method!__% _g150719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g150719_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym147919%_)
        (let ((_%$e147921%_
               (let ((__tmp150720
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym147919%_ __tmp150720))))
          (if _%$e147921%_
              _%$e147921%_
              (let ((_%$e147930%_
                     (let ((_%ht147923147925%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht147923147925%_
                           (let ((_%ht147928%_ _%ht147923147925%_))
                             (declare (not safe))
                             (hash-get _%ht147928%_ _%sym147919%_))
                           '#f))))
                (if _%$e147930%_
                    _%$e147930%_
                    (let ((__tmp150721
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp150721 _%sym147919%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym147911%_)
        (let ((_%type147912147914%_ (gxc#optimizer-lookup-type _%sym147911%_)))
          (if _%type147912147914%_
              (let ((_%type147917%_ _%type147912147914%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type147917%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type147917%_ '1 '#f '#f)))
                    _%type147917%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym147907%_)
        (let ((_%table147909%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table147909%_ _%sym147907%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where147892%_ _%sym147893%_)
        (let ((_%$e147896%_ (gxc#optimizer-lookup-class _%sym147893%_)))
          (if _%$e147896%_
              ((lambda (_%g147898147900%_)
                 (let ((_%val147903%_ _%g147898147900%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val147903%_
                          'gxc#!class::t))
                       _%val147903%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val147903%_)))))
               _%$e147896%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where147892%_
                   _%sym147893%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass147890%_)
        (let ((__tmp150722
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150722 _%klass147890%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t147887%_ _%method147888%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t147887%_)
         _%method147888%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym147885%_)
        (let ((__tmp150723
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150723 _%sym147885%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e147767%_
                  (lambda (_%t147868%_)
                    (if (symbol? _%t147868%_)
                        (_%type-e147767%_
                         (gxc#optimizer-lookup-type _%t147868%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t147868%_
                               'gxc#!lambda::t))
                            (_%__lambda-type147769%_ _%t147868%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t147868%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type147771%_ _%t147868%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t147868%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type147773%_
                                     _%t147868%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t147868%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t147875%_ _%t147868%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t147875%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp150724
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t147875%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp150724
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t147868%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t147868%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type147768%_
                  (lambda (_%t147856%_)
                    (let ((_%t147859%_ _%t147856%_))
                      (_%__lambda-type147769%_ _%t147859%_))))
                 (_%__lambda-type147769%_
                  (lambda (_%t147844%_)
                    (let ((_%t147847%_ _%t147844%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t147847%_ '4 '#f '#f))
                          (_%type-e147767%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t147847%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t147847%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp150725
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t147847%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp150725
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type147770%_
                  (lambda (_%t147832%_)
                    (let ((_%t147835%_ _%t147832%_))
                      (_%__kw-lambda-type147771%_ _%t147835%_))))
                 (_%__kw-lambda-type147771%_
                  (lambda (_%t147820%_)
                    (let ((_%t147823%_ _%t147820%_))
                      (_%type-e147767%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t147823%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type147772%_
                  (lambda (_%t147808%_)
                    (let ((_%t147811%_ _%t147808%_))
                      (_%__kw-lambda-primary-type147773%_ _%t147811%_))))
                 (_%__kw-lambda-primary-type147773%_
                  (lambda (_%t147794%_)
                    (let ((_%t147797%_ _%t147794%_))
                      (_%type-e147767%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t147797%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1147775%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2147777%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result147779%_
                  (if _%ht1147775%_
                      (let () (declare (not safe)) (hash->list _%ht1147775%_))
                      '()))
                 (_%result147781%_
                  (if _%ht2147777%_
                      (let ((__tmp150726
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2147777%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result147779%_ __tmp150726))
                      _%result147779%_)))
            (for-each
             (lambda (_%p147784%_)
               (let* ((_%t147786%_ (cdr _%p147784%_))
                      (_%tr147788%_ (_%type-e147767%_ _%t147786%_)))
                 (set-cdr! _%p147784%_ _%tr147788%_)))
             _%result147781%_)
            (list-sort
             (lambda (_%a147791%_ _%b147792%_)
               (let ((__tmp150728 (symbol->string (car _%a147791%_)))
                     (__tmp150727 (symbol->string (car _%b147792%_))))
                 (declare (not safe))
                 (##string<? __tmp150728 __tmp150727)))
             _%result147781%_)))))))
