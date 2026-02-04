(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1770243152)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp174622 (list)) (__tmp174621 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp174622
         '(type classes ssxi methods)
         __tmp174621
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args174593%_
        (apply make-instance gxc#optimizer-info::t _%$args174593%_)))
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
      (lambda (_%self174580%_)
        (let ((_%self174583%_ _%self174580%_))
          (if (let ((__tmp174623
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self174583%_))))
                (declare (not safe))
                (##fx< '4 __tmp174623))
              (begin
                (let ((__tmp174624
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self174583%_
                   __tmp174624
                   '1
                   '#f
                   '#f))
                (let ((__tmp174625
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self174583%_
                   __tmp174625
                   '2
                   '#f
                   '#f))
                (let ((__tmp174626
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self174583%_
                   __tmp174626
                   '3
                   '#f
                   '#f))
                (let ((__tmp174627
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self174583%_
                   __tmp174627
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp174628
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self174583%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self174583%_
                       '4
                       __tmp174628))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp174630 (list)) (__tmp174629 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp174630
         '(id)
         __tmp174629
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args174455%_
        (apply make-instance gxc#!type::t _%$args174455%_)))
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
      (let ((__tmp174632 (list gxc#!type::t))
            (__tmp174631 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp174632
         '()
         __tmp174631
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args174452%_
        (apply make-instance gxc#!abort::t _%$args174452%_)))
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
      (let ((__tmp174634 (list gxc#!type::t))
            (__tmp174633 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp174634
         '()
         __tmp174633
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args174449%_
        (apply make-instance gxc#!alias::t _%$args174449%_)))
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
      (let ((__tmp174636 (list)) (__tmp174635 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp174636
         '(return effect arguments unchecked origin)
         __tmp174635
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args174446%_
        (apply make-instance gxc#!signature::t _%$args174446%_)))
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
      (let ((__tmp174638 (list gxc#!type::t))
            (__tmp174637 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp174638
         '(signature)
         __tmp174637
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
      (lambda (_%id174425%_ _%signature174426%_)
        (if ((lambda (_%$obj174429%_)
               (or (not _%$obj174429%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj174429%_
                      'gxc#!signature::t))))
             _%signature174426%_)
            (let ((_%signature174436%_ _%signature174426%_))
              (gxc#__make-!procedure _%id174425%_ _%signature174436%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature174426%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id174411%_ _%signature174413%_)
        (let ((_%signature174416%_ _%signature174413%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id174411%_ _%signature174416%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj174380%_ _%signature174381%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj174380%_ 'gxc#!procedure::t))
            (let ((_%$obj174385%_ _%$obj174380%_))
              (if ((lambda (_%$obj174394%_)
                     (or (not _%$obj174394%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj174394%_
                            'gxc#!signature::t))))
                   _%signature174381%_)
                  (let ((_%signature174401%_ _%signature174381%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj174385%_
                     _%signature174401%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature174381%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj174380%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj174357%_ _%signature174359%_)
        (let* ((_%$obj174363%_ _%$obj174357%_)
               (_%signature174371%_ _%signature174359%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj174363%_
           _%signature174371%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp174640 (list gxc#!type::t))
            (__tmp174639 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp174640
         '(class)
         __tmp174639
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args174354%_
        (apply make-instance gxc#!class-meta::t _%$args174354%_)))
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
      (let ((__tmp174642 (list gxc#!type::t))
            (__tmp174641 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp174642
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp174641
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args174351%_
        (apply make-instance gxc#!class::t _%$args174351%_)))
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
      (let ((__tmp174644 (list gxc#!procedure::t))
            (__tmp174643 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp174644
         '()
         __tmp174643
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args174348%_
        (apply make-instance gxc#!predicate::t _%$args174348%_)))
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
      (let ((__tmp174646 (list gxc#!procedure::t))
            (__tmp174645 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp174646
         '()
         __tmp174645
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args174345%_
        (apply make-instance gxc#!constructor::t _%$args174345%_)))
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
      (let ((__tmp174648 (list gxc#!procedure::t))
            (__tmp174647 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp174648
         '(slot checked?)
         __tmp174647
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args174342%_
        (apply make-instance gxc#!accessor::t _%$args174342%_)))
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
      (let ((__tmp174650 (list gxc#!procedure::t))
            (__tmp174649 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp174650
         '(slot checked?)
         __tmp174649
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args174339%_
        (apply make-instance gxc#!mutator::t _%$args174339%_)))
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
      (let ((__tmp174652 (list gxc#!type::t))
            (__tmp174651 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp174652
         '(methods)
         __tmp174651
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args174336%_
        (apply make-instance gxc#!interface::t _%$args174336%_)))
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
      (let ((__tmp174654 (list gxc#!procedure::t))
            (__tmp174653 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp174654
         '(arity dispatch inline inline-typedecl)
         __tmp174653
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args174333%_
        (apply make-instance gxc#!lambda::t _%$args174333%_)))
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
      (let ((__tmp174656 (list gxc#!procedure::t))
            (__tmp174655 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp174656
         '(clauses)
         __tmp174655
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args174330%_
        (apply make-instance gxc#!case-lambda::t _%$args174330%_)))
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
      (let ((__tmp174658 (list gxc#!procedure::t))
            (__tmp174657 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp174658
         '(table dispatch)
         __tmp174657
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args174327%_
        (apply make-instance gxc#!kw-lambda::t _%$args174327%_)))
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
      (let ((__tmp174660 (list gxc#!procedure::t))
            (__tmp174659 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp174660
         '(keys main)
         __tmp174659
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args174324%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args174324%_)))
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
      (let ((__tmp174661 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp174661
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args174321%_
        (apply make-instance gxc#!primitive::t _%$args174321%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp174663 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp174662 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp174663
         '()
         __tmp174662
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args174318%_
        (apply make-instance gxc#!primitive-predicate::t _%$args174318%_)))
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
      (let ((__tmp174665 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp174664 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp174665
         '()
         __tmp174664
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args174315%_
        (apply make-instance gxc#!primitive-lambda::t _%$args174315%_)))
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
      (let ((__tmp174667 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp174666 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp174667
         '()
         __tmp174666
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args174312%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args174312%_)))
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
      (lambda (_%self174299%_)
        (let ((_%self174302%_ _%self174299%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self174302%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self174162%_ _%klass174163%_)
        (let ((_%self174166%_ _%self174162%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174166%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174166%_
             _%klass174163%_
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
      (lambda (_%self173852%_
               _%id173853%_
               _%super173854%_
               _%slots173855%_
               _%ctor-method173856%_
               _%struct?173857%_
               _%final?173858%_
               _%system?173859%_
               _%metaclass173860%_)
        (let ((_%self173863%_ _%self173852%_))
          (let _%lp173874%_ ((_%rest173876%_ _%super173854%_))
            (let* ((_%rest173877173885%_ _%rest173876%_)
                   (_%else173879173893%_ (lambda () '#!void))
                   (_%K173881173899%_
                    (lambda (_%rest173896%_ _%super-id173897%_)
                      (if (let ((__tmp174668
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id173853%_ '()))
                                  _%super-id173897%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp174668 '8 '#f '#f))
                          (let ((__tmp174669
                                 (cons '!class (cons _%id173853%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp174669
                             _%super-id173897%_))
                          '#!void)
                      (_%lp173874%_ _%rest173896%_))))
              (if (pair? _%rest173877173885%_)
                  (let ((_%hd173882173902%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest173877173885%_)))
                        (_%tl173883173904%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest173877173885%_))))
                    (let* ((_%super-id173907%_ _%hd173882173902%_)
                           (_%rest173909%_ _%tl173883173904%_))
                      (_%K173881173899%_ _%rest173909%_ _%super-id173907%_)))
                  '#!void)))
          (let* ((_%ctor-method173960%_
                  (let ((_%$e173911%_ _%ctor-method173856%_))
                    (if _%$e173911%_
                        _%$e173911%_
                        (let _%lp173914%_ ((_%rest173916%_ _%super173854%_)
                                           (_%method173917%_ '#f))
                          (let* ((_%rest173918173926%_ _%rest173916%_)
                                 (_%else173920173934%_
                                  (lambda () _%method173917%_))
                                 (_%K173922173948%_
                                  (lambda (_%rest173937%_ _%super-id173938%_)
                                    (let* ((_%klass173940%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id173853%_ '()))
                                             _%super-id173938%_))
                                           (_%$e173942%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass173940%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e173942%_
                                          ((lambda (_%ctor-method173945%_)
                                             (if _%method173917%_
                                                 (if (eq? _%ctor-method173945%_
                                                          _%method173917%_)
                                                     (_%lp173914%_
                                                      _%rest173937%_
                                                      _%ctor-method173945%_)
                                                     (let ((__tmp174670
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id173853%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp174670
                _%method173917%_
                _%ctor-method173945%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp173914%_
                                                  _%rest173937%_
                                                  _%ctor-method173945%_)))
                                           _%$e173942%_)
                                          (_%lp173914%_
                                           _%rest173937%_
                                           _%method173917%_))))))
                            (if (pair? _%rest173918173926%_)
                                (let ((_%hd173923173951%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest173918173926%_)))
                                      (_%tl173924173953%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest173918173926%_))))
                                  (let* ((_%super-id173956%_
                                          _%hd173923173951%_)
                                         (_%rest173958%_ _%tl173924173953%_))
                                    (_%K173922173948%_
                                     _%rest173958%_
                                     _%super-id173956%_)))
                                (_%else173920173934%_)))))))
                 (_g174671_
                  (let ((__tmp174675
                         (lambda (_%klass-id173962%_)
                           (cons _%klass-id173962%_
                                 (let ((__tmp174676
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id173853%_ '()))
                                         _%klass-id173962%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp174676
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp174673
                         (lambda (_%klass-id173964%_)
                           (let ((__tmp174674
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id173853%_ '()))
                                   _%klass-id173964%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp174674
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp174675
                     __tmp174673
                     eq?
                     identity
                     '()
                     _%super173854%_))))
            (begin
              (let ((_g174672_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g174671_)
                           (##values-length _g174671_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g174672_ 2)))
                    (error "Context expects 2 values" _g174672_)))
              (let ((_%precedence-list173966%_
                     (let () (declare (not safe)) (##values-ref _g174671_ 0)))
                    (_%base-struct173967%_
                     (let () (declare (not safe)) (##values-ref _g174671_ 1))))
                (let* ((_%precedence-list174011%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id173853%_ '(t object class)))
                            _%precedence-list173966%_
                            (if (memq 'object::t _%precedence-list173966%_)
                                _%precedence-list173966%_
                                (if _%system?173859%_
                                    (if (memq 't::t _%precedence-list173966%_)
                                        _%precedence-list173966%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list173966%_
                                           '(t::t))))
                                    (let _%loop173973%_ ((_%tail173975%_
                                                          _%precedence-list173966%_)
                                                         (_%head173976%_ '()))
                                      (let* ((_%tail173977173985%_
                                              _%tail173975%_)
                                             (_%else173979173993%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head173976%_))))
                                             (_%K173981173999%_
                                              (lambda (_%rest173996%_
                                                       _%hd173997%_)
                                                (if (eq? _%hd173997%_ 't::t)
                                                    (let ((__tmp174677
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail173975%_)))
              (declare (not safe))
              (__foldl1 cons __tmp174677 _%head173976%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop173973%_
                                                     _%rest173996%_
                                                     (cons _%hd173997%_
                                                           _%head173976%_))))))
                                        (if (pair? _%tail173977173985%_)
                                            (let ((_%hd173982174002%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail173977173985%_)))
                                                  (_%tl173983174004%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail173977173985%_))))
                                              (let* ((_%hd174007%_
                                                      _%hd173982174002%_)
                                                     (_%rest174009%_
                                                      _%tl173983174004%_))
                                                (_%K173981173999%_
                                                 _%rest174009%_
                                                 _%hd174007%_)))
                                            (_%else173979173993%_))))))))
                       (_%fields174013%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id173853%_ '()))
                         _%base-struct173967%_
                         _%precedence-list174011%_
                         _%slots173855%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self173863%_
                     _%id173853%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self173863%_
                     _%super173854%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self173863%_
                     _%precedence-list174011%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self173863%_
                     _%slots173855%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self173863%_
                     _%fields174013%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self173863%_
                     _%ctor-method173960%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self173863%_
                     _%struct?173857%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self173863%_
                     _%final?173858%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self173863%_
                     _%metaclass173860%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self174016%_
               _%id174017%_
               _%super174018%_
               _%precedence-list174019%_
               _%slots174020%_
               _%fields174021%_
               _%constructor174022%_
               _%struct?174023%_
               _%final?174024%_
               _%system?174025%_
               _%metaclass174026%_
               _%methods174027%_)
        (let ((_%self174030%_ _%self174016%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174030%_
             _%id174017%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174030%_
             _%super174018%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174030%_
             _%precedence-list174019%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174030%_
             _%slots174020%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174030%_
             _%fields174021%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174030%_
             _%constructor174022%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174030%_
             _%struct?174023%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174030%_
             _%final?174024%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174030%_
             _%metaclass174026%_
             '10
             '#f
             '#f))
          (if _%methods174027%_
              (let ((__tmp174678
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods174027%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self174030%_
                 __tmp174678
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g174679_
        (let ((_g174680_ (let () (declare (not safe)) (##length _g174679_))))
          (cond ((let () (declare (not safe)) (##fx= _g174680_ 9))
                 (apply gxc#!class:::init!__0 _g174679_))
                ((let () (declare (not safe)) (##fx= _g174680_ 12))
                 (apply gxc#!class:::init!__1 _g174679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g174679_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where173704%_
               _%base-struct173705%_
               _%precedence-list173706%_
               _%direct-slots173707%_)
        (let* ((_%base-fields173709%_
                (if _%base-struct173705%_
                    (let ((__tmp174681
                           (gxc#optimizer-resolve-class
                            _%where173704%_
                            _%base-struct173705%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp174681 '5 '#f '#f))
                    '()))
               (_%r-fields173711%_ (reverse _%base-fields173709%_))
               (_%seen-slots173719%_
                (let ((_%tab173713%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g173714173716%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab173713%_ _%g173714173716%_ '#t)))
                   _%base-fields173709%_)
                  _%tab173713%_))
               (_%process-slot173723%_
                (lambda (_%slot173721%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots173719%_ _%slot173721%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots173719%_
                           _%slot173721%_
                           '#t))
                        (set! _%r-fields173711%_
                              (cons _%slot173721%_ _%r-fields173711%_)))))))
          (for-each
           (lambda (_%mixin173726%_)
             (let ((_%klass173728%_
                    (gxc#optimizer-resolve-class
                     _%where173704%_
                     _%mixin173726%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass173728%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot173723%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass173728%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list173706%_)
          (for-each _%process-slot173723%_ _%direct-slots173707%_)
          (let () (declare (not safe)) (##reverse _%r-fields173711%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass173663%_ _%slot173664%_)
        (let _%lp173666%_ ((_%rest173668%_
                            (##structure-ref
                             _%klass173663%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset173669%_ '1))
          (let* ((_%rest173670173678%_ _%rest173668%_)
                 (_%else173672173686%_
                  (lambda ()
                    (let ((__tmp174683
                           (##structure-ref
                            _%klass173663%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp174682
                           (##structure-ref
                            _%klass173663%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp174683
                       __tmp174682
                       _%slot173664%_))))
                 (_%K173674173692%_
                  (lambda (_%rest173689%_ _%s173690%_)
                    (if (eq? _%s173690%_ _%slot173664%_)
                        _%offset173669%_
                        (_%lp173666%_
                         _%rest173689%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset173669%_ '1)))))))
            (if (pair? _%rest173670173678%_)
                (let ((_%hd173675173695%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest173670173678%_)))
                      (_%tl173676173697%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest173670173678%_))))
                  (let* ((_%s173700%_ _%hd173675173695%_)
                         (_%rest173702%_ _%tl173676173697%_))
                    (_%K173674173692%_ _%rest173702%_ _%s173700%_)))
                (_%else173672173686%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass173621%_ _%slot173622%_)
        (if (gxc#!class-struct-slot? _%klass173621%_ _%slot173622%_)
            _%klass173621%_
            (let _%lp173624%_ ((_%rest173626%_
                                (##structure-ref
                                 _%klass173621%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest173627173635%_ _%rest173626%_)
                     (_%else173629173643%_ (lambda () '#f))
                     (_%K173631173651%_
                      (lambda (_%rest173646%_ _%super173647%_)
                        (let ((_%super-class173649%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass173621%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot173622%_ '())))
                                _%super173647%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class173649%_
                               _%slot173622%_)
                              _%super-class173649%_
                              (_%lp173624%_ _%rest173646%_))))))
                (if (pair? _%rest173627173635%_)
                    (let ((_%hd173632173654%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest173627173635%_)))
                          (_%tl173633173656%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest173627173635%_))))
                      (let* ((_%super173659%_ _%hd173632173654%_)
                             (_%rest173661%_ _%tl173633173656%_))
                        (_%K173631173651%_ _%rest173661%_ _%super173659%_)))
                    (_%else173629173643%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass173618%_ _%slot173619%_)
        (if (##structure-ref _%klass173618%_ '7 gxc#!class::t '#f)
            (memq _%slot173619%_
                  (##structure-ref _%klass173618%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self173603%_ _%id173604%_)
        (let ((_%self173607%_ _%self173603%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173607%_
             _%id173604%_
             '1
             '#f
             '#f))
          (let ((__tmp174684
                 (let ((__obj174616
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
                      __obj174616
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj174616
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj174616
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj174616)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173607%_
             __tmp174684
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self173466%_ _%id173467%_)
        (let ((_%self173470%_ _%self173466%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173470%_
             _%id173467%_
             '1
             '#f
             '#f))
          (let ((__tmp174685
                 (let ((__obj174617
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
                      __obj174617
                      _%id173467%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj174617
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj174617)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173470%_
             __tmp174685
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
      (lambda (_%self173327%_ _%id173328%_ _%slot173329%_ _%checked?173330%_)
        (let ((_%self173333%_ _%self173327%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173333%_
             _%id173328%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173333%_
             _%slot173329%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173333%_
             _%checked?173330%_
             '4
             '#f
             '#f))
          (let ((__tmp174686
                 (let ((__obj174618
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
                     (##unchecked-structure-set! __obj174618 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj174618
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp174687 (cons _%id173328%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj174618
                      __tmp174687
                      '3
                      '#f
                      '#f))
                   __obj174618)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173333%_
             __tmp174686
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self173188%_ _%id173189%_ _%slot173190%_ _%checked?173191%_)
        (let ((_%self173194%_ _%self173188%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173194%_
             _%id173189%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173194%_
             _%slot173190%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173194%_
             _%checked?173191%_
             '4
             '#f
             '#f))
          (let ((__tmp174688
                 (let ((__obj174619
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
                      __obj174619
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj174619
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp174689 (cons _%id173189%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj174619
                      __tmp174689
                      '3
                      '#f
                      '#f))
                   __obj174619)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173194%_
             __tmp174688
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords173032%_
               _%signature173029173033%_
               _%self173034%_
               _%arity173035%_
               _%dispatch173036%_)
        (let* ((_%signature173038%_
                (if (eq? _%signature173029173033%_ absent-value)
                    '#f
                    _%signature173029173033%_))
               (_%self173041%_ _%self173034%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self173041%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173041%_
             _%arity173035%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173041%_
             _%dispatch173036%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173041%_
             _%signature173038%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords173056%_ . _%args173057%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords173056%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords173056%_
                  'signature:
                  absent-value))
               _%args173057%_)))
    (define gxc#!lambda:::init!
      (lambda _%args173030173063%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args173030173063%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords172873%_
               _%signature172870172874%_
               _%self172875%_
               _%clauses172876%_)
        (let* ((_%signature172878%_
                (if (eq? _%signature172870172874%_ absent-value)
                    '#f
                    _%signature172870172874%_))
               (_%self172881%_ _%self172875%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self172881%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self172881%_
             _%signature172878%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self172881%_
             _%clauses172876%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords172896%_ . _%args172897%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords172896%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords172896%_
                  'signature:
                  absent-value))
               _%args172897%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args172871172903%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args172871172903%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self172731%_ _%tab172732%_ _%dispatch172733%_)
        (let ((_%self172736%_ _%self172731%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self172736%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self172736%_
             _%tab172732%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self172736%_
             _%dispatch172733%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self172593%_ _%keys172594%_ _%main172595%_)
        (let ((_%self172598%_ _%self172593%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self172598%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self172598%_
             _%keys172594%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self172598%_
             _%main172595%_
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
      (lambda (_%self172212%_ _%id172213%_)
        (let ((_%self172216%_ _%self172212%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self172216%_
             _%id172213%_
             '1
             '#f
             '#f))
          (let ((__tmp174690
                 (let ((__obj174620
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
                      __obj174620
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj174620
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj174620
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj174620)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self172216%_
             __tmp174690
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
      (lambda (_%klass172081%_)
        (let ((_%$e172083%_
               (##structure-ref _%klass172081%_ '11 gxc#!class::t '#f)))
          (if _%$e172083%_
              _%$e172083%_
              (let ((_%tab172087%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass172081%_
                 _%tab172087%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab172087%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass172073%_ _%method172074%_)
        (let ((_%tab172075172077%_
               (##structure-ref _%klass172073%_ '11 gxc#!class::t '#f)))
          (if _%tab172075172077%_
              (let ((_%tab172079%_ _%tab172075172077%_))
                (declare (not safe))
                (hash-get _%tab172079%_ _%method172074%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a172061%_ _%type-b172062%_)
        (if _%type-a172061%_
            (if _%type-b172062%_
                (let ((_%$e172064%_ (eq? _%type-a172061%_ _%type-b172062%_)))
                  (if _%$e172064%_
                      _%$e172064%_
                      (let ((_%$e172067%_
                             (eq? (##structure-ref
                                   _%type-b172062%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e172067%_
                            _%$e172067%_
                            (let ((_%$e172070%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a172061%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b172062%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e172070%_
                                  _%$e172070%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a172061%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b172062%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a172061%_
                                           _%type-b172062%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a172012%_ _%klass-b172013%_)
        (let ((_%$e172015%_
               (eq? (##structure-ref _%klass-a172012%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b172013%_ '1 gxc#!type::t '#f))))
          (if _%$e172015%_
              _%$e172015%_
              (let ((_%klass-id-b172018%_
                     (##structure-ref _%klass-b172013%_ '1 gxc#!type::t '#f))
                    (_%precedence-list172019%_
                     (##structure-ref _%klass-a172012%_ '3 gxc#!class::t '#f)))
                (let _%loop172021%_ ((_%rest172023%_
                                      _%precedence-list172019%_))
                  (let* ((_%rest172024172032%_ _%rest172023%_)
                         (_%else172026172040%_ (lambda () '#f))
                         (_%K172028172049%_
                          (lambda (_%rest172043%_ _%klass-name172044%_)
                            (let ((_%$e172046%_
                                   (eq? (let ((__tmp174691
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a172012%_
                                                            (cons _%klass-b172013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name172044%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp174691
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b172018%_)))
                              (if _%$e172046%_
                                  _%$e172046%_
                                  (_%loop172021%_ _%rest172043%_))))))
                    (if (pair? _%rest172024172032%_)
                        (let ((_%hd172029172052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest172024172032%_)))
                              (_%tl172030172054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest172024172032%_))))
                          (let* ((_%klass-name172057%_ _%hd172029172052%_)
                                 (_%rest172059%_ _%tl172030172054%_))
                            (_%K172028172049%_
                             _%rest172059%_
                             _%klass-name172057%_)))
                        (_%else172026172040%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type172010%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type172010%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type172010%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc171999%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc171999%_ 'gxc#!procedure::t))
            (let ((_%proc172002%_ _%proc171999%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc172002%_ '2 '#f '#f))
                  (let ((__tmp174692
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc172002%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp174692 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc171999%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym171981%_ _%type171982%_ _%local?171983%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type171982%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym171981%_
                     _%type171982%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym171981%_ '" " _%type171982%_))
        (let ((_%table171985%_
               (if _%local?171983%_
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
          (hash-put! _%table171985%_ _%sym171981%_ _%type171982%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym171990%_ _%type171991%_)
        (let ((_%local?171993%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym171990%_
           _%type171991%_
           _%local?171993%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g174693_
        (let ((_g174694_ (let () (declare (not safe)) (##length _g174693_))))
          (cond ((let () (declare (not safe)) (##fx= _g174694_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g174693_))
                ((let () (declare (not safe)) (##fx= _g174694_ 3))
                 (apply gxc#optimizer-declare-type!__% _g174693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g174693_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym171975%_ _%type171976%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type171976%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym171975%_
                     _%type171976%_)))
        (let ((_%table171978%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp174695
                 (let () (declare (not safe)) (struct->list _%type171976%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym171975%_ '" " __tmp174695))
          (let ()
            (declare (not safe))
            (hash-put! _%table171978%_ _%sym171975%_ _%type171976%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table171978%_ _%type171976%_ _%sym171975%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym171970%_ _%type171971%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type171971%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym171970%_
                     _%type171971%_)))
        (let ((_%table171973%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table171973%_ _%sym171970%_))
              '#!void
              (begin
                (let ((__tmp174696
                       (let ()
                         (declare (not safe))
                         (struct->list _%type171971%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym171970%_
                   '" "
                   __tmp174696))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table171973%_ _%sym171970%_ _%type171971%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table171973%_
                   _%type171971%_
                   _%sym171970%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym171968%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym171968%_))
        (let ((__tmp174697
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp174697 _%sym171968%_))
        (let ((__tmp174698
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp174698 _%sym171968%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t171936%_
               _%method171937%_
               _%sym171938%_
               _%rebind?171939%_)
        (let ((__tmp174699
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp174699 _%sym171938%_ '#t))
        (let ((_%klass171941%_ (gxc#optimizer-lookup-class _%type-t171936%_)))
          (if _%klass171941%_
              (let* ((_%vtab171943%_ (gxc#!class-method-table _%klass171941%_))
                     (_%$e171945%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab171943%_ _%method171937%_))))
                (if _%$e171945%_
                    ((lambda (_%existing171948%_)
                       (if _%rebind?171939%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t171936%_
                                '" "
                                _%method171937%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab171943%_
                                _%method171937%_
                                _%sym171938%_)))
                           (if (eq? _%existing171948%_ _%sym171938%_)
                               '#!void
                               (let ((__tmp174700
                                      (cons 'bind-method!
                                            (cons _%type-t171936%_
                                                  (cons _%method171937%_
                                                        (cons _%sym171938%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp174700
                                  _%method171937%_)))))
                     _%$e171945%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t171936%_
                         '" "
                         _%method171937%_
                         '" => "
                         _%sym171938%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab171943%_
                         _%method171937%_
                         _%sym171938%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t171936%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t171957%_ _%method171958%_ _%sym171959%_)
        (let ((_%rebind?171961%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t171957%_
           _%method171958%_
           _%sym171959%_
           _%rebind?171961%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g174701_
        (let ((_g174702_ (let () (declare (not safe)) (##length _g174701_))))
          (cond ((let () (declare (not safe)) (##fx= _g174702_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g174701_))
                ((let () (declare (not safe)) (##fx= _g174702_ 4))
                 (apply gxc#optimizer-declare-method!__% _g174701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g174701_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym171922%_)
        (let ((_%$e171924%_
               (let ((__tmp174703
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym171922%_ __tmp174703))))
          (if _%$e171924%_
              _%$e171924%_
              (let ((_%$e171932%_
                     (let ((_%ht171926171928%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht171926171928%_
                           (let ((_%ht171930%_ _%ht171926171928%_))
                             (declare (not safe))
                             (hash-get _%ht171930%_ _%sym171922%_))
                           '#f))))
                (if _%$e171932%_
                    _%$e171932%_
                    (let ((__tmp174704
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp174704 _%sym171922%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym171915%_)
        (let ((_%type171916171918%_ (gxc#optimizer-lookup-type _%sym171915%_)))
          (if _%type171916171918%_
              (let ((_%type171920%_ _%type171916171918%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type171920%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type171920%_ '1 '#f '#f)))
                    _%type171920%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym171911%_)
        (let ((_%table171913%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table171913%_ _%sym171911%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where171896%_ _%sym171897%_)
        (let ((_%$e171900%_ (gxc#optimizer-lookup-class _%sym171897%_)))
          (if _%$e171900%_
              ((lambda (_%g171902171904%_)
                 (let ((_%val171907%_ _%g171902171904%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val171907%_
                          'gxc#!class::t))
                       _%val171907%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val171907%_)
                         '#!void))))
               _%$e171900%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where171896%_
                   _%sym171897%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass171894%_)
        (let ((__tmp174705
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp174705 _%klass171894%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t171891%_ _%method171892%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t171891%_)
         _%method171892%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym171889%_)
        (let ((__tmp174706
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp174706 _%sym171889%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e171771%_
                  (lambda (_%t171872%_)
                    (if (symbol? _%t171872%_)
                        (_%type-e171771%_
                         (gxc#optimizer-lookup-type _%t171872%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t171872%_
                               'gxc#!lambda::t))
                            (_%__lambda-type171773%_ _%t171872%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t171872%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type171775%_ _%t171872%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t171872%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type171777%_
                                     _%t171872%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t171872%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t171879%_ _%t171872%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t171879%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp174707
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t171879%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp174707
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t171872%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t171872%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type171772%_
                  (lambda (_%t171860%_)
                    (let ((_%t171863%_ _%t171860%_))
                      (_%__lambda-type171773%_ _%t171863%_))))
                 (_%__lambda-type171773%_
                  (lambda (_%t171848%_)
                    (let ((_%t171851%_ _%t171848%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t171851%_ '4 '#f '#f))
                          (_%type-e171771%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t171851%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t171851%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp174708
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t171851%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp174708
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type171774%_
                  (lambda (_%t171836%_)
                    (let ((_%t171839%_ _%t171836%_))
                      (_%__kw-lambda-type171775%_ _%t171839%_))))
                 (_%__kw-lambda-type171775%_
                  (lambda (_%t171824%_)
                    (let ((_%t171827%_ _%t171824%_))
                      (_%type-e171771%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t171827%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type171776%_
                  (lambda (_%t171812%_)
                    (let ((_%t171815%_ _%t171812%_))
                      (_%__kw-lambda-primary-type171777%_ _%t171815%_))))
                 (_%__kw-lambda-primary-type171777%_
                  (lambda (_%t171798%_)
                    (let ((_%t171801%_ _%t171798%_))
                      (_%type-e171771%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t171801%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1171779%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2171781%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result171783%_
                  (if _%ht1171779%_
                      (let () (declare (not safe)) (hash->list _%ht1171779%_))
                      '()))
                 (_%result171785%_
                  (if _%ht2171781%_
                      (let ((__tmp174709
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2171781%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result171783%_ __tmp174709))
                      _%result171783%_)))
            (for-each
             (lambda (_%p171788%_)
               (let* ((_%t171790%_ (cdr _%p171788%_))
                      (_%tr171792%_ (_%type-e171771%_ _%t171790%_)))
                 (set-cdr! _%p171788%_ _%tr171792%_)))
             _%result171785%_)
            (list-sort
             (lambda (_%a171795%_ _%b171796%_)
               (let ((__tmp174711 (symbol->string (car _%a171795%_)))
                     (__tmp174710 (symbol->string (car _%b171796%_))))
                 (declare (not safe))
                 (##string<? __tmp174711 __tmp174710)))
             _%result171785%_)))))))
