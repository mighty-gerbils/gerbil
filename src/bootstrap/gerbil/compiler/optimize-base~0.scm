(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1713044317)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp150698 (list)) (__tmp150697 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp150698
         '(type classes ssxi methods)
         __tmp150697
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args150669%_
        (apply make-instance gxc#optimizer-info::t _%$args150669%_)))
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
      (lambda (_%self147810150654%_)
        (let* ((_%self150657%_ _%self147810150654%_)
               (_%self150659%_ _%self150657%_))
          (if (let ((__tmp150699
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self150659%_))))
                (declare (not safe))
                (##fx< '4 __tmp150699))
              (begin
                (let ((__tmp150700
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150659%_
                   __tmp150700
                   '1
                   '#f
                   '#f))
                (let ((__tmp150701
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150659%_
                   __tmp150701
                   '2
                   '#f
                   '#f))
                (let ((__tmp150702
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150659%_
                   __tmp150702
                   '3
                   '#f
                   '#f))
                (let ((__tmp150703
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150659%_
                   __tmp150703
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp150704
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self150659%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self150659%_
                       '4
                       __tmp150704))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp150706 (list))
            (__tmp150705
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp150706
         '(id)
         __tmp150705
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args150529%_
        (apply make-instance gxc#!type::t _%$args150529%_)))
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
      (let ((__tmp150708 (list gxc#!type::t))
            (__tmp150707 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp150708
         '()
         __tmp150707
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args150526%_
        (apply make-instance gxc#!abort::t _%$args150526%_)))
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
      (let ((__tmp150710 (list gxc#!type::t))
            (__tmp150709 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp150710
         '()
         __tmp150709
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args150523%_
        (apply make-instance gxc#!alias::t _%$args150523%_)))
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
      (let ((__tmp150712 (list))
            (__tmp150711
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp150712
         '(return effect arguments unchecked origin)
         __tmp150711
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args150520%_
        (apply make-instance gxc#!signature::t _%$args150520%_)))
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
      (let ((__tmp150714 (list gxc#!type::t))
            (__tmp150713
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp150714
         '(signature)
         __tmp150713
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
      (lambda (_%id150499%_ _%signature150500%_)
        (if ((lambda (_%$obj150503%_)
               (or (not _%$obj150503%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj150503%_
                      'gxc#!signature::t))))
             _%signature150500%_)
            (let ((_%signature150510%_ _%signature150500%_))
              (gxc#__make-!procedure _%id150499%_ _%signature150510%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature150500%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id150485%_ _%signature150487%_)
        (let ((_%signature150490%_ _%signature150487%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id150485%_ _%signature150490%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj150454%_ _%signature150455%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj150454%_ 'gxc#!procedure::t))
            (let ((_%$obj150459%_ _%$obj150454%_))
              (if ((lambda (_%$obj150468%_)
                     (or (not _%$obj150468%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj150468%_
                            'gxc#!signature::t))))
                   _%signature150455%_)
                  (let ((_%signature150475%_ _%signature150455%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj150459%_
                     _%signature150475%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature150455%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj150454%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj150431%_ _%signature150433%_)
        (let* ((_%$obj150437%_ _%$obj150431%_)
               (_%signature150445%_ _%signature150433%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj150437%_
           _%signature150445%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp150716 (list gxc#!type::t))
            (__tmp150715 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp150716
         '(class)
         __tmp150715
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args150428%_
        (apply make-instance gxc#!class-meta::t _%$args150428%_)))
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
      (let ((__tmp150718 (list gxc#!type::t))
            (__tmp150717
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
         __tmp150718
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp150717
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args150425%_
        (apply make-instance gxc#!class::t _%$args150425%_)))
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
      (let ((__tmp150720 (list gxc#!procedure::t))
            (__tmp150719 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp150720
         '()
         __tmp150719
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args150422%_
        (apply make-instance gxc#!predicate::t _%$args150422%_)))
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
      (let ((__tmp150722 (list gxc#!procedure::t))
            (__tmp150721 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp150722
         '()
         __tmp150721
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args150419%_
        (apply make-instance gxc#!constructor::t _%$args150419%_)))
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
      (let ((__tmp150724 (list gxc#!procedure::t))
            (__tmp150723 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp150724
         '(slot checked?)
         __tmp150723
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args150416%_
        (apply make-instance gxc#!accessor::t _%$args150416%_)))
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
      (let ((__tmp150726 (list gxc#!procedure::t))
            (__tmp150725 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp150726
         '(slot checked?)
         __tmp150725
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args150413%_
        (apply make-instance gxc#!mutator::t _%$args150413%_)))
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
      (let ((__tmp150728 (list gxc#!type::t))
            (__tmp150727 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp150728
         '(methods)
         __tmp150727
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args150410%_
        (apply make-instance gxc#!interface::t _%$args150410%_)))
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
      (let ((__tmp150730 (list gxc#!procedure::t))
            (__tmp150729
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp150730
         '(arity dispatch inline inline-typedecl)
         __tmp150729
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args150407%_
        (apply make-instance gxc#!lambda::t _%$args150407%_)))
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
      (let ((__tmp150732 (list gxc#!procedure::t))
            (__tmp150731 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp150732
         '(clauses)
         __tmp150731
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args150404%_
        (apply make-instance gxc#!case-lambda::t _%$args150404%_)))
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
      (let ((__tmp150734 (list gxc#!procedure::t))
            (__tmp150733
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp150734
         '(table dispatch)
         __tmp150733
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args150401%_
        (apply make-instance gxc#!kw-lambda::t _%$args150401%_)))
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
      (let ((__tmp150736 (list gxc#!procedure::t))
            (__tmp150735 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp150736
         '(keys main)
         __tmp150735
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args150398%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args150398%_)))
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
      (let ((__tmp150737 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp150737
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args150395%_
        (apply make-instance gxc#!primitive::t _%$args150395%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp150739 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp150738 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp150739
         '()
         __tmp150738
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args150392%_
        (apply make-instance gxc#!primitive-predicate::t _%$args150392%_)))
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
      (let ((__tmp150741 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp150740 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp150741
         '()
         __tmp150740
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args150389%_
        (apply make-instance gxc#!primitive-lambda::t _%$args150389%_)))
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
      (let ((__tmp150743 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp150742 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp150743
         '()
         __tmp150742
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args150386%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args150386%_)))
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
      (lambda (_%self147811150371%_)
        (let* ((_%self150374%_ _%self147811150371%_)
               (_%self150376%_ _%self150374%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self150376%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147812150233%_ _%klass150235%_)
        (let* ((_%self150237%_ _%self147812150233%_)
               (_%self150239%_ _%self150237%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150239%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150239%_
             _%klass150235%_
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
      (lambda (_%self147813149921%_
               _%id149923%_
               _%super149924%_
               _%slots149925%_
               _%ctor-method149926%_
               _%struct?149927%_
               _%final?149928%_
               _%system?149929%_
               _%metaclass149930%_)
        (let* ((_%self149932%_ _%self147813149921%_)
               (_%self149934%_ _%self149932%_))
          (let _%lp149944%_ ((_%rest149946%_ _%super149924%_))
            (let* ((_%rest149947149955%_ _%rest149946%_)
                   (_%else149949149963%_ (lambda () '#!void))
                   (_%K149951149969%_
                    (lambda (_%rest149966%_ _%super-id149967%_)
                      (if (let ((__tmp150744
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id149923%_ '()))
                                  _%super-id149967%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp150744 '8 '#f '#f))
                          (let ((__tmp150745
                                 (cons '!class (cons _%id149923%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp150745
                             _%super-id149967%_))
                          '#!void)
                      (_%lp149944%_ _%rest149966%_))))
              (if (let () (declare (not safe)) (##pair? _%rest149947149955%_))
                  (let ((_%hd149952149972%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest149947149955%_)))
                        (_%tl149953149974%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest149947149955%_))))
                    (let* ((_%super-id149977%_ _%hd149952149972%_)
                           (_%rest149979%_ _%tl149953149974%_))
                      (_%K149951149969%_ _%rest149979%_ _%super-id149977%_)))
                  '#!void)))
          (let* ((_%ctor-method150030%_
                  (let ((_%$e149981%_ _%ctor-method149926%_))
                    (if _%$e149981%_
                        _%$e149981%_
                        (let _%lp149984%_ ((_%rest149986%_ _%super149924%_)
                                           (_%method149987%_ '#f))
                          (let* ((_%rest149988149996%_ _%rest149986%_)
                                 (_%else149990150004%_
                                  (lambda () _%method149987%_))
                                 (_%K149992150018%_
                                  (lambda (_%rest150007%_ _%super-id150008%_)
                                    (let* ((_%klass150010%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id149923%_ '()))
                                             _%super-id150008%_))
                                           (_%$e150012%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass150010%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e150012%_
                                          ((lambda (_%ctor-method150015%_)
                                             (if _%method149987%_
                                                 (if (eq? _%ctor-method150015%_
                                                          _%method149987%_)
                                                     (_%lp149984%_
                                                      _%rest150007%_
                                                      _%ctor-method150015%_)
                                                     (let ((__tmp150746
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id149923%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp150746
                _%method149987%_
                _%ctor-method150015%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp149984%_
                                                  _%rest150007%_
                                                  _%ctor-method150015%_)))
                                           _%$e150012%_)
                                          (_%lp149984%_
                                           _%rest150007%_
                                           _%method149987%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest149988149996%_))
                                (let ((_%hd149993150021%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest149988149996%_)))
                                      (_%tl149994150023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest149988149996%_))))
                                  (let* ((_%super-id150026%_
                                          _%hd149993150021%_)
                                         (_%rest150028%_ _%tl149994150023%_))
                                    (_%K149992150018%_
                                     _%rest150028%_
                                     _%super-id150026%_)))
                                (_%else149990150004%_)))))))
                 (_g150747_
                  (let ((__tmp150751
                         (lambda (_%klass-id150032%_)
                           (cons _%klass-id150032%_
                                 (let ((__tmp150752
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id149923%_ '()))
                                         _%klass-id150032%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp150752
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp150749
                         (lambda (_%klass-id150034%_)
                           (let ((__tmp150750
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id149923%_ '()))
                                   _%klass-id150034%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp150750
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp150751
                     __tmp150749
                     eq?
                     identity
                     '()
                     _%super149924%_))))
            (begin
              (let ((_g150748_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g150747_)
                           (##vector-length _g150747_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g150748_ 2)))
                    (error "Context expects 2 values" _g150748_)))
              (let ((_%precedence-list150036%_
                     (let () (declare (not safe)) (##vector-ref _g150747_ 0)))
                    (_%base-struct150037%_
                     (let () (declare (not safe)) (##vector-ref _g150747_ 1))))
                (let* ((_%precedence-list150081%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id149923%_ '(t object class)))
                            _%precedence-list150036%_
                            (if (memq 'object::t _%precedence-list150036%_)
                                _%precedence-list150036%_
                                (if _%system?149929%_
                                    (if (memq 't::t _%precedence-list150036%_)
                                        _%precedence-list150036%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list150036%_
                                           '(t::t))))
                                    (let _%loop150043%_ ((_%tail150045%_
                                                          _%precedence-list150036%_)
                                                         (_%head150046%_ '()))
                                      (let* ((_%tail150047150055%_
                                              _%tail150045%_)
                                             (_%else150049150063%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head150046%_))))
                                             (_%K150051150069%_
                                              (lambda (_%rest150066%_
                                                       _%hd150067%_)
                                                (if (eq? _%hd150067%_ 't::t)
                                                    (let ((__tmp150753
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail150045%_)))
              (declare (not safe))
              (__foldl1 cons __tmp150753 _%head150046%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop150043%_
                                                     _%rest150066%_
                                                     (cons _%hd150067%_
                                                           _%head150046%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail150047150055%_))
                                            (let ((_%hd150052150072%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail150047150055%_)))
                                                  (_%tl150053150074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail150047150055%_))))
                                              (let* ((_%hd150077%_
                                                      _%hd150052150072%_)
                                                     (_%rest150079%_
                                                      _%tl150053150074%_))
                                                (_%K150051150069%_
                                                 _%rest150079%_
                                                 _%hd150077%_)))
                                            (_%else150049150063%_))))))))
                       (_%fields150083%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id149923%_ '()))
                         _%base-struct150037%_
                         _%precedence-list150081%_
                         _%slots149925%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149934%_
                     _%id149923%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149934%_
                     _%super149924%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149934%_
                     _%precedence-list150081%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149934%_
                     _%slots149925%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149934%_
                     _%fields150083%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149934%_
                     _%ctor-method150030%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149934%_
                     _%struct?149927%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149934%_
                     _%final?149928%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149934%_
                     _%metaclass149930%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147814150086%_
               _%id150088%_
               _%super150089%_
               _%precedence-list150090%_
               _%slots150091%_
               _%fields150092%_
               _%constructor150093%_
               _%struct?150094%_
               _%final?150095%_
               _%system?150096%_
               _%metaclass150097%_
               _%methods150098%_)
        (let* ((_%self150100%_ _%self147814150086%_)
               (_%self150102%_ _%self150100%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150102%_
             _%id150088%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150102%_
             _%super150089%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150102%_
             _%precedence-list150090%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150102%_
             _%slots150091%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150102%_
             _%fields150092%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150102%_
             _%constructor150093%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150102%_
             _%struct?150094%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150102%_
             _%final?150095%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150102%_
             _%metaclass150097%_
             '10
             '#f
             '#f))
          (if _%methods150098%_
              (let ((__tmp150754
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods150098%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self150102%_
                 __tmp150754
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g150756_
        (let ((_g150755_ (let () (declare (not safe)) (##length _g150756_))))
          (cond ((let () (declare (not safe)) (##fx= _g150755_ 9))
                 (apply gxc#!class:::init!__0 _g150756_))
                ((let () (declare (not safe)) (##fx= _g150755_ 12))
                 (apply gxc#!class:::init!__1 _g150756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g150756_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where149773%_
               _%base-struct149774%_
               _%precedence-list149775%_
               _%direct-slots149776%_)
        (let* ((_%base-fields149778%_
                (if _%base-struct149774%_
                    (let ((__tmp150757
                           (gxc#optimizer-resolve-class
                            _%where149773%_
                            _%base-struct149774%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp150757 '5 '#f '#f))
                    '()))
               (_%r-fields149780%_ (reverse _%base-fields149778%_))
               (_%seen-slots149788%_
                (let ((_%tab149782%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g149783149785%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab149782%_ _%g149783149785%_ '#t)))
                   _%base-fields149778%_)
                  _%tab149782%_))
               (_%process-slot149792%_
                (lambda (_%slot149790%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots149788%_ _%slot149790%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots149788%_
                           _%slot149790%_
                           '#t))
                        (set! _%r-fields149780%_
                              (cons _%slot149790%_ _%r-fields149780%_)))))))
          (for-each
           (lambda (_%mixin149795%_)
             (let ((_%klass149797%_
                    (gxc#optimizer-resolve-class
                     _%where149773%_
                     _%mixin149795%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass149797%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot149792%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass149797%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list149775%_)
          (for-each _%process-slot149792%_ _%direct-slots149776%_)
          (let () (declare (not safe)) (##reverse _%r-fields149780%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass149732%_ _%slot149733%_)
        (let _%lp149735%_ ((_%rest149737%_
                            (##structure-ref
                             _%klass149732%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset149738%_ '1))
          (let* ((_%rest149739149747%_ _%rest149737%_)
                 (_%else149741149755%_
                  (lambda ()
                    (let ((__tmp150759
                           (##structure-ref
                            _%klass149732%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp150758
                           (##structure-ref
                            _%klass149732%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp150759
                       __tmp150758
                       _%slot149733%_))))
                 (_%K149743149761%_
                  (lambda (_%rest149758%_ _%s149759%_)
                    (if (eq? _%s149759%_ _%slot149733%_)
                        _%offset149738%_
                        (_%lp149735%_
                         _%rest149758%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset149738%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest149739149747%_))
                (let ((_%hd149744149764%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest149739149747%_)))
                      (_%tl149745149766%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest149739149747%_))))
                  (let* ((_%s149769%_ _%hd149744149764%_)
                         (_%rest149771%_ _%tl149745149766%_))
                    (_%K149743149761%_ _%rest149771%_ _%s149769%_)))
                (_%else149741149755%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass149690%_ _%slot149691%_)
        (if (gxc#!class-struct-slot? _%klass149690%_ _%slot149691%_)
            _%klass149690%_
            (let _%lp149693%_ ((_%rest149695%_
                                (##structure-ref
                                 _%klass149690%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest149696149704%_ _%rest149695%_)
                     (_%else149698149712%_ (lambda () '#f))
                     (_%K149700149720%_
                      (lambda (_%rest149715%_ _%super149716%_)
                        (let ((_%super-class149718%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass149690%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot149691%_ '())))
                                _%super149716%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class149718%_
                               _%slot149691%_)
                              _%super-class149718%_
                              (_%lp149693%_ _%rest149715%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest149696149704%_))
                    (let ((_%hd149701149723%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest149696149704%_)))
                          (_%tl149702149725%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest149696149704%_))))
                      (let* ((_%super149728%_ _%hd149701149723%_)
                             (_%rest149730%_ _%tl149702149725%_))
                        (_%K149700149720%_ _%rest149730%_ _%super149728%_)))
                    (_%else149698149712%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass149687%_ _%slot149688%_)
        (if (##structure-ref _%klass149687%_ '7 gxc#!class::t '#f)
            (memq _%slot149688%_
                  (##structure-ref _%klass149687%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147815149671%_ _%id149673%_)
        (let* ((_%self149675%_ _%self147815149671%_)
               (_%self149677%_ _%self149675%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149677%_
             _%id149673%_
             '1
             '#f
             '#f))
          (let ((__tmp150760
                 (let ((__obj150692
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
                      __obj150692
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150692
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150692
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150692)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149677%_
             __tmp150760
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147816149533%_ _%id149535%_)
        (let* ((_%self149537%_ _%self147816149533%_)
               (_%self149539%_ _%self149537%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149539%_
             _%id149535%_
             '1
             '#f
             '#f))
          (let ((__tmp150761
                 (let ((__obj150693
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
                      __obj150693
                      _%id149535%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150693
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj150693)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149539%_
             __tmp150761
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
      (lambda (_%self147817149393%_
               _%id149395%_
               _%slot149396%_
               _%checked?149397%_)
        (let* ((_%self149399%_ _%self147817149393%_)
               (_%self149401%_ _%self149399%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149401%_
             _%id149395%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149401%_
             _%slot149396%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149401%_
             _%checked?149397%_
             '4
             '#f
             '#f))
          (let ((__tmp150762
                 (let ((__obj150694
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
                     (##unchecked-structure-set! __obj150694 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150694
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150763 (cons _%id149395%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150694
                      __tmp150763
                      '3
                      '#f
                      '#f))
                   __obj150694)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149401%_
             __tmp150762
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self147818149253%_
               _%id149255%_
               _%slot149256%_
               _%checked?149257%_)
        (let* ((_%self149259%_ _%self147818149253%_)
               (_%self149261%_ _%self149259%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149261%_
             _%id149255%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149261%_
             _%slot149256%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149261%_
             _%checked?149257%_
             '4
             '#f
             '#f))
          (let ((__tmp150764
                 (let ((__obj150695
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
                      __obj150695
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150695
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150765 (cons _%id149255%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150695
                      __tmp150765
                      '3
                      '#f
                      '#f))
                   __obj150695)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149261%_
             __tmp150764
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords149095%_
               _%signature149092149096%_
               _%self147819149098%_
               _%arity149100%_
               _%dispatch149101%_)
        (let* ((_%signature149103%_
                (if (eq? _%signature149092149096%_ absent-value)
                    '#f
                    _%signature149092149096%_))
               (_%self149105%_ _%self147819149098%_)
               (_%self149107%_ _%self149105%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self149107%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149107%_
             _%arity149100%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149107%_
             _%dispatch149101%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149107%_
             _%signature149103%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords149121%_ . _%args149122%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords149121%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149121%_
                  'signature:
                  absent-value))
               _%args149122%_)))
    (define gxc#!lambda:::init!
      (lambda _%args149093149128%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args149093149128%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords148934%_
               _%signature148931148935%_
               _%self147820148937%_
               _%clauses148939%_)
        (let* ((_%signature148941%_
                (if (eq? _%signature148931148935%_ absent-value)
                    '#f
                    _%signature148931148935%_))
               (_%self148943%_ _%self147820148937%_)
               (_%self148945%_ _%self148943%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148945%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148945%_
             _%signature148941%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148945%_
             _%clauses148939%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords148959%_ . _%args148960%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords148959%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148959%_
                  'signature:
                  absent-value))
               _%args148960%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args148932148966%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args148932148966%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self147821148791%_ _%tab148793%_ _%dispatch148794%_)
        (let* ((_%self148796%_ _%self147821148791%_)
               (_%self148798%_ _%self148796%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148798%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148798%_
             _%tab148793%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148798%_
             _%dispatch148794%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self147822148652%_ _%keys148654%_ _%main148655%_)
        (let* ((_%self148657%_ _%self147822148652%_)
               (_%self148659%_ _%self148657%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148659%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148659%_
             _%keys148654%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148659%_
             _%main148655%_
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
      (lambda (_%self147823148270%_ _%id148272%_)
        (let* ((_%self148274%_ _%self147823148270%_)
               (_%self148276%_ _%self148274%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148276%_
             _%id148272%_
             '1
             '#f
             '#f))
          (let ((__tmp150766
                 (let ((__obj150696
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
                      __obj150696
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150696
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150696
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150696)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148276%_
             __tmp150766
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
      (lambda (_%klass148139%_)
        (let ((_%$e148141%_
               (##structure-ref _%klass148139%_ '11 gxc#!class::t '#f)))
          (if _%$e148141%_
              _%$e148141%_
              (let ((_%tab148145%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass148139%_
                 _%tab148145%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab148145%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass148130%_ _%method148131%_)
        (let ((_%tab148132148134%_
               (##structure-ref _%klass148130%_ '11 gxc#!class::t '#f)))
          (if _%tab148132148134%_
              (let ((_%tab148137%_ _%tab148132148134%_))
                (declare (not safe))
                (hash-get _%tab148137%_ _%method148131%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a148118%_ _%type-b148119%_)
        (if _%type-a148118%_
            (if _%type-b148119%_
                (let ((_%$e148121%_ (eq? _%type-a148118%_ _%type-b148119%_)))
                  (if _%$e148121%_
                      _%$e148121%_
                      (let ((_%$e148124%_
                             (eq? (##structure-ref
                                   _%type-b148119%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e148124%_
                            _%$e148124%_
                            (let ((_%$e148127%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a148118%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b148119%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e148127%_
                                  _%$e148127%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a148118%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b148119%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a148118%_
                                           _%type-b148119%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a148069%_ _%klass-b148070%_)
        (let ((_%$e148072%_
               (eq? (##structure-ref _%klass-a148069%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b148070%_ '1 gxc#!type::t '#f))))
          (if _%$e148072%_
              _%$e148072%_
              (let ((_%klass-id-b148075%_
                     (##structure-ref _%klass-b148070%_ '1 gxc#!type::t '#f))
                    (_%precedence-list148076%_
                     (##structure-ref _%klass-a148069%_ '3 gxc#!class::t '#f)))
                (let _%loop148078%_ ((_%rest148080%_
                                      _%precedence-list148076%_))
                  (let* ((_%rest148081148089%_ _%rest148080%_)
                         (_%else148083148097%_ (lambda () '#f))
                         (_%K148085148106%_
                          (lambda (_%rest148100%_ _%klass-name148101%_)
                            (let ((_%$e148103%_
                                   (eq? (let ((__tmp150767
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a148069%_
                                                            (cons _%klass-b148070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name148101%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp150767
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b148075%_)))
                              (if _%$e148103%_
                                  _%$e148103%_
                                  (_%loop148078%_ _%rest148100%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest148081148089%_))
                        (let ((_%hd148086148109%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest148081148089%_)))
                              (_%tl148087148111%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest148081148089%_))))
                          (let* ((_%klass-name148114%_ _%hd148086148109%_)
                                 (_%rest148116%_ _%tl148087148111%_))
                            (_%K148085148106%_
                             _%rest148116%_
                             _%klass-name148114%_)))
                        (_%else148083148097%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type148067%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type148067%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type148067%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc148056%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc148056%_ 'gxc#!procedure::t))
            (let ((_%proc148059%_ _%proc148056%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc148059%_ '2 '#f '#f))
                  (let ((__tmp150768
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc148059%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp150768 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc148056%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym148038%_ _%type148039%_ _%local?148040%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type148039%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym148038%_
                     _%type148039%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym148038%_ '" " _%type148039%_))
        (let ((_%table148042%_
               (if _%local?148040%_
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
          (hash-put! _%table148042%_ _%sym148038%_ _%type148039%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym148047%_ _%type148048%_)
        (let ((_%local?148050%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym148047%_
           _%type148048%_
           _%local?148050%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g150770_
        (let ((_g150769_ (let () (declare (not safe)) (##length _g150770_))))
          (cond ((let () (declare (not safe)) (##fx= _g150769_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g150770_))
                ((let () (declare (not safe)) (##fx= _g150769_ 3))
                 (apply gxc#optimizer-declare-type!__% _g150770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g150770_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym148032%_ _%type148033%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type148033%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym148032%_
                     _%type148033%_)))
        (let ((_%table148035%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp150771
                 (let () (declare (not safe)) (struct->list _%type148033%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym148032%_ '" " __tmp150771))
          (let ()
            (declare (not safe))
            (hash-put! _%table148035%_ _%sym148032%_ _%type148033%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table148035%_ _%type148033%_ _%sym148032%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym148027%_ _%type148028%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type148028%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym148027%_
                     _%type148028%_)))
        (let ((_%table148030%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table148030%_ _%sym148027%_))
              '#!void
              (begin
                (let ((__tmp150772
                       (let ()
                         (declare (not safe))
                         (struct->list _%type148028%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym148027%_
                   '" "
                   __tmp150772))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table148030%_ _%sym148027%_ _%type148028%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table148030%_
                   _%type148028%_
                   _%sym148027%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym148025%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym148025%_))
        (let ((__tmp150773
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp150773 _%sym148025%_))
        (let ((__tmp150774
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp150774 _%sym148025%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t147993%_
               _%method147994%_
               _%sym147995%_
               _%rebind?147996%_)
        (let ((__tmp150775
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp150775 _%sym147995%_ '#t))
        (let ((_%klass147998%_ (gxc#optimizer-lookup-class _%type-t147993%_)))
          (if _%klass147998%_
              (let* ((_%vtab148000%_ (gxc#!class-method-table _%klass147998%_))
                     (_%$e148002%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab148000%_ _%method147994%_))))
                (if _%$e148002%_
                    ((lambda (_%existing148005%_)
                       (if _%rebind?147996%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t147993%_
                                '" "
                                _%method147994%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab148000%_
                                _%method147994%_
                                _%sym147995%_)))
                           (if (eq? _%existing148005%_ _%sym147995%_)
                               '#!void
                               (let ((__tmp150776
                                      (cons 'bind-method!
                                            (cons _%type-t147993%_
                                                  (cons _%method147994%_
                                                        (cons _%sym147995%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp150776
                                  _%method147994%_)))))
                     _%$e148002%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t147993%_
                         '" "
                         _%method147994%_
                         '" => "
                         _%sym147995%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab148000%_
                         _%method147994%_
                         _%sym147995%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t147993%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t148014%_ _%method148015%_ _%sym148016%_)
        (let ((_%rebind?148018%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t148014%_
           _%method148015%_
           _%sym148016%_
           _%rebind?148018%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g150778_
        (let ((_g150777_ (let () (declare (not safe)) (##length _g150778_))))
          (cond ((let () (declare (not safe)) (##fx= _g150777_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g150778_))
                ((let () (declare (not safe)) (##fx= _g150777_ 4))
                 (apply gxc#optimizer-declare-method!__% _g150778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g150778_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym147978%_)
        (let ((_%$e147980%_
               (let ((__tmp150779
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym147978%_ __tmp150779))))
          (if _%$e147980%_
              _%$e147980%_
              (let ((_%$e147989%_
                     (let ((_%ht147982147984%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht147982147984%_
                           (let ((_%ht147987%_ _%ht147982147984%_))
                             (declare (not safe))
                             (hash-get _%ht147987%_ _%sym147978%_))
                           '#f))))
                (if _%$e147989%_
                    _%$e147989%_
                    (let ((__tmp150780
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp150780 _%sym147978%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym147970%_)
        (let ((_%type147971147973%_ (gxc#optimizer-lookup-type _%sym147970%_)))
          (if _%type147971147973%_
              (let ((_%type147976%_ _%type147971147973%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type147976%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type147976%_ '1 '#f '#f)))
                    _%type147976%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym147966%_)
        (let ((_%table147968%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table147968%_ _%sym147966%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where147951%_ _%sym147952%_)
        (let ((_%$e147955%_ (gxc#optimizer-lookup-class _%sym147952%_)))
          (if _%$e147955%_
              ((lambda (_%g147957147959%_)
                 (let ((_%val147962%_ _%g147957147959%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val147962%_
                          'gxc#!class::t))
                       _%val147962%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val147962%_)))))
               _%$e147955%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where147951%_
                   _%sym147952%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass147949%_)
        (let ((__tmp150781
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150781 _%klass147949%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t147946%_ _%method147947%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t147946%_)
         _%method147947%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym147944%_)
        (let ((__tmp150782
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150782 _%sym147944%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e147826%_
                  (lambda (_%t147927%_)
                    (if (symbol? _%t147927%_)
                        (_%type-e147826%_
                         (gxc#optimizer-lookup-type _%t147927%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t147927%_
                               'gxc#!lambda::t))
                            (_%__lambda-type147828%_ _%t147927%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t147927%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type147830%_ _%t147927%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t147927%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type147832%_
                                     _%t147927%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t147927%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t147934%_ _%t147927%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t147934%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp150783
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t147934%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp150783
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t147927%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t147927%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type147827%_
                  (lambda (_%t147915%_)
                    (let ((_%t147918%_ _%t147915%_))
                      (_%__lambda-type147828%_ _%t147918%_))))
                 (_%__lambda-type147828%_
                  (lambda (_%t147903%_)
                    (let ((_%t147906%_ _%t147903%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t147906%_ '4 '#f '#f))
                          (_%type-e147826%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t147906%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t147906%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp150784
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t147906%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp150784
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type147829%_
                  (lambda (_%t147891%_)
                    (let ((_%t147894%_ _%t147891%_))
                      (_%__kw-lambda-type147830%_ _%t147894%_))))
                 (_%__kw-lambda-type147830%_
                  (lambda (_%t147879%_)
                    (let ((_%t147882%_ _%t147879%_))
                      (_%type-e147826%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t147882%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type147831%_
                  (lambda (_%t147867%_)
                    (let ((_%t147870%_ _%t147867%_))
                      (_%__kw-lambda-primary-type147832%_ _%t147870%_))))
                 (_%__kw-lambda-primary-type147832%_
                  (lambda (_%t147853%_)
                    (let ((_%t147856%_ _%t147853%_))
                      (_%type-e147826%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t147856%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1147834%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2147836%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result147838%_
                  (if _%ht1147834%_
                      (let () (declare (not safe)) (hash->list _%ht1147834%_))
                      '()))
                 (_%result147840%_
                  (if _%ht2147836%_
                      (let ((__tmp150785
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2147836%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result147838%_ __tmp150785))
                      _%result147838%_)))
            (for-each
             (lambda (_%p147843%_)
               (let* ((_%t147845%_ (cdr _%p147843%_))
                      (_%tr147847%_ (_%type-e147826%_ _%t147845%_)))
                 (set-cdr! _%p147843%_ _%tr147847%_)))
             _%result147840%_)
            (list-sort
             (lambda (_%a147850%_ _%b147851%_)
               (let ((__tmp150787 (symbol->string (car _%a147850%_)))
                     (__tmp150786 (symbol->string (car _%b147851%_))))
                 (declare (not safe))
                 (##string<? __tmp150787 __tmp150786)))
             _%result147840%_)))))))
