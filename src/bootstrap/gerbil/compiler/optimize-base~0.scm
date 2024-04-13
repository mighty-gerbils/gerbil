(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1713000279)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp151666 (list)) (__tmp151665 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp151666
         '(type classes ssxi methods)
         __tmp151665
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args151637%_
        (apply make-instance gxc#optimizer-info::t _%$args151637%_)))
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
      (lambda (_%self148778151622%_)
        (let* ((_%self151625%_ _%self148778151622%_)
               (_%self151627%_ _%self151625%_))
          (if (let ((__tmp151667
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self151627%_))))
                (declare (not safe))
                (##fx< '4 __tmp151667))
              (begin
                (let ((__tmp151668
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self151627%_
                   __tmp151668
                   '1
                   '#f
                   '#f))
                (let ((__tmp151669
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self151627%_
                   __tmp151669
                   '2
                   '#f
                   '#f))
                (let ((__tmp151670
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self151627%_
                   __tmp151670
                   '3
                   '#f
                   '#f))
                (let ((__tmp151671
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self151627%_
                   __tmp151671
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp151672
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self151627%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self151627%_
                       '4
                       __tmp151672))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp151674 (list))
            (__tmp151673
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp151674
         '(id)
         __tmp151673
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args151497%_
        (apply make-instance gxc#!type::t _%$args151497%_)))
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
      (let ((__tmp151676 (list gxc#!type::t))
            (__tmp151675 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp151676
         '()
         __tmp151675
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args151494%_
        (apply make-instance gxc#!abort::t _%$args151494%_)))
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
      (let ((__tmp151678 (list gxc#!type::t))
            (__tmp151677 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp151678
         '()
         __tmp151677
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args151491%_
        (apply make-instance gxc#!alias::t _%$args151491%_)))
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
      (let ((__tmp151680 (list))
            (__tmp151679
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp151680
         '(return effect arguments unchecked origin)
         __tmp151679
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args151488%_
        (apply make-instance gxc#!signature::t _%$args151488%_)))
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
      (let ((__tmp151682 (list gxc#!type::t))
            (__tmp151681
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp151682
         '(signature)
         __tmp151681
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
      (lambda (_%id151467%_ _%signature151468%_)
        (if ((lambda (_%$obj151471%_)
               (or (not _%$obj151471%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj151471%_
                      'gxc#!signature::t))))
             _%signature151468%_)
            (let ((_%signature151478%_ _%signature151468%_))
              (gxc#__make-!procedure _%id151467%_ _%signature151478%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature151468%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id151453%_ _%signature151455%_)
        (let ((_%signature151458%_ _%signature151455%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id151453%_ _%signature151458%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj151422%_ _%signature151423%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj151422%_ 'gxc#!procedure::t))
            (let ((_%$obj151427%_ _%$obj151422%_))
              (if ((lambda (_%$obj151436%_)
                     (or (not _%$obj151436%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj151436%_
                            'gxc#!signature::t))))
                   _%signature151423%_)
                  (let ((_%signature151443%_ _%signature151423%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj151427%_
                     _%signature151443%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature151423%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj151422%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj151399%_ _%signature151401%_)
        (let* ((_%$obj151405%_ _%$obj151399%_)
               (_%signature151413%_ _%signature151401%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj151405%_
           _%signature151413%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp151684 (list gxc#!type::t))
            (__tmp151683 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp151684
         '(class)
         __tmp151683
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args151396%_
        (apply make-instance gxc#!class-meta::t _%$args151396%_)))
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
      (let ((__tmp151686 (list gxc#!type::t))
            (__tmp151685
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
         __tmp151686
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp151685
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args151393%_
        (apply make-instance gxc#!class::t _%$args151393%_)))
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
      (let ((__tmp151688 (list gxc#!procedure::t))
            (__tmp151687 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp151688
         '()
         __tmp151687
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args151390%_
        (apply make-instance gxc#!predicate::t _%$args151390%_)))
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
      (let ((__tmp151690 (list gxc#!procedure::t))
            (__tmp151689 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp151690
         '()
         __tmp151689
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args151387%_
        (apply make-instance gxc#!constructor::t _%$args151387%_)))
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
      (let ((__tmp151692 (list gxc#!procedure::t))
            (__tmp151691 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp151692
         '(slot checked?)
         __tmp151691
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args151384%_
        (apply make-instance gxc#!accessor::t _%$args151384%_)))
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
      (let ((__tmp151694 (list gxc#!procedure::t))
            (__tmp151693 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp151694
         '(slot checked?)
         __tmp151693
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args151381%_
        (apply make-instance gxc#!mutator::t _%$args151381%_)))
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
      (let ((__tmp151696 (list gxc#!type::t))
            (__tmp151695 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp151696
         '(methods)
         __tmp151695
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args151378%_
        (apply make-instance gxc#!interface::t _%$args151378%_)))
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
      (let ((__tmp151698 (list gxc#!procedure::t))
            (__tmp151697
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp151698
         '(arity dispatch inline inline-typedecl)
         __tmp151697
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args151375%_
        (apply make-instance gxc#!lambda::t _%$args151375%_)))
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
      (let ((__tmp151700 (list gxc#!procedure::t))
            (__tmp151699 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp151700
         '(clauses)
         __tmp151699
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args151372%_
        (apply make-instance gxc#!case-lambda::t _%$args151372%_)))
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
      (let ((__tmp151702 (list gxc#!procedure::t))
            (__tmp151701
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp151702
         '(table dispatch)
         __tmp151701
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args151369%_
        (apply make-instance gxc#!kw-lambda::t _%$args151369%_)))
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
      (let ((__tmp151704 (list gxc#!procedure::t))
            (__tmp151703 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp151704
         '(keys main)
         __tmp151703
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args151366%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args151366%_)))
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
      (let ((__tmp151705 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp151705
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args151363%_
        (apply make-instance gxc#!primitive::t _%$args151363%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp151707 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp151706 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp151707
         '()
         __tmp151706
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args151360%_
        (apply make-instance gxc#!primitive-predicate::t _%$args151360%_)))
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
      (let ((__tmp151709 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp151708 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp151709
         '()
         __tmp151708
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args151357%_
        (apply make-instance gxc#!primitive-lambda::t _%$args151357%_)))
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
      (let ((__tmp151711 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp151710 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp151711
         '()
         __tmp151710
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args151354%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args151354%_)))
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
      (lambda (_%self148779151339%_)
        (let* ((_%self151342%_ _%self148779151339%_)
               (_%self151344%_ _%self151342%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self151344%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self148780151201%_ _%klass151203%_)
        (let* ((_%self151205%_ _%self148780151201%_)
               (_%self151207%_ _%self151205%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151207%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151207%_
             _%klass151203%_
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
      (lambda (_%self148781150889%_
               _%id150891%_
               _%super150892%_
               _%slots150893%_
               _%ctor-method150894%_
               _%struct?150895%_
               _%final?150896%_
               _%system?150897%_
               _%metaclass150898%_)
        (let* ((_%self150900%_ _%self148781150889%_)
               (_%self150902%_ _%self150900%_))
          (let _%lp150912%_ ((_%rest150914%_ _%super150892%_))
            (let* ((_%rest150915150923%_ _%rest150914%_)
                   (_%else150917150931%_ (lambda () '#!void))
                   (_%K150919150937%_
                    (lambda (_%rest150934%_ _%super-id150935%_)
                      (if (let ((__tmp151712
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id150891%_ '()))
                                  _%super-id150935%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp151712 '8 '#f '#f))
                          (let ((__tmp151713
                                 (cons '!class (cons _%id150891%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp151713
                             _%super-id150935%_))
                          '#!void)
                      (_%lp150912%_ _%rest150934%_))))
              (if (let () (declare (not safe)) (##pair? _%rest150915150923%_))
                  (let ((_%hd150920150940%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest150915150923%_)))
                        (_%tl150921150942%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest150915150923%_))))
                    (let* ((_%super-id150945%_ _%hd150920150940%_)
                           (_%rest150947%_ _%tl150921150942%_))
                      (_%K150919150937%_ _%rest150947%_ _%super-id150945%_)))
                  '#!void)))
          (let* ((_%ctor-method150998%_
                  (let ((_%$e150949%_ _%ctor-method150894%_))
                    (if _%$e150949%_
                        _%$e150949%_
                        (let _%lp150952%_ ((_%rest150954%_ _%super150892%_)
                                           (_%method150955%_ '#f))
                          (let* ((_%rest150956150964%_ _%rest150954%_)
                                 (_%else150958150972%_
                                  (lambda () _%method150955%_))
                                 (_%K150960150986%_
                                  (lambda (_%rest150975%_ _%super-id150976%_)
                                    (let* ((_%klass150978%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id150891%_ '()))
                                             _%super-id150976%_))
                                           (_%$e150980%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass150978%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e150980%_
                                          ((lambda (_%ctor-method150983%_)
                                             (if _%method150955%_
                                                 (if (eq? _%ctor-method150983%_
                                                          _%method150955%_)
                                                     (_%lp150952%_
                                                      _%rest150975%_
                                                      _%ctor-method150983%_)
                                                     (let ((__tmp151714
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id150891%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp151714
                _%method150955%_
                _%ctor-method150983%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp150952%_
                                                  _%rest150975%_
                                                  _%ctor-method150983%_)))
                                           _%$e150980%_)
                                          (_%lp150952%_
                                           _%rest150975%_
                                           _%method150955%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest150956150964%_))
                                (let ((_%hd150961150989%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest150956150964%_)))
                                      (_%tl150962150991%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest150956150964%_))))
                                  (let* ((_%super-id150994%_
                                          _%hd150961150989%_)
                                         (_%rest150996%_ _%tl150962150991%_))
                                    (_%K150960150986%_
                                     _%rest150996%_
                                     _%super-id150994%_)))
                                (_%else150958150972%_)))))))
                 (_g151715_
                  (let ((__tmp151719
                         (lambda (_%klass-id151000%_)
                           (cons _%klass-id151000%_
                                 (let ((__tmp151720
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id150891%_ '()))
                                         _%klass-id151000%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp151720
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp151717
                         (lambda (_%klass-id151002%_)
                           (let ((__tmp151718
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id150891%_ '()))
                                   _%klass-id151002%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp151718
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp151719
                     __tmp151717
                     eq?
                     identity
                     '()
                     _%super150892%_))))
            (begin
              (let ((_g151716_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g151715_)
                           (##vector-length _g151715_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g151716_ 2)))
                    (error "Context expects 2 values" _g151716_)))
              (let ((_%precedence-list151004%_
                     (let () (declare (not safe)) (##vector-ref _g151715_ 0)))
                    (_%base-struct151005%_
                     (let () (declare (not safe)) (##vector-ref _g151715_ 1))))
                (let* ((_%precedence-list151049%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id150891%_ '(t object class)))
                            _%precedence-list151004%_
                            (if (memq 'object::t _%precedence-list151004%_)
                                _%precedence-list151004%_
                                (if _%system?150897%_
                                    (if (memq 't::t _%precedence-list151004%_)
                                        _%precedence-list151004%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list151004%_
                                           '(t::t))))
                                    (let _%loop151011%_ ((_%tail151013%_
                                                          _%precedence-list151004%_)
                                                         (_%head151014%_ '()))
                                      (let* ((_%tail151015151023%_
                                              _%tail151013%_)
                                             (_%else151017151031%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head151014%_))))
                                             (_%K151019151037%_
                                              (lambda (_%rest151034%_
                                                       _%hd151035%_)
                                                (if (eq? _%hd151035%_ 't::t)
                                                    (let ((__tmp151721
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail151013%_)))
              (declare (not safe))
              (__foldl1 cons __tmp151721 _%head151014%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop151011%_
                                                     _%rest151034%_
                                                     (cons _%hd151035%_
                                                           _%head151014%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail151015151023%_))
                                            (let ((_%hd151020151040%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail151015151023%_)))
                                                  (_%tl151021151042%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail151015151023%_))))
                                              (let* ((_%hd151045%_
                                                      _%hd151020151040%_)
                                                     (_%rest151047%_
                                                      _%tl151021151042%_))
                                                (_%K151019151037%_
                                                 _%rest151047%_
                                                 _%hd151045%_)))
                                            (_%else151017151031%_))))))))
                       (_%fields151051%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id150891%_ '()))
                         _%base-struct151005%_
                         _%precedence-list151049%_
                         _%slots150893%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150902%_
                     _%id150891%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150902%_
                     _%super150892%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150902%_
                     _%precedence-list151049%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150902%_
                     _%slots150893%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150902%_
                     _%fields151051%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150902%_
                     _%ctor-method150998%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150902%_
                     _%struct?150895%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150902%_
                     _%final?150896%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150902%_
                     _%metaclass150898%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self148782151054%_
               _%id151056%_
               _%super151057%_
               _%precedence-list151058%_
               _%slots151059%_
               _%fields151060%_
               _%constructor151061%_
               _%struct?151062%_
               _%final?151063%_
               _%system?151064%_
               _%metaclass151065%_
               _%methods151066%_)
        (let* ((_%self151068%_ _%self148782151054%_)
               (_%self151070%_ _%self151068%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151070%_
             _%id151056%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151070%_
             _%super151057%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151070%_
             _%precedence-list151058%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151070%_
             _%slots151059%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151070%_
             _%fields151060%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151070%_
             _%constructor151061%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151070%_
             _%struct?151062%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151070%_
             _%final?151063%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151070%_
             _%metaclass151065%_
             '10
             '#f
             '#f))
          (if _%methods151066%_
              (let ((__tmp151722
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods151066%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self151070%_
                 __tmp151722
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g151724_
        (let ((_g151723_ (let () (declare (not safe)) (##length _g151724_))))
          (cond ((let () (declare (not safe)) (##fx= _g151723_ 9))
                 (apply gxc#!class:::init!__0 _g151724_))
                ((let () (declare (not safe)) (##fx= _g151723_ 12))
                 (apply gxc#!class:::init!__1 _g151724_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g151724_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where150741%_
               _%base-struct150742%_
               _%precedence-list150743%_
               _%direct-slots150744%_)
        (let* ((_%base-fields150746%_
                (if _%base-struct150742%_
                    (let ((__tmp151725
                           (gxc#optimizer-resolve-class
                            _%where150741%_
                            _%base-struct150742%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp151725 '5 '#f '#f))
                    '()))
               (_%r-fields150748%_ (reverse _%base-fields150746%_))
               (_%seen-slots150756%_
                (let ((_%tab150750%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g150751150753%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab150750%_ _%g150751150753%_ '#t)))
                   _%base-fields150746%_)
                  _%tab150750%_))
               (_%process-slot150760%_
                (lambda (_%slot150758%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots150756%_ _%slot150758%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots150756%_
                           _%slot150758%_
                           '#t))
                        (set! _%r-fields150748%_
                              (cons _%slot150758%_ _%r-fields150748%_)))))))
          (for-each
           (lambda (_%mixin150763%_)
             (let ((_%klass150765%_
                    (gxc#optimizer-resolve-class
                     _%where150741%_
                     _%mixin150763%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass150765%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot150760%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass150765%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list150743%_)
          (for-each _%process-slot150760%_ _%direct-slots150744%_)
          (let () (declare (not safe)) (##reverse _%r-fields150748%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass150700%_ _%slot150701%_)
        (let _%lp150703%_ ((_%rest150705%_
                            (##structure-ref
                             _%klass150700%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset150706%_ '1))
          (let* ((_%rest150707150715%_ _%rest150705%_)
                 (_%else150709150723%_
                  (lambda ()
                    (let ((__tmp151727
                           (##structure-ref
                            _%klass150700%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp151726
                           (##structure-ref
                            _%klass150700%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp151727
                       __tmp151726
                       _%slot150701%_))))
                 (_%K150711150729%_
                  (lambda (_%rest150726%_ _%s150727%_)
                    (if (eq? _%s150727%_ _%slot150701%_)
                        _%offset150706%_
                        (_%lp150703%_
                         _%rest150726%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset150706%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest150707150715%_))
                (let ((_%hd150712150732%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest150707150715%_)))
                      (_%tl150713150734%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest150707150715%_))))
                  (let* ((_%s150737%_ _%hd150712150732%_)
                         (_%rest150739%_ _%tl150713150734%_))
                    (_%K150711150729%_ _%rest150739%_ _%s150737%_)))
                (_%else150709150723%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass150658%_ _%slot150659%_)
        (if (gxc#!class-struct-slot? _%klass150658%_ _%slot150659%_)
            _%klass150658%_
            (let _%lp150661%_ ((_%rest150663%_
                                (##structure-ref
                                 _%klass150658%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest150664150672%_ _%rest150663%_)
                     (_%else150666150680%_ (lambda () '#f))
                     (_%K150668150688%_
                      (lambda (_%rest150683%_ _%super150684%_)
                        (let ((_%super-class150686%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass150658%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot150659%_ '())))
                                _%super150684%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class150686%_
                               _%slot150659%_)
                              _%super-class150686%_
                              (_%lp150661%_ _%rest150683%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest150664150672%_))
                    (let ((_%hd150669150691%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest150664150672%_)))
                          (_%tl150670150693%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest150664150672%_))))
                      (let* ((_%super150696%_ _%hd150669150691%_)
                             (_%rest150698%_ _%tl150670150693%_))
                        (_%K150668150688%_ _%rest150698%_ _%super150696%_)))
                    (_%else150666150680%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass150655%_ _%slot150656%_)
        (if (##structure-ref _%klass150655%_ '7 gxc#!class::t '#f)
            (memq _%slot150656%_
                  (##structure-ref _%klass150655%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self148783150639%_ _%id150641%_)
        (let* ((_%self150643%_ _%self148783150639%_)
               (_%self150645%_ _%self150643%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150645%_
             _%id150641%_
             '1
             '#f
             '#f))
          (let ((__tmp151728
                 (let ((__obj151660
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
                      __obj151660
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj151660
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj151660
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj151660)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150645%_
             __tmp151728
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self148784150501%_ _%id150503%_)
        (let* ((_%self150505%_ _%self148784150501%_)
               (_%self150507%_ _%self150505%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150507%_
             _%id150503%_
             '1
             '#f
             '#f))
          (let ((__tmp151729
                 (let ((__obj151661
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
                      __obj151661
                      _%id150503%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj151661
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj151661)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150507%_
             __tmp151729
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
      (lambda (_%self148785150361%_
               _%id150363%_
               _%slot150364%_
               _%checked?150365%_)
        (let* ((_%self150367%_ _%self148785150361%_)
               (_%self150369%_ _%self150367%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150369%_
             _%id150363%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150369%_
             _%slot150364%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150369%_
             _%checked?150365%_
             '4
             '#f
             '#f))
          (let ((__tmp151730
                 (let ((__obj151662
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
                     (##unchecked-structure-set! __obj151662 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj151662
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp151731 (cons _%id150363%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj151662
                      __tmp151731
                      '3
                      '#f
                      '#f))
                   __obj151662)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150369%_
             __tmp151730
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self148786150221%_
               _%id150223%_
               _%slot150224%_
               _%checked?150225%_)
        (let* ((_%self150227%_ _%self148786150221%_)
               (_%self150229%_ _%self150227%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150229%_
             _%id150223%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150229%_
             _%slot150224%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150229%_
             _%checked?150225%_
             '4
             '#f
             '#f))
          (let ((__tmp151732
                 (let ((__obj151663
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
                      __obj151663
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj151663
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp151733 (cons _%id150223%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj151663
                      __tmp151733
                      '3
                      '#f
                      '#f))
                   __obj151663)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150229%_
             __tmp151732
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords150063%_
               _%signature150060150064%_
               _%self148787150066%_
               _%arity150068%_
               _%dispatch150069%_)
        (let* ((_%signature150071%_
                (if (eq? _%signature150060150064%_ absent-value)
                    '#f
                    _%signature150060150064%_))
               (_%self150073%_ _%self148787150066%_)
               (_%self150075%_ _%self150073%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150075%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150075%_
             _%arity150068%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150075%_
             _%dispatch150069%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150075%_
             _%signature150071%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords150089%_ . _%args150090%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords150089%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150089%_
                  'signature:
                  absent-value))
               _%args150090%_)))
    (define gxc#!lambda:::init!
      (lambda _%args150061150096%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args150061150096%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords149902%_
               _%signature149899149903%_
               _%self148788149905%_
               _%clauses149907%_)
        (let* ((_%signature149909%_
                (if (eq? _%signature149899149903%_ absent-value)
                    '#f
                    _%signature149899149903%_))
               (_%self149911%_ _%self148788149905%_)
               (_%self149913%_ _%self149911%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self149913%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149913%_
             _%signature149909%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149913%_
             _%clauses149907%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords149927%_ . _%args149928%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords149927%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149927%_
                  'signature:
                  absent-value))
               _%args149928%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args149900149934%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args149900149934%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self148789149759%_ _%tab149761%_ _%dispatch149762%_)
        (let* ((_%self149764%_ _%self148789149759%_)
               (_%self149766%_ _%self149764%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self149766%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149766%_
             _%tab149761%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149766%_
             _%dispatch149762%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self148790149620%_ _%keys149622%_ _%main149623%_)
        (let* ((_%self149625%_ _%self148790149620%_)
               (_%self149627%_ _%self149625%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self149627%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149627%_
             _%keys149622%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149627%_
             _%main149623%_
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
      (lambda (_%self148791149238%_ _%id149240%_)
        (let* ((_%self149242%_ _%self148791149238%_)
               (_%self149244%_ _%self149242%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149244%_
             _%id149240%_
             '1
             '#f
             '#f))
          (let ((__tmp151734
                 (let ((__obj151664
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
                      __obj151664
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj151664
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj151664
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj151664)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149244%_
             __tmp151734
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
      (lambda (_%klass149107%_)
        (let ((_%$e149109%_
               (##structure-ref _%klass149107%_ '11 gxc#!class::t '#f)))
          (if _%$e149109%_
              _%$e149109%_
              (let ((_%tab149113%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass149107%_
                 _%tab149113%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab149113%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass149098%_ _%method149099%_)
        (let ((_%tab149100149102%_
               (##structure-ref _%klass149098%_ '11 gxc#!class::t '#f)))
          (if _%tab149100149102%_
              (let ((_%tab149105%_ _%tab149100149102%_))
                (declare (not safe))
                (hash-get _%tab149105%_ _%method149099%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a149086%_ _%type-b149087%_)
        (if _%type-a149086%_
            (if _%type-b149087%_
                (let ((_%$e149089%_ (eq? _%type-a149086%_ _%type-b149087%_)))
                  (if _%$e149089%_
                      _%$e149089%_
                      (let ((_%$e149092%_
                             (eq? (##structure-ref
                                   _%type-b149087%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e149092%_
                            _%$e149092%_
                            (let ((_%$e149095%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a149086%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b149087%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e149095%_
                                  _%$e149095%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a149086%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b149087%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a149086%_
                                           _%type-b149087%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a149037%_ _%klass-b149038%_)
        (let ((_%$e149040%_
               (eq? (##structure-ref _%klass-a149037%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b149038%_ '1 gxc#!type::t '#f))))
          (if _%$e149040%_
              _%$e149040%_
              (let ((_%klass-id-b149043%_
                     (##structure-ref _%klass-b149038%_ '1 gxc#!type::t '#f))
                    (_%precedence-list149044%_
                     (##structure-ref _%klass-a149037%_ '3 gxc#!class::t '#f)))
                (let _%loop149046%_ ((_%rest149048%_
                                      _%precedence-list149044%_))
                  (let* ((_%rest149049149057%_ _%rest149048%_)
                         (_%else149051149065%_ (lambda () '#f))
                         (_%K149053149074%_
                          (lambda (_%rest149068%_ _%klass-name149069%_)
                            (let ((_%$e149071%_
                                   (eq? (let ((__tmp151735
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a149037%_
                                                            (cons _%klass-b149038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name149069%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp151735
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b149043%_)))
                              (if _%$e149071%_
                                  _%$e149071%_
                                  (_%loop149046%_ _%rest149068%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest149049149057%_))
                        (let ((_%hd149054149077%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest149049149057%_)))
                              (_%tl149055149079%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest149049149057%_))))
                          (let* ((_%klass-name149082%_ _%hd149054149077%_)
                                 (_%rest149084%_ _%tl149055149079%_))
                            (_%K149053149074%_
                             _%rest149084%_
                             _%klass-name149082%_)))
                        (_%else149051149065%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type149035%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149035%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type149035%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc149024%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc149024%_ 'gxc#!procedure::t))
            (let ((_%proc149027%_ _%proc149024%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc149027%_ '2 '#f '#f))
                  (let ((__tmp151736
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc149027%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp151736 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc149024%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym149006%_ _%type149007%_ _%local?149008%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149007%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym149006%_
                     _%type149007%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym149006%_ '" " _%type149007%_))
        (let ((_%table149010%_
               (if _%local?149008%_
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
          (hash-put! _%table149010%_ _%sym149006%_ _%type149007%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym149015%_ _%type149016%_)
        (let ((_%local?149018%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym149015%_
           _%type149016%_
           _%local?149018%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g151738_
        (let ((_g151737_ (let () (declare (not safe)) (##length _g151738_))))
          (cond ((let () (declare (not safe)) (##fx= _g151737_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g151738_))
                ((let () (declare (not safe)) (##fx= _g151737_ 3))
                 (apply gxc#optimizer-declare-type!__% _g151738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g151738_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym149000%_ _%type149001%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149001%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym149000%_
                     _%type149001%_)))
        (let ((_%table149003%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp151739
                 (let () (declare (not safe)) (struct->list _%type149001%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym149000%_ '" " __tmp151739))
          (let ()
            (declare (not safe))
            (hash-put! _%table149003%_ _%sym149000%_ _%type149001%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table149003%_ _%type149001%_ _%sym149000%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym148995%_ _%type148996%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type148996%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym148995%_
                     _%type148996%_)))
        (let ((_%table148998%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table148998%_ _%sym148995%_))
              '#!void
              (begin
                (let ((__tmp151740
                       (let ()
                         (declare (not safe))
                         (struct->list _%type148996%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym148995%_
                   '" "
                   __tmp151740))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table148998%_ _%sym148995%_ _%type148996%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table148998%_
                   _%type148996%_
                   _%sym148995%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym148993%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym148993%_))
        (let ((__tmp151741
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp151741 _%sym148993%_))
        (let ((__tmp151742
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp151742 _%sym148993%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t148961%_
               _%method148962%_
               _%sym148963%_
               _%rebind?148964%_)
        (let ((__tmp151743
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp151743 _%sym148963%_ '#t))
        (let ((_%klass148966%_ (gxc#optimizer-lookup-class _%type-t148961%_)))
          (if _%klass148966%_
              (let* ((_%vtab148968%_ (gxc#!class-method-table _%klass148966%_))
                     (_%$e148970%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab148968%_ _%method148962%_))))
                (if _%$e148970%_
                    ((lambda (_%existing148973%_)
                       (if _%rebind?148964%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t148961%_
                                '" "
                                _%method148962%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab148968%_
                                _%method148962%_
                                _%sym148963%_)))
                           (if (eq? _%existing148973%_ _%sym148963%_)
                               '#!void
                               (let ((__tmp151744
                                      (cons 'bind-method!
                                            (cons _%type-t148961%_
                                                  (cons _%method148962%_
                                                        (cons _%sym148963%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp151744
                                  _%method148962%_)))))
                     _%$e148970%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t148961%_
                         '" "
                         _%method148962%_
                         '" => "
                         _%sym148963%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab148968%_
                         _%method148962%_
                         _%sym148963%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t148961%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t148982%_ _%method148983%_ _%sym148984%_)
        (let ((_%rebind?148986%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t148982%_
           _%method148983%_
           _%sym148984%_
           _%rebind?148986%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g151746_
        (let ((_g151745_ (let () (declare (not safe)) (##length _g151746_))))
          (cond ((let () (declare (not safe)) (##fx= _g151745_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g151746_))
                ((let () (declare (not safe)) (##fx= _g151745_ 4))
                 (apply gxc#optimizer-declare-method!__% _g151746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g151746_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym148946%_)
        (let ((_%$e148948%_
               (let ((__tmp151747
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym148946%_ __tmp151747))))
          (if _%$e148948%_
              _%$e148948%_
              (let ((_%$e148957%_
                     (let ((_%ht148950148952%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht148950148952%_
                           (let ((_%ht148955%_ _%ht148950148952%_))
                             (declare (not safe))
                             (hash-get _%ht148955%_ _%sym148946%_))
                           '#f))))
                (if _%$e148957%_
                    _%$e148957%_
                    (let ((__tmp151748
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp151748 _%sym148946%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym148938%_)
        (let ((_%type148939148941%_ (gxc#optimizer-lookup-type _%sym148938%_)))
          (if _%type148939148941%_
              (let ((_%type148944%_ _%type148939148941%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type148944%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type148944%_ '1 '#f '#f)))
                    _%type148944%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym148934%_)
        (let ((_%table148936%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table148936%_ _%sym148934%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where148919%_ _%sym148920%_)
        (let ((_%$e148923%_ (gxc#optimizer-lookup-class _%sym148920%_)))
          (if _%$e148923%_
              ((lambda (_%g148925148927%_)
                 (let ((_%val148930%_ _%g148925148927%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val148930%_
                          'gxc#!class::t))
                       _%val148930%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val148930%_)))))
               _%$e148923%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where148919%_
                   _%sym148920%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass148917%_)
        (let ((__tmp151749
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp151749 _%klass148917%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t148914%_ _%method148915%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t148914%_)
         _%method148915%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym148912%_)
        (let ((__tmp151750
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp151750 _%sym148912%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e148794%_
                  (lambda (_%t148895%_)
                    (if (symbol? _%t148895%_)
                        (_%type-e148794%_
                         (gxc#optimizer-lookup-type _%t148895%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t148895%_
                               'gxc#!lambda::t))
                            (_%__lambda-type148796%_ _%t148895%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t148895%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type148798%_ _%t148895%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t148895%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type148800%_
                                     _%t148895%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t148895%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t148902%_ _%t148895%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t148902%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp151751
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t148902%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp151751
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t148895%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t148895%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type148795%_
                  (lambda (_%t148883%_)
                    (let ((_%t148886%_ _%t148883%_))
                      (_%__lambda-type148796%_ _%t148886%_))))
                 (_%__lambda-type148796%_
                  (lambda (_%t148871%_)
                    (let ((_%t148874%_ _%t148871%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t148874%_ '4 '#f '#f))
                          (_%type-e148794%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t148874%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t148874%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp151752
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t148874%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp151752
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type148797%_
                  (lambda (_%t148859%_)
                    (let ((_%t148862%_ _%t148859%_))
                      (_%__kw-lambda-type148798%_ _%t148862%_))))
                 (_%__kw-lambda-type148798%_
                  (lambda (_%t148847%_)
                    (let ((_%t148850%_ _%t148847%_))
                      (_%type-e148794%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t148850%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type148799%_
                  (lambda (_%t148835%_)
                    (let ((_%t148838%_ _%t148835%_))
                      (_%__kw-lambda-primary-type148800%_ _%t148838%_))))
                 (_%__kw-lambda-primary-type148800%_
                  (lambda (_%t148821%_)
                    (let ((_%t148824%_ _%t148821%_))
                      (_%type-e148794%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t148824%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1148802%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2148804%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result148806%_
                  (if _%ht1148802%_
                      (let () (declare (not safe)) (hash->list _%ht1148802%_))
                      '()))
                 (_%result148808%_
                  (if _%ht2148804%_
                      (let ((__tmp151753
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2148804%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result148806%_ __tmp151753))
                      _%result148806%_)))
            (for-each
             (lambda (_%p148811%_)
               (let* ((_%t148813%_ (cdr _%p148811%_))
                      (_%tr148815%_ (_%type-e148794%_ _%t148813%_)))
                 (set-cdr! _%p148811%_ _%tr148815%_)))
             _%result148808%_)
            (list-sort
             (lambda (_%a148818%_ _%b148819%_)
               (let ((__tmp151755 (symbol->string (car _%a148818%_)))
                     (__tmp151754 (symbol->string (car _%b148819%_))))
                 (declare (not safe))
                 (##string<? __tmp151755 __tmp151754)))
             _%result148808%_)))))))
