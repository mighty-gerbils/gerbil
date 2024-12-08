(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1733687561)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp152263 (list)) (__tmp152262 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp152263
         '(type classes ssxi methods)
         __tmp152262
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args152234%_
        (apply make-instance gxc#optimizer-info::t _%$args152234%_)))
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
      (lambda (_%self149375152219%_)
        (let* ((_%self152222%_ _%self149375152219%_)
               (_%self152224%_ _%self152222%_))
          (if (let ((__tmp152264
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self152224%_))))
                (declare (not safe))
                (##fx< '4 __tmp152264))
              (begin
                (let ((__tmp152265
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152224%_
                   __tmp152265
                   '1
                   '#f
                   '#f))
                (let ((__tmp152266
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152224%_
                   __tmp152266
                   '2
                   '#f
                   '#f))
                (let ((__tmp152267
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152224%_
                   __tmp152267
                   '3
                   '#f
                   '#f))
                (let ((__tmp152268
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152224%_
                   __tmp152268
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp152269
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self152224%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self152224%_
                       '4
                       __tmp152269))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp152271 (list))
            (__tmp152270
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp152271
         '(id)
         __tmp152270
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args152094%_
        (apply make-instance gxc#!type::t _%$args152094%_)))
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
      (let ((__tmp152273 (list gxc#!type::t))
            (__tmp152272 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp152273
         '()
         __tmp152272
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args152091%_
        (apply make-instance gxc#!abort::t _%$args152091%_)))
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
      (let ((__tmp152275 (list gxc#!type::t))
            (__tmp152274 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp152275
         '()
         __tmp152274
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args152088%_
        (apply make-instance gxc#!alias::t _%$args152088%_)))
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
      (let ((__tmp152277 (list))
            (__tmp152276
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp152277
         '(return effect arguments unchecked origin)
         __tmp152276
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args152085%_
        (apply make-instance gxc#!signature::t _%$args152085%_)))
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
      (let ((__tmp152279 (list gxc#!type::t))
            (__tmp152278
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp152279
         '(signature)
         __tmp152278
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
      (lambda (_%id152064%_ _%signature152065%_)
        (if ((lambda (_%$obj152068%_)
               (or (not _%$obj152068%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj152068%_
                      'gxc#!signature::t))))
             _%signature152065%_)
            (let ((_%signature152075%_ _%signature152065%_))
              (gxc#__make-!procedure _%id152064%_ _%signature152075%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature152065%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id152050%_ _%signature152052%_)
        (let ((_%signature152055%_ _%signature152052%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id152050%_ _%signature152055%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj152019%_ _%signature152020%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj152019%_ 'gxc#!procedure::t))
            (let ((_%$obj152024%_ _%$obj152019%_))
              (if ((lambda (_%$obj152033%_)
                     (or (not _%$obj152033%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj152033%_
                            'gxc#!signature::t))))
                   _%signature152020%_)
                  (let ((_%signature152040%_ _%signature152020%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj152024%_
                     _%signature152040%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature152020%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj152019%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj151996%_ _%signature151998%_)
        (let* ((_%$obj152002%_ _%$obj151996%_)
               (_%signature152010%_ _%signature151998%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj152002%_
           _%signature152010%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp152281 (list gxc#!type::t))
            (__tmp152280 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp152281
         '(class)
         __tmp152280
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args151993%_
        (apply make-instance gxc#!class-meta::t _%$args151993%_)))
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
      (let ((__tmp152283 (list gxc#!type::t))
            (__tmp152282
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
         __tmp152283
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp152282
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args151990%_
        (apply make-instance gxc#!class::t _%$args151990%_)))
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
      (let ((__tmp152285 (list gxc#!procedure::t))
            (__tmp152284 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp152285
         '()
         __tmp152284
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args151987%_
        (apply make-instance gxc#!predicate::t _%$args151987%_)))
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
      (let ((__tmp152287 (list gxc#!procedure::t))
            (__tmp152286 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp152287
         '()
         __tmp152286
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args151984%_
        (apply make-instance gxc#!constructor::t _%$args151984%_)))
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
      (let ((__tmp152289 (list gxc#!procedure::t))
            (__tmp152288 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp152289
         '(slot checked?)
         __tmp152288
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args151981%_
        (apply make-instance gxc#!accessor::t _%$args151981%_)))
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
      (let ((__tmp152291 (list gxc#!procedure::t))
            (__tmp152290 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp152291
         '(slot checked?)
         __tmp152290
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args151978%_
        (apply make-instance gxc#!mutator::t _%$args151978%_)))
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
      (let ((__tmp152293 (list gxc#!type::t))
            (__tmp152292 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp152293
         '(methods)
         __tmp152292
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args151975%_
        (apply make-instance gxc#!interface::t _%$args151975%_)))
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
      (let ((__tmp152295 (list gxc#!procedure::t))
            (__tmp152294
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp152295
         '(arity dispatch inline inline-typedecl)
         __tmp152294
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args151972%_
        (apply make-instance gxc#!lambda::t _%$args151972%_)))
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
      (let ((__tmp152297 (list gxc#!procedure::t))
            (__tmp152296 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp152297
         '(clauses)
         __tmp152296
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args151969%_
        (apply make-instance gxc#!case-lambda::t _%$args151969%_)))
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
      (let ((__tmp152299 (list gxc#!procedure::t))
            (__tmp152298
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp152299
         '(table dispatch)
         __tmp152298
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args151966%_
        (apply make-instance gxc#!kw-lambda::t _%$args151966%_)))
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
      (let ((__tmp152301 (list gxc#!procedure::t))
            (__tmp152300 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp152301
         '(keys main)
         __tmp152300
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args151963%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args151963%_)))
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
      (let ((__tmp152302 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp152302
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args151960%_
        (apply make-instance gxc#!primitive::t _%$args151960%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp152304 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp152303 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp152304
         '()
         __tmp152303
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args151957%_
        (apply make-instance gxc#!primitive-predicate::t _%$args151957%_)))
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
      (let ((__tmp152306 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp152305 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp152306
         '()
         __tmp152305
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args151954%_
        (apply make-instance gxc#!primitive-lambda::t _%$args151954%_)))
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
      (let ((__tmp152308 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp152307 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp152308
         '()
         __tmp152307
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args151951%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args151951%_)))
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
      (lambda (_%self149376151936%_)
        (let* ((_%self151939%_ _%self149376151936%_)
               (_%self151941%_ _%self151939%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self151941%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self149377151798%_ _%klass151800%_)
        (let* ((_%self151802%_ _%self149377151798%_)
               (_%self151804%_ _%self151802%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151804%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151804%_
             _%klass151800%_
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
      (lambda (_%self149378151486%_
               _%id151488%_
               _%super151489%_
               _%slots151490%_
               _%ctor-method151491%_
               _%struct?151492%_
               _%final?151493%_
               _%system?151494%_
               _%metaclass151495%_)
        (let* ((_%self151497%_ _%self149378151486%_)
               (_%self151499%_ _%self151497%_))
          (let _%lp151509%_ ((_%rest151511%_ _%super151489%_))
            (let* ((_%rest151512151520%_ _%rest151511%_)
                   (_%else151514151528%_ (lambda () '#!void))
                   (_%K151516151534%_
                    (lambda (_%rest151531%_ _%super-id151532%_)
                      (if (let ((__tmp152309
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id151488%_ '()))
                                  _%super-id151532%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp152309 '8 '#f '#f))
                          (let ((__tmp152310
                                 (cons '!class (cons _%id151488%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp152310
                             _%super-id151532%_))
                          '#!void)
                      (_%lp151509%_ _%rest151531%_))))
              (if (pair? _%rest151512151520%_)
                  (let ((_%hd151517151537%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest151512151520%_)))
                        (_%tl151518151539%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest151512151520%_))))
                    (let* ((_%super-id151542%_ _%hd151517151537%_)
                           (_%rest151544%_ _%tl151518151539%_))
                      (_%K151516151534%_ _%rest151544%_ _%super-id151542%_)))
                  '#!void)))
          (let* ((_%ctor-method151595%_
                  (let ((_%$e151546%_ _%ctor-method151491%_))
                    (if _%$e151546%_
                        _%$e151546%_
                        (let _%lp151549%_ ((_%rest151551%_ _%super151489%_)
                                           (_%method151552%_ '#f))
                          (let* ((_%rest151553151561%_ _%rest151551%_)
                                 (_%else151555151569%_
                                  (lambda () _%method151552%_))
                                 (_%K151557151583%_
                                  (lambda (_%rest151572%_ _%super-id151573%_)
                                    (let* ((_%klass151575%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id151488%_ '()))
                                             _%super-id151573%_))
                                           (_%$e151577%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass151575%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e151577%_
                                          ((lambda (_%ctor-method151580%_)
                                             (if _%method151552%_
                                                 (if (eq? _%ctor-method151580%_
                                                          _%method151552%_)
                                                     (_%lp151549%_
                                                      _%rest151572%_
                                                      _%ctor-method151580%_)
                                                     (let ((__tmp152311
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id151488%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp152311
                _%method151552%_
                _%ctor-method151580%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp151549%_
                                                  _%rest151572%_
                                                  _%ctor-method151580%_)))
                                           _%$e151577%_)
                                          (_%lp151549%_
                                           _%rest151572%_
                                           _%method151552%_))))))
                            (if (pair? _%rest151553151561%_)
                                (let ((_%hd151558151586%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest151553151561%_)))
                                      (_%tl151559151588%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest151553151561%_))))
                                  (let* ((_%super-id151591%_
                                          _%hd151558151586%_)
                                         (_%rest151593%_ _%tl151559151588%_))
                                    (_%K151557151583%_
                                     _%rest151593%_
                                     _%super-id151591%_)))
                                (_%else151555151569%_)))))))
                 (_g152312_
                  (let ((__tmp152316
                         (lambda (_%klass-id151597%_)
                           (cons _%klass-id151597%_
                                 (let ((__tmp152317
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id151488%_ '()))
                                         _%klass-id151597%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp152317
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp152314
                         (lambda (_%klass-id151599%_)
                           (let ((__tmp152315
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id151488%_ '()))
                                   _%klass-id151599%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp152315
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp152316
                     __tmp152314
                     eq?
                     identity
                     '()
                     _%super151489%_))))
            (begin
              (let ((_g152313_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g152312_)
                           (##vector-length _g152312_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g152313_ 2)))
                    (error "Context expects 2 values" _g152313_)))
              (let ((_%precedence-list151601%_
                     (let () (declare (not safe)) (##vector-ref _g152312_ 0)))
                    (_%base-struct151602%_
                     (let () (declare (not safe)) (##vector-ref _g152312_ 1))))
                (let* ((_%precedence-list151646%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id151488%_ '(t object class)))
                            _%precedence-list151601%_
                            (if (memq 'object::t _%precedence-list151601%_)
                                _%precedence-list151601%_
                                (if _%system?151494%_
                                    (if (memq 't::t _%precedence-list151601%_)
                                        _%precedence-list151601%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list151601%_
                                           '(t::t))))
                                    (let _%loop151608%_ ((_%tail151610%_
                                                          _%precedence-list151601%_)
                                                         (_%head151611%_ '()))
                                      (let* ((_%tail151612151620%_
                                              _%tail151610%_)
                                             (_%else151614151628%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head151611%_))))
                                             (_%K151616151634%_
                                              (lambda (_%rest151631%_
                                                       _%hd151632%_)
                                                (if (eq? _%hd151632%_ 't::t)
                                                    (let ((__tmp152318
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail151610%_)))
              (declare (not safe))
              (__foldl1 cons __tmp152318 _%head151611%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop151608%_
                                                     _%rest151631%_
                                                     (cons _%hd151632%_
                                                           _%head151611%_))))))
                                        (if (pair? _%tail151612151620%_)
                                            (let ((_%hd151617151637%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail151612151620%_)))
                                                  (_%tl151618151639%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail151612151620%_))))
                                              (let* ((_%hd151642%_
                                                      _%hd151617151637%_)
                                                     (_%rest151644%_
                                                      _%tl151618151639%_))
                                                (_%K151616151634%_
                                                 _%rest151644%_
                                                 _%hd151642%_)))
                                            (_%else151614151628%_))))))))
                       (_%fields151648%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id151488%_ '()))
                         _%base-struct151602%_
                         _%precedence-list151646%_
                         _%slots151490%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151499%_
                     _%id151488%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151499%_
                     _%super151489%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151499%_
                     _%precedence-list151646%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151499%_
                     _%slots151490%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151499%_
                     _%fields151648%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151499%_
                     _%ctor-method151595%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151499%_
                     _%struct?151492%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151499%_
                     _%final?151493%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151499%_
                     _%metaclass151495%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self149379151651%_
               _%id151653%_
               _%super151654%_
               _%precedence-list151655%_
               _%slots151656%_
               _%fields151657%_
               _%constructor151658%_
               _%struct?151659%_
               _%final?151660%_
               _%system?151661%_
               _%metaclass151662%_
               _%methods151663%_)
        (let* ((_%self151665%_ _%self149379151651%_)
               (_%self151667%_ _%self151665%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151667%_
             _%id151653%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151667%_
             _%super151654%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151667%_
             _%precedence-list151655%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151667%_
             _%slots151656%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151667%_
             _%fields151657%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151667%_
             _%constructor151658%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151667%_
             _%struct?151659%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151667%_
             _%final?151660%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151667%_
             _%metaclass151662%_
             '10
             '#f
             '#f))
          (if _%methods151663%_
              (let ((__tmp152319
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods151663%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self151667%_
                 __tmp152319
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g152321_
        (let ((_g152320_ (let () (declare (not safe)) (##length _g152321_))))
          (cond ((let () (declare (not safe)) (##fx= _g152320_ 9))
                 (apply gxc#!class:::init!__0 _g152321_))
                ((let () (declare (not safe)) (##fx= _g152320_ 12))
                 (apply gxc#!class:::init!__1 _g152321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g152321_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where151338%_
               _%base-struct151339%_
               _%precedence-list151340%_
               _%direct-slots151341%_)
        (let* ((_%base-fields151343%_
                (if _%base-struct151339%_
                    (let ((__tmp152322
                           (gxc#optimizer-resolve-class
                            _%where151338%_
                            _%base-struct151339%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp152322 '5 '#f '#f))
                    '()))
               (_%r-fields151345%_ (reverse _%base-fields151343%_))
               (_%seen-slots151353%_
                (let ((_%tab151347%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g151348151350%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab151347%_ _%g151348151350%_ '#t)))
                   _%base-fields151343%_)
                  _%tab151347%_))
               (_%process-slot151357%_
                (lambda (_%slot151355%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots151353%_ _%slot151355%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots151353%_
                           _%slot151355%_
                           '#t))
                        (set! _%r-fields151345%_
                              (cons _%slot151355%_ _%r-fields151345%_)))))))
          (for-each
           (lambda (_%mixin151360%_)
             (let ((_%klass151362%_
                    (gxc#optimizer-resolve-class
                     _%where151338%_
                     _%mixin151360%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass151362%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot151357%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass151362%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list151340%_)
          (for-each _%process-slot151357%_ _%direct-slots151341%_)
          (let () (declare (not safe)) (##reverse _%r-fields151345%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass151297%_ _%slot151298%_)
        (let _%lp151300%_ ((_%rest151302%_
                            (##structure-ref
                             _%klass151297%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset151303%_ '1))
          (let* ((_%rest151304151312%_ _%rest151302%_)
                 (_%else151306151320%_
                  (lambda ()
                    (let ((__tmp152324
                           (##structure-ref
                            _%klass151297%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp152323
                           (##structure-ref
                            _%klass151297%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp152324
                       __tmp152323
                       _%slot151298%_))))
                 (_%K151308151326%_
                  (lambda (_%rest151323%_ _%s151324%_)
                    (if (eq? _%s151324%_ _%slot151298%_)
                        _%offset151303%_
                        (_%lp151300%_
                         _%rest151323%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset151303%_ '1)))))))
            (if (pair? _%rest151304151312%_)
                (let ((_%hd151309151329%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest151304151312%_)))
                      (_%tl151310151331%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest151304151312%_))))
                  (let* ((_%s151334%_ _%hd151309151329%_)
                         (_%rest151336%_ _%tl151310151331%_))
                    (_%K151308151326%_ _%rest151336%_ _%s151334%_)))
                (_%else151306151320%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass151255%_ _%slot151256%_)
        (if (gxc#!class-struct-slot? _%klass151255%_ _%slot151256%_)
            _%klass151255%_
            (let _%lp151258%_ ((_%rest151260%_
                                (##structure-ref
                                 _%klass151255%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest151261151269%_ _%rest151260%_)
                     (_%else151263151277%_ (lambda () '#f))
                     (_%K151265151285%_
                      (lambda (_%rest151280%_ _%super151281%_)
                        (let ((_%super-class151283%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass151255%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot151256%_ '())))
                                _%super151281%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class151283%_
                               _%slot151256%_)
                              _%super-class151283%_
                              (_%lp151258%_ _%rest151280%_))))))
                (if (pair? _%rest151261151269%_)
                    (let ((_%hd151266151288%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest151261151269%_)))
                          (_%tl151267151290%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest151261151269%_))))
                      (let* ((_%super151293%_ _%hd151266151288%_)
                             (_%rest151295%_ _%tl151267151290%_))
                        (_%K151265151285%_ _%rest151295%_ _%super151293%_)))
                    (_%else151263151277%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass151252%_ _%slot151253%_)
        (if (##structure-ref _%klass151252%_ '7 gxc#!class::t '#f)
            (memq _%slot151253%_
                  (##structure-ref _%klass151252%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self149380151236%_ _%id151238%_)
        (let* ((_%self151240%_ _%self149380151236%_)
               (_%self151242%_ _%self151240%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151242%_
             _%id151238%_
             '1
             '#f
             '#f))
          (let ((__tmp152325
                 (let ((__obj152257
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
                      __obj152257
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152257
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152257
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj152257)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151242%_
             __tmp152325
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self149381151098%_ _%id151100%_)
        (let* ((_%self151102%_ _%self149381151098%_)
               (_%self151104%_ _%self151102%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151104%_
             _%id151100%_
             '1
             '#f
             '#f))
          (let ((__tmp152326
                 (let ((__obj152258
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
                      __obj152258
                      _%id151100%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152258
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj152258)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151104%_
             __tmp152326
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
      (lambda (_%self149382150958%_
               _%id150960%_
               _%slot150961%_
               _%checked?150962%_)
        (let* ((_%self150964%_ _%self149382150958%_)
               (_%self150966%_ _%self150964%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150966%_
             _%id150960%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150966%_
             _%slot150961%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150966%_
             _%checked?150962%_
             '4
             '#f
             '#f))
          (let ((__tmp152327
                 (let ((__obj152259
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
                     (##unchecked-structure-set! __obj152259 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152259
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp152328 (cons _%id150960%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152259
                      __tmp152328
                      '3
                      '#f
                      '#f))
                   __obj152259)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150966%_
             __tmp152327
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self149383150818%_
               _%id150820%_
               _%slot150821%_
               _%checked?150822%_)
        (let* ((_%self150824%_ _%self149383150818%_)
               (_%self150826%_ _%self150824%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150826%_
             _%id150820%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150826%_
             _%slot150821%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150826%_
             _%checked?150822%_
             '4
             '#f
             '#f))
          (let ((__tmp152329
                 (let ((__obj152260
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
                      __obj152260
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152260
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp152330 (cons _%id150820%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152260
                      __tmp152330
                      '3
                      '#f
                      '#f))
                   __obj152260)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150826%_
             __tmp152329
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords150660%_
               _%signature150657150661%_
               _%self149384150663%_
               _%arity150665%_
               _%dispatch150666%_)
        (let* ((_%signature150668%_
                (if (eq? _%signature150657150661%_ absent-value)
                    '#f
                    _%signature150657150661%_))
               (_%self150670%_ _%self149384150663%_)
               (_%self150672%_ _%self150670%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150672%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150672%_
             _%arity150665%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150672%_
             _%dispatch150666%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150672%_
             _%signature150668%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords150686%_ . _%args150687%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords150686%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150686%_
                  'signature:
                  absent-value))
               _%args150687%_)))
    (define gxc#!lambda:::init!
      (lambda _%args150658150693%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args150658150693%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords150499%_
               _%signature150496150500%_
               _%self149385150502%_
               _%clauses150504%_)
        (let* ((_%signature150506%_
                (if (eq? _%signature150496150500%_ absent-value)
                    '#f
                    _%signature150496150500%_))
               (_%self150508%_ _%self149385150502%_)
               (_%self150510%_ _%self150508%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150510%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150510%_
             _%signature150506%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150510%_
             _%clauses150504%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords150524%_ . _%args150525%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords150524%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150524%_
                  'signature:
                  absent-value))
               _%args150525%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args150497150531%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args150497150531%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self149386150356%_ _%tab150358%_ _%dispatch150359%_)
        (let* ((_%self150361%_ _%self149386150356%_)
               (_%self150363%_ _%self150361%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150363%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150363%_
             _%tab150358%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150363%_
             _%dispatch150359%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self149387150217%_ _%keys150219%_ _%main150220%_)
        (let* ((_%self150222%_ _%self149387150217%_)
               (_%self150224%_ _%self150222%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150224%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150224%_
             _%keys150219%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150224%_
             _%main150220%_
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
      (lambda (_%self149388149835%_ _%id149837%_)
        (let* ((_%self149839%_ _%self149388149835%_)
               (_%self149841%_ _%self149839%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149841%_
             _%id149837%_
             '1
             '#f
             '#f))
          (let ((__tmp152331
                 (let ((__obj152261
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
                      __obj152261
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152261
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152261
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj152261)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149841%_
             __tmp152331
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
      (lambda (_%klass149704%_)
        (let ((_%$e149706%_
               (##structure-ref _%klass149704%_ '11 gxc#!class::t '#f)))
          (if _%$e149706%_
              _%$e149706%_
              (let ((_%tab149710%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass149704%_
                 _%tab149710%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab149710%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass149695%_ _%method149696%_)
        (let ((_%tab149697149699%_
               (##structure-ref _%klass149695%_ '11 gxc#!class::t '#f)))
          (if _%tab149697149699%_
              (let ((_%tab149702%_ _%tab149697149699%_))
                (declare (not safe))
                (hash-get _%tab149702%_ _%method149696%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a149683%_ _%type-b149684%_)
        (if _%type-a149683%_
            (if _%type-b149684%_
                (let ((_%$e149686%_ (eq? _%type-a149683%_ _%type-b149684%_)))
                  (if _%$e149686%_
                      _%$e149686%_
                      (let ((_%$e149689%_
                             (eq? (##structure-ref
                                   _%type-b149684%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e149689%_
                            _%$e149689%_
                            (let ((_%$e149692%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a149683%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b149684%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e149692%_
                                  _%$e149692%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a149683%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b149684%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a149683%_
                                           _%type-b149684%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a149634%_ _%klass-b149635%_)
        (let ((_%$e149637%_
               (eq? (##structure-ref _%klass-a149634%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b149635%_ '1 gxc#!type::t '#f))))
          (if _%$e149637%_
              _%$e149637%_
              (let ((_%klass-id-b149640%_
                     (##structure-ref _%klass-b149635%_ '1 gxc#!type::t '#f))
                    (_%precedence-list149641%_
                     (##structure-ref _%klass-a149634%_ '3 gxc#!class::t '#f)))
                (let _%loop149643%_ ((_%rest149645%_
                                      _%precedence-list149641%_))
                  (let* ((_%rest149646149654%_ _%rest149645%_)
                         (_%else149648149662%_ (lambda () '#f))
                         (_%K149650149671%_
                          (lambda (_%rest149665%_ _%klass-name149666%_)
                            (let ((_%$e149668%_
                                   (eq? (let ((__tmp152332
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a149634%_
                                                            (cons _%klass-b149635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name149666%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp152332
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b149640%_)))
                              (if _%$e149668%_
                                  _%$e149668%_
                                  (_%loop149643%_ _%rest149665%_))))))
                    (if (pair? _%rest149646149654%_)
                        (let ((_%hd149651149674%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest149646149654%_)))
                              (_%tl149652149676%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest149646149654%_))))
                          (let* ((_%klass-name149679%_ _%hd149651149674%_)
                                 (_%rest149681%_ _%tl149652149676%_))
                            (_%K149650149671%_
                             _%rest149681%_
                             _%klass-name149679%_)))
                        (_%else149648149662%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type149632%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149632%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type149632%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc149621%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc149621%_ 'gxc#!procedure::t))
            (let ((_%proc149624%_ _%proc149621%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc149624%_ '2 '#f '#f))
                  (let ((__tmp152333
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc149624%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp152333 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc149621%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym149603%_ _%type149604%_ _%local?149605%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149604%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym149603%_
                     _%type149604%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym149603%_ '" " _%type149604%_))
        (let ((_%table149607%_
               (if _%local?149605%_
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
          (hash-put! _%table149607%_ _%sym149603%_ _%type149604%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym149612%_ _%type149613%_)
        (let ((_%local?149615%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym149612%_
           _%type149613%_
           _%local?149615%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g152335_
        (let ((_g152334_ (let () (declare (not safe)) (##length _g152335_))))
          (cond ((let () (declare (not safe)) (##fx= _g152334_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g152335_))
                ((let () (declare (not safe)) (##fx= _g152334_ 3))
                 (apply gxc#optimizer-declare-type!__% _g152335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g152335_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym149597%_ _%type149598%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149598%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym149597%_
                     _%type149598%_)))
        (let ((_%table149600%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp152336
                 (let () (declare (not safe)) (struct->list _%type149598%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym149597%_ '" " __tmp152336))
          (let ()
            (declare (not safe))
            (hash-put! _%table149600%_ _%sym149597%_ _%type149598%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table149600%_ _%type149598%_ _%sym149597%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym149592%_ _%type149593%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149593%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym149592%_
                     _%type149593%_)))
        (let ((_%table149595%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table149595%_ _%sym149592%_))
              '#!void
              (begin
                (let ((__tmp152337
                       (let ()
                         (declare (not safe))
                         (struct->list _%type149593%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym149592%_
                   '" "
                   __tmp152337))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table149595%_ _%sym149592%_ _%type149593%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table149595%_
                   _%type149593%_
                   _%sym149592%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym149590%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym149590%_))
        (let ((__tmp152338
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp152338 _%sym149590%_))
        (let ((__tmp152339
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp152339 _%sym149590%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t149558%_
               _%method149559%_
               _%sym149560%_
               _%rebind?149561%_)
        (let ((__tmp152340
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp152340 _%sym149560%_ '#t))
        (let ((_%klass149563%_ (gxc#optimizer-lookup-class _%type-t149558%_)))
          (if _%klass149563%_
              (let* ((_%vtab149565%_ (gxc#!class-method-table _%klass149563%_))
                     (_%$e149567%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab149565%_ _%method149559%_))))
                (if _%$e149567%_
                    ((lambda (_%existing149570%_)
                       (if _%rebind?149561%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t149558%_
                                '" "
                                _%method149559%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab149565%_
                                _%method149559%_
                                _%sym149560%_)))
                           (if (eq? _%existing149570%_ _%sym149560%_)
                               '#!void
                               (let ((__tmp152341
                                      (cons 'bind-method!
                                            (cons _%type-t149558%_
                                                  (cons _%method149559%_
                                                        (cons _%sym149560%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp152341
                                  _%method149559%_)))))
                     _%$e149567%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t149558%_
                         '" "
                         _%method149559%_
                         '" => "
                         _%sym149560%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab149565%_
                         _%method149559%_
                         _%sym149560%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t149558%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t149579%_ _%method149580%_ _%sym149581%_)
        (let ((_%rebind?149583%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t149579%_
           _%method149580%_
           _%sym149581%_
           _%rebind?149583%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g152343_
        (let ((_g152342_ (let () (declare (not safe)) (##length _g152343_))))
          (cond ((let () (declare (not safe)) (##fx= _g152342_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g152343_))
                ((let () (declare (not safe)) (##fx= _g152342_ 4))
                 (apply gxc#optimizer-declare-method!__% _g152343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g152343_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym149543%_)
        (let ((_%$e149545%_
               (let ((__tmp152344
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym149543%_ __tmp152344))))
          (if _%$e149545%_
              _%$e149545%_
              (let ((_%$e149554%_
                     (let ((_%ht149547149549%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht149547149549%_
                           (let ((_%ht149552%_ _%ht149547149549%_))
                             (declare (not safe))
                             (hash-get _%ht149552%_ _%sym149543%_))
                           '#f))))
                (if _%$e149554%_
                    _%$e149554%_
                    (let ((__tmp152345
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp152345 _%sym149543%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym149535%_)
        (let ((_%type149536149538%_ (gxc#optimizer-lookup-type _%sym149535%_)))
          (if _%type149536149538%_
              (let ((_%type149541%_ _%type149536149538%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type149541%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type149541%_ '1 '#f '#f)))
                    _%type149541%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym149531%_)
        (let ((_%table149533%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table149533%_ _%sym149531%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where149516%_ _%sym149517%_)
        (let ((_%$e149520%_ (gxc#optimizer-lookup-class _%sym149517%_)))
          (if _%$e149520%_
              ((lambda (_%g149522149524%_)
                 (let ((_%val149527%_ _%g149522149524%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val149527%_
                          'gxc#!class::t))
                       _%val149527%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val149527%_)))))
               _%$e149520%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where149516%_
                   _%sym149517%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass149514%_)
        (let ((__tmp152346
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp152346 _%klass149514%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t149511%_ _%method149512%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t149511%_)
         _%method149512%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym149509%_)
        (let ((__tmp152347
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp152347 _%sym149509%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e149391%_
                  (lambda (_%t149492%_)
                    (if (symbol? _%t149492%_)
                        (_%type-e149391%_
                         (gxc#optimizer-lookup-type _%t149492%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t149492%_
                               'gxc#!lambda::t))
                            (_%__lambda-type149393%_ _%t149492%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t149492%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type149395%_ _%t149492%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t149492%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type149397%_
                                     _%t149492%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t149492%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t149499%_ _%t149492%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t149499%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp152348
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t149499%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp152348
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t149492%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t149492%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type149392%_
                  (lambda (_%t149480%_)
                    (let ((_%t149483%_ _%t149480%_))
                      (_%__lambda-type149393%_ _%t149483%_))))
                 (_%__lambda-type149393%_
                  (lambda (_%t149468%_)
                    (let ((_%t149471%_ _%t149468%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t149471%_ '4 '#f '#f))
                          (_%type-e149391%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t149471%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t149471%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp152349
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t149471%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp152349
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type149394%_
                  (lambda (_%t149456%_)
                    (let ((_%t149459%_ _%t149456%_))
                      (_%__kw-lambda-type149395%_ _%t149459%_))))
                 (_%__kw-lambda-type149395%_
                  (lambda (_%t149444%_)
                    (let ((_%t149447%_ _%t149444%_))
                      (_%type-e149391%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t149447%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type149396%_
                  (lambda (_%t149432%_)
                    (let ((_%t149435%_ _%t149432%_))
                      (_%__kw-lambda-primary-type149397%_ _%t149435%_))))
                 (_%__kw-lambda-primary-type149397%_
                  (lambda (_%t149418%_)
                    (let ((_%t149421%_ _%t149418%_))
                      (_%type-e149391%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t149421%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1149399%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2149401%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result149403%_
                  (if _%ht1149399%_
                      (let () (declare (not safe)) (hash->list _%ht1149399%_))
                      '()))
                 (_%result149405%_
                  (if _%ht2149401%_
                      (let ((__tmp152350
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2149401%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result149403%_ __tmp152350))
                      _%result149403%_)))
            (for-each
             (lambda (_%p149408%_)
               (let* ((_%t149410%_ (cdr _%p149408%_))
                      (_%tr149412%_ (_%type-e149391%_ _%t149410%_)))
                 (set-cdr! _%p149408%_ _%tr149412%_)))
             _%result149405%_)
            (list-sort
             (lambda (_%a149415%_ _%b149416%_)
               (let ((__tmp152352 (symbol->string (car _%a149415%_)))
                     (__tmp152351 (symbol->string (car _%b149416%_))))
                 (declare (not safe))
                 (##string<? __tmp152352 __tmp152351)))
             _%result149405%_)))))))
