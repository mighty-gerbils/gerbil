(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1734357963)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp153391 (list)) (__tmp153390 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp153391
         '(type classes ssxi methods)
         __tmp153390
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args153362%_
        (apply make-instance gxc#optimizer-info::t _%$args153362%_)))
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
      (lambda (_%self150503153347%_)
        (let* ((_%self153350%_ _%self150503153347%_)
               (_%self153352%_ _%self153350%_))
          (if (let ((__tmp153392
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self153352%_))))
                (declare (not safe))
                (##fx< '4 __tmp153392))
              (begin
                (let ((__tmp153393
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153352%_
                   __tmp153393
                   '1
                   '#f
                   '#f))
                (let ((__tmp153394
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153352%_
                   __tmp153394
                   '2
                   '#f
                   '#f))
                (let ((__tmp153395
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153352%_
                   __tmp153395
                   '3
                   '#f
                   '#f))
                (let ((__tmp153396
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153352%_
                   __tmp153396
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp153397
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self153352%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self153352%_
                       '4
                       __tmp153397))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp153399 (list))
            (__tmp153398
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp153399
         '(id)
         __tmp153398
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args153222%_
        (apply make-instance gxc#!type::t _%$args153222%_)))
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
      (let ((__tmp153401 (list gxc#!type::t))
            (__tmp153400 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp153401
         '()
         __tmp153400
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args153219%_
        (apply make-instance gxc#!abort::t _%$args153219%_)))
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
      (let ((__tmp153403 (list gxc#!type::t))
            (__tmp153402 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp153403
         '()
         __tmp153402
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args153216%_
        (apply make-instance gxc#!alias::t _%$args153216%_)))
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
      (let ((__tmp153405 (list))
            (__tmp153404
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp153405
         '(return effect arguments unchecked origin)
         __tmp153404
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args153213%_
        (apply make-instance gxc#!signature::t _%$args153213%_)))
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
      (let ((__tmp153407 (list gxc#!type::t))
            (__tmp153406
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp153407
         '(signature)
         __tmp153406
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
      (lambda (_%id153192%_ _%signature153193%_)
        (if ((lambda (_%$obj153196%_)
               (or (not _%$obj153196%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj153196%_
                      'gxc#!signature::t))))
             _%signature153193%_)
            (let ((_%signature153203%_ _%signature153193%_))
              (gxc#__make-!procedure _%id153192%_ _%signature153203%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature153193%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id153178%_ _%signature153180%_)
        (let ((_%signature153183%_ _%signature153180%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id153178%_ _%signature153183%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj153147%_ _%signature153148%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj153147%_ 'gxc#!procedure::t))
            (let ((_%$obj153152%_ _%$obj153147%_))
              (if ((lambda (_%$obj153161%_)
                     (or (not _%$obj153161%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj153161%_
                            'gxc#!signature::t))))
                   _%signature153148%_)
                  (let ((_%signature153168%_ _%signature153148%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj153152%_
                     _%signature153168%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature153148%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj153147%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj153124%_ _%signature153126%_)
        (let* ((_%$obj153130%_ _%$obj153124%_)
               (_%signature153138%_ _%signature153126%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj153130%_
           _%signature153138%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp153409 (list gxc#!type::t))
            (__tmp153408 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp153409
         '(class)
         __tmp153408
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args153121%_
        (apply make-instance gxc#!class-meta::t _%$args153121%_)))
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
      (let ((__tmp153411 (list gxc#!type::t))
            (__tmp153410
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
         __tmp153411
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp153410
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args153118%_
        (apply make-instance gxc#!class::t _%$args153118%_)))
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
      (let ((__tmp153413 (list gxc#!procedure::t))
            (__tmp153412 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp153413
         '()
         __tmp153412
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args153115%_
        (apply make-instance gxc#!predicate::t _%$args153115%_)))
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
      (let ((__tmp153415 (list gxc#!procedure::t))
            (__tmp153414 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp153415
         '()
         __tmp153414
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args153112%_
        (apply make-instance gxc#!constructor::t _%$args153112%_)))
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
      (let ((__tmp153417 (list gxc#!procedure::t))
            (__tmp153416 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp153417
         '(slot checked?)
         __tmp153416
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args153109%_
        (apply make-instance gxc#!accessor::t _%$args153109%_)))
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
      (let ((__tmp153419 (list gxc#!procedure::t))
            (__tmp153418 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp153419
         '(slot checked?)
         __tmp153418
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args153106%_
        (apply make-instance gxc#!mutator::t _%$args153106%_)))
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
      (let ((__tmp153421 (list gxc#!type::t))
            (__tmp153420 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp153421
         '(methods)
         __tmp153420
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args153103%_
        (apply make-instance gxc#!interface::t _%$args153103%_)))
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
      (let ((__tmp153423 (list gxc#!procedure::t))
            (__tmp153422
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp153423
         '(arity dispatch inline inline-typedecl)
         __tmp153422
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args153100%_
        (apply make-instance gxc#!lambda::t _%$args153100%_)))
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
      (let ((__tmp153425 (list gxc#!procedure::t))
            (__tmp153424 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp153425
         '(clauses)
         __tmp153424
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args153097%_
        (apply make-instance gxc#!case-lambda::t _%$args153097%_)))
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
      (let ((__tmp153427 (list gxc#!procedure::t))
            (__tmp153426
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp153427
         '(table dispatch)
         __tmp153426
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args153094%_
        (apply make-instance gxc#!kw-lambda::t _%$args153094%_)))
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
      (let ((__tmp153429 (list gxc#!procedure::t))
            (__tmp153428 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp153429
         '(keys main)
         __tmp153428
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args153091%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args153091%_)))
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
      (let ((__tmp153430 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp153430
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args153088%_
        (apply make-instance gxc#!primitive::t _%$args153088%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp153432 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp153431 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp153432
         '()
         __tmp153431
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args153085%_
        (apply make-instance gxc#!primitive-predicate::t _%$args153085%_)))
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
      (let ((__tmp153434 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp153433 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp153434
         '()
         __tmp153433
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args153082%_
        (apply make-instance gxc#!primitive-lambda::t _%$args153082%_)))
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
      (let ((__tmp153436 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp153435 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp153436
         '()
         __tmp153435
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args153079%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args153079%_)))
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
      (lambda (_%self150504153064%_)
        (let* ((_%self153067%_ _%self150504153064%_)
               (_%self153069%_ _%self153067%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self153069%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self150505152926%_ _%klass152928%_)
        (let* ((_%self152930%_ _%self150505152926%_)
               (_%self152932%_ _%self152930%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self152932%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152932%_
             _%klass152928%_
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
      (lambda (_%self150506152614%_
               _%id152616%_
               _%super152617%_
               _%slots152618%_
               _%ctor-method152619%_
               _%struct?152620%_
               _%final?152621%_
               _%system?152622%_
               _%metaclass152623%_)
        (let* ((_%self152625%_ _%self150506152614%_)
               (_%self152627%_ _%self152625%_))
          (let _%lp152637%_ ((_%rest152639%_ _%super152617%_))
            (let* ((_%rest152640152648%_ _%rest152639%_)
                   (_%else152642152656%_ (lambda () '#!void))
                   (_%K152644152662%_
                    (lambda (_%rest152659%_ _%super-id152660%_)
                      (if (let ((__tmp153437
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id152616%_ '()))
                                  _%super-id152660%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp153437 '8 '#f '#f))
                          (let ((__tmp153438
                                 (cons '!class (cons _%id152616%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp153438
                             _%super-id152660%_))
                          '#!void)
                      (_%lp152637%_ _%rest152659%_))))
              (if (pair? _%rest152640152648%_)
                  (let ((_%hd152645152665%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest152640152648%_)))
                        (_%tl152646152667%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest152640152648%_))))
                    (let* ((_%super-id152670%_ _%hd152645152665%_)
                           (_%rest152672%_ _%tl152646152667%_))
                      (_%K152644152662%_ _%rest152672%_ _%super-id152670%_)))
                  '#!void)))
          (let* ((_%ctor-method152723%_
                  (let ((_%$e152674%_ _%ctor-method152619%_))
                    (if _%$e152674%_
                        _%$e152674%_
                        (let _%lp152677%_ ((_%rest152679%_ _%super152617%_)
                                           (_%method152680%_ '#f))
                          (let* ((_%rest152681152689%_ _%rest152679%_)
                                 (_%else152683152697%_
                                  (lambda () _%method152680%_))
                                 (_%K152685152711%_
                                  (lambda (_%rest152700%_ _%super-id152701%_)
                                    (let* ((_%klass152703%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id152616%_ '()))
                                             _%super-id152701%_))
                                           (_%$e152705%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass152703%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e152705%_
                                          ((lambda (_%ctor-method152708%_)
                                             (if _%method152680%_
                                                 (if (eq? _%ctor-method152708%_
                                                          _%method152680%_)
                                                     (_%lp152677%_
                                                      _%rest152700%_
                                                      _%ctor-method152708%_)
                                                     (let ((__tmp153439
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id152616%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp153439
                _%method152680%_
                _%ctor-method152708%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp152677%_
                                                  _%rest152700%_
                                                  _%ctor-method152708%_)))
                                           _%$e152705%_)
                                          (_%lp152677%_
                                           _%rest152700%_
                                           _%method152680%_))))))
                            (if (pair? _%rest152681152689%_)
                                (let ((_%hd152686152714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest152681152689%_)))
                                      (_%tl152687152716%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest152681152689%_))))
                                  (let* ((_%super-id152719%_
                                          _%hd152686152714%_)
                                         (_%rest152721%_ _%tl152687152716%_))
                                    (_%K152685152711%_
                                     _%rest152721%_
                                     _%super-id152719%_)))
                                (_%else152683152697%_)))))))
                 (_g153440_
                  (let ((__tmp153444
                         (lambda (_%klass-id152725%_)
                           (cons _%klass-id152725%_
                                 (let ((__tmp153445
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id152616%_ '()))
                                         _%klass-id152725%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp153445
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp153442
                         (lambda (_%klass-id152727%_)
                           (let ((__tmp153443
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id152616%_ '()))
                                   _%klass-id152727%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp153443
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp153444
                     __tmp153442
                     eq?
                     identity
                     '()
                     _%super152617%_))))
            (begin
              (let ((_g153441_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g153440_)
                           (##values-length _g153440_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g153441_ 2)))
                    (error "Context expects 2 values" _g153441_)))
              (let ((_%precedence-list152729%_
                     (let () (declare (not safe)) (##values-ref _g153440_ 0)))
                    (_%base-struct152730%_
                     (let () (declare (not safe)) (##values-ref _g153440_ 1))))
                (let* ((_%precedence-list152774%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id152616%_ '(t object class)))
                            _%precedence-list152729%_
                            (if (memq 'object::t _%precedence-list152729%_)
                                _%precedence-list152729%_
                                (if _%system?152622%_
                                    (if (memq 't::t _%precedence-list152729%_)
                                        _%precedence-list152729%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list152729%_
                                           '(t::t))))
                                    (let _%loop152736%_ ((_%tail152738%_
                                                          _%precedence-list152729%_)
                                                         (_%head152739%_ '()))
                                      (let* ((_%tail152740152748%_
                                              _%tail152738%_)
                                             (_%else152742152756%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head152739%_))))
                                             (_%K152744152762%_
                                              (lambda (_%rest152759%_
                                                       _%hd152760%_)
                                                (if (eq? _%hd152760%_ 't::t)
                                                    (let ((__tmp153446
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail152738%_)))
              (declare (not safe))
              (__foldl1 cons __tmp153446 _%head152739%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop152736%_
                                                     _%rest152759%_
                                                     (cons _%hd152760%_
                                                           _%head152739%_))))))
                                        (if (pair? _%tail152740152748%_)
                                            (let ((_%hd152745152765%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail152740152748%_)))
                                                  (_%tl152746152767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail152740152748%_))))
                                              (let* ((_%hd152770%_
                                                      _%hd152745152765%_)
                                                     (_%rest152772%_
                                                      _%tl152746152767%_))
                                                (_%K152744152762%_
                                                 _%rest152772%_
                                                 _%hd152770%_)))
                                            (_%else152742152756%_))))))))
                       (_%fields152776%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id152616%_ '()))
                         _%base-struct152730%_
                         _%precedence-list152774%_
                         _%slots152618%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152627%_
                     _%id152616%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152627%_
                     _%super152617%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152627%_
                     _%precedence-list152774%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152627%_
                     _%slots152618%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152627%_
                     _%fields152776%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152627%_
                     _%ctor-method152723%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152627%_
                     _%struct?152620%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152627%_
                     _%final?152621%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152627%_
                     _%metaclass152623%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self150507152779%_
               _%id152781%_
               _%super152782%_
               _%precedence-list152783%_
               _%slots152784%_
               _%fields152785%_
               _%constructor152786%_
               _%struct?152787%_
               _%final?152788%_
               _%system?152789%_
               _%metaclass152790%_
               _%methods152791%_)
        (let* ((_%self152793%_ _%self150507152779%_)
               (_%self152795%_ _%self152793%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152795%_
             _%id152781%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152795%_
             _%super152782%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152795%_
             _%precedence-list152783%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152795%_
             _%slots152784%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152795%_
             _%fields152785%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152795%_
             _%constructor152786%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152795%_
             _%struct?152787%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152795%_
             _%final?152788%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152795%_
             _%metaclass152790%_
             '10
             '#f
             '#f))
          (if _%methods152791%_
              (let ((__tmp153447
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods152791%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self152795%_
                 __tmp153447
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g153449_
        (let ((_g153448_ (let () (declare (not safe)) (##length _g153449_))))
          (cond ((let () (declare (not safe)) (##fx= _g153448_ 9))
                 (apply gxc#!class:::init!__0 _g153449_))
                ((let () (declare (not safe)) (##fx= _g153448_ 12))
                 (apply gxc#!class:::init!__1 _g153449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g153449_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where152466%_
               _%base-struct152467%_
               _%precedence-list152468%_
               _%direct-slots152469%_)
        (let* ((_%base-fields152471%_
                (if _%base-struct152467%_
                    (let ((__tmp153450
                           (gxc#optimizer-resolve-class
                            _%where152466%_
                            _%base-struct152467%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp153450 '5 '#f '#f))
                    '()))
               (_%r-fields152473%_ (reverse _%base-fields152471%_))
               (_%seen-slots152481%_
                (let ((_%tab152475%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g152476152478%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab152475%_ _%g152476152478%_ '#t)))
                   _%base-fields152471%_)
                  _%tab152475%_))
               (_%process-slot152485%_
                (lambda (_%slot152483%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots152481%_ _%slot152483%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots152481%_
                           _%slot152483%_
                           '#t))
                        (set! _%r-fields152473%_
                              (cons _%slot152483%_ _%r-fields152473%_)))))))
          (for-each
           (lambda (_%mixin152488%_)
             (let ((_%klass152490%_
                    (gxc#optimizer-resolve-class
                     _%where152466%_
                     _%mixin152488%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass152490%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot152485%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass152490%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list152468%_)
          (for-each _%process-slot152485%_ _%direct-slots152469%_)
          (let () (declare (not safe)) (##reverse _%r-fields152473%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass152425%_ _%slot152426%_)
        (let _%lp152428%_ ((_%rest152430%_
                            (##structure-ref
                             _%klass152425%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset152431%_ '1))
          (let* ((_%rest152432152440%_ _%rest152430%_)
                 (_%else152434152448%_
                  (lambda ()
                    (let ((__tmp153452
                           (##structure-ref
                            _%klass152425%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp153451
                           (##structure-ref
                            _%klass152425%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp153452
                       __tmp153451
                       _%slot152426%_))))
                 (_%K152436152454%_
                  (lambda (_%rest152451%_ _%s152452%_)
                    (if (eq? _%s152452%_ _%slot152426%_)
                        _%offset152431%_
                        (_%lp152428%_
                         _%rest152451%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset152431%_ '1)))))))
            (if (pair? _%rest152432152440%_)
                (let ((_%hd152437152457%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest152432152440%_)))
                      (_%tl152438152459%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest152432152440%_))))
                  (let* ((_%s152462%_ _%hd152437152457%_)
                         (_%rest152464%_ _%tl152438152459%_))
                    (_%K152436152454%_ _%rest152464%_ _%s152462%_)))
                (_%else152434152448%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass152383%_ _%slot152384%_)
        (if (gxc#!class-struct-slot? _%klass152383%_ _%slot152384%_)
            _%klass152383%_
            (let _%lp152386%_ ((_%rest152388%_
                                (##structure-ref
                                 _%klass152383%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest152389152397%_ _%rest152388%_)
                     (_%else152391152405%_ (lambda () '#f))
                     (_%K152393152413%_
                      (lambda (_%rest152408%_ _%super152409%_)
                        (let ((_%super-class152411%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass152383%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot152384%_ '())))
                                _%super152409%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class152411%_
                               _%slot152384%_)
                              _%super-class152411%_
                              (_%lp152386%_ _%rest152408%_))))))
                (if (pair? _%rest152389152397%_)
                    (let ((_%hd152394152416%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest152389152397%_)))
                          (_%tl152395152418%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest152389152397%_))))
                      (let* ((_%super152421%_ _%hd152394152416%_)
                             (_%rest152423%_ _%tl152395152418%_))
                        (_%K152393152413%_ _%rest152423%_ _%super152421%_)))
                    (_%else152391152405%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass152380%_ _%slot152381%_)
        (if (##structure-ref _%klass152380%_ '7 gxc#!class::t '#f)
            (memq _%slot152381%_
                  (##structure-ref _%klass152380%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self150508152364%_ _%id152366%_)
        (let* ((_%self152368%_ _%self150508152364%_)
               (_%self152370%_ _%self152368%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152370%_
             _%id152366%_
             '1
             '#f
             '#f))
          (let ((__tmp153453
                 (let ((__obj153385
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
                      __obj153385
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153385
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153385
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj153385)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152370%_
             __tmp153453
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self150509152226%_ _%id152228%_)
        (let* ((_%self152230%_ _%self150509152226%_)
               (_%self152232%_ _%self152230%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152232%_
             _%id152228%_
             '1
             '#f
             '#f))
          (let ((__tmp153454
                 (let ((__obj153386
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
                      __obj153386
                      _%id152228%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153386
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj153386)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152232%_
             __tmp153454
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
      (lambda (_%self150510152086%_
               _%id152088%_
               _%slot152089%_
               _%checked?152090%_)
        (let* ((_%self152092%_ _%self150510152086%_)
               (_%self152094%_ _%self152092%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152094%_
             _%id152088%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152094%_
             _%slot152089%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152094%_
             _%checked?152090%_
             '4
             '#f
             '#f))
          (let ((__tmp153455
                 (let ((__obj153387
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
                     (##unchecked-structure-set! __obj153387 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153387
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp153456 (cons _%id152088%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153387
                      __tmp153456
                      '3
                      '#f
                      '#f))
                   __obj153387)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152094%_
             __tmp153455
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self150511151946%_
               _%id151948%_
               _%slot151949%_
               _%checked?151950%_)
        (let* ((_%self151952%_ _%self150511151946%_)
               (_%self151954%_ _%self151952%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151954%_
             _%id151948%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151954%_
             _%slot151949%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151954%_
             _%checked?151950%_
             '4
             '#f
             '#f))
          (let ((__tmp153457
                 (let ((__obj153388
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
                      __obj153388
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153388
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp153458 (cons _%id151948%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153388
                      __tmp153458
                      '3
                      '#f
                      '#f))
                   __obj153388)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151954%_
             __tmp153457
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords151788%_
               _%signature151785151789%_
               _%self150512151791%_
               _%arity151793%_
               _%dispatch151794%_)
        (let* ((_%signature151796%_
                (if (eq? _%signature151785151789%_ absent-value)
                    '#f
                    _%signature151785151789%_))
               (_%self151798%_ _%self150512151791%_)
               (_%self151800%_ _%self151798%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151800%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151800%_
             _%arity151793%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151800%_
             _%dispatch151794%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151800%_
             _%signature151796%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords151814%_ . _%args151815%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords151814%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151814%_
                  'signature:
                  absent-value))
               _%args151815%_)))
    (define gxc#!lambda:::init!
      (lambda _%args151786151821%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args151786151821%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords151627%_
               _%signature151624151628%_
               _%self150513151630%_
               _%clauses151632%_)
        (let* ((_%signature151634%_
                (if (eq? _%signature151624151628%_ absent-value)
                    '#f
                    _%signature151624151628%_))
               (_%self151636%_ _%self150513151630%_)
               (_%self151638%_ _%self151636%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151638%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151638%_
             _%signature151634%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151638%_
             _%clauses151632%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords151652%_ . _%args151653%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords151652%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151652%_
                  'signature:
                  absent-value))
               _%args151653%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args151625151659%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args151625151659%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self150514151484%_ _%tab151486%_ _%dispatch151487%_)
        (let* ((_%self151489%_ _%self150514151484%_)
               (_%self151491%_ _%self151489%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151491%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151491%_
             _%tab151486%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151491%_
             _%dispatch151487%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self150515151345%_ _%keys151347%_ _%main151348%_)
        (let* ((_%self151350%_ _%self150515151345%_)
               (_%self151352%_ _%self151350%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151352%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151352%_
             _%keys151347%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151352%_
             _%main151348%_
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
      (lambda (_%self150516150963%_ _%id150965%_)
        (let* ((_%self150967%_ _%self150516150963%_)
               (_%self150969%_ _%self150967%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150969%_
             _%id150965%_
             '1
             '#f
             '#f))
          (let ((__tmp153459
                 (let ((__obj153389
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
                      __obj153389
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153389
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153389
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj153389)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150969%_
             __tmp153459
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
      (lambda (_%klass150832%_)
        (let ((_%$e150834%_
               (##structure-ref _%klass150832%_ '11 gxc#!class::t '#f)))
          (if _%$e150834%_
              _%$e150834%_
              (let ((_%tab150838%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass150832%_
                 _%tab150838%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab150838%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass150823%_ _%method150824%_)
        (let ((_%tab150825150827%_
               (##structure-ref _%klass150823%_ '11 gxc#!class::t '#f)))
          (if _%tab150825150827%_
              (let ((_%tab150830%_ _%tab150825150827%_))
                (declare (not safe))
                (hash-get _%tab150830%_ _%method150824%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a150811%_ _%type-b150812%_)
        (if _%type-a150811%_
            (if _%type-b150812%_
                (let ((_%$e150814%_ (eq? _%type-a150811%_ _%type-b150812%_)))
                  (if _%$e150814%_
                      _%$e150814%_
                      (let ((_%$e150817%_
                             (eq? (##structure-ref
                                   _%type-b150812%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e150817%_
                            _%$e150817%_
                            (let ((_%$e150820%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a150811%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b150812%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e150820%_
                                  _%$e150820%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a150811%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b150812%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a150811%_
                                           _%type-b150812%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a150762%_ _%klass-b150763%_)
        (let ((_%$e150765%_
               (eq? (##structure-ref _%klass-a150762%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b150763%_ '1 gxc#!type::t '#f))))
          (if _%$e150765%_
              _%$e150765%_
              (let ((_%klass-id-b150768%_
                     (##structure-ref _%klass-b150763%_ '1 gxc#!type::t '#f))
                    (_%precedence-list150769%_
                     (##structure-ref _%klass-a150762%_ '3 gxc#!class::t '#f)))
                (let _%loop150771%_ ((_%rest150773%_
                                      _%precedence-list150769%_))
                  (let* ((_%rest150774150782%_ _%rest150773%_)
                         (_%else150776150790%_ (lambda () '#f))
                         (_%K150778150799%_
                          (lambda (_%rest150793%_ _%klass-name150794%_)
                            (let ((_%$e150796%_
                                   (eq? (let ((__tmp153460
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a150762%_
                                                            (cons _%klass-b150763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name150794%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp153460
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b150768%_)))
                              (if _%$e150796%_
                                  _%$e150796%_
                                  (_%loop150771%_ _%rest150793%_))))))
                    (if (pair? _%rest150774150782%_)
                        (let ((_%hd150779150802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest150774150782%_)))
                              (_%tl150780150804%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest150774150782%_))))
                          (let* ((_%klass-name150807%_ _%hd150779150802%_)
                                 (_%rest150809%_ _%tl150780150804%_))
                            (_%K150778150799%_
                             _%rest150809%_
                             _%klass-name150807%_)))
                        (_%else150776150790%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type150760%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150760%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type150760%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc150749%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc150749%_ 'gxc#!procedure::t))
            (let ((_%proc150752%_ _%proc150749%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc150752%_ '2 '#f '#f))
                  (let ((__tmp153461
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc150752%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp153461 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc150749%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym150731%_ _%type150732%_ _%local?150733%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150732%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym150731%_
                     _%type150732%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym150731%_ '" " _%type150732%_))
        (let ((_%table150735%_
               (if _%local?150733%_
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
          (hash-put! _%table150735%_ _%sym150731%_ _%type150732%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym150740%_ _%type150741%_)
        (let ((_%local?150743%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym150740%_
           _%type150741%_
           _%local?150743%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g153463_
        (let ((_g153462_ (let () (declare (not safe)) (##length _g153463_))))
          (cond ((let () (declare (not safe)) (##fx= _g153462_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g153463_))
                ((let () (declare (not safe)) (##fx= _g153462_ 3))
                 (apply gxc#optimizer-declare-type!__% _g153463_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g153463_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym150725%_ _%type150726%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150726%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym150725%_
                     _%type150726%_)))
        (let ((_%table150728%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp153464
                 (let () (declare (not safe)) (struct->list _%type150726%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym150725%_ '" " __tmp153464))
          (let ()
            (declare (not safe))
            (hash-put! _%table150728%_ _%sym150725%_ _%type150726%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table150728%_ _%type150726%_ _%sym150725%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym150720%_ _%type150721%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150721%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym150720%_
                     _%type150721%_)))
        (let ((_%table150723%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table150723%_ _%sym150720%_))
              '#!void
              (begin
                (let ((__tmp153465
                       (let ()
                         (declare (not safe))
                         (struct->list _%type150721%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym150720%_
                   '" "
                   __tmp153465))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table150723%_ _%sym150720%_ _%type150721%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table150723%_
                   _%type150721%_
                   _%sym150720%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym150718%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym150718%_))
        (let ((__tmp153466
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp153466 _%sym150718%_))
        (let ((__tmp153467
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp153467 _%sym150718%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t150686%_
               _%method150687%_
               _%sym150688%_
               _%rebind?150689%_)
        (let ((__tmp153468
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp153468 _%sym150688%_ '#t))
        (let ((_%klass150691%_ (gxc#optimizer-lookup-class _%type-t150686%_)))
          (if _%klass150691%_
              (let* ((_%vtab150693%_ (gxc#!class-method-table _%klass150691%_))
                     (_%$e150695%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab150693%_ _%method150687%_))))
                (if _%$e150695%_
                    ((lambda (_%existing150698%_)
                       (if _%rebind?150689%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t150686%_
                                '" "
                                _%method150687%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab150693%_
                                _%method150687%_
                                _%sym150688%_)))
                           (if (eq? _%existing150698%_ _%sym150688%_)
                               '#!void
                               (let ((__tmp153469
                                      (cons 'bind-method!
                                            (cons _%type-t150686%_
                                                  (cons _%method150687%_
                                                        (cons _%sym150688%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp153469
                                  _%method150687%_)))))
                     _%$e150695%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t150686%_
                         '" "
                         _%method150687%_
                         '" => "
                         _%sym150688%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab150693%_
                         _%method150687%_
                         _%sym150688%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t150686%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t150707%_ _%method150708%_ _%sym150709%_)
        (let ((_%rebind?150711%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t150707%_
           _%method150708%_
           _%sym150709%_
           _%rebind?150711%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g153471_
        (let ((_g153470_ (let () (declare (not safe)) (##length _g153471_))))
          (cond ((let () (declare (not safe)) (##fx= _g153470_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g153471_))
                ((let () (declare (not safe)) (##fx= _g153470_ 4))
                 (apply gxc#optimizer-declare-method!__% _g153471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g153471_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym150671%_)
        (let ((_%$e150673%_
               (let ((__tmp153472
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym150671%_ __tmp153472))))
          (if _%$e150673%_
              _%$e150673%_
              (let ((_%$e150682%_
                     (let ((_%ht150675150677%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht150675150677%_
                           (let ((_%ht150680%_ _%ht150675150677%_))
                             (declare (not safe))
                             (hash-get _%ht150680%_ _%sym150671%_))
                           '#f))))
                (if _%$e150682%_
                    _%$e150682%_
                    (let ((__tmp153473
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp153473 _%sym150671%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym150663%_)
        (let ((_%type150664150666%_ (gxc#optimizer-lookup-type _%sym150663%_)))
          (if _%type150664150666%_
              (let ((_%type150669%_ _%type150664150666%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type150669%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type150669%_ '1 '#f '#f)))
                    _%type150669%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym150659%_)
        (let ((_%table150661%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table150661%_ _%sym150659%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where150644%_ _%sym150645%_)
        (let ((_%$e150648%_ (gxc#optimizer-lookup-class _%sym150645%_)))
          (if _%$e150648%_
              ((lambda (_%g150650150652%_)
                 (let ((_%val150655%_ _%g150650150652%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val150655%_
                          'gxc#!class::t))
                       _%val150655%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val150655%_)))))
               _%$e150648%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where150644%_
                   _%sym150645%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass150642%_)
        (let ((__tmp153474
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp153474 _%klass150642%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t150639%_ _%method150640%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t150639%_)
         _%method150640%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym150637%_)
        (let ((__tmp153475
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp153475 _%sym150637%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e150519%_
                  (lambda (_%t150620%_)
                    (if (symbol? _%t150620%_)
                        (_%type-e150519%_
                         (gxc#optimizer-lookup-type _%t150620%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t150620%_
                               'gxc#!lambda::t))
                            (_%__lambda-type150521%_ _%t150620%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t150620%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type150523%_ _%t150620%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t150620%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type150525%_
                                     _%t150620%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t150620%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t150627%_ _%t150620%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t150627%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp153476
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t150627%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp153476
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t150620%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t150620%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type150520%_
                  (lambda (_%t150608%_)
                    (let ((_%t150611%_ _%t150608%_))
                      (_%__lambda-type150521%_ _%t150611%_))))
                 (_%__lambda-type150521%_
                  (lambda (_%t150596%_)
                    (let ((_%t150599%_ _%t150596%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t150599%_ '4 '#f '#f))
                          (_%type-e150519%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t150599%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t150599%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp153477
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t150599%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp153477
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type150522%_
                  (lambda (_%t150584%_)
                    (let ((_%t150587%_ _%t150584%_))
                      (_%__kw-lambda-type150523%_ _%t150587%_))))
                 (_%__kw-lambda-type150523%_
                  (lambda (_%t150572%_)
                    (let ((_%t150575%_ _%t150572%_))
                      (_%type-e150519%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t150575%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type150524%_
                  (lambda (_%t150560%_)
                    (let ((_%t150563%_ _%t150560%_))
                      (_%__kw-lambda-primary-type150525%_ _%t150563%_))))
                 (_%__kw-lambda-primary-type150525%_
                  (lambda (_%t150546%_)
                    (let ((_%t150549%_ _%t150546%_))
                      (_%type-e150519%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t150549%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1150527%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2150529%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result150531%_
                  (if _%ht1150527%_
                      (let () (declare (not safe)) (hash->list _%ht1150527%_))
                      '()))
                 (_%result150533%_
                  (if _%ht2150529%_
                      (let ((__tmp153478
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2150529%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result150531%_ __tmp153478))
                      _%result150531%_)))
            (for-each
             (lambda (_%p150536%_)
               (let* ((_%t150538%_ (cdr _%p150536%_))
                      (_%tr150540%_ (_%type-e150519%_ _%t150538%_)))
                 (set-cdr! _%p150536%_ _%tr150540%_)))
             _%result150533%_)
            (list-sort
             (lambda (_%a150543%_ _%b150544%_)
               (let ((__tmp153480 (symbol->string (car _%a150543%_)))
                     (__tmp153479 (symbol->string (car _%b150544%_))))
                 (declare (not safe))
                 (##string<? __tmp153480 __tmp153479)))
             _%result150533%_)))))))
