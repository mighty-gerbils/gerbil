(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1734278446)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp153298 (list)) (__tmp153297 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp153298
         '(type classes ssxi methods)
         __tmp153297
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args153269%_
        (apply make-instance gxc#optimizer-info::t _%$args153269%_)))
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
      (lambda (_%self150410153254%_)
        (let* ((_%self153257%_ _%self150410153254%_)
               (_%self153259%_ _%self153257%_))
          (if (let ((__tmp153299
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self153259%_))))
                (declare (not safe))
                (##fx< '4 __tmp153299))
              (begin
                (let ((__tmp153300
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153259%_
                   __tmp153300
                   '1
                   '#f
                   '#f))
                (let ((__tmp153301
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153259%_
                   __tmp153301
                   '2
                   '#f
                   '#f))
                (let ((__tmp153302
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153259%_
                   __tmp153302
                   '3
                   '#f
                   '#f))
                (let ((__tmp153303
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153259%_
                   __tmp153303
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp153304
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self153259%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self153259%_
                       '4
                       __tmp153304))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp153306 (list))
            (__tmp153305
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp153306
         '(id)
         __tmp153305
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args153129%_
        (apply make-instance gxc#!type::t _%$args153129%_)))
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
      (let ((__tmp153308 (list gxc#!type::t))
            (__tmp153307 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp153308
         '()
         __tmp153307
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args153126%_
        (apply make-instance gxc#!abort::t _%$args153126%_)))
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
      (let ((__tmp153310 (list gxc#!type::t))
            (__tmp153309 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp153310
         '()
         __tmp153309
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args153123%_
        (apply make-instance gxc#!alias::t _%$args153123%_)))
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
      (let ((__tmp153312 (list))
            (__tmp153311
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp153312
         '(return effect arguments unchecked origin)
         __tmp153311
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args153120%_
        (apply make-instance gxc#!signature::t _%$args153120%_)))
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
      (let ((__tmp153314 (list gxc#!type::t))
            (__tmp153313
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp153314
         '(signature)
         __tmp153313
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
      (lambda (_%id153099%_ _%signature153100%_)
        (if ((lambda (_%$obj153103%_)
               (or (not _%$obj153103%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj153103%_
                      'gxc#!signature::t))))
             _%signature153100%_)
            (let ((_%signature153110%_ _%signature153100%_))
              (gxc#__make-!procedure _%id153099%_ _%signature153110%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature153100%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id153085%_ _%signature153087%_)
        (let ((_%signature153090%_ _%signature153087%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id153085%_ _%signature153090%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj153054%_ _%signature153055%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj153054%_ 'gxc#!procedure::t))
            (let ((_%$obj153059%_ _%$obj153054%_))
              (if ((lambda (_%$obj153068%_)
                     (or (not _%$obj153068%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj153068%_
                            'gxc#!signature::t))))
                   _%signature153055%_)
                  (let ((_%signature153075%_ _%signature153055%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj153059%_
                     _%signature153075%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature153055%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj153054%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj153031%_ _%signature153033%_)
        (let* ((_%$obj153037%_ _%$obj153031%_)
               (_%signature153045%_ _%signature153033%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj153037%_
           _%signature153045%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp153316 (list gxc#!type::t))
            (__tmp153315 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp153316
         '(class)
         __tmp153315
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args153028%_
        (apply make-instance gxc#!class-meta::t _%$args153028%_)))
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
      (let ((__tmp153318 (list gxc#!type::t))
            (__tmp153317
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
         __tmp153318
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp153317
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args153025%_
        (apply make-instance gxc#!class::t _%$args153025%_)))
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
      (let ((__tmp153320 (list gxc#!procedure::t))
            (__tmp153319 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp153320
         '()
         __tmp153319
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args153022%_
        (apply make-instance gxc#!predicate::t _%$args153022%_)))
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
      (let ((__tmp153322 (list gxc#!procedure::t))
            (__tmp153321 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp153322
         '()
         __tmp153321
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args153019%_
        (apply make-instance gxc#!constructor::t _%$args153019%_)))
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
      (let ((__tmp153324 (list gxc#!procedure::t))
            (__tmp153323 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp153324
         '(slot checked?)
         __tmp153323
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args153016%_
        (apply make-instance gxc#!accessor::t _%$args153016%_)))
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
      (let ((__tmp153326 (list gxc#!procedure::t))
            (__tmp153325 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp153326
         '(slot checked?)
         __tmp153325
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args153013%_
        (apply make-instance gxc#!mutator::t _%$args153013%_)))
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
      (let ((__tmp153328 (list gxc#!type::t))
            (__tmp153327 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp153328
         '(methods)
         __tmp153327
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args153010%_
        (apply make-instance gxc#!interface::t _%$args153010%_)))
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
      (let ((__tmp153330 (list gxc#!procedure::t))
            (__tmp153329
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp153330
         '(arity dispatch inline inline-typedecl)
         __tmp153329
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args153007%_
        (apply make-instance gxc#!lambda::t _%$args153007%_)))
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
      (let ((__tmp153332 (list gxc#!procedure::t))
            (__tmp153331 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp153332
         '(clauses)
         __tmp153331
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args153004%_
        (apply make-instance gxc#!case-lambda::t _%$args153004%_)))
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
      (let ((__tmp153334 (list gxc#!procedure::t))
            (__tmp153333
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp153334
         '(table dispatch)
         __tmp153333
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args153001%_
        (apply make-instance gxc#!kw-lambda::t _%$args153001%_)))
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
      (let ((__tmp153336 (list gxc#!procedure::t))
            (__tmp153335 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp153336
         '(keys main)
         __tmp153335
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args152998%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args152998%_)))
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
      (let ((__tmp153337 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp153337
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args152995%_
        (apply make-instance gxc#!primitive::t _%$args152995%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp153339 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp153338 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp153339
         '()
         __tmp153338
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args152992%_
        (apply make-instance gxc#!primitive-predicate::t _%$args152992%_)))
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
      (let ((__tmp153341 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp153340 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp153341
         '()
         __tmp153340
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args152989%_
        (apply make-instance gxc#!primitive-lambda::t _%$args152989%_)))
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
      (let ((__tmp153343 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp153342 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp153343
         '()
         __tmp153342
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args152986%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args152986%_)))
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
      (lambda (_%self150411152971%_)
        (let* ((_%self152974%_ _%self150411152971%_)
               (_%self152976%_ _%self152974%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self152976%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self150412152833%_ _%klass152835%_)
        (let* ((_%self152837%_ _%self150412152833%_)
               (_%self152839%_ _%self152837%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self152839%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152839%_
             _%klass152835%_
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
      (lambda (_%self150413152521%_
               _%id152523%_
               _%super152524%_
               _%slots152525%_
               _%ctor-method152526%_
               _%struct?152527%_
               _%final?152528%_
               _%system?152529%_
               _%metaclass152530%_)
        (let* ((_%self152532%_ _%self150413152521%_)
               (_%self152534%_ _%self152532%_))
          (let _%lp152544%_ ((_%rest152546%_ _%super152524%_))
            (let* ((_%rest152547152555%_ _%rest152546%_)
                   (_%else152549152563%_ (lambda () '#!void))
                   (_%K152551152569%_
                    (lambda (_%rest152566%_ _%super-id152567%_)
                      (if (let ((__tmp153344
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id152523%_ '()))
                                  _%super-id152567%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp153344 '8 '#f '#f))
                          (let ((__tmp153345
                                 (cons '!class (cons _%id152523%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp153345
                             _%super-id152567%_))
                          '#!void)
                      (_%lp152544%_ _%rest152566%_))))
              (if (pair? _%rest152547152555%_)
                  (let ((_%hd152552152572%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest152547152555%_)))
                        (_%tl152553152574%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest152547152555%_))))
                    (let* ((_%super-id152577%_ _%hd152552152572%_)
                           (_%rest152579%_ _%tl152553152574%_))
                      (_%K152551152569%_ _%rest152579%_ _%super-id152577%_)))
                  '#!void)))
          (let* ((_%ctor-method152630%_
                  (let ((_%$e152581%_ _%ctor-method152526%_))
                    (if _%$e152581%_
                        _%$e152581%_
                        (let _%lp152584%_ ((_%rest152586%_ _%super152524%_)
                                           (_%method152587%_ '#f))
                          (let* ((_%rest152588152596%_ _%rest152586%_)
                                 (_%else152590152604%_
                                  (lambda () _%method152587%_))
                                 (_%K152592152618%_
                                  (lambda (_%rest152607%_ _%super-id152608%_)
                                    (let* ((_%klass152610%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id152523%_ '()))
                                             _%super-id152608%_))
                                           (_%$e152612%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass152610%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e152612%_
                                          ((lambda (_%ctor-method152615%_)
                                             (if _%method152587%_
                                                 (if (eq? _%ctor-method152615%_
                                                          _%method152587%_)
                                                     (_%lp152584%_
                                                      _%rest152607%_
                                                      _%ctor-method152615%_)
                                                     (let ((__tmp153346
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id152523%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp153346
                _%method152587%_
                _%ctor-method152615%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp152584%_
                                                  _%rest152607%_
                                                  _%ctor-method152615%_)))
                                           _%$e152612%_)
                                          (_%lp152584%_
                                           _%rest152607%_
                                           _%method152587%_))))))
                            (if (pair? _%rest152588152596%_)
                                (let ((_%hd152593152621%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest152588152596%_)))
                                      (_%tl152594152623%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest152588152596%_))))
                                  (let* ((_%super-id152626%_
                                          _%hd152593152621%_)
                                         (_%rest152628%_ _%tl152594152623%_))
                                    (_%K152592152618%_
                                     _%rest152628%_
                                     _%super-id152626%_)))
                                (_%else152590152604%_)))))))
                 (_g153347_
                  (let ((__tmp153351
                         (lambda (_%klass-id152632%_)
                           (cons _%klass-id152632%_
                                 (let ((__tmp153352
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id152523%_ '()))
                                         _%klass-id152632%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp153352
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp153349
                         (lambda (_%klass-id152634%_)
                           (let ((__tmp153350
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id152523%_ '()))
                                   _%klass-id152634%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp153350
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp153351
                     __tmp153349
                     eq?
                     identity
                     '()
                     _%super152524%_))))
            (begin
              (let ((_g153348_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g153347_)
                           (##values-length _g153347_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g153348_ 2)))
                    (error "Context expects 2 values" _g153348_)))
              (let ((_%precedence-list152636%_
                     (let () (declare (not safe)) (##values-ref _g153347_ 0)))
                    (_%base-struct152637%_
                     (let () (declare (not safe)) (##values-ref _g153347_ 1))))
                (let* ((_%precedence-list152681%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id152523%_ '(t object class)))
                            _%precedence-list152636%_
                            (if (memq 'object::t _%precedence-list152636%_)
                                _%precedence-list152636%_
                                (if _%system?152529%_
                                    (if (memq 't::t _%precedence-list152636%_)
                                        _%precedence-list152636%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list152636%_
                                           '(t::t))))
                                    (let _%loop152643%_ ((_%tail152645%_
                                                          _%precedence-list152636%_)
                                                         (_%head152646%_ '()))
                                      (let* ((_%tail152647152655%_
                                              _%tail152645%_)
                                             (_%else152649152663%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head152646%_))))
                                             (_%K152651152669%_
                                              (lambda (_%rest152666%_
                                                       _%hd152667%_)
                                                (if (eq? _%hd152667%_ 't::t)
                                                    (let ((__tmp153353
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail152645%_)))
              (declare (not safe))
              (__foldl1 cons __tmp153353 _%head152646%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop152643%_
                                                     _%rest152666%_
                                                     (cons _%hd152667%_
                                                           _%head152646%_))))))
                                        (if (pair? _%tail152647152655%_)
                                            (let ((_%hd152652152672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail152647152655%_)))
                                                  (_%tl152653152674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail152647152655%_))))
                                              (let* ((_%hd152677%_
                                                      _%hd152652152672%_)
                                                     (_%rest152679%_
                                                      _%tl152653152674%_))
                                                (_%K152651152669%_
                                                 _%rest152679%_
                                                 _%hd152677%_)))
                                            (_%else152649152663%_))))))))
                       (_%fields152683%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id152523%_ '()))
                         _%base-struct152637%_
                         _%precedence-list152681%_
                         _%slots152525%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152534%_
                     _%id152523%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152534%_
                     _%super152524%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152534%_
                     _%precedence-list152681%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152534%_
                     _%slots152525%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152534%_
                     _%fields152683%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152534%_
                     _%ctor-method152630%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152534%_
                     _%struct?152527%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152534%_
                     _%final?152528%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152534%_
                     _%metaclass152530%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self150414152686%_
               _%id152688%_
               _%super152689%_
               _%precedence-list152690%_
               _%slots152691%_
               _%fields152692%_
               _%constructor152693%_
               _%struct?152694%_
               _%final?152695%_
               _%system?152696%_
               _%metaclass152697%_
               _%methods152698%_)
        (let* ((_%self152700%_ _%self150414152686%_)
               (_%self152702%_ _%self152700%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152702%_
             _%id152688%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152702%_
             _%super152689%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152702%_
             _%precedence-list152690%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152702%_
             _%slots152691%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152702%_
             _%fields152692%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152702%_
             _%constructor152693%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152702%_
             _%struct?152694%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152702%_
             _%final?152695%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152702%_
             _%metaclass152697%_
             '10
             '#f
             '#f))
          (if _%methods152698%_
              (let ((__tmp153354
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods152698%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self152702%_
                 __tmp153354
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g153356_
        (let ((_g153355_ (let () (declare (not safe)) (##length _g153356_))))
          (cond ((let () (declare (not safe)) (##fx= _g153355_ 9))
                 (apply gxc#!class:::init!__0 _g153356_))
                ((let () (declare (not safe)) (##fx= _g153355_ 12))
                 (apply gxc#!class:::init!__1 _g153356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g153356_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where152373%_
               _%base-struct152374%_
               _%precedence-list152375%_
               _%direct-slots152376%_)
        (let* ((_%base-fields152378%_
                (if _%base-struct152374%_
                    (let ((__tmp153357
                           (gxc#optimizer-resolve-class
                            _%where152373%_
                            _%base-struct152374%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp153357 '5 '#f '#f))
                    '()))
               (_%r-fields152380%_ (reverse _%base-fields152378%_))
               (_%seen-slots152388%_
                (let ((_%tab152382%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g152383152385%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab152382%_ _%g152383152385%_ '#t)))
                   _%base-fields152378%_)
                  _%tab152382%_))
               (_%process-slot152392%_
                (lambda (_%slot152390%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots152388%_ _%slot152390%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots152388%_
                           _%slot152390%_
                           '#t))
                        (set! _%r-fields152380%_
                              (cons _%slot152390%_ _%r-fields152380%_)))))))
          (for-each
           (lambda (_%mixin152395%_)
             (let ((_%klass152397%_
                    (gxc#optimizer-resolve-class
                     _%where152373%_
                     _%mixin152395%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass152397%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot152392%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass152397%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list152375%_)
          (for-each _%process-slot152392%_ _%direct-slots152376%_)
          (let () (declare (not safe)) (##reverse _%r-fields152380%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass152332%_ _%slot152333%_)
        (let _%lp152335%_ ((_%rest152337%_
                            (##structure-ref
                             _%klass152332%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset152338%_ '1))
          (let* ((_%rest152339152347%_ _%rest152337%_)
                 (_%else152341152355%_
                  (lambda ()
                    (let ((__tmp153359
                           (##structure-ref
                            _%klass152332%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp153358
                           (##structure-ref
                            _%klass152332%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp153359
                       __tmp153358
                       _%slot152333%_))))
                 (_%K152343152361%_
                  (lambda (_%rest152358%_ _%s152359%_)
                    (if (eq? _%s152359%_ _%slot152333%_)
                        _%offset152338%_
                        (_%lp152335%_
                         _%rest152358%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset152338%_ '1)))))))
            (if (pair? _%rest152339152347%_)
                (let ((_%hd152344152364%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest152339152347%_)))
                      (_%tl152345152366%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest152339152347%_))))
                  (let* ((_%s152369%_ _%hd152344152364%_)
                         (_%rest152371%_ _%tl152345152366%_))
                    (_%K152343152361%_ _%rest152371%_ _%s152369%_)))
                (_%else152341152355%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass152290%_ _%slot152291%_)
        (if (gxc#!class-struct-slot? _%klass152290%_ _%slot152291%_)
            _%klass152290%_
            (let _%lp152293%_ ((_%rest152295%_
                                (##structure-ref
                                 _%klass152290%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest152296152304%_ _%rest152295%_)
                     (_%else152298152312%_ (lambda () '#f))
                     (_%K152300152320%_
                      (lambda (_%rest152315%_ _%super152316%_)
                        (let ((_%super-class152318%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass152290%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot152291%_ '())))
                                _%super152316%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class152318%_
                               _%slot152291%_)
                              _%super-class152318%_
                              (_%lp152293%_ _%rest152315%_))))))
                (if (pair? _%rest152296152304%_)
                    (let ((_%hd152301152323%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest152296152304%_)))
                          (_%tl152302152325%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest152296152304%_))))
                      (let* ((_%super152328%_ _%hd152301152323%_)
                             (_%rest152330%_ _%tl152302152325%_))
                        (_%K152300152320%_ _%rest152330%_ _%super152328%_)))
                    (_%else152298152312%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass152287%_ _%slot152288%_)
        (if (##structure-ref _%klass152287%_ '7 gxc#!class::t '#f)
            (memq _%slot152288%_
                  (##structure-ref _%klass152287%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self150415152271%_ _%id152273%_)
        (let* ((_%self152275%_ _%self150415152271%_)
               (_%self152277%_ _%self152275%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152277%_
             _%id152273%_
             '1
             '#f
             '#f))
          (let ((__tmp153360
                 (let ((__obj153292
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
                      __obj153292
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153292
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153292
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj153292)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152277%_
             __tmp153360
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self150416152133%_ _%id152135%_)
        (let* ((_%self152137%_ _%self150416152133%_)
               (_%self152139%_ _%self152137%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152139%_
             _%id152135%_
             '1
             '#f
             '#f))
          (let ((__tmp153361
                 (let ((__obj153293
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
                      __obj153293
                      _%id152135%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153293
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj153293)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152139%_
             __tmp153361
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
      (lambda (_%self150417151993%_
               _%id151995%_
               _%slot151996%_
               _%checked?151997%_)
        (let* ((_%self151999%_ _%self150417151993%_)
               (_%self152001%_ _%self151999%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152001%_
             _%id151995%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152001%_
             _%slot151996%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152001%_
             _%checked?151997%_
             '4
             '#f
             '#f))
          (let ((__tmp153362
                 (let ((__obj153294
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
                     (##unchecked-structure-set! __obj153294 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153294
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp153363 (cons _%id151995%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153294
                      __tmp153363
                      '3
                      '#f
                      '#f))
                   __obj153294)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152001%_
             __tmp153362
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self150418151853%_
               _%id151855%_
               _%slot151856%_
               _%checked?151857%_)
        (let* ((_%self151859%_ _%self150418151853%_)
               (_%self151861%_ _%self151859%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151861%_
             _%id151855%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151861%_
             _%slot151856%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151861%_
             _%checked?151857%_
             '4
             '#f
             '#f))
          (let ((__tmp153364
                 (let ((__obj153295
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
                      __obj153295
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153295
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp153365 (cons _%id151855%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153295
                      __tmp153365
                      '3
                      '#f
                      '#f))
                   __obj153295)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151861%_
             __tmp153364
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords151695%_
               _%signature151692151696%_
               _%self150419151698%_
               _%arity151700%_
               _%dispatch151701%_)
        (let* ((_%signature151703%_
                (if (eq? _%signature151692151696%_ absent-value)
                    '#f
                    _%signature151692151696%_))
               (_%self151705%_ _%self150419151698%_)
               (_%self151707%_ _%self151705%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151707%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151707%_
             _%arity151700%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151707%_
             _%dispatch151701%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151707%_
             _%signature151703%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords151721%_ . _%args151722%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords151721%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151721%_
                  'signature:
                  absent-value))
               _%args151722%_)))
    (define gxc#!lambda:::init!
      (lambda _%args151693151728%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args151693151728%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords151534%_
               _%signature151531151535%_
               _%self150420151537%_
               _%clauses151539%_)
        (let* ((_%signature151541%_
                (if (eq? _%signature151531151535%_ absent-value)
                    '#f
                    _%signature151531151535%_))
               (_%self151543%_ _%self150420151537%_)
               (_%self151545%_ _%self151543%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151545%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151545%_
             _%signature151541%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151545%_
             _%clauses151539%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords151559%_ . _%args151560%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords151559%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151559%_
                  'signature:
                  absent-value))
               _%args151560%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args151532151566%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args151532151566%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self150421151391%_ _%tab151393%_ _%dispatch151394%_)
        (let* ((_%self151396%_ _%self150421151391%_)
               (_%self151398%_ _%self151396%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151398%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151398%_
             _%tab151393%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151398%_
             _%dispatch151394%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self150422151252%_ _%keys151254%_ _%main151255%_)
        (let* ((_%self151257%_ _%self150422151252%_)
               (_%self151259%_ _%self151257%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151259%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151259%_
             _%keys151254%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151259%_
             _%main151255%_
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
      (lambda (_%self150423150870%_ _%id150872%_)
        (let* ((_%self150874%_ _%self150423150870%_)
               (_%self150876%_ _%self150874%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150876%_
             _%id150872%_
             '1
             '#f
             '#f))
          (let ((__tmp153366
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
                      '(pure)
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
             _%self150876%_
             __tmp153366
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
      (lambda (_%klass150739%_)
        (let ((_%$e150741%_
               (##structure-ref _%klass150739%_ '11 gxc#!class::t '#f)))
          (if _%$e150741%_
              _%$e150741%_
              (let ((_%tab150745%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass150739%_
                 _%tab150745%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab150745%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass150730%_ _%method150731%_)
        (let ((_%tab150732150734%_
               (##structure-ref _%klass150730%_ '11 gxc#!class::t '#f)))
          (if _%tab150732150734%_
              (let ((_%tab150737%_ _%tab150732150734%_))
                (declare (not safe))
                (hash-get _%tab150737%_ _%method150731%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a150718%_ _%type-b150719%_)
        (if _%type-a150718%_
            (if _%type-b150719%_
                (let ((_%$e150721%_ (eq? _%type-a150718%_ _%type-b150719%_)))
                  (if _%$e150721%_
                      _%$e150721%_
                      (let ((_%$e150724%_
                             (eq? (##structure-ref
                                   _%type-b150719%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e150724%_
                            _%$e150724%_
                            (let ((_%$e150727%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a150718%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b150719%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e150727%_
                                  _%$e150727%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a150718%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b150719%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a150718%_
                                           _%type-b150719%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a150669%_ _%klass-b150670%_)
        (let ((_%$e150672%_
               (eq? (##structure-ref _%klass-a150669%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b150670%_ '1 gxc#!type::t '#f))))
          (if _%$e150672%_
              _%$e150672%_
              (let ((_%klass-id-b150675%_
                     (##structure-ref _%klass-b150670%_ '1 gxc#!type::t '#f))
                    (_%precedence-list150676%_
                     (##structure-ref _%klass-a150669%_ '3 gxc#!class::t '#f)))
                (let _%loop150678%_ ((_%rest150680%_
                                      _%precedence-list150676%_))
                  (let* ((_%rest150681150689%_ _%rest150680%_)
                         (_%else150683150697%_ (lambda () '#f))
                         (_%K150685150706%_
                          (lambda (_%rest150700%_ _%klass-name150701%_)
                            (let ((_%$e150703%_
                                   (eq? (let ((__tmp153367
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a150669%_
                                                            (cons _%klass-b150670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name150701%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp153367
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b150675%_)))
                              (if _%$e150703%_
                                  _%$e150703%_
                                  (_%loop150678%_ _%rest150700%_))))))
                    (if (pair? _%rest150681150689%_)
                        (let ((_%hd150686150709%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest150681150689%_)))
                              (_%tl150687150711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest150681150689%_))))
                          (let* ((_%klass-name150714%_ _%hd150686150709%_)
                                 (_%rest150716%_ _%tl150687150711%_))
                            (_%K150685150706%_
                             _%rest150716%_
                             _%klass-name150714%_)))
                        (_%else150683150697%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type150667%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150667%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type150667%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc150656%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc150656%_ 'gxc#!procedure::t))
            (let ((_%proc150659%_ _%proc150656%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc150659%_ '2 '#f '#f))
                  (let ((__tmp153368
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc150659%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp153368 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc150656%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym150638%_ _%type150639%_ _%local?150640%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150639%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym150638%_
                     _%type150639%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym150638%_ '" " _%type150639%_))
        (let ((_%table150642%_
               (if _%local?150640%_
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
          (hash-put! _%table150642%_ _%sym150638%_ _%type150639%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym150647%_ _%type150648%_)
        (let ((_%local?150650%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym150647%_
           _%type150648%_
           _%local?150650%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g153370_
        (let ((_g153369_ (let () (declare (not safe)) (##length _g153370_))))
          (cond ((let () (declare (not safe)) (##fx= _g153369_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g153370_))
                ((let () (declare (not safe)) (##fx= _g153369_ 3))
                 (apply gxc#optimizer-declare-type!__% _g153370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g153370_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym150632%_ _%type150633%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150633%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym150632%_
                     _%type150633%_)))
        (let ((_%table150635%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp153371
                 (let () (declare (not safe)) (struct->list _%type150633%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym150632%_ '" " __tmp153371))
          (let ()
            (declare (not safe))
            (hash-put! _%table150635%_ _%sym150632%_ _%type150633%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table150635%_ _%type150633%_ _%sym150632%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym150627%_ _%type150628%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150628%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym150627%_
                     _%type150628%_)))
        (let ((_%table150630%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table150630%_ _%sym150627%_))
              '#!void
              (begin
                (let ((__tmp153372
                       (let ()
                         (declare (not safe))
                         (struct->list _%type150628%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym150627%_
                   '" "
                   __tmp153372))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table150630%_ _%sym150627%_ _%type150628%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table150630%_
                   _%type150628%_
                   _%sym150627%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym150625%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym150625%_))
        (let ((__tmp153373
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp153373 _%sym150625%_))
        (let ((__tmp153374
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp153374 _%sym150625%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t150593%_
               _%method150594%_
               _%sym150595%_
               _%rebind?150596%_)
        (let ((__tmp153375
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp153375 _%sym150595%_ '#t))
        (let ((_%klass150598%_ (gxc#optimizer-lookup-class _%type-t150593%_)))
          (if _%klass150598%_
              (let* ((_%vtab150600%_ (gxc#!class-method-table _%klass150598%_))
                     (_%$e150602%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab150600%_ _%method150594%_))))
                (if _%$e150602%_
                    ((lambda (_%existing150605%_)
                       (if _%rebind?150596%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t150593%_
                                '" "
                                _%method150594%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab150600%_
                                _%method150594%_
                                _%sym150595%_)))
                           (if (eq? _%existing150605%_ _%sym150595%_)
                               '#!void
                               (let ((__tmp153376
                                      (cons 'bind-method!
                                            (cons _%type-t150593%_
                                                  (cons _%method150594%_
                                                        (cons _%sym150595%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp153376
                                  _%method150594%_)))))
                     _%$e150602%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t150593%_
                         '" "
                         _%method150594%_
                         '" => "
                         _%sym150595%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab150600%_
                         _%method150594%_
                         _%sym150595%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t150593%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t150614%_ _%method150615%_ _%sym150616%_)
        (let ((_%rebind?150618%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t150614%_
           _%method150615%_
           _%sym150616%_
           _%rebind?150618%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g153378_
        (let ((_g153377_ (let () (declare (not safe)) (##length _g153378_))))
          (cond ((let () (declare (not safe)) (##fx= _g153377_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g153378_))
                ((let () (declare (not safe)) (##fx= _g153377_ 4))
                 (apply gxc#optimizer-declare-method!__% _g153378_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g153378_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym150578%_)
        (let ((_%$e150580%_
               (let ((__tmp153379
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym150578%_ __tmp153379))))
          (if _%$e150580%_
              _%$e150580%_
              (let ((_%$e150589%_
                     (let ((_%ht150582150584%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht150582150584%_
                           (let ((_%ht150587%_ _%ht150582150584%_))
                             (declare (not safe))
                             (hash-get _%ht150587%_ _%sym150578%_))
                           '#f))))
                (if _%$e150589%_
                    _%$e150589%_
                    (let ((__tmp153380
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp153380 _%sym150578%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym150570%_)
        (let ((_%type150571150573%_ (gxc#optimizer-lookup-type _%sym150570%_)))
          (if _%type150571150573%_
              (let ((_%type150576%_ _%type150571150573%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type150576%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type150576%_ '1 '#f '#f)))
                    _%type150576%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym150566%_)
        (let ((_%table150568%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table150568%_ _%sym150566%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where150551%_ _%sym150552%_)
        (let ((_%$e150555%_ (gxc#optimizer-lookup-class _%sym150552%_)))
          (if _%$e150555%_
              ((lambda (_%g150557150559%_)
                 (let ((_%val150562%_ _%g150557150559%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val150562%_
                          'gxc#!class::t))
                       _%val150562%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val150562%_)))))
               _%$e150555%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where150551%_
                   _%sym150552%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass150549%_)
        (let ((__tmp153381
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp153381 _%klass150549%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t150546%_ _%method150547%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t150546%_)
         _%method150547%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym150544%_)
        (let ((__tmp153382
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp153382 _%sym150544%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e150426%_
                  (lambda (_%t150527%_)
                    (if (symbol? _%t150527%_)
                        (_%type-e150426%_
                         (gxc#optimizer-lookup-type _%t150527%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t150527%_
                               'gxc#!lambda::t))
                            (_%__lambda-type150428%_ _%t150527%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t150527%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type150430%_ _%t150527%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t150527%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type150432%_
                                     _%t150527%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t150527%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t150534%_ _%t150527%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t150534%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp153383
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t150534%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp153383
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t150527%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t150527%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type150427%_
                  (lambda (_%t150515%_)
                    (let ((_%t150518%_ _%t150515%_))
                      (_%__lambda-type150428%_ _%t150518%_))))
                 (_%__lambda-type150428%_
                  (lambda (_%t150503%_)
                    (let ((_%t150506%_ _%t150503%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t150506%_ '4 '#f '#f))
                          (_%type-e150426%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t150506%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t150506%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp153384
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t150506%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp153384
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type150429%_
                  (lambda (_%t150491%_)
                    (let ((_%t150494%_ _%t150491%_))
                      (_%__kw-lambda-type150430%_ _%t150494%_))))
                 (_%__kw-lambda-type150430%_
                  (lambda (_%t150479%_)
                    (let ((_%t150482%_ _%t150479%_))
                      (_%type-e150426%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t150482%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type150431%_
                  (lambda (_%t150467%_)
                    (let ((_%t150470%_ _%t150467%_))
                      (_%__kw-lambda-primary-type150432%_ _%t150470%_))))
                 (_%__kw-lambda-primary-type150432%_
                  (lambda (_%t150453%_)
                    (let ((_%t150456%_ _%t150453%_))
                      (_%type-e150426%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t150456%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1150434%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2150436%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result150438%_
                  (if _%ht1150434%_
                      (let () (declare (not safe)) (hash->list _%ht1150434%_))
                      '()))
                 (_%result150440%_
                  (if _%ht2150436%_
                      (let ((__tmp153385
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2150436%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result150438%_ __tmp153385))
                      _%result150438%_)))
            (for-each
             (lambda (_%p150443%_)
               (let* ((_%t150445%_ (cdr _%p150443%_))
                      (_%tr150447%_ (_%type-e150426%_ _%t150445%_)))
                 (set-cdr! _%p150443%_ _%tr150447%_)))
             _%result150440%_)
            (list-sort
             (lambda (_%a150450%_ _%b150451%_)
               (let ((__tmp153387 (symbol->string (car _%a150450%_)))
                     (__tmp153386 (symbol->string (car _%b150451%_))))
                 (declare (not safe))
                 (##string<? __tmp153387 __tmp153386)))
             _%result150440%_)))))))
