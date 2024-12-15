(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1734225195)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp153302 (list)) (__tmp153301 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp153302
         '(type classes ssxi methods)
         __tmp153301
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args153273%_
        (apply make-instance gxc#optimizer-info::t _%$args153273%_)))
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
      (lambda (_%self150414153258%_)
        (let* ((_%self153261%_ _%self150414153258%_)
               (_%self153263%_ _%self153261%_))
          (if (let ((__tmp153303
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self153263%_))))
                (declare (not safe))
                (##fx< '4 __tmp153303))
              (begin
                (let ((__tmp153304
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153263%_
                   __tmp153304
                   '1
                   '#f
                   '#f))
                (let ((__tmp153305
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153263%_
                   __tmp153305
                   '2
                   '#f
                   '#f))
                (let ((__tmp153306
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153263%_
                   __tmp153306
                   '3
                   '#f
                   '#f))
                (let ((__tmp153307
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153263%_
                   __tmp153307
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp153308
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self153263%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self153263%_
                       '4
                       __tmp153308))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp153310 (list))
            (__tmp153309
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp153310
         '(id)
         __tmp153309
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args153133%_
        (apply make-instance gxc#!type::t _%$args153133%_)))
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
      (let ((__tmp153312 (list gxc#!type::t))
            (__tmp153311 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp153312
         '()
         __tmp153311
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args153130%_
        (apply make-instance gxc#!abort::t _%$args153130%_)))
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
      (let ((__tmp153314 (list gxc#!type::t))
            (__tmp153313 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp153314
         '()
         __tmp153313
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args153127%_
        (apply make-instance gxc#!alias::t _%$args153127%_)))
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
      (let ((__tmp153316 (list))
            (__tmp153315
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp153316
         '(return effect arguments unchecked origin)
         __tmp153315
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args153124%_
        (apply make-instance gxc#!signature::t _%$args153124%_)))
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
      (let ((__tmp153318 (list gxc#!type::t))
            (__tmp153317
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp153318
         '(signature)
         __tmp153317
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
      (lambda (_%id153103%_ _%signature153104%_)
        (if ((lambda (_%$obj153107%_)
               (or (not _%$obj153107%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj153107%_
                      'gxc#!signature::t))))
             _%signature153104%_)
            (let ((_%signature153114%_ _%signature153104%_))
              (gxc#__make-!procedure _%id153103%_ _%signature153114%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature153104%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id153089%_ _%signature153091%_)
        (let ((_%signature153094%_ _%signature153091%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id153089%_ _%signature153094%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj153058%_ _%signature153059%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj153058%_ 'gxc#!procedure::t))
            (let ((_%$obj153063%_ _%$obj153058%_))
              (if ((lambda (_%$obj153072%_)
                     (or (not _%$obj153072%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj153072%_
                            'gxc#!signature::t))))
                   _%signature153059%_)
                  (let ((_%signature153079%_ _%signature153059%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj153063%_
                     _%signature153079%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature153059%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj153058%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj153035%_ _%signature153037%_)
        (let* ((_%$obj153041%_ _%$obj153035%_)
               (_%signature153049%_ _%signature153037%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj153041%_
           _%signature153049%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp153320 (list gxc#!type::t))
            (__tmp153319 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp153320
         '(class)
         __tmp153319
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args153032%_
        (apply make-instance gxc#!class-meta::t _%$args153032%_)))
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
      (let ((__tmp153322 (list gxc#!type::t))
            (__tmp153321
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
         __tmp153322
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp153321
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args153029%_
        (apply make-instance gxc#!class::t _%$args153029%_)))
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
      (let ((__tmp153324 (list gxc#!procedure::t))
            (__tmp153323 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp153324
         '()
         __tmp153323
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args153026%_
        (apply make-instance gxc#!predicate::t _%$args153026%_)))
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
      (let ((__tmp153326 (list gxc#!procedure::t))
            (__tmp153325 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp153326
         '()
         __tmp153325
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args153023%_
        (apply make-instance gxc#!constructor::t _%$args153023%_)))
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
      (let ((__tmp153328 (list gxc#!procedure::t))
            (__tmp153327 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp153328
         '(slot checked?)
         __tmp153327
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args153020%_
        (apply make-instance gxc#!accessor::t _%$args153020%_)))
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
      (let ((__tmp153330 (list gxc#!procedure::t))
            (__tmp153329 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp153330
         '(slot checked?)
         __tmp153329
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args153017%_
        (apply make-instance gxc#!mutator::t _%$args153017%_)))
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
      (let ((__tmp153332 (list gxc#!type::t))
            (__tmp153331 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp153332
         '(methods)
         __tmp153331
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args153014%_
        (apply make-instance gxc#!interface::t _%$args153014%_)))
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
      (let ((__tmp153334 (list gxc#!procedure::t))
            (__tmp153333
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp153334
         '(arity dispatch inline inline-typedecl)
         __tmp153333
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args153011%_
        (apply make-instance gxc#!lambda::t _%$args153011%_)))
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
      (let ((__tmp153336 (list gxc#!procedure::t))
            (__tmp153335 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp153336
         '(clauses)
         __tmp153335
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args153008%_
        (apply make-instance gxc#!case-lambda::t _%$args153008%_)))
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
      (let ((__tmp153338 (list gxc#!procedure::t))
            (__tmp153337
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp153338
         '(table dispatch)
         __tmp153337
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args153005%_
        (apply make-instance gxc#!kw-lambda::t _%$args153005%_)))
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
      (let ((__tmp153340 (list gxc#!procedure::t))
            (__tmp153339 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp153340
         '(keys main)
         __tmp153339
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args153002%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args153002%_)))
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
      (let ((__tmp153341 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp153341
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args152999%_
        (apply make-instance gxc#!primitive::t _%$args152999%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp153343 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp153342 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp153343
         '()
         __tmp153342
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args152996%_
        (apply make-instance gxc#!primitive-predicate::t _%$args152996%_)))
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
      (let ((__tmp153345 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp153344 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp153345
         '()
         __tmp153344
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args152993%_
        (apply make-instance gxc#!primitive-lambda::t _%$args152993%_)))
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
      (let ((__tmp153347 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp153346 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp153347
         '()
         __tmp153346
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args152990%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args152990%_)))
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
      (lambda (_%self150415152975%_)
        (let* ((_%self152978%_ _%self150415152975%_)
               (_%self152980%_ _%self152978%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self152980%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self150416152837%_ _%klass152839%_)
        (let* ((_%self152841%_ _%self150416152837%_)
               (_%self152843%_ _%self152841%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self152843%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152843%_
             _%klass152839%_
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
      (lambda (_%self150417152525%_
               _%id152527%_
               _%super152528%_
               _%slots152529%_
               _%ctor-method152530%_
               _%struct?152531%_
               _%final?152532%_
               _%system?152533%_
               _%metaclass152534%_)
        (let* ((_%self152536%_ _%self150417152525%_)
               (_%self152538%_ _%self152536%_))
          (let _%lp152548%_ ((_%rest152550%_ _%super152528%_))
            (let* ((_%rest152551152559%_ _%rest152550%_)
                   (_%else152553152567%_ (lambda () '#!void))
                   (_%K152555152573%_
                    (lambda (_%rest152570%_ _%super-id152571%_)
                      (if (let ((__tmp153348
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id152527%_ '()))
                                  _%super-id152571%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp153348 '8 '#f '#f))
                          (let ((__tmp153349
                                 (cons '!class (cons _%id152527%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp153349
                             _%super-id152571%_))
                          '#!void)
                      (_%lp152548%_ _%rest152570%_))))
              (if (pair? _%rest152551152559%_)
                  (let ((_%hd152556152576%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest152551152559%_)))
                        (_%tl152557152578%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest152551152559%_))))
                    (let* ((_%super-id152581%_ _%hd152556152576%_)
                           (_%rest152583%_ _%tl152557152578%_))
                      (_%K152555152573%_ _%rest152583%_ _%super-id152581%_)))
                  '#!void)))
          (let* ((_%ctor-method152634%_
                  (let ((_%$e152585%_ _%ctor-method152530%_))
                    (if _%$e152585%_
                        _%$e152585%_
                        (let _%lp152588%_ ((_%rest152590%_ _%super152528%_)
                                           (_%method152591%_ '#f))
                          (let* ((_%rest152592152600%_ _%rest152590%_)
                                 (_%else152594152608%_
                                  (lambda () _%method152591%_))
                                 (_%K152596152622%_
                                  (lambda (_%rest152611%_ _%super-id152612%_)
                                    (let* ((_%klass152614%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id152527%_ '()))
                                             _%super-id152612%_))
                                           (_%$e152616%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass152614%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e152616%_
                                          ((lambda (_%ctor-method152619%_)
                                             (if _%method152591%_
                                                 (if (eq? _%ctor-method152619%_
                                                          _%method152591%_)
                                                     (_%lp152588%_
                                                      _%rest152611%_
                                                      _%ctor-method152619%_)
                                                     (let ((__tmp153350
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id152527%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp153350
                _%method152591%_
                _%ctor-method152619%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp152588%_
                                                  _%rest152611%_
                                                  _%ctor-method152619%_)))
                                           _%$e152616%_)
                                          (_%lp152588%_
                                           _%rest152611%_
                                           _%method152591%_))))))
                            (if (pair? _%rest152592152600%_)
                                (let ((_%hd152597152625%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest152592152600%_)))
                                      (_%tl152598152627%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest152592152600%_))))
                                  (let* ((_%super-id152630%_
                                          _%hd152597152625%_)
                                         (_%rest152632%_ _%tl152598152627%_))
                                    (_%K152596152622%_
                                     _%rest152632%_
                                     _%super-id152630%_)))
                                (_%else152594152608%_)))))))
                 (_g153351_
                  (let ((__tmp153355
                         (lambda (_%klass-id152636%_)
                           (cons _%klass-id152636%_
                                 (let ((__tmp153356
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id152527%_ '()))
                                         _%klass-id152636%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp153356
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp153353
                         (lambda (_%klass-id152638%_)
                           (let ((__tmp153354
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id152527%_ '()))
                                   _%klass-id152638%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp153354
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp153355
                     __tmp153353
                     eq?
                     identity
                     '()
                     _%super152528%_))))
            (begin
              (let ((_g153352_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g153351_)
                           (##values-length _g153351_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g153352_ 2)))
                    (error "Context expects 2 values" _g153352_)))
              (let ((_%precedence-list152640%_
                     (let () (declare (not safe)) (##values-ref _g153351_ 0)))
                    (_%base-struct152641%_
                     (let () (declare (not safe)) (##values-ref _g153351_ 1))))
                (let* ((_%precedence-list152685%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id152527%_ '(t object class)))
                            _%precedence-list152640%_
                            (if (memq 'object::t _%precedence-list152640%_)
                                _%precedence-list152640%_
                                (if _%system?152533%_
                                    (if (memq 't::t _%precedence-list152640%_)
                                        _%precedence-list152640%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list152640%_
                                           '(t::t))))
                                    (let _%loop152647%_ ((_%tail152649%_
                                                          _%precedence-list152640%_)
                                                         (_%head152650%_ '()))
                                      (let* ((_%tail152651152659%_
                                              _%tail152649%_)
                                             (_%else152653152667%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head152650%_))))
                                             (_%K152655152673%_
                                              (lambda (_%rest152670%_
                                                       _%hd152671%_)
                                                (if (eq? _%hd152671%_ 't::t)
                                                    (let ((__tmp153357
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail152649%_)))
              (declare (not safe))
              (__foldl1 cons __tmp153357 _%head152650%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop152647%_
                                                     _%rest152670%_
                                                     (cons _%hd152671%_
                                                           _%head152650%_))))))
                                        (if (pair? _%tail152651152659%_)
                                            (let ((_%hd152656152676%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail152651152659%_)))
                                                  (_%tl152657152678%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail152651152659%_))))
                                              (let* ((_%hd152681%_
                                                      _%hd152656152676%_)
                                                     (_%rest152683%_
                                                      _%tl152657152678%_))
                                                (_%K152655152673%_
                                                 _%rest152683%_
                                                 _%hd152681%_)))
                                            (_%else152653152667%_))))))))
                       (_%fields152687%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id152527%_ '()))
                         _%base-struct152641%_
                         _%precedence-list152685%_
                         _%slots152529%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152538%_
                     _%id152527%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152538%_
                     _%super152528%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152538%_
                     _%precedence-list152685%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152538%_
                     _%slots152529%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152538%_
                     _%fields152687%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152538%_
                     _%ctor-method152634%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152538%_
                     _%struct?152531%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152538%_
                     _%final?152532%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152538%_
                     _%metaclass152534%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self150418152690%_
               _%id152692%_
               _%super152693%_
               _%precedence-list152694%_
               _%slots152695%_
               _%fields152696%_
               _%constructor152697%_
               _%struct?152698%_
               _%final?152699%_
               _%system?152700%_
               _%metaclass152701%_
               _%methods152702%_)
        (let* ((_%self152704%_ _%self150418152690%_)
               (_%self152706%_ _%self152704%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152706%_
             _%id152692%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152706%_
             _%super152693%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152706%_
             _%precedence-list152694%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152706%_
             _%slots152695%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152706%_
             _%fields152696%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152706%_
             _%constructor152697%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152706%_
             _%struct?152698%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152706%_
             _%final?152699%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152706%_
             _%metaclass152701%_
             '10
             '#f
             '#f))
          (if _%methods152702%_
              (let ((__tmp153358
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods152702%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self152706%_
                 __tmp153358
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g153360_
        (let ((_g153359_ (let () (declare (not safe)) (##length _g153360_))))
          (cond ((let () (declare (not safe)) (##fx= _g153359_ 9))
                 (apply gxc#!class:::init!__0 _g153360_))
                ((let () (declare (not safe)) (##fx= _g153359_ 12))
                 (apply gxc#!class:::init!__1 _g153360_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g153360_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where152377%_
               _%base-struct152378%_
               _%precedence-list152379%_
               _%direct-slots152380%_)
        (let* ((_%base-fields152382%_
                (if _%base-struct152378%_
                    (let ((__tmp153361
                           (gxc#optimizer-resolve-class
                            _%where152377%_
                            _%base-struct152378%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp153361 '5 '#f '#f))
                    '()))
               (_%r-fields152384%_ (reverse _%base-fields152382%_))
               (_%seen-slots152392%_
                (let ((_%tab152386%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g152387152389%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab152386%_ _%g152387152389%_ '#t)))
                   _%base-fields152382%_)
                  _%tab152386%_))
               (_%process-slot152396%_
                (lambda (_%slot152394%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots152392%_ _%slot152394%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots152392%_
                           _%slot152394%_
                           '#t))
                        (set! _%r-fields152384%_
                              (cons _%slot152394%_ _%r-fields152384%_)))))))
          (for-each
           (lambda (_%mixin152399%_)
             (let ((_%klass152401%_
                    (gxc#optimizer-resolve-class
                     _%where152377%_
                     _%mixin152399%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass152401%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot152396%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass152401%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list152379%_)
          (for-each _%process-slot152396%_ _%direct-slots152380%_)
          (let () (declare (not safe)) (##reverse _%r-fields152384%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass152336%_ _%slot152337%_)
        (let _%lp152339%_ ((_%rest152341%_
                            (##structure-ref
                             _%klass152336%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset152342%_ '1))
          (let* ((_%rest152343152351%_ _%rest152341%_)
                 (_%else152345152359%_
                  (lambda ()
                    (let ((__tmp153363
                           (##structure-ref
                            _%klass152336%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp153362
                           (##structure-ref
                            _%klass152336%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp153363
                       __tmp153362
                       _%slot152337%_))))
                 (_%K152347152365%_
                  (lambda (_%rest152362%_ _%s152363%_)
                    (if (eq? _%s152363%_ _%slot152337%_)
                        _%offset152342%_
                        (_%lp152339%_
                         _%rest152362%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset152342%_ '1)))))))
            (if (pair? _%rest152343152351%_)
                (let ((_%hd152348152368%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest152343152351%_)))
                      (_%tl152349152370%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest152343152351%_))))
                  (let* ((_%s152373%_ _%hd152348152368%_)
                         (_%rest152375%_ _%tl152349152370%_))
                    (_%K152347152365%_ _%rest152375%_ _%s152373%_)))
                (_%else152345152359%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass152294%_ _%slot152295%_)
        (if (gxc#!class-struct-slot? _%klass152294%_ _%slot152295%_)
            _%klass152294%_
            (let _%lp152297%_ ((_%rest152299%_
                                (##structure-ref
                                 _%klass152294%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest152300152308%_ _%rest152299%_)
                     (_%else152302152316%_ (lambda () '#f))
                     (_%K152304152324%_
                      (lambda (_%rest152319%_ _%super152320%_)
                        (let ((_%super-class152322%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass152294%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot152295%_ '())))
                                _%super152320%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class152322%_
                               _%slot152295%_)
                              _%super-class152322%_
                              (_%lp152297%_ _%rest152319%_))))))
                (if (pair? _%rest152300152308%_)
                    (let ((_%hd152305152327%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest152300152308%_)))
                          (_%tl152306152329%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest152300152308%_))))
                      (let* ((_%super152332%_ _%hd152305152327%_)
                             (_%rest152334%_ _%tl152306152329%_))
                        (_%K152304152324%_ _%rest152334%_ _%super152332%_)))
                    (_%else152302152316%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass152291%_ _%slot152292%_)
        (if (##structure-ref _%klass152291%_ '7 gxc#!class::t '#f)
            (memq _%slot152292%_
                  (##structure-ref _%klass152291%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self150419152275%_ _%id152277%_)
        (let* ((_%self152279%_ _%self150419152275%_)
               (_%self152281%_ _%self152279%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152281%_
             _%id152277%_
             '1
             '#f
             '#f))
          (let ((__tmp153364
                 (let ((__obj153296
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
                      __obj153296
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153296
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153296
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj153296)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152281%_
             __tmp153364
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self150420152137%_ _%id152139%_)
        (let* ((_%self152141%_ _%self150420152137%_)
               (_%self152143%_ _%self152141%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152143%_
             _%id152139%_
             '1
             '#f
             '#f))
          (let ((__tmp153365
                 (let ((__obj153297
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
                      __obj153297
                      _%id152139%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153297
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj153297)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152143%_
             __tmp153365
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
      (lambda (_%self150421151997%_
               _%id151999%_
               _%slot152000%_
               _%checked?152001%_)
        (let* ((_%self152003%_ _%self150421151997%_)
               (_%self152005%_ _%self152003%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152005%_
             _%id151999%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152005%_
             _%slot152000%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152005%_
             _%checked?152001%_
             '4
             '#f
             '#f))
          (let ((__tmp153366
                 (let ((__obj153298
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
                     (##unchecked-structure-set! __obj153298 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153298
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp153367 (cons _%id151999%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153298
                      __tmp153367
                      '3
                      '#f
                      '#f))
                   __obj153298)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152005%_
             __tmp153366
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self150422151857%_
               _%id151859%_
               _%slot151860%_
               _%checked?151861%_)
        (let* ((_%self151863%_ _%self150422151857%_)
               (_%self151865%_ _%self151863%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151865%_
             _%id151859%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151865%_
             _%slot151860%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151865%_
             _%checked?151861%_
             '4
             '#f
             '#f))
          (let ((__tmp153368
                 (let ((__obj153299
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
                      __obj153299
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153299
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp153369 (cons _%id151859%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153299
                      __tmp153369
                      '3
                      '#f
                      '#f))
                   __obj153299)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151865%_
             __tmp153368
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords151699%_
               _%signature151696151700%_
               _%self150423151702%_
               _%arity151704%_
               _%dispatch151705%_)
        (let* ((_%signature151707%_
                (if (eq? _%signature151696151700%_ absent-value)
                    '#f
                    _%signature151696151700%_))
               (_%self151709%_ _%self150423151702%_)
               (_%self151711%_ _%self151709%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151711%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151711%_
             _%arity151704%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151711%_
             _%dispatch151705%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151711%_
             _%signature151707%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords151725%_ . _%args151726%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords151725%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151725%_
                  'signature:
                  absent-value))
               _%args151726%_)))
    (define gxc#!lambda:::init!
      (lambda _%args151697151732%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args151697151732%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords151538%_
               _%signature151535151539%_
               _%self150424151541%_
               _%clauses151543%_)
        (let* ((_%signature151545%_
                (if (eq? _%signature151535151539%_ absent-value)
                    '#f
                    _%signature151535151539%_))
               (_%self151547%_ _%self150424151541%_)
               (_%self151549%_ _%self151547%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151549%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151549%_
             _%signature151545%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151549%_
             _%clauses151543%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords151563%_ . _%args151564%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords151563%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151563%_
                  'signature:
                  absent-value))
               _%args151564%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args151536151570%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args151536151570%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self150425151395%_ _%tab151397%_ _%dispatch151398%_)
        (let* ((_%self151400%_ _%self150425151395%_)
               (_%self151402%_ _%self151400%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151402%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151402%_
             _%tab151397%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151402%_
             _%dispatch151398%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self150426151256%_ _%keys151258%_ _%main151259%_)
        (let* ((_%self151261%_ _%self150426151256%_)
               (_%self151263%_ _%self151261%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151263%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151263%_
             _%keys151258%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151263%_
             _%main151259%_
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
      (lambda (_%self150427150874%_ _%id150876%_)
        (let* ((_%self150878%_ _%self150427150874%_)
               (_%self150880%_ _%self150878%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150880%_
             _%id150876%_
             '1
             '#f
             '#f))
          (let ((__tmp153370
                 (let ((__obj153300
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
                      __obj153300
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153300
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153300
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj153300)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150880%_
             __tmp153370
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
      (lambda (_%klass150743%_)
        (let ((_%$e150745%_
               (##structure-ref _%klass150743%_ '11 gxc#!class::t '#f)))
          (if _%$e150745%_
              _%$e150745%_
              (let ((_%tab150749%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass150743%_
                 _%tab150749%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab150749%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass150734%_ _%method150735%_)
        (let ((_%tab150736150738%_
               (##structure-ref _%klass150734%_ '11 gxc#!class::t '#f)))
          (if _%tab150736150738%_
              (let ((_%tab150741%_ _%tab150736150738%_))
                (declare (not safe))
                (hash-get _%tab150741%_ _%method150735%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a150722%_ _%type-b150723%_)
        (if _%type-a150722%_
            (if _%type-b150723%_
                (let ((_%$e150725%_ (eq? _%type-a150722%_ _%type-b150723%_)))
                  (if _%$e150725%_
                      _%$e150725%_
                      (let ((_%$e150728%_
                             (eq? (##structure-ref
                                   _%type-b150723%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e150728%_
                            _%$e150728%_
                            (let ((_%$e150731%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a150722%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b150723%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e150731%_
                                  _%$e150731%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a150722%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b150723%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a150722%_
                                           _%type-b150723%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a150673%_ _%klass-b150674%_)
        (let ((_%$e150676%_
               (eq? (##structure-ref _%klass-a150673%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b150674%_ '1 gxc#!type::t '#f))))
          (if _%$e150676%_
              _%$e150676%_
              (let ((_%klass-id-b150679%_
                     (##structure-ref _%klass-b150674%_ '1 gxc#!type::t '#f))
                    (_%precedence-list150680%_
                     (##structure-ref _%klass-a150673%_ '3 gxc#!class::t '#f)))
                (let _%loop150682%_ ((_%rest150684%_
                                      _%precedence-list150680%_))
                  (let* ((_%rest150685150693%_ _%rest150684%_)
                         (_%else150687150701%_ (lambda () '#f))
                         (_%K150689150710%_
                          (lambda (_%rest150704%_ _%klass-name150705%_)
                            (let ((_%$e150707%_
                                   (eq? (let ((__tmp153371
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a150673%_
                                                            (cons _%klass-b150674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name150705%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp153371
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b150679%_)))
                              (if _%$e150707%_
                                  _%$e150707%_
                                  (_%loop150682%_ _%rest150704%_))))))
                    (if (pair? _%rest150685150693%_)
                        (let ((_%hd150690150713%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest150685150693%_)))
                              (_%tl150691150715%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest150685150693%_))))
                          (let* ((_%klass-name150718%_ _%hd150690150713%_)
                                 (_%rest150720%_ _%tl150691150715%_))
                            (_%K150689150710%_
                             _%rest150720%_
                             _%klass-name150718%_)))
                        (_%else150687150701%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type150671%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150671%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type150671%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc150660%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc150660%_ 'gxc#!procedure::t))
            (let ((_%proc150663%_ _%proc150660%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc150663%_ '2 '#f '#f))
                  (let ((__tmp153372
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc150663%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp153372 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc150660%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym150642%_ _%type150643%_ _%local?150644%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150643%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym150642%_
                     _%type150643%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym150642%_ '" " _%type150643%_))
        (let ((_%table150646%_
               (if _%local?150644%_
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
          (hash-put! _%table150646%_ _%sym150642%_ _%type150643%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym150651%_ _%type150652%_)
        (let ((_%local?150654%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym150651%_
           _%type150652%_
           _%local?150654%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g153374_
        (let ((_g153373_ (let () (declare (not safe)) (##length _g153374_))))
          (cond ((let () (declare (not safe)) (##fx= _g153373_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g153374_))
                ((let () (declare (not safe)) (##fx= _g153373_ 3))
                 (apply gxc#optimizer-declare-type!__% _g153374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g153374_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym150636%_ _%type150637%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150637%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym150636%_
                     _%type150637%_)))
        (let ((_%table150639%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp153375
                 (let () (declare (not safe)) (struct->list _%type150637%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym150636%_ '" " __tmp153375))
          (let ()
            (declare (not safe))
            (hash-put! _%table150639%_ _%sym150636%_ _%type150637%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table150639%_ _%type150637%_ _%sym150636%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym150631%_ _%type150632%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150632%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym150631%_
                     _%type150632%_)))
        (let ((_%table150634%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table150634%_ _%sym150631%_))
              '#!void
              (begin
                (let ((__tmp153376
                       (let ()
                         (declare (not safe))
                         (struct->list _%type150632%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym150631%_
                   '" "
                   __tmp153376))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table150634%_ _%sym150631%_ _%type150632%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table150634%_
                   _%type150632%_
                   _%sym150631%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym150629%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym150629%_))
        (let ((__tmp153377
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp153377 _%sym150629%_))
        (let ((__tmp153378
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp153378 _%sym150629%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t150597%_
               _%method150598%_
               _%sym150599%_
               _%rebind?150600%_)
        (let ((__tmp153379
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp153379 _%sym150599%_ '#t))
        (let ((_%klass150602%_ (gxc#optimizer-lookup-class _%type-t150597%_)))
          (if _%klass150602%_
              (let* ((_%vtab150604%_ (gxc#!class-method-table _%klass150602%_))
                     (_%$e150606%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab150604%_ _%method150598%_))))
                (if _%$e150606%_
                    ((lambda (_%existing150609%_)
                       (if _%rebind?150600%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t150597%_
                                '" "
                                _%method150598%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab150604%_
                                _%method150598%_
                                _%sym150599%_)))
                           (if (eq? _%existing150609%_ _%sym150599%_)
                               '#!void
                               (let ((__tmp153380
                                      (cons 'bind-method!
                                            (cons _%type-t150597%_
                                                  (cons _%method150598%_
                                                        (cons _%sym150599%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp153380
                                  _%method150598%_)))))
                     _%$e150606%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t150597%_
                         '" "
                         _%method150598%_
                         '" => "
                         _%sym150599%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab150604%_
                         _%method150598%_
                         _%sym150599%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t150597%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t150618%_ _%method150619%_ _%sym150620%_)
        (let ((_%rebind?150622%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t150618%_
           _%method150619%_
           _%sym150620%_
           _%rebind?150622%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g153382_
        (let ((_g153381_ (let () (declare (not safe)) (##length _g153382_))))
          (cond ((let () (declare (not safe)) (##fx= _g153381_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g153382_))
                ((let () (declare (not safe)) (##fx= _g153381_ 4))
                 (apply gxc#optimizer-declare-method!__% _g153382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g153382_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym150582%_)
        (let ((_%$e150584%_
               (let ((__tmp153383
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym150582%_ __tmp153383))))
          (if _%$e150584%_
              _%$e150584%_
              (let ((_%$e150593%_
                     (let ((_%ht150586150588%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht150586150588%_
                           (let ((_%ht150591%_ _%ht150586150588%_))
                             (declare (not safe))
                             (hash-get _%ht150591%_ _%sym150582%_))
                           '#f))))
                (if _%$e150593%_
                    _%$e150593%_
                    (let ((__tmp153384
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp153384 _%sym150582%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym150574%_)
        (let ((_%type150575150577%_ (gxc#optimizer-lookup-type _%sym150574%_)))
          (if _%type150575150577%_
              (let ((_%type150580%_ _%type150575150577%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type150580%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type150580%_ '1 '#f '#f)))
                    _%type150580%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym150570%_)
        (let ((_%table150572%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table150572%_ _%sym150570%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where150555%_ _%sym150556%_)
        (let ((_%$e150559%_ (gxc#optimizer-lookup-class _%sym150556%_)))
          (if _%$e150559%_
              ((lambda (_%g150561150563%_)
                 (let ((_%val150566%_ _%g150561150563%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val150566%_
                          'gxc#!class::t))
                       _%val150566%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val150566%_)))))
               _%$e150559%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where150555%_
                   _%sym150556%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass150553%_)
        (let ((__tmp153385
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp153385 _%klass150553%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t150550%_ _%method150551%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t150550%_)
         _%method150551%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym150548%_)
        (let ((__tmp153386
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp153386 _%sym150548%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e150430%_
                  (lambda (_%t150531%_)
                    (if (symbol? _%t150531%_)
                        (_%type-e150430%_
                         (gxc#optimizer-lookup-type _%t150531%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t150531%_
                               'gxc#!lambda::t))
                            (_%__lambda-type150432%_ _%t150531%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t150531%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type150434%_ _%t150531%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t150531%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type150436%_
                                     _%t150531%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t150531%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t150538%_ _%t150531%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t150538%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp153387
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t150538%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp153387
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t150531%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t150531%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type150431%_
                  (lambda (_%t150519%_)
                    (let ((_%t150522%_ _%t150519%_))
                      (_%__lambda-type150432%_ _%t150522%_))))
                 (_%__lambda-type150432%_
                  (lambda (_%t150507%_)
                    (let ((_%t150510%_ _%t150507%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t150510%_ '4 '#f '#f))
                          (_%type-e150430%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t150510%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t150510%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp153388
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t150510%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp153388
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type150433%_
                  (lambda (_%t150495%_)
                    (let ((_%t150498%_ _%t150495%_))
                      (_%__kw-lambda-type150434%_ _%t150498%_))))
                 (_%__kw-lambda-type150434%_
                  (lambda (_%t150483%_)
                    (let ((_%t150486%_ _%t150483%_))
                      (_%type-e150430%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t150486%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type150435%_
                  (lambda (_%t150471%_)
                    (let ((_%t150474%_ _%t150471%_))
                      (_%__kw-lambda-primary-type150436%_ _%t150474%_))))
                 (_%__kw-lambda-primary-type150436%_
                  (lambda (_%t150457%_)
                    (let ((_%t150460%_ _%t150457%_))
                      (_%type-e150430%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t150460%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1150438%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2150440%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result150442%_
                  (if _%ht1150438%_
                      (let () (declare (not safe)) (hash->list _%ht1150438%_))
                      '()))
                 (_%result150444%_
                  (if _%ht2150440%_
                      (let ((__tmp153389
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2150440%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result150442%_ __tmp153389))
                      _%result150442%_)))
            (for-each
             (lambda (_%p150447%_)
               (let* ((_%t150449%_ (cdr _%p150447%_))
                      (_%tr150451%_ (_%type-e150430%_ _%t150449%_)))
                 (set-cdr! _%p150447%_ _%tr150451%_)))
             _%result150444%_)
            (list-sort
             (lambda (_%a150454%_ _%b150455%_)
               (let ((__tmp153391 (symbol->string (car _%a150454%_)))
                     (__tmp153390 (symbol->string (car _%b150455%_))))
                 (declare (not safe))
                 (##string<? __tmp153391 __tmp153390)))
             _%result150444%_)))))))
