(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1734280448)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp153292 (list)) (__tmp153291 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp153292
         '(type classes ssxi methods)
         __tmp153291
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args153263%_
        (apply make-instance gxc#optimizer-info::t _%$args153263%_)))
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
      (lambda (_%self150404153248%_)
        (let* ((_%self153251%_ _%self150404153248%_)
               (_%self153253%_ _%self153251%_))
          (if (let ((__tmp153293
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self153253%_))))
                (declare (not safe))
                (##fx< '4 __tmp153293))
              (begin
                (let ((__tmp153294
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153253%_
                   __tmp153294
                   '1
                   '#f
                   '#f))
                (let ((__tmp153295
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153253%_
                   __tmp153295
                   '2
                   '#f
                   '#f))
                (let ((__tmp153296
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153253%_
                   __tmp153296
                   '3
                   '#f
                   '#f))
                (let ((__tmp153297
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153253%_
                   __tmp153297
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp153298
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self153253%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self153253%_
                       '4
                       __tmp153298))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp153300 (list))
            (__tmp153299
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp153300
         '(id)
         __tmp153299
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args153123%_
        (apply make-instance gxc#!type::t _%$args153123%_)))
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
      (let ((__tmp153302 (list gxc#!type::t))
            (__tmp153301 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp153302
         '()
         __tmp153301
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args153120%_
        (apply make-instance gxc#!abort::t _%$args153120%_)))
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
      (let ((__tmp153304 (list gxc#!type::t))
            (__tmp153303 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp153304
         '()
         __tmp153303
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args153117%_
        (apply make-instance gxc#!alias::t _%$args153117%_)))
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
      (let ((__tmp153306 (list))
            (__tmp153305
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp153306
         '(return effect arguments unchecked origin)
         __tmp153305
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args153114%_
        (apply make-instance gxc#!signature::t _%$args153114%_)))
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
      (let ((__tmp153308 (list gxc#!type::t))
            (__tmp153307
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp153308
         '(signature)
         __tmp153307
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
      (lambda (_%id153093%_ _%signature153094%_)
        (if ((lambda (_%$obj153097%_)
               (or (not _%$obj153097%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj153097%_
                      'gxc#!signature::t))))
             _%signature153094%_)
            (let ((_%signature153104%_ _%signature153094%_))
              (gxc#__make-!procedure _%id153093%_ _%signature153104%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature153094%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id153079%_ _%signature153081%_)
        (let ((_%signature153084%_ _%signature153081%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id153079%_ _%signature153084%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj153048%_ _%signature153049%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj153048%_ 'gxc#!procedure::t))
            (let ((_%$obj153053%_ _%$obj153048%_))
              (if ((lambda (_%$obj153062%_)
                     (or (not _%$obj153062%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj153062%_
                            'gxc#!signature::t))))
                   _%signature153049%_)
                  (let ((_%signature153069%_ _%signature153049%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj153053%_
                     _%signature153069%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature153049%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj153048%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj153025%_ _%signature153027%_)
        (let* ((_%$obj153031%_ _%$obj153025%_)
               (_%signature153039%_ _%signature153027%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj153031%_
           _%signature153039%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp153310 (list gxc#!type::t))
            (__tmp153309 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp153310
         '(class)
         __tmp153309
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args153022%_
        (apply make-instance gxc#!class-meta::t _%$args153022%_)))
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
      (let ((__tmp153312 (list gxc#!type::t))
            (__tmp153311
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
         __tmp153312
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp153311
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args153019%_
        (apply make-instance gxc#!class::t _%$args153019%_)))
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
      (let ((__tmp153314 (list gxc#!procedure::t))
            (__tmp153313 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp153314
         '()
         __tmp153313
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args153016%_
        (apply make-instance gxc#!predicate::t _%$args153016%_)))
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
      (let ((__tmp153316 (list gxc#!procedure::t))
            (__tmp153315 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp153316
         '()
         __tmp153315
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args153013%_
        (apply make-instance gxc#!constructor::t _%$args153013%_)))
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
      (let ((__tmp153318 (list gxc#!procedure::t))
            (__tmp153317 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp153318
         '(slot checked?)
         __tmp153317
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args153010%_
        (apply make-instance gxc#!accessor::t _%$args153010%_)))
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
      (let ((__tmp153320 (list gxc#!procedure::t))
            (__tmp153319 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp153320
         '(slot checked?)
         __tmp153319
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args153007%_
        (apply make-instance gxc#!mutator::t _%$args153007%_)))
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
      (let ((__tmp153322 (list gxc#!type::t))
            (__tmp153321 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp153322
         '(methods)
         __tmp153321
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args153004%_
        (apply make-instance gxc#!interface::t _%$args153004%_)))
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
      (let ((__tmp153324 (list gxc#!procedure::t))
            (__tmp153323
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp153324
         '(arity dispatch inline inline-typedecl)
         __tmp153323
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args153001%_
        (apply make-instance gxc#!lambda::t _%$args153001%_)))
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
      (let ((__tmp153326 (list gxc#!procedure::t))
            (__tmp153325 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp153326
         '(clauses)
         __tmp153325
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args152998%_
        (apply make-instance gxc#!case-lambda::t _%$args152998%_)))
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
      (let ((__tmp153328 (list gxc#!procedure::t))
            (__tmp153327
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp153328
         '(table dispatch)
         __tmp153327
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args152995%_
        (apply make-instance gxc#!kw-lambda::t _%$args152995%_)))
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
      (let ((__tmp153330 (list gxc#!procedure::t))
            (__tmp153329 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp153330
         '(keys main)
         __tmp153329
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args152992%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args152992%_)))
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
      (let ((__tmp153331 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp153331
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args152989%_
        (apply make-instance gxc#!primitive::t _%$args152989%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp153333 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp153332 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp153333
         '()
         __tmp153332
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args152986%_
        (apply make-instance gxc#!primitive-predicate::t _%$args152986%_)))
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
      (let ((__tmp153335 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp153334 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp153335
         '()
         __tmp153334
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args152983%_
        (apply make-instance gxc#!primitive-lambda::t _%$args152983%_)))
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
      (let ((__tmp153337 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp153336 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp153337
         '()
         __tmp153336
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args152980%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args152980%_)))
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
      (lambda (_%self150405152965%_)
        (let* ((_%self152968%_ _%self150405152965%_)
               (_%self152970%_ _%self152968%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self152970%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self150406152827%_ _%klass152829%_)
        (let* ((_%self152831%_ _%self150406152827%_)
               (_%self152833%_ _%self152831%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self152833%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152833%_
             _%klass152829%_
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
      (lambda (_%self150407152515%_
               _%id152517%_
               _%super152518%_
               _%slots152519%_
               _%ctor-method152520%_
               _%struct?152521%_
               _%final?152522%_
               _%system?152523%_
               _%metaclass152524%_)
        (let* ((_%self152526%_ _%self150407152515%_)
               (_%self152528%_ _%self152526%_))
          (let _%lp152538%_ ((_%rest152540%_ _%super152518%_))
            (let* ((_%rest152541152549%_ _%rest152540%_)
                   (_%else152543152557%_ (lambda () '#!void))
                   (_%K152545152563%_
                    (lambda (_%rest152560%_ _%super-id152561%_)
                      (if (let ((__tmp153338
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id152517%_ '()))
                                  _%super-id152561%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp153338 '8 '#f '#f))
                          (let ((__tmp153339
                                 (cons '!class (cons _%id152517%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp153339
                             _%super-id152561%_))
                          '#!void)
                      (_%lp152538%_ _%rest152560%_))))
              (if (pair? _%rest152541152549%_)
                  (let ((_%hd152546152566%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest152541152549%_)))
                        (_%tl152547152568%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest152541152549%_))))
                    (let* ((_%super-id152571%_ _%hd152546152566%_)
                           (_%rest152573%_ _%tl152547152568%_))
                      (_%K152545152563%_ _%rest152573%_ _%super-id152571%_)))
                  '#!void)))
          (let* ((_%ctor-method152624%_
                  (let ((_%$e152575%_ _%ctor-method152520%_))
                    (if _%$e152575%_
                        _%$e152575%_
                        (let _%lp152578%_ ((_%rest152580%_ _%super152518%_)
                                           (_%method152581%_ '#f))
                          (let* ((_%rest152582152590%_ _%rest152580%_)
                                 (_%else152584152598%_
                                  (lambda () _%method152581%_))
                                 (_%K152586152612%_
                                  (lambda (_%rest152601%_ _%super-id152602%_)
                                    (let* ((_%klass152604%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id152517%_ '()))
                                             _%super-id152602%_))
                                           (_%$e152606%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass152604%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e152606%_
                                          ((lambda (_%ctor-method152609%_)
                                             (if _%method152581%_
                                                 (if (eq? _%ctor-method152609%_
                                                          _%method152581%_)
                                                     (_%lp152578%_
                                                      _%rest152601%_
                                                      _%ctor-method152609%_)
                                                     (let ((__tmp153340
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id152517%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp153340
                _%method152581%_
                _%ctor-method152609%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp152578%_
                                                  _%rest152601%_
                                                  _%ctor-method152609%_)))
                                           _%$e152606%_)
                                          (_%lp152578%_
                                           _%rest152601%_
                                           _%method152581%_))))))
                            (if (pair? _%rest152582152590%_)
                                (let ((_%hd152587152615%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest152582152590%_)))
                                      (_%tl152588152617%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest152582152590%_))))
                                  (let* ((_%super-id152620%_
                                          _%hd152587152615%_)
                                         (_%rest152622%_ _%tl152588152617%_))
                                    (_%K152586152612%_
                                     _%rest152622%_
                                     _%super-id152620%_)))
                                (_%else152584152598%_)))))))
                 (_g153341_
                  (let ((__tmp153345
                         (lambda (_%klass-id152626%_)
                           (cons _%klass-id152626%_
                                 (let ((__tmp153346
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id152517%_ '()))
                                         _%klass-id152626%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp153346
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp153343
                         (lambda (_%klass-id152628%_)
                           (let ((__tmp153344
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id152517%_ '()))
                                   _%klass-id152628%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp153344
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp153345
                     __tmp153343
                     eq?
                     identity
                     '()
                     _%super152518%_))))
            (begin
              (let ((_g153342_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g153341_)
                           (##values-length _g153341_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g153342_ 2)))
                    (error "Context expects 2 values" _g153342_)))
              (let ((_%precedence-list152630%_
                     (let () (declare (not safe)) (##values-ref _g153341_ 0)))
                    (_%base-struct152631%_
                     (let () (declare (not safe)) (##values-ref _g153341_ 1))))
                (let* ((_%precedence-list152675%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id152517%_ '(t object class)))
                            _%precedence-list152630%_
                            (if (memq 'object::t _%precedence-list152630%_)
                                _%precedence-list152630%_
                                (if _%system?152523%_
                                    (if (memq 't::t _%precedence-list152630%_)
                                        _%precedence-list152630%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list152630%_
                                           '(t::t))))
                                    (let _%loop152637%_ ((_%tail152639%_
                                                          _%precedence-list152630%_)
                                                         (_%head152640%_ '()))
                                      (let* ((_%tail152641152649%_
                                              _%tail152639%_)
                                             (_%else152643152657%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head152640%_))))
                                             (_%K152645152663%_
                                              (lambda (_%rest152660%_
                                                       _%hd152661%_)
                                                (if (eq? _%hd152661%_ 't::t)
                                                    (let ((__tmp153347
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail152639%_)))
              (declare (not safe))
              (__foldl1 cons __tmp153347 _%head152640%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop152637%_
                                                     _%rest152660%_
                                                     (cons _%hd152661%_
                                                           _%head152640%_))))))
                                        (if (pair? _%tail152641152649%_)
                                            (let ((_%hd152646152666%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail152641152649%_)))
                                                  (_%tl152647152668%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail152641152649%_))))
                                              (let* ((_%hd152671%_
                                                      _%hd152646152666%_)
                                                     (_%rest152673%_
                                                      _%tl152647152668%_))
                                                (_%K152645152663%_
                                                 _%rest152673%_
                                                 _%hd152671%_)))
                                            (_%else152643152657%_))))))))
                       (_%fields152677%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id152517%_ '()))
                         _%base-struct152631%_
                         _%precedence-list152675%_
                         _%slots152519%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152528%_
                     _%id152517%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152528%_
                     _%super152518%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152528%_
                     _%precedence-list152675%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152528%_
                     _%slots152519%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152528%_
                     _%fields152677%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152528%_
                     _%ctor-method152624%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152528%_
                     _%struct?152521%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152528%_
                     _%final?152522%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152528%_
                     _%metaclass152524%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self150408152680%_
               _%id152682%_
               _%super152683%_
               _%precedence-list152684%_
               _%slots152685%_
               _%fields152686%_
               _%constructor152687%_
               _%struct?152688%_
               _%final?152689%_
               _%system?152690%_
               _%metaclass152691%_
               _%methods152692%_)
        (let* ((_%self152694%_ _%self150408152680%_)
               (_%self152696%_ _%self152694%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152696%_
             _%id152682%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152696%_
             _%super152683%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152696%_
             _%precedence-list152684%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152696%_
             _%slots152685%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152696%_
             _%fields152686%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152696%_
             _%constructor152687%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152696%_
             _%struct?152688%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152696%_
             _%final?152689%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152696%_
             _%metaclass152691%_
             '10
             '#f
             '#f))
          (if _%methods152692%_
              (let ((__tmp153348
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods152692%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self152696%_
                 __tmp153348
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g153350_
        (let ((_g153349_ (let () (declare (not safe)) (##length _g153350_))))
          (cond ((let () (declare (not safe)) (##fx= _g153349_ 9))
                 (apply gxc#!class:::init!__0 _g153350_))
                ((let () (declare (not safe)) (##fx= _g153349_ 12))
                 (apply gxc#!class:::init!__1 _g153350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g153350_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where152367%_
               _%base-struct152368%_
               _%precedence-list152369%_
               _%direct-slots152370%_)
        (let* ((_%base-fields152372%_
                (if _%base-struct152368%_
                    (let ((__tmp153351
                           (gxc#optimizer-resolve-class
                            _%where152367%_
                            _%base-struct152368%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp153351 '5 '#f '#f))
                    '()))
               (_%r-fields152374%_ (reverse _%base-fields152372%_))
               (_%seen-slots152382%_
                (let ((_%tab152376%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g152377152379%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab152376%_ _%g152377152379%_ '#t)))
                   _%base-fields152372%_)
                  _%tab152376%_))
               (_%process-slot152386%_
                (lambda (_%slot152384%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots152382%_ _%slot152384%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots152382%_
                           _%slot152384%_
                           '#t))
                        (set! _%r-fields152374%_
                              (cons _%slot152384%_ _%r-fields152374%_)))))))
          (for-each
           (lambda (_%mixin152389%_)
             (let ((_%klass152391%_
                    (gxc#optimizer-resolve-class
                     _%where152367%_
                     _%mixin152389%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass152391%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot152386%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass152391%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list152369%_)
          (for-each _%process-slot152386%_ _%direct-slots152370%_)
          (let () (declare (not safe)) (##reverse _%r-fields152374%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass152326%_ _%slot152327%_)
        (let _%lp152329%_ ((_%rest152331%_
                            (##structure-ref
                             _%klass152326%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset152332%_ '1))
          (let* ((_%rest152333152341%_ _%rest152331%_)
                 (_%else152335152349%_
                  (lambda ()
                    (let ((__tmp153353
                           (##structure-ref
                            _%klass152326%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp153352
                           (##structure-ref
                            _%klass152326%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp153353
                       __tmp153352
                       _%slot152327%_))))
                 (_%K152337152355%_
                  (lambda (_%rest152352%_ _%s152353%_)
                    (if (eq? _%s152353%_ _%slot152327%_)
                        _%offset152332%_
                        (_%lp152329%_
                         _%rest152352%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset152332%_ '1)))))))
            (if (pair? _%rest152333152341%_)
                (let ((_%hd152338152358%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest152333152341%_)))
                      (_%tl152339152360%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest152333152341%_))))
                  (let* ((_%s152363%_ _%hd152338152358%_)
                         (_%rest152365%_ _%tl152339152360%_))
                    (_%K152337152355%_ _%rest152365%_ _%s152363%_)))
                (_%else152335152349%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass152284%_ _%slot152285%_)
        (if (gxc#!class-struct-slot? _%klass152284%_ _%slot152285%_)
            _%klass152284%_
            (let _%lp152287%_ ((_%rest152289%_
                                (##structure-ref
                                 _%klass152284%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest152290152298%_ _%rest152289%_)
                     (_%else152292152306%_ (lambda () '#f))
                     (_%K152294152314%_
                      (lambda (_%rest152309%_ _%super152310%_)
                        (let ((_%super-class152312%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass152284%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot152285%_ '())))
                                _%super152310%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class152312%_
                               _%slot152285%_)
                              _%super-class152312%_
                              (_%lp152287%_ _%rest152309%_))))))
                (if (pair? _%rest152290152298%_)
                    (let ((_%hd152295152317%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest152290152298%_)))
                          (_%tl152296152319%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest152290152298%_))))
                      (let* ((_%super152322%_ _%hd152295152317%_)
                             (_%rest152324%_ _%tl152296152319%_))
                        (_%K152294152314%_ _%rest152324%_ _%super152322%_)))
                    (_%else152292152306%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass152281%_ _%slot152282%_)
        (if (##structure-ref _%klass152281%_ '7 gxc#!class::t '#f)
            (memq _%slot152282%_
                  (##structure-ref _%klass152281%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self150409152265%_ _%id152267%_)
        (let* ((_%self152269%_ _%self150409152265%_)
               (_%self152271%_ _%self152269%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152271%_
             _%id152267%_
             '1
             '#f
             '#f))
          (let ((__tmp153354
                 (let ((__obj153286
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
                      __obj153286
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153286
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153286
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj153286)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152271%_
             __tmp153354
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self150410152127%_ _%id152129%_)
        (let* ((_%self152131%_ _%self150410152127%_)
               (_%self152133%_ _%self152131%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152133%_
             _%id152129%_
             '1
             '#f
             '#f))
          (let ((__tmp153355
                 (let ((__obj153287
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
                      __obj153287
                      _%id152129%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153287
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj153287)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152133%_
             __tmp153355
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
      (lambda (_%self150411151987%_
               _%id151989%_
               _%slot151990%_
               _%checked?151991%_)
        (let* ((_%self151993%_ _%self150411151987%_)
               (_%self151995%_ _%self151993%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151995%_
             _%id151989%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151995%_
             _%slot151990%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151995%_
             _%checked?151991%_
             '4
             '#f
             '#f))
          (let ((__tmp153356
                 (let ((__obj153288
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
                     (##unchecked-structure-set! __obj153288 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153288
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp153357 (cons _%id151989%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153288
                      __tmp153357
                      '3
                      '#f
                      '#f))
                   __obj153288)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151995%_
             __tmp153356
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self150412151847%_
               _%id151849%_
               _%slot151850%_
               _%checked?151851%_)
        (let* ((_%self151853%_ _%self150412151847%_)
               (_%self151855%_ _%self151853%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151855%_
             _%id151849%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151855%_
             _%slot151850%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151855%_
             _%checked?151851%_
             '4
             '#f
             '#f))
          (let ((__tmp153358
                 (let ((__obj153289
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
                      __obj153289
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153289
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp153359 (cons _%id151849%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153289
                      __tmp153359
                      '3
                      '#f
                      '#f))
                   __obj153289)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151855%_
             __tmp153358
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords151689%_
               _%signature151686151690%_
               _%self150413151692%_
               _%arity151694%_
               _%dispatch151695%_)
        (let* ((_%signature151697%_
                (if (eq? _%signature151686151690%_ absent-value)
                    '#f
                    _%signature151686151690%_))
               (_%self151699%_ _%self150413151692%_)
               (_%self151701%_ _%self151699%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151701%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151701%_
             _%arity151694%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151701%_
             _%dispatch151695%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151701%_
             _%signature151697%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords151715%_ . _%args151716%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords151715%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151715%_
                  'signature:
                  absent-value))
               _%args151716%_)))
    (define gxc#!lambda:::init!
      (lambda _%args151687151722%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args151687151722%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords151528%_
               _%signature151525151529%_
               _%self150414151531%_
               _%clauses151533%_)
        (let* ((_%signature151535%_
                (if (eq? _%signature151525151529%_ absent-value)
                    '#f
                    _%signature151525151529%_))
               (_%self151537%_ _%self150414151531%_)
               (_%self151539%_ _%self151537%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151539%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151539%_
             _%signature151535%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151539%_
             _%clauses151533%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords151553%_ . _%args151554%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords151553%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151553%_
                  'signature:
                  absent-value))
               _%args151554%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args151526151560%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args151526151560%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self150415151385%_ _%tab151387%_ _%dispatch151388%_)
        (let* ((_%self151390%_ _%self150415151385%_)
               (_%self151392%_ _%self151390%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151392%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151392%_
             _%tab151387%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151392%_
             _%dispatch151388%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self150416151246%_ _%keys151248%_ _%main151249%_)
        (let* ((_%self151251%_ _%self150416151246%_)
               (_%self151253%_ _%self151251%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151253%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151253%_
             _%keys151248%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151253%_
             _%main151249%_
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
      (lambda (_%self150417150864%_ _%id150866%_)
        (let* ((_%self150868%_ _%self150417150864%_)
               (_%self150870%_ _%self150868%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150870%_
             _%id150866%_
             '1
             '#f
             '#f))
          (let ((__tmp153360
                 (let ((__obj153290
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
                      __obj153290
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153290
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153290
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj153290)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150870%_
             __tmp153360
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
      (lambda (_%klass150733%_)
        (let ((_%$e150735%_
               (##structure-ref _%klass150733%_ '11 gxc#!class::t '#f)))
          (if _%$e150735%_
              _%$e150735%_
              (let ((_%tab150739%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass150733%_
                 _%tab150739%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab150739%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass150724%_ _%method150725%_)
        (let ((_%tab150726150728%_
               (##structure-ref _%klass150724%_ '11 gxc#!class::t '#f)))
          (if _%tab150726150728%_
              (let ((_%tab150731%_ _%tab150726150728%_))
                (declare (not safe))
                (hash-get _%tab150731%_ _%method150725%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a150712%_ _%type-b150713%_)
        (if _%type-a150712%_
            (if _%type-b150713%_
                (let ((_%$e150715%_ (eq? _%type-a150712%_ _%type-b150713%_)))
                  (if _%$e150715%_
                      _%$e150715%_
                      (let ((_%$e150718%_
                             (eq? (##structure-ref
                                   _%type-b150713%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e150718%_
                            _%$e150718%_
                            (let ((_%$e150721%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a150712%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b150713%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e150721%_
                                  _%$e150721%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a150712%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b150713%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a150712%_
                                           _%type-b150713%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a150663%_ _%klass-b150664%_)
        (let ((_%$e150666%_
               (eq? (##structure-ref _%klass-a150663%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b150664%_ '1 gxc#!type::t '#f))))
          (if _%$e150666%_
              _%$e150666%_
              (let ((_%klass-id-b150669%_
                     (##structure-ref _%klass-b150664%_ '1 gxc#!type::t '#f))
                    (_%precedence-list150670%_
                     (##structure-ref _%klass-a150663%_ '3 gxc#!class::t '#f)))
                (let _%loop150672%_ ((_%rest150674%_
                                      _%precedence-list150670%_))
                  (let* ((_%rest150675150683%_ _%rest150674%_)
                         (_%else150677150691%_ (lambda () '#f))
                         (_%K150679150700%_
                          (lambda (_%rest150694%_ _%klass-name150695%_)
                            (let ((_%$e150697%_
                                   (eq? (let ((__tmp153361
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a150663%_
                                                            (cons _%klass-b150664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name150695%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp153361
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b150669%_)))
                              (if _%$e150697%_
                                  _%$e150697%_
                                  (_%loop150672%_ _%rest150694%_))))))
                    (if (pair? _%rest150675150683%_)
                        (let ((_%hd150680150703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest150675150683%_)))
                              (_%tl150681150705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest150675150683%_))))
                          (let* ((_%klass-name150708%_ _%hd150680150703%_)
                                 (_%rest150710%_ _%tl150681150705%_))
                            (_%K150679150700%_
                             _%rest150710%_
                             _%klass-name150708%_)))
                        (_%else150677150691%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type150661%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150661%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type150661%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc150650%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc150650%_ 'gxc#!procedure::t))
            (let ((_%proc150653%_ _%proc150650%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc150653%_ '2 '#f '#f))
                  (let ((__tmp153362
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc150653%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp153362 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc150650%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym150632%_ _%type150633%_ _%local?150634%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150633%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym150632%_
                     _%type150633%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym150632%_ '" " _%type150633%_))
        (let ((_%table150636%_
               (if _%local?150634%_
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
          (hash-put! _%table150636%_ _%sym150632%_ _%type150633%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym150641%_ _%type150642%_)
        (let ((_%local?150644%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym150641%_
           _%type150642%_
           _%local?150644%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g153364_
        (let ((_g153363_ (let () (declare (not safe)) (##length _g153364_))))
          (cond ((let () (declare (not safe)) (##fx= _g153363_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g153364_))
                ((let () (declare (not safe)) (##fx= _g153363_ 3))
                 (apply gxc#optimizer-declare-type!__% _g153364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g153364_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym150626%_ _%type150627%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150627%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym150626%_
                     _%type150627%_)))
        (let ((_%table150629%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp153365
                 (let () (declare (not safe)) (struct->list _%type150627%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym150626%_ '" " __tmp153365))
          (let ()
            (declare (not safe))
            (hash-put! _%table150629%_ _%sym150626%_ _%type150627%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table150629%_ _%type150627%_ _%sym150626%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym150621%_ _%type150622%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150622%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym150621%_
                     _%type150622%_)))
        (let ((_%table150624%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table150624%_ _%sym150621%_))
              '#!void
              (begin
                (let ((__tmp153366
                       (let ()
                         (declare (not safe))
                         (struct->list _%type150622%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym150621%_
                   '" "
                   __tmp153366))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table150624%_ _%sym150621%_ _%type150622%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table150624%_
                   _%type150622%_
                   _%sym150621%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym150619%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym150619%_))
        (let ((__tmp153367
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp153367 _%sym150619%_))
        (let ((__tmp153368
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp153368 _%sym150619%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t150587%_
               _%method150588%_
               _%sym150589%_
               _%rebind?150590%_)
        (let ((__tmp153369
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp153369 _%sym150589%_ '#t))
        (let ((_%klass150592%_ (gxc#optimizer-lookup-class _%type-t150587%_)))
          (if _%klass150592%_
              (let* ((_%vtab150594%_ (gxc#!class-method-table _%klass150592%_))
                     (_%$e150596%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab150594%_ _%method150588%_))))
                (if _%$e150596%_
                    ((lambda (_%existing150599%_)
                       (if _%rebind?150590%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t150587%_
                                '" "
                                _%method150588%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab150594%_
                                _%method150588%_
                                _%sym150589%_)))
                           (if (eq? _%existing150599%_ _%sym150589%_)
                               '#!void
                               (let ((__tmp153370
                                      (cons 'bind-method!
                                            (cons _%type-t150587%_
                                                  (cons _%method150588%_
                                                        (cons _%sym150589%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp153370
                                  _%method150588%_)))))
                     _%$e150596%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t150587%_
                         '" "
                         _%method150588%_
                         '" => "
                         _%sym150589%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab150594%_
                         _%method150588%_
                         _%sym150589%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t150587%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t150608%_ _%method150609%_ _%sym150610%_)
        (let ((_%rebind?150612%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t150608%_
           _%method150609%_
           _%sym150610%_
           _%rebind?150612%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g153372_
        (let ((_g153371_ (let () (declare (not safe)) (##length _g153372_))))
          (cond ((let () (declare (not safe)) (##fx= _g153371_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g153372_))
                ((let () (declare (not safe)) (##fx= _g153371_ 4))
                 (apply gxc#optimizer-declare-method!__% _g153372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g153372_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym150572%_)
        (let ((_%$e150574%_
               (let ((__tmp153373
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym150572%_ __tmp153373))))
          (if _%$e150574%_
              _%$e150574%_
              (let ((_%$e150583%_
                     (let ((_%ht150576150578%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht150576150578%_
                           (let ((_%ht150581%_ _%ht150576150578%_))
                             (declare (not safe))
                             (hash-get _%ht150581%_ _%sym150572%_))
                           '#f))))
                (if _%$e150583%_
                    _%$e150583%_
                    (let ((__tmp153374
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp153374 _%sym150572%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym150564%_)
        (let ((_%type150565150567%_ (gxc#optimizer-lookup-type _%sym150564%_)))
          (if _%type150565150567%_
              (let ((_%type150570%_ _%type150565150567%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type150570%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type150570%_ '1 '#f '#f)))
                    _%type150570%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym150560%_)
        (let ((_%table150562%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table150562%_ _%sym150560%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where150545%_ _%sym150546%_)
        (let ((_%$e150549%_ (gxc#optimizer-lookup-class _%sym150546%_)))
          (if _%$e150549%_
              ((lambda (_%g150551150553%_)
                 (let ((_%val150556%_ _%g150551150553%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val150556%_
                          'gxc#!class::t))
                       _%val150556%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val150556%_)))))
               _%$e150549%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where150545%_
                   _%sym150546%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass150543%_)
        (let ((__tmp153375
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp153375 _%klass150543%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t150540%_ _%method150541%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t150540%_)
         _%method150541%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym150538%_)
        (let ((__tmp153376
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp153376 _%sym150538%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e150420%_
                  (lambda (_%t150521%_)
                    (if (symbol? _%t150521%_)
                        (_%type-e150420%_
                         (gxc#optimizer-lookup-type _%t150521%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t150521%_
                               'gxc#!lambda::t))
                            (_%__lambda-type150422%_ _%t150521%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t150521%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type150424%_ _%t150521%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t150521%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type150426%_
                                     _%t150521%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t150521%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t150528%_ _%t150521%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t150528%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp153377
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t150528%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp153377
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t150521%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t150521%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type150421%_
                  (lambda (_%t150509%_)
                    (let ((_%t150512%_ _%t150509%_))
                      (_%__lambda-type150422%_ _%t150512%_))))
                 (_%__lambda-type150422%_
                  (lambda (_%t150497%_)
                    (let ((_%t150500%_ _%t150497%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t150500%_ '4 '#f '#f))
                          (_%type-e150420%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t150500%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t150500%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp153378
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t150500%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp153378
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type150423%_
                  (lambda (_%t150485%_)
                    (let ((_%t150488%_ _%t150485%_))
                      (_%__kw-lambda-type150424%_ _%t150488%_))))
                 (_%__kw-lambda-type150424%_
                  (lambda (_%t150473%_)
                    (let ((_%t150476%_ _%t150473%_))
                      (_%type-e150420%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t150476%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type150425%_
                  (lambda (_%t150461%_)
                    (let ((_%t150464%_ _%t150461%_))
                      (_%__kw-lambda-primary-type150426%_ _%t150464%_))))
                 (_%__kw-lambda-primary-type150426%_
                  (lambda (_%t150447%_)
                    (let ((_%t150450%_ _%t150447%_))
                      (_%type-e150420%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t150450%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1150428%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2150430%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result150432%_
                  (if _%ht1150428%_
                      (let () (declare (not safe)) (hash->list _%ht1150428%_))
                      '()))
                 (_%result150434%_
                  (if _%ht2150430%_
                      (let ((__tmp153379
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2150430%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result150432%_ __tmp153379))
                      _%result150432%_)))
            (for-each
             (lambda (_%p150437%_)
               (let* ((_%t150439%_ (cdr _%p150437%_))
                      (_%tr150441%_ (_%type-e150420%_ _%t150439%_)))
                 (set-cdr! _%p150437%_ _%tr150441%_)))
             _%result150434%_)
            (list-sort
             (lambda (_%a150444%_ _%b150445%_)
               (let ((__tmp153381 (symbol->string (car _%a150444%_)))
                     (__tmp153380 (symbol->string (car _%b150445%_))))
                 (declare (not safe))
                 (##string<? __tmp153381 __tmp153380)))
             _%result150434%_)))))))
