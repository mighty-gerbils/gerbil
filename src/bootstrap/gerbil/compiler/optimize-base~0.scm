(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1733870076)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp152300 (list)) (__tmp152299 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp152300
         '(type classes ssxi methods)
         __tmp152299
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args152271%_
        (apply make-instance gxc#optimizer-info::t _%$args152271%_)))
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
      (lambda (_%self149412152256%_)
        (let* ((_%self152259%_ _%self149412152256%_)
               (_%self152261%_ _%self152259%_))
          (if (let ((__tmp152301
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self152261%_))))
                (declare (not safe))
                (##fx< '4 __tmp152301))
              (begin
                (let ((__tmp152302
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152261%_
                   __tmp152302
                   '1
                   '#f
                   '#f))
                (let ((__tmp152303
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152261%_
                   __tmp152303
                   '2
                   '#f
                   '#f))
                (let ((__tmp152304
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152261%_
                   __tmp152304
                   '3
                   '#f
                   '#f))
                (let ((__tmp152305
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152261%_
                   __tmp152305
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp152306
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self152261%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self152261%_
                       '4
                       __tmp152306))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp152308 (list))
            (__tmp152307
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp152308
         '(id)
         __tmp152307
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args152131%_
        (apply make-instance gxc#!type::t _%$args152131%_)))
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
      (let ((__tmp152310 (list gxc#!type::t))
            (__tmp152309 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp152310
         '()
         __tmp152309
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args152128%_
        (apply make-instance gxc#!abort::t _%$args152128%_)))
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
      (let ((__tmp152312 (list gxc#!type::t))
            (__tmp152311 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp152312
         '()
         __tmp152311
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args152125%_
        (apply make-instance gxc#!alias::t _%$args152125%_)))
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
      (let ((__tmp152314 (list))
            (__tmp152313
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp152314
         '(return effect arguments unchecked origin)
         __tmp152313
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args152122%_
        (apply make-instance gxc#!signature::t _%$args152122%_)))
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
      (let ((__tmp152316 (list gxc#!type::t))
            (__tmp152315
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp152316
         '(signature)
         __tmp152315
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
      (lambda (_%id152101%_ _%signature152102%_)
        (if ((lambda (_%$obj152105%_)
               (or (not _%$obj152105%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj152105%_
                      'gxc#!signature::t))))
             _%signature152102%_)
            (let ((_%signature152112%_ _%signature152102%_))
              (gxc#__make-!procedure _%id152101%_ _%signature152112%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature152102%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id152087%_ _%signature152089%_)
        (let ((_%signature152092%_ _%signature152089%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id152087%_ _%signature152092%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj152056%_ _%signature152057%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj152056%_ 'gxc#!procedure::t))
            (let ((_%$obj152061%_ _%$obj152056%_))
              (if ((lambda (_%$obj152070%_)
                     (or (not _%$obj152070%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj152070%_
                            'gxc#!signature::t))))
                   _%signature152057%_)
                  (let ((_%signature152077%_ _%signature152057%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj152061%_
                     _%signature152077%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature152057%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj152056%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj152033%_ _%signature152035%_)
        (let* ((_%$obj152039%_ _%$obj152033%_)
               (_%signature152047%_ _%signature152035%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj152039%_
           _%signature152047%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp152318 (list gxc#!type::t))
            (__tmp152317 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp152318
         '(class)
         __tmp152317
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args152030%_
        (apply make-instance gxc#!class-meta::t _%$args152030%_)))
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
      (let ((__tmp152320 (list gxc#!type::t))
            (__tmp152319
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
         __tmp152320
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp152319
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args152027%_
        (apply make-instance gxc#!class::t _%$args152027%_)))
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
      (let ((__tmp152322 (list gxc#!procedure::t))
            (__tmp152321 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp152322
         '()
         __tmp152321
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args152024%_
        (apply make-instance gxc#!predicate::t _%$args152024%_)))
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
      (let ((__tmp152324 (list gxc#!procedure::t))
            (__tmp152323 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp152324
         '()
         __tmp152323
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args152021%_
        (apply make-instance gxc#!constructor::t _%$args152021%_)))
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
      (let ((__tmp152326 (list gxc#!procedure::t))
            (__tmp152325 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp152326
         '(slot checked?)
         __tmp152325
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args152018%_
        (apply make-instance gxc#!accessor::t _%$args152018%_)))
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
      (let ((__tmp152328 (list gxc#!procedure::t))
            (__tmp152327 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp152328
         '(slot checked?)
         __tmp152327
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args152015%_
        (apply make-instance gxc#!mutator::t _%$args152015%_)))
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
      (let ((__tmp152330 (list gxc#!type::t))
            (__tmp152329 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp152330
         '(methods)
         __tmp152329
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args152012%_
        (apply make-instance gxc#!interface::t _%$args152012%_)))
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
      (let ((__tmp152332 (list gxc#!procedure::t))
            (__tmp152331
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp152332
         '(arity dispatch inline inline-typedecl)
         __tmp152331
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args152009%_
        (apply make-instance gxc#!lambda::t _%$args152009%_)))
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
      (let ((__tmp152334 (list gxc#!procedure::t))
            (__tmp152333 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp152334
         '(clauses)
         __tmp152333
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args152006%_
        (apply make-instance gxc#!case-lambda::t _%$args152006%_)))
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
      (let ((__tmp152336 (list gxc#!procedure::t))
            (__tmp152335
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp152336
         '(table dispatch)
         __tmp152335
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args152003%_
        (apply make-instance gxc#!kw-lambda::t _%$args152003%_)))
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
      (let ((__tmp152338 (list gxc#!procedure::t))
            (__tmp152337 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp152338
         '(keys main)
         __tmp152337
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args152000%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args152000%_)))
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
      (let ((__tmp152339 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp152339
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args151997%_
        (apply make-instance gxc#!primitive::t _%$args151997%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp152341 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp152340 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp152341
         '()
         __tmp152340
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args151994%_
        (apply make-instance gxc#!primitive-predicate::t _%$args151994%_)))
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
      (let ((__tmp152343 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp152342 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp152343
         '()
         __tmp152342
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args151991%_
        (apply make-instance gxc#!primitive-lambda::t _%$args151991%_)))
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
      (let ((__tmp152345 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp152344 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp152345
         '()
         __tmp152344
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args151988%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args151988%_)))
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
      (lambda (_%self149413151973%_)
        (let* ((_%self151976%_ _%self149413151973%_)
               (_%self151978%_ _%self151976%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self151978%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self149414151835%_ _%klass151837%_)
        (let* ((_%self151839%_ _%self149414151835%_)
               (_%self151841%_ _%self151839%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151841%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151841%_
             _%klass151837%_
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
      (lambda (_%self149415151523%_
               _%id151525%_
               _%super151526%_
               _%slots151527%_
               _%ctor-method151528%_
               _%struct?151529%_
               _%final?151530%_
               _%system?151531%_
               _%metaclass151532%_)
        (let* ((_%self151534%_ _%self149415151523%_)
               (_%self151536%_ _%self151534%_))
          (let _%lp151546%_ ((_%rest151548%_ _%super151526%_))
            (let* ((_%rest151549151557%_ _%rest151548%_)
                   (_%else151551151565%_ (lambda () '#!void))
                   (_%K151553151571%_
                    (lambda (_%rest151568%_ _%super-id151569%_)
                      (if (let ((__tmp152346
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id151525%_ '()))
                                  _%super-id151569%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp152346 '8 '#f '#f))
                          (let ((__tmp152347
                                 (cons '!class (cons _%id151525%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp152347
                             _%super-id151569%_))
                          '#!void)
                      (_%lp151546%_ _%rest151568%_))))
              (if (pair? _%rest151549151557%_)
                  (let ((_%hd151554151574%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest151549151557%_)))
                        (_%tl151555151576%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest151549151557%_))))
                    (let* ((_%super-id151579%_ _%hd151554151574%_)
                           (_%rest151581%_ _%tl151555151576%_))
                      (_%K151553151571%_ _%rest151581%_ _%super-id151579%_)))
                  '#!void)))
          (let* ((_%ctor-method151632%_
                  (let ((_%$e151583%_ _%ctor-method151528%_))
                    (if _%$e151583%_
                        _%$e151583%_
                        (let _%lp151586%_ ((_%rest151588%_ _%super151526%_)
                                           (_%method151589%_ '#f))
                          (let* ((_%rest151590151598%_ _%rest151588%_)
                                 (_%else151592151606%_
                                  (lambda () _%method151589%_))
                                 (_%K151594151620%_
                                  (lambda (_%rest151609%_ _%super-id151610%_)
                                    (let* ((_%klass151612%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id151525%_ '()))
                                             _%super-id151610%_))
                                           (_%$e151614%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass151612%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e151614%_
                                          ((lambda (_%ctor-method151617%_)
                                             (if _%method151589%_
                                                 (if (eq? _%ctor-method151617%_
                                                          _%method151589%_)
                                                     (_%lp151586%_
                                                      _%rest151609%_
                                                      _%ctor-method151617%_)
                                                     (let ((__tmp152348
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id151525%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp152348
                _%method151589%_
                _%ctor-method151617%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp151586%_
                                                  _%rest151609%_
                                                  _%ctor-method151617%_)))
                                           _%$e151614%_)
                                          (_%lp151586%_
                                           _%rest151609%_
                                           _%method151589%_))))))
                            (if (pair? _%rest151590151598%_)
                                (let ((_%hd151595151623%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest151590151598%_)))
                                      (_%tl151596151625%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest151590151598%_))))
                                  (let* ((_%super-id151628%_
                                          _%hd151595151623%_)
                                         (_%rest151630%_ _%tl151596151625%_))
                                    (_%K151594151620%_
                                     _%rest151630%_
                                     _%super-id151628%_)))
                                (_%else151592151606%_)))))))
                 (_g152349_
                  (let ((__tmp152353
                         (lambda (_%klass-id151634%_)
                           (cons _%klass-id151634%_
                                 (let ((__tmp152354
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id151525%_ '()))
                                         _%klass-id151634%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp152354
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp152351
                         (lambda (_%klass-id151636%_)
                           (let ((__tmp152352
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id151525%_ '()))
                                   _%klass-id151636%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp152352
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp152353
                     __tmp152351
                     eq?
                     identity
                     '()
                     _%super151526%_))))
            (begin
              (let ((_g152350_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g152349_)
                           (##vector-length _g152349_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g152350_ 2)))
                    (error "Context expects 2 values" _g152350_)))
              (let ((_%precedence-list151638%_
                     (let () (declare (not safe)) (##vector-ref _g152349_ 0)))
                    (_%base-struct151639%_
                     (let () (declare (not safe)) (##vector-ref _g152349_ 1))))
                (let* ((_%precedence-list151683%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id151525%_ '(t object class)))
                            _%precedence-list151638%_
                            (if (memq 'object::t _%precedence-list151638%_)
                                _%precedence-list151638%_
                                (if _%system?151531%_
                                    (if (memq 't::t _%precedence-list151638%_)
                                        _%precedence-list151638%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list151638%_
                                           '(t::t))))
                                    (let _%loop151645%_ ((_%tail151647%_
                                                          _%precedence-list151638%_)
                                                         (_%head151648%_ '()))
                                      (let* ((_%tail151649151657%_
                                              _%tail151647%_)
                                             (_%else151651151665%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head151648%_))))
                                             (_%K151653151671%_
                                              (lambda (_%rest151668%_
                                                       _%hd151669%_)
                                                (if (eq? _%hd151669%_ 't::t)
                                                    (let ((__tmp152355
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail151647%_)))
              (declare (not safe))
              (__foldl1 cons __tmp152355 _%head151648%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop151645%_
                                                     _%rest151668%_
                                                     (cons _%hd151669%_
                                                           _%head151648%_))))))
                                        (if (pair? _%tail151649151657%_)
                                            (let ((_%hd151654151674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail151649151657%_)))
                                                  (_%tl151655151676%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail151649151657%_))))
                                              (let* ((_%hd151679%_
                                                      _%hd151654151674%_)
                                                     (_%rest151681%_
                                                      _%tl151655151676%_))
                                                (_%K151653151671%_
                                                 _%rest151681%_
                                                 _%hd151679%_)))
                                            (_%else151651151665%_))))))))
                       (_%fields151685%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id151525%_ '()))
                         _%base-struct151639%_
                         _%precedence-list151683%_
                         _%slots151527%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151536%_
                     _%id151525%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151536%_
                     _%super151526%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151536%_
                     _%precedence-list151683%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151536%_
                     _%slots151527%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151536%_
                     _%fields151685%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151536%_
                     _%ctor-method151632%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151536%_
                     _%struct?151529%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151536%_
                     _%final?151530%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151536%_
                     _%metaclass151532%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self149416151688%_
               _%id151690%_
               _%super151691%_
               _%precedence-list151692%_
               _%slots151693%_
               _%fields151694%_
               _%constructor151695%_
               _%struct?151696%_
               _%final?151697%_
               _%system?151698%_
               _%metaclass151699%_
               _%methods151700%_)
        (let* ((_%self151702%_ _%self149416151688%_)
               (_%self151704%_ _%self151702%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151704%_
             _%id151690%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151704%_
             _%super151691%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151704%_
             _%precedence-list151692%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151704%_
             _%slots151693%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151704%_
             _%fields151694%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151704%_
             _%constructor151695%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151704%_
             _%struct?151696%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151704%_
             _%final?151697%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151704%_
             _%metaclass151699%_
             '10
             '#f
             '#f))
          (if _%methods151700%_
              (let ((__tmp152356
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods151700%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self151704%_
                 __tmp152356
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g152358_
        (let ((_g152357_ (let () (declare (not safe)) (##length _g152358_))))
          (cond ((let () (declare (not safe)) (##fx= _g152357_ 9))
                 (apply gxc#!class:::init!__0 _g152358_))
                ((let () (declare (not safe)) (##fx= _g152357_ 12))
                 (apply gxc#!class:::init!__1 _g152358_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g152358_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where151375%_
               _%base-struct151376%_
               _%precedence-list151377%_
               _%direct-slots151378%_)
        (let* ((_%base-fields151380%_
                (if _%base-struct151376%_
                    (let ((__tmp152359
                           (gxc#optimizer-resolve-class
                            _%where151375%_
                            _%base-struct151376%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp152359 '5 '#f '#f))
                    '()))
               (_%r-fields151382%_ (reverse _%base-fields151380%_))
               (_%seen-slots151390%_
                (let ((_%tab151384%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g151385151387%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab151384%_ _%g151385151387%_ '#t)))
                   _%base-fields151380%_)
                  _%tab151384%_))
               (_%process-slot151394%_
                (lambda (_%slot151392%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots151390%_ _%slot151392%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots151390%_
                           _%slot151392%_
                           '#t))
                        (set! _%r-fields151382%_
                              (cons _%slot151392%_ _%r-fields151382%_)))))))
          (for-each
           (lambda (_%mixin151397%_)
             (let ((_%klass151399%_
                    (gxc#optimizer-resolve-class
                     _%where151375%_
                     _%mixin151397%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass151399%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot151394%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass151399%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list151377%_)
          (for-each _%process-slot151394%_ _%direct-slots151378%_)
          (let () (declare (not safe)) (##reverse _%r-fields151382%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass151334%_ _%slot151335%_)
        (let _%lp151337%_ ((_%rest151339%_
                            (##structure-ref
                             _%klass151334%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset151340%_ '1))
          (let* ((_%rest151341151349%_ _%rest151339%_)
                 (_%else151343151357%_
                  (lambda ()
                    (let ((__tmp152361
                           (##structure-ref
                            _%klass151334%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp152360
                           (##structure-ref
                            _%klass151334%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp152361
                       __tmp152360
                       _%slot151335%_))))
                 (_%K151345151363%_
                  (lambda (_%rest151360%_ _%s151361%_)
                    (if (eq? _%s151361%_ _%slot151335%_)
                        _%offset151340%_
                        (_%lp151337%_
                         _%rest151360%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset151340%_ '1)))))))
            (if (pair? _%rest151341151349%_)
                (let ((_%hd151346151366%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest151341151349%_)))
                      (_%tl151347151368%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest151341151349%_))))
                  (let* ((_%s151371%_ _%hd151346151366%_)
                         (_%rest151373%_ _%tl151347151368%_))
                    (_%K151345151363%_ _%rest151373%_ _%s151371%_)))
                (_%else151343151357%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass151292%_ _%slot151293%_)
        (if (gxc#!class-struct-slot? _%klass151292%_ _%slot151293%_)
            _%klass151292%_
            (let _%lp151295%_ ((_%rest151297%_
                                (##structure-ref
                                 _%klass151292%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest151298151306%_ _%rest151297%_)
                     (_%else151300151314%_ (lambda () '#f))
                     (_%K151302151322%_
                      (lambda (_%rest151317%_ _%super151318%_)
                        (let ((_%super-class151320%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass151292%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot151293%_ '())))
                                _%super151318%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class151320%_
                               _%slot151293%_)
                              _%super-class151320%_
                              (_%lp151295%_ _%rest151317%_))))))
                (if (pair? _%rest151298151306%_)
                    (let ((_%hd151303151325%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest151298151306%_)))
                          (_%tl151304151327%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest151298151306%_))))
                      (let* ((_%super151330%_ _%hd151303151325%_)
                             (_%rest151332%_ _%tl151304151327%_))
                        (_%K151302151322%_ _%rest151332%_ _%super151330%_)))
                    (_%else151300151314%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass151289%_ _%slot151290%_)
        (if (##structure-ref _%klass151289%_ '7 gxc#!class::t '#f)
            (memq _%slot151290%_
                  (##structure-ref _%klass151289%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self149417151273%_ _%id151275%_)
        (let* ((_%self151277%_ _%self149417151273%_)
               (_%self151279%_ _%self151277%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151279%_
             _%id151275%_
             '1
             '#f
             '#f))
          (let ((__tmp152362
                 (let ((__obj152294
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
                      __obj152294
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152294
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152294
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj152294)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151279%_
             __tmp152362
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self149418151135%_ _%id151137%_)
        (let* ((_%self151139%_ _%self149418151135%_)
               (_%self151141%_ _%self151139%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151141%_
             _%id151137%_
             '1
             '#f
             '#f))
          (let ((__tmp152363
                 (let ((__obj152295
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
                      __obj152295
                      _%id151137%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152295
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj152295)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151141%_
             __tmp152363
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
      (lambda (_%self149419150995%_
               _%id150997%_
               _%slot150998%_
               _%checked?150999%_)
        (let* ((_%self151001%_ _%self149419150995%_)
               (_%self151003%_ _%self151001%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151003%_
             _%id150997%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151003%_
             _%slot150998%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151003%_
             _%checked?150999%_
             '4
             '#f
             '#f))
          (let ((__tmp152364
                 (let ((__obj152296
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
                     (##unchecked-structure-set! __obj152296 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152296
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp152365 (cons _%id150997%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152296
                      __tmp152365
                      '3
                      '#f
                      '#f))
                   __obj152296)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151003%_
             __tmp152364
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self149420150855%_
               _%id150857%_
               _%slot150858%_
               _%checked?150859%_)
        (let* ((_%self150861%_ _%self149420150855%_)
               (_%self150863%_ _%self150861%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150863%_
             _%id150857%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150863%_
             _%slot150858%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150863%_
             _%checked?150859%_
             '4
             '#f
             '#f))
          (let ((__tmp152366
                 (let ((__obj152297
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
                      __obj152297
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152297
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp152367 (cons _%id150857%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152297
                      __tmp152367
                      '3
                      '#f
                      '#f))
                   __obj152297)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150863%_
             __tmp152366
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords150697%_
               _%signature150694150698%_
               _%self149421150700%_
               _%arity150702%_
               _%dispatch150703%_)
        (let* ((_%signature150705%_
                (if (eq? _%signature150694150698%_ absent-value)
                    '#f
                    _%signature150694150698%_))
               (_%self150707%_ _%self149421150700%_)
               (_%self150709%_ _%self150707%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150709%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150709%_
             _%arity150702%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150709%_
             _%dispatch150703%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150709%_
             _%signature150705%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords150723%_ . _%args150724%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords150723%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150723%_
                  'signature:
                  absent-value))
               _%args150724%_)))
    (define gxc#!lambda:::init!
      (lambda _%args150695150730%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args150695150730%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords150536%_
               _%signature150533150537%_
               _%self149422150539%_
               _%clauses150541%_)
        (let* ((_%signature150543%_
                (if (eq? _%signature150533150537%_ absent-value)
                    '#f
                    _%signature150533150537%_))
               (_%self150545%_ _%self149422150539%_)
               (_%self150547%_ _%self150545%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150547%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150547%_
             _%signature150543%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150547%_
             _%clauses150541%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords150561%_ . _%args150562%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords150561%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150561%_
                  'signature:
                  absent-value))
               _%args150562%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args150534150568%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args150534150568%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self149423150393%_ _%tab150395%_ _%dispatch150396%_)
        (let* ((_%self150398%_ _%self149423150393%_)
               (_%self150400%_ _%self150398%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150400%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150400%_
             _%tab150395%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150400%_
             _%dispatch150396%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self149424150254%_ _%keys150256%_ _%main150257%_)
        (let* ((_%self150259%_ _%self149424150254%_)
               (_%self150261%_ _%self150259%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150261%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150261%_
             _%keys150256%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150261%_
             _%main150257%_
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
      (lambda (_%self149425149872%_ _%id149874%_)
        (let* ((_%self149876%_ _%self149425149872%_)
               (_%self149878%_ _%self149876%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149878%_
             _%id149874%_
             '1
             '#f
             '#f))
          (let ((__tmp152368
                 (let ((__obj152298
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
                      __obj152298
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152298
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152298
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj152298)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149878%_
             __tmp152368
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
      (lambda (_%klass149741%_)
        (let ((_%$e149743%_
               (##structure-ref _%klass149741%_ '11 gxc#!class::t '#f)))
          (if _%$e149743%_
              _%$e149743%_
              (let ((_%tab149747%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass149741%_
                 _%tab149747%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab149747%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass149732%_ _%method149733%_)
        (let ((_%tab149734149736%_
               (##structure-ref _%klass149732%_ '11 gxc#!class::t '#f)))
          (if _%tab149734149736%_
              (let ((_%tab149739%_ _%tab149734149736%_))
                (declare (not safe))
                (hash-get _%tab149739%_ _%method149733%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a149720%_ _%type-b149721%_)
        (if _%type-a149720%_
            (if _%type-b149721%_
                (let ((_%$e149723%_ (eq? _%type-a149720%_ _%type-b149721%_)))
                  (if _%$e149723%_
                      _%$e149723%_
                      (let ((_%$e149726%_
                             (eq? (##structure-ref
                                   _%type-b149721%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e149726%_
                            _%$e149726%_
                            (let ((_%$e149729%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a149720%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b149721%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e149729%_
                                  _%$e149729%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a149720%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b149721%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a149720%_
                                           _%type-b149721%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a149671%_ _%klass-b149672%_)
        (let ((_%$e149674%_
               (eq? (##structure-ref _%klass-a149671%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b149672%_ '1 gxc#!type::t '#f))))
          (if _%$e149674%_
              _%$e149674%_
              (let ((_%klass-id-b149677%_
                     (##structure-ref _%klass-b149672%_ '1 gxc#!type::t '#f))
                    (_%precedence-list149678%_
                     (##structure-ref _%klass-a149671%_ '3 gxc#!class::t '#f)))
                (let _%loop149680%_ ((_%rest149682%_
                                      _%precedence-list149678%_))
                  (let* ((_%rest149683149691%_ _%rest149682%_)
                         (_%else149685149699%_ (lambda () '#f))
                         (_%K149687149708%_
                          (lambda (_%rest149702%_ _%klass-name149703%_)
                            (let ((_%$e149705%_
                                   (eq? (let ((__tmp152369
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a149671%_
                                                            (cons _%klass-b149672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name149703%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp152369
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b149677%_)))
                              (if _%$e149705%_
                                  _%$e149705%_
                                  (_%loop149680%_ _%rest149702%_))))))
                    (if (pair? _%rest149683149691%_)
                        (let ((_%hd149688149711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest149683149691%_)))
                              (_%tl149689149713%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest149683149691%_))))
                          (let* ((_%klass-name149716%_ _%hd149688149711%_)
                                 (_%rest149718%_ _%tl149689149713%_))
                            (_%K149687149708%_
                             _%rest149718%_
                             _%klass-name149716%_)))
                        (_%else149685149699%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type149669%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149669%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type149669%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc149658%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc149658%_ 'gxc#!procedure::t))
            (let ((_%proc149661%_ _%proc149658%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc149661%_ '2 '#f '#f))
                  (let ((__tmp152370
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc149661%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp152370 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc149658%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym149640%_ _%type149641%_ _%local?149642%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149641%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym149640%_
                     _%type149641%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym149640%_ '" " _%type149641%_))
        (let ((_%table149644%_
               (if _%local?149642%_
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
          (hash-put! _%table149644%_ _%sym149640%_ _%type149641%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym149649%_ _%type149650%_)
        (let ((_%local?149652%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym149649%_
           _%type149650%_
           _%local?149652%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g152372_
        (let ((_g152371_ (let () (declare (not safe)) (##length _g152372_))))
          (cond ((let () (declare (not safe)) (##fx= _g152371_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g152372_))
                ((let () (declare (not safe)) (##fx= _g152371_ 3))
                 (apply gxc#optimizer-declare-type!__% _g152372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g152372_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym149634%_ _%type149635%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149635%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym149634%_
                     _%type149635%_)))
        (let ((_%table149637%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp152373
                 (let () (declare (not safe)) (struct->list _%type149635%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym149634%_ '" " __tmp152373))
          (let ()
            (declare (not safe))
            (hash-put! _%table149637%_ _%sym149634%_ _%type149635%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table149637%_ _%type149635%_ _%sym149634%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym149629%_ _%type149630%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149630%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym149629%_
                     _%type149630%_)))
        (let ((_%table149632%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table149632%_ _%sym149629%_))
              '#!void
              (begin
                (let ((__tmp152374
                       (let ()
                         (declare (not safe))
                         (struct->list _%type149630%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym149629%_
                   '" "
                   __tmp152374))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table149632%_ _%sym149629%_ _%type149630%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table149632%_
                   _%type149630%_
                   _%sym149629%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym149627%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym149627%_))
        (let ((__tmp152375
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp152375 _%sym149627%_))
        (let ((__tmp152376
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp152376 _%sym149627%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t149595%_
               _%method149596%_
               _%sym149597%_
               _%rebind?149598%_)
        (let ((__tmp152377
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp152377 _%sym149597%_ '#t))
        (let ((_%klass149600%_ (gxc#optimizer-lookup-class _%type-t149595%_)))
          (if _%klass149600%_
              (let* ((_%vtab149602%_ (gxc#!class-method-table _%klass149600%_))
                     (_%$e149604%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab149602%_ _%method149596%_))))
                (if _%$e149604%_
                    ((lambda (_%existing149607%_)
                       (if _%rebind?149598%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t149595%_
                                '" "
                                _%method149596%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab149602%_
                                _%method149596%_
                                _%sym149597%_)))
                           (if (eq? _%existing149607%_ _%sym149597%_)
                               '#!void
                               (let ((__tmp152378
                                      (cons 'bind-method!
                                            (cons _%type-t149595%_
                                                  (cons _%method149596%_
                                                        (cons _%sym149597%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp152378
                                  _%method149596%_)))))
                     _%$e149604%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t149595%_
                         '" "
                         _%method149596%_
                         '" => "
                         _%sym149597%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab149602%_
                         _%method149596%_
                         _%sym149597%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t149595%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t149616%_ _%method149617%_ _%sym149618%_)
        (let ((_%rebind?149620%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t149616%_
           _%method149617%_
           _%sym149618%_
           _%rebind?149620%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g152380_
        (let ((_g152379_ (let () (declare (not safe)) (##length _g152380_))))
          (cond ((let () (declare (not safe)) (##fx= _g152379_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g152380_))
                ((let () (declare (not safe)) (##fx= _g152379_ 4))
                 (apply gxc#optimizer-declare-method!__% _g152380_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g152380_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym149580%_)
        (let ((_%$e149582%_
               (let ((__tmp152381
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym149580%_ __tmp152381))))
          (if _%$e149582%_
              _%$e149582%_
              (let ((_%$e149591%_
                     (let ((_%ht149584149586%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht149584149586%_
                           (let ((_%ht149589%_ _%ht149584149586%_))
                             (declare (not safe))
                             (hash-get _%ht149589%_ _%sym149580%_))
                           '#f))))
                (if _%$e149591%_
                    _%$e149591%_
                    (let ((__tmp152382
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp152382 _%sym149580%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym149572%_)
        (let ((_%type149573149575%_ (gxc#optimizer-lookup-type _%sym149572%_)))
          (if _%type149573149575%_
              (let ((_%type149578%_ _%type149573149575%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type149578%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type149578%_ '1 '#f '#f)))
                    _%type149578%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym149568%_)
        (let ((_%table149570%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table149570%_ _%sym149568%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where149553%_ _%sym149554%_)
        (let ((_%$e149557%_ (gxc#optimizer-lookup-class _%sym149554%_)))
          (if _%$e149557%_
              ((lambda (_%g149559149561%_)
                 (let ((_%val149564%_ _%g149559149561%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val149564%_
                          'gxc#!class::t))
                       _%val149564%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val149564%_)))))
               _%$e149557%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where149553%_
                   _%sym149554%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass149551%_)
        (let ((__tmp152383
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp152383 _%klass149551%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t149548%_ _%method149549%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t149548%_)
         _%method149549%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym149546%_)
        (let ((__tmp152384
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp152384 _%sym149546%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e149428%_
                  (lambda (_%t149529%_)
                    (if (symbol? _%t149529%_)
                        (_%type-e149428%_
                         (gxc#optimizer-lookup-type _%t149529%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t149529%_
                               'gxc#!lambda::t))
                            (_%__lambda-type149430%_ _%t149529%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t149529%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type149432%_ _%t149529%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t149529%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type149434%_
                                     _%t149529%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t149529%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t149536%_ _%t149529%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t149536%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp152385
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t149536%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp152385
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t149529%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t149529%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type149429%_
                  (lambda (_%t149517%_)
                    (let ((_%t149520%_ _%t149517%_))
                      (_%__lambda-type149430%_ _%t149520%_))))
                 (_%__lambda-type149430%_
                  (lambda (_%t149505%_)
                    (let ((_%t149508%_ _%t149505%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t149508%_ '4 '#f '#f))
                          (_%type-e149428%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t149508%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t149508%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp152386
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t149508%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp152386
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type149431%_
                  (lambda (_%t149493%_)
                    (let ((_%t149496%_ _%t149493%_))
                      (_%__kw-lambda-type149432%_ _%t149496%_))))
                 (_%__kw-lambda-type149432%_
                  (lambda (_%t149481%_)
                    (let ((_%t149484%_ _%t149481%_))
                      (_%type-e149428%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t149484%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type149433%_
                  (lambda (_%t149469%_)
                    (let ((_%t149472%_ _%t149469%_))
                      (_%__kw-lambda-primary-type149434%_ _%t149472%_))))
                 (_%__kw-lambda-primary-type149434%_
                  (lambda (_%t149455%_)
                    (let ((_%t149458%_ _%t149455%_))
                      (_%type-e149428%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t149458%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1149436%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2149438%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result149440%_
                  (if _%ht1149436%_
                      (let () (declare (not safe)) (hash->list _%ht1149436%_))
                      '()))
                 (_%result149442%_
                  (if _%ht2149438%_
                      (let ((__tmp152387
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2149438%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result149440%_ __tmp152387))
                      _%result149440%_)))
            (for-each
             (lambda (_%p149445%_)
               (let* ((_%t149447%_ (cdr _%p149445%_))
                      (_%tr149449%_ (_%type-e149428%_ _%t149447%_)))
                 (set-cdr! _%p149445%_ _%tr149449%_)))
             _%result149442%_)
            (list-sort
             (lambda (_%a149452%_ _%b149453%_)
               (let ((__tmp152389 (symbol->string (car _%a149452%_)))
                     (__tmp152388 (symbol->string (car _%b149453%_))))
                 (declare (not safe))
                 (##string<? __tmp152389 __tmp152388)))
             _%result149442%_)))))))
