(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1768864950)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp164283 (list)) (__tmp164282 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp164283
         '(type classes ssxi methods)
         __tmp164282
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args164254%_
        (apply make-instance gxc#optimizer-info::t _%$args164254%_)))
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
      (lambda (_%self164241%_)
        (let ((_%self164244%_ _%self164241%_))
          (if (let ((__tmp164284
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self164244%_))))
                (declare (not safe))
                (##fx< '4 __tmp164284))
              (begin
                (let ((__tmp164285
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164244%_
                   __tmp164285
                   '1
                   '#f
                   '#f))
                (let ((__tmp164286
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164244%_
                   __tmp164286
                   '2
                   '#f
                   '#f))
                (let ((__tmp164287
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164244%_
                   __tmp164287
                   '3
                   '#f
                   '#f))
                (let ((__tmp164288
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164244%_
                   __tmp164288
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp164289
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self164244%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self164244%_
                       '4
                       __tmp164289))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp164291 (list)) (__tmp164290 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp164291
         '(id)
         __tmp164290
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args164116%_
        (apply make-instance gxc#!type::t _%$args164116%_)))
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
      (let ((__tmp164293 (list gxc#!type::t))
            (__tmp164292 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp164293
         '()
         __tmp164292
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args164113%_
        (apply make-instance gxc#!abort::t _%$args164113%_)))
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
      (let ((__tmp164295 (list gxc#!type::t))
            (__tmp164294 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp164295
         '()
         __tmp164294
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args164110%_
        (apply make-instance gxc#!alias::t _%$args164110%_)))
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
      (let ((__tmp164297 (list)) (__tmp164296 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp164297
         '(return effect arguments unchecked origin)
         __tmp164296
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args164107%_
        (apply make-instance gxc#!signature::t _%$args164107%_)))
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
      (let ((__tmp164299 (list gxc#!type::t))
            (__tmp164298 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp164299
         '(signature)
         __tmp164298
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
      (lambda (_%id164086%_ _%signature164087%_)
        (if ((lambda (_%$obj164090%_)
               (or (not _%$obj164090%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj164090%_
                      'gxc#!signature::t))))
             _%signature164087%_)
            (let ((_%signature164097%_ _%signature164087%_))
              (gxc#__make-!procedure _%id164086%_ _%signature164097%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature164087%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id164072%_ _%signature164074%_)
        (let ((_%signature164077%_ _%signature164074%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id164072%_ _%signature164077%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj164041%_ _%signature164042%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj164041%_ 'gxc#!procedure::t))
            (let ((_%$obj164046%_ _%$obj164041%_))
              (if ((lambda (_%$obj164055%_)
                     (or (not _%$obj164055%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj164055%_
                            'gxc#!signature::t))))
                   _%signature164042%_)
                  (let ((_%signature164062%_ _%signature164042%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj164046%_
                     _%signature164062%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature164042%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj164041%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj164018%_ _%signature164020%_)
        (let* ((_%$obj164024%_ _%$obj164018%_)
               (_%signature164032%_ _%signature164020%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj164024%_
           _%signature164032%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp164301 (list gxc#!type::t))
            (__tmp164300 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp164301
         '(class)
         __tmp164300
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args164015%_
        (apply make-instance gxc#!class-meta::t _%$args164015%_)))
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
      (let ((__tmp164303 (list gxc#!type::t))
            (__tmp164302 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp164303
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp164302
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args164012%_
        (apply make-instance gxc#!class::t _%$args164012%_)))
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
      (let ((__tmp164305 (list gxc#!procedure::t))
            (__tmp164304 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp164305
         '()
         __tmp164304
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args164009%_
        (apply make-instance gxc#!predicate::t _%$args164009%_)))
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
      (let ((__tmp164307 (list gxc#!procedure::t))
            (__tmp164306 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp164307
         '()
         __tmp164306
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args164006%_
        (apply make-instance gxc#!constructor::t _%$args164006%_)))
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
      (let ((__tmp164309 (list gxc#!procedure::t))
            (__tmp164308 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp164309
         '(slot checked?)
         __tmp164308
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args164003%_
        (apply make-instance gxc#!accessor::t _%$args164003%_)))
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
      (let ((__tmp164311 (list gxc#!procedure::t))
            (__tmp164310 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp164311
         '(slot checked?)
         __tmp164310
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args164000%_
        (apply make-instance gxc#!mutator::t _%$args164000%_)))
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
      (let ((__tmp164313 (list gxc#!type::t))
            (__tmp164312 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp164313
         '(methods)
         __tmp164312
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args163997%_
        (apply make-instance gxc#!interface::t _%$args163997%_)))
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
      (let ((__tmp164315 (list gxc#!procedure::t))
            (__tmp164314 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp164315
         '(arity dispatch inline inline-typedecl)
         __tmp164314
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args163994%_
        (apply make-instance gxc#!lambda::t _%$args163994%_)))
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
      (let ((__tmp164317 (list gxc#!procedure::t))
            (__tmp164316 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp164317
         '(clauses)
         __tmp164316
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args163991%_
        (apply make-instance gxc#!case-lambda::t _%$args163991%_)))
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
      (let ((__tmp164319 (list gxc#!procedure::t))
            (__tmp164318 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp164319
         '(table dispatch)
         __tmp164318
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args163988%_
        (apply make-instance gxc#!kw-lambda::t _%$args163988%_)))
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
      (let ((__tmp164321 (list gxc#!procedure::t))
            (__tmp164320 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp164321
         '(keys main)
         __tmp164320
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args163985%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args163985%_)))
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
      (let ((__tmp164322 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp164322
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args163982%_
        (apply make-instance gxc#!primitive::t _%$args163982%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp164324 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp164323 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp164324
         '()
         __tmp164323
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args163979%_
        (apply make-instance gxc#!primitive-predicate::t _%$args163979%_)))
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
      (let ((__tmp164326 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp164325 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp164326
         '()
         __tmp164325
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args163976%_
        (apply make-instance gxc#!primitive-lambda::t _%$args163976%_)))
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
      (let ((__tmp164328 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp164327 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp164328
         '()
         __tmp164327
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args163973%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args163973%_)))
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
      (lambda (_%self163960%_)
        (let ((_%self163963%_ _%self163960%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self163963%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self163823%_ _%klass163824%_)
        (let ((_%self163827%_ _%self163823%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self163827%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163827%_
             _%klass163824%_
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
      (lambda (_%self163513%_
               _%id163514%_
               _%super163515%_
               _%slots163516%_
               _%ctor-method163517%_
               _%struct?163518%_
               _%final?163519%_
               _%system?163520%_
               _%metaclass163521%_)
        (let ((_%self163524%_ _%self163513%_))
          (let _%lp163535%_ ((_%rest163537%_ _%super163515%_))
            (let* ((_%rest163538163546%_ _%rest163537%_)
                   (_%else163540163554%_ (lambda () '#!void))
                   (_%K163542163560%_
                    (lambda (_%rest163557%_ _%super-id163558%_)
                      (if (let ((__tmp164329
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id163514%_ '()))
                                  _%super-id163558%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp164329 '8 '#f '#f))
                          (let ((__tmp164330
                                 (cons '!class (cons _%id163514%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp164330
                             _%super-id163558%_))
                          '#!void)
                      (_%lp163535%_ _%rest163557%_))))
              (if (pair? _%rest163538163546%_)
                  (let ((_%hd163543163563%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest163538163546%_)))
                        (_%tl163544163565%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest163538163546%_))))
                    (let* ((_%super-id163568%_ _%hd163543163563%_)
                           (_%rest163570%_ _%tl163544163565%_))
                      (_%K163542163560%_ _%rest163570%_ _%super-id163568%_)))
                  '#!void)))
          (let* ((_%ctor-method163621%_
                  (let ((_%$e163572%_ _%ctor-method163517%_))
                    (if _%$e163572%_
                        _%$e163572%_
                        (let _%lp163575%_ ((_%rest163577%_ _%super163515%_)
                                           (_%method163578%_ '#f))
                          (let* ((_%rest163579163587%_ _%rest163577%_)
                                 (_%else163581163595%_
                                  (lambda () _%method163578%_))
                                 (_%K163583163609%_
                                  (lambda (_%rest163598%_ _%super-id163599%_)
                                    (let* ((_%klass163601%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id163514%_ '()))
                                             _%super-id163599%_))
                                           (_%$e163603%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass163601%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e163603%_
                                          ((lambda (_%ctor-method163606%_)
                                             (if _%method163578%_
                                                 (if (eq? _%ctor-method163606%_
                                                          _%method163578%_)
                                                     (_%lp163575%_
                                                      _%rest163598%_
                                                      _%ctor-method163606%_)
                                                     (let ((__tmp164331
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id163514%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp164331
                _%method163578%_
                _%ctor-method163606%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp163575%_
                                                  _%rest163598%_
                                                  _%ctor-method163606%_)))
                                           _%$e163603%_)
                                          (_%lp163575%_
                                           _%rest163598%_
                                           _%method163578%_))))))
                            (if (pair? _%rest163579163587%_)
                                (let ((_%hd163584163612%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest163579163587%_)))
                                      (_%tl163585163614%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest163579163587%_))))
                                  (let* ((_%super-id163617%_
                                          _%hd163584163612%_)
                                         (_%rest163619%_ _%tl163585163614%_))
                                    (_%K163583163609%_
                                     _%rest163619%_
                                     _%super-id163617%_)))
                                (_%else163581163595%_)))))))
                 (_g164332_
                  (let ((__tmp164336
                         (lambda (_%klass-id163623%_)
                           (cons _%klass-id163623%_
                                 (let ((__tmp164337
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id163514%_ '()))
                                         _%klass-id163623%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp164337
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp164334
                         (lambda (_%klass-id163625%_)
                           (let ((__tmp164335
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id163514%_ '()))
                                   _%klass-id163625%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp164335
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp164336
                     __tmp164334
                     eq?
                     identity
                     '()
                     _%super163515%_))))
            (begin
              (let ((_g164333_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g164332_)
                           (##values-length _g164332_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g164333_ 2)))
                    (error "Context expects 2 values" _g164333_)))
              (let ((_%precedence-list163627%_
                     (let () (declare (not safe)) (##values-ref _g164332_ 0)))
                    (_%base-struct163628%_
                     (let () (declare (not safe)) (##values-ref _g164332_ 1))))
                (let* ((_%precedence-list163672%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id163514%_ '(t object class)))
                            _%precedence-list163627%_
                            (if (memq 'object::t _%precedence-list163627%_)
                                _%precedence-list163627%_
                                (if _%system?163520%_
                                    (if (memq 't::t _%precedence-list163627%_)
                                        _%precedence-list163627%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list163627%_
                                           '(t::t))))
                                    (let _%loop163634%_ ((_%tail163636%_
                                                          _%precedence-list163627%_)
                                                         (_%head163637%_ '()))
                                      (let* ((_%tail163638163646%_
                                              _%tail163636%_)
                                             (_%else163640163654%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head163637%_))))
                                             (_%K163642163660%_
                                              (lambda (_%rest163657%_
                                                       _%hd163658%_)
                                                (if (eq? _%hd163658%_ 't::t)
                                                    (let ((__tmp164338
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail163636%_)))
              (declare (not safe))
              (__foldl1 cons __tmp164338 _%head163637%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop163634%_
                                                     _%rest163657%_
                                                     (cons _%hd163658%_
                                                           _%head163637%_))))))
                                        (if (pair? _%tail163638163646%_)
                                            (let ((_%hd163643163663%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail163638163646%_)))
                                                  (_%tl163644163665%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail163638163646%_))))
                                              (let* ((_%hd163668%_
                                                      _%hd163643163663%_)
                                                     (_%rest163670%_
                                                      _%tl163644163665%_))
                                                (_%K163642163660%_
                                                 _%rest163670%_
                                                 _%hd163668%_)))
                                            (_%else163640163654%_))))))))
                       (_%fields163674%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id163514%_ '()))
                         _%base-struct163628%_
                         _%precedence-list163672%_
                         _%slots163516%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163524%_
                     _%id163514%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163524%_
                     _%super163515%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163524%_
                     _%precedence-list163672%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163524%_
                     _%slots163516%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163524%_
                     _%fields163674%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163524%_
                     _%ctor-method163621%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163524%_
                     _%struct?163518%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163524%_
                     _%final?163519%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163524%_
                     _%metaclass163521%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self163677%_
               _%id163678%_
               _%super163679%_
               _%precedence-list163680%_
               _%slots163681%_
               _%fields163682%_
               _%constructor163683%_
               _%struct?163684%_
               _%final?163685%_
               _%system?163686%_
               _%metaclass163687%_
               _%methods163688%_)
        (let ((_%self163691%_ _%self163677%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163691%_
             _%id163678%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163691%_
             _%super163679%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163691%_
             _%precedence-list163680%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163691%_
             _%slots163681%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163691%_
             _%fields163682%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163691%_
             _%constructor163683%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163691%_
             _%struct?163684%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163691%_
             _%final?163685%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163691%_
             _%metaclass163687%_
             '10
             '#f
             '#f))
          (if _%methods163688%_
              (let ((__tmp164339
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods163688%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self163691%_
                 __tmp164339
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g164340_
        (let ((_g164341_ (let () (declare (not safe)) (##length _g164340_))))
          (cond ((let () (declare (not safe)) (##fx= _g164341_ 9))
                 (apply gxc#!class:::init!__0 _g164340_))
                ((let () (declare (not safe)) (##fx= _g164341_ 12))
                 (apply gxc#!class:::init!__1 _g164340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g164340_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where163365%_
               _%base-struct163366%_
               _%precedence-list163367%_
               _%direct-slots163368%_)
        (let* ((_%base-fields163370%_
                (if _%base-struct163366%_
                    (let ((__tmp164342
                           (gxc#optimizer-resolve-class
                            _%where163365%_
                            _%base-struct163366%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp164342 '5 '#f '#f))
                    '()))
               (_%r-fields163372%_ (reverse _%base-fields163370%_))
               (_%seen-slots163380%_
                (let ((_%tab163374%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g163375163377%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab163374%_ _%g163375163377%_ '#t)))
                   _%base-fields163370%_)
                  _%tab163374%_))
               (_%process-slot163384%_
                (lambda (_%slot163382%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots163380%_ _%slot163382%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots163380%_
                           _%slot163382%_
                           '#t))
                        (set! _%r-fields163372%_
                              (cons _%slot163382%_ _%r-fields163372%_)))))))
          (for-each
           (lambda (_%mixin163387%_)
             (let ((_%klass163389%_
                    (gxc#optimizer-resolve-class
                     _%where163365%_
                     _%mixin163387%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass163389%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot163384%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass163389%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list163367%_)
          (for-each _%process-slot163384%_ _%direct-slots163368%_)
          (let () (declare (not safe)) (##reverse _%r-fields163372%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass163324%_ _%slot163325%_)
        (let _%lp163327%_ ((_%rest163329%_
                            (##structure-ref
                             _%klass163324%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset163330%_ '1))
          (let* ((_%rest163331163339%_ _%rest163329%_)
                 (_%else163333163347%_
                  (lambda ()
                    (let ((__tmp164344
                           (##structure-ref
                            _%klass163324%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp164343
                           (##structure-ref
                            _%klass163324%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp164344
                       __tmp164343
                       _%slot163325%_))))
                 (_%K163335163353%_
                  (lambda (_%rest163350%_ _%s163351%_)
                    (if (eq? _%s163351%_ _%slot163325%_)
                        _%offset163330%_
                        (_%lp163327%_
                         _%rest163350%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset163330%_ '1)))))))
            (if (pair? _%rest163331163339%_)
                (let ((_%hd163336163356%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest163331163339%_)))
                      (_%tl163337163358%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest163331163339%_))))
                  (let* ((_%s163361%_ _%hd163336163356%_)
                         (_%rest163363%_ _%tl163337163358%_))
                    (_%K163335163353%_ _%rest163363%_ _%s163361%_)))
                (_%else163333163347%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass163282%_ _%slot163283%_)
        (if (gxc#!class-struct-slot? _%klass163282%_ _%slot163283%_)
            _%klass163282%_
            (let _%lp163285%_ ((_%rest163287%_
                                (##structure-ref
                                 _%klass163282%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest163288163296%_ _%rest163287%_)
                     (_%else163290163304%_ (lambda () '#f))
                     (_%K163292163312%_
                      (lambda (_%rest163307%_ _%super163308%_)
                        (let ((_%super-class163310%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass163282%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot163283%_ '())))
                                _%super163308%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class163310%_
                               _%slot163283%_)
                              _%super-class163310%_
                              (_%lp163285%_ _%rest163307%_))))))
                (if (pair? _%rest163288163296%_)
                    (let ((_%hd163293163315%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest163288163296%_)))
                          (_%tl163294163317%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest163288163296%_))))
                      (let* ((_%super163320%_ _%hd163293163315%_)
                             (_%rest163322%_ _%tl163294163317%_))
                        (_%K163292163312%_ _%rest163322%_ _%super163320%_)))
                    (_%else163290163304%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass163279%_ _%slot163280%_)
        (if (##structure-ref _%klass163279%_ '7 gxc#!class::t '#f)
            (memq _%slot163280%_
                  (##structure-ref _%klass163279%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self163264%_ _%id163265%_)
        (let ((_%self163268%_ _%self163264%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163268%_
             _%id163265%_
             '1
             '#f
             '#f))
          (let ((__tmp164345
                 (let ((__obj164277
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
                      __obj164277
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164277
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164277
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj164277)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163268%_
             __tmp164345
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self163127%_ _%id163128%_)
        (let ((_%self163131%_ _%self163127%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163131%_
             _%id163128%_
             '1
             '#f
             '#f))
          (let ((__tmp164346
                 (let ((__obj164278
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
                      __obj164278
                      _%id163128%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164278
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj164278)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163131%_
             __tmp164346
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
      (lambda (_%self162988%_ _%id162989%_ _%slot162990%_ _%checked?162991%_)
        (let ((_%self162994%_ _%self162988%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162994%_
             _%id162989%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162994%_
             _%slot162990%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162994%_
             _%checked?162991%_
             '4
             '#f
             '#f))
          (let ((__tmp164347
                 (let ((__obj164279
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
                     (##unchecked-structure-set! __obj164279 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164279
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp164348 (cons _%id162989%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164279
                      __tmp164348
                      '3
                      '#f
                      '#f))
                   __obj164279)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162994%_
             __tmp164347
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self162849%_ _%id162850%_ _%slot162851%_ _%checked?162852%_)
        (let ((_%self162855%_ _%self162849%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162855%_
             _%id162850%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162855%_
             _%slot162851%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162855%_
             _%checked?162852%_
             '4
             '#f
             '#f))
          (let ((__tmp164349
                 (let ((__obj164280
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
                      __obj164280
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164280
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp164350 (cons _%id162850%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164280
                      __tmp164350
                      '3
                      '#f
                      '#f))
                   __obj164280)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162855%_
             __tmp164349
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords162692%_
               _%signature162689162693%_
               _%self162695%_
               _%arity162696%_
               _%dispatch162697%_)
        (let* ((_%signature162699%_
                (if (eq? _%signature162689162693%_ absent-value)
                    '#f
                    _%signature162689162693%_))
               (_%self162702%_ _%self162695%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162702%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162702%_
             _%arity162696%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162702%_
             _%dispatch162697%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162702%_
             _%signature162699%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords162717%_ . _%args162718%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords162717%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162717%_
                  'signature:
                  absent-value))
               _%args162718%_)))
    (define gxc#!lambda:::init!
      (lambda _%args162690162724%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args162690162724%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords162532%_
               _%signature162529162533%_
               _%self162535%_
               _%clauses162536%_)
        (let* ((_%signature162538%_
                (if (eq? _%signature162529162533%_ absent-value)
                    '#f
                    _%signature162529162533%_))
               (_%self162541%_ _%self162535%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162541%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162541%_
             _%signature162538%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162541%_
             _%clauses162536%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords162556%_ . _%args162557%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords162556%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162556%_
                  'signature:
                  absent-value))
               _%args162557%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args162530162563%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args162530162563%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self162390%_ _%tab162391%_ _%dispatch162392%_)
        (let ((_%self162395%_ _%self162390%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162395%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162395%_
             _%tab162391%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162395%_
             _%dispatch162392%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self162252%_ _%keys162253%_ _%main162254%_)
        (let ((_%self162257%_ _%self162252%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162257%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162257%_
             _%keys162253%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162257%_
             _%main162254%_
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
      (lambda (_%self161871%_ _%id161872%_)
        (let ((_%self161875%_ _%self161871%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self161875%_
             _%id161872%_
             '1
             '#f
             '#f))
          (let ((__tmp164351
                 (let ((__obj164281
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
                      __obj164281
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164281
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164281
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj164281)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self161875%_
             __tmp164351
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
      (lambda (_%klass161740%_)
        (let ((_%$e161742%_
               (##structure-ref _%klass161740%_ '11 gxc#!class::t '#f)))
          (if _%$e161742%_
              _%$e161742%_
              (let ((_%tab161746%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass161740%_
                 _%tab161746%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab161746%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass161731%_ _%method161732%_)
        (let ((_%tab161733161735%_
               (##structure-ref _%klass161731%_ '11 gxc#!class::t '#f)))
          (if _%tab161733161735%_
              (let ((_%tab161738%_ _%tab161733161735%_))
                (declare (not safe))
                (hash-get _%tab161738%_ _%method161732%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a161719%_ _%type-b161720%_)
        (if _%type-a161719%_
            (if _%type-b161720%_
                (let ((_%$e161722%_ (eq? _%type-a161719%_ _%type-b161720%_)))
                  (if _%$e161722%_
                      _%$e161722%_
                      (let ((_%$e161725%_
                             (eq? (##structure-ref
                                   _%type-b161720%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e161725%_
                            _%$e161725%_
                            (let ((_%$e161728%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a161719%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b161720%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e161728%_
                                  _%$e161728%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a161719%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b161720%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a161719%_
                                           _%type-b161720%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a161670%_ _%klass-b161671%_)
        (let ((_%$e161673%_
               (eq? (##structure-ref _%klass-a161670%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b161671%_ '1 gxc#!type::t '#f))))
          (if _%$e161673%_
              _%$e161673%_
              (let ((_%klass-id-b161676%_
                     (##structure-ref _%klass-b161671%_ '1 gxc#!type::t '#f))
                    (_%precedence-list161677%_
                     (##structure-ref _%klass-a161670%_ '3 gxc#!class::t '#f)))
                (let _%loop161679%_ ((_%rest161681%_
                                      _%precedence-list161677%_))
                  (let* ((_%rest161682161690%_ _%rest161681%_)
                         (_%else161684161698%_ (lambda () '#f))
                         (_%K161686161707%_
                          (lambda (_%rest161701%_ _%klass-name161702%_)
                            (let ((_%$e161704%_
                                   (eq? (let ((__tmp164352
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a161670%_
                                                            (cons _%klass-b161671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name161702%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp164352
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b161676%_)))
                              (if _%$e161704%_
                                  _%$e161704%_
                                  (_%loop161679%_ _%rest161701%_))))))
                    (if (pair? _%rest161682161690%_)
                        (let ((_%hd161687161710%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest161682161690%_)))
                              (_%tl161688161712%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest161682161690%_))))
                          (let* ((_%klass-name161715%_ _%hd161687161710%_)
                                 (_%rest161717%_ _%tl161688161712%_))
                            (_%K161686161707%_
                             _%rest161717%_
                             _%klass-name161715%_)))
                        (_%else161684161698%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type161668%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161668%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type161668%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc161657%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc161657%_ 'gxc#!procedure::t))
            (let ((_%proc161660%_ _%proc161657%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc161660%_ '2 '#f '#f))
                  (let ((__tmp164353
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc161660%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp164353 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc161657%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym161639%_ _%type161640%_ _%local?161641%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161640%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym161639%_
                     _%type161640%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym161639%_ '" " _%type161640%_))
        (let ((_%table161643%_
               (if _%local?161641%_
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
          (hash-put! _%table161643%_ _%sym161639%_ _%type161640%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym161648%_ _%type161649%_)
        (let ((_%local?161651%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym161648%_
           _%type161649%_
           _%local?161651%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g164354_
        (let ((_g164355_ (let () (declare (not safe)) (##length _g164354_))))
          (cond ((let () (declare (not safe)) (##fx= _g164355_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g164354_))
                ((let () (declare (not safe)) (##fx= _g164355_ 3))
                 (apply gxc#optimizer-declare-type!__% _g164354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g164354_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym161633%_ _%type161634%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161634%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym161633%_
                     _%type161634%_)))
        (let ((_%table161636%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp164356
                 (let () (declare (not safe)) (struct->list _%type161634%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym161633%_ '" " __tmp164356))
          (let ()
            (declare (not safe))
            (hash-put! _%table161636%_ _%sym161633%_ _%type161634%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table161636%_ _%type161634%_ _%sym161633%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym161628%_ _%type161629%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161629%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym161628%_
                     _%type161629%_)))
        (let ((_%table161631%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table161631%_ _%sym161628%_))
              '#!void
              (begin
                (let ((__tmp164357
                       (let ()
                         (declare (not safe))
                         (struct->list _%type161629%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym161628%_
                   '" "
                   __tmp164357))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table161631%_ _%sym161628%_ _%type161629%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table161631%_
                   _%type161629%_
                   _%sym161628%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym161626%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym161626%_))
        (let ((__tmp164358
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp164358 _%sym161626%_))
        (let ((__tmp164359
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp164359 _%sym161626%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t161594%_
               _%method161595%_
               _%sym161596%_
               _%rebind?161597%_)
        (let ((__tmp164360
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp164360 _%sym161596%_ '#t))
        (let ((_%klass161599%_ (gxc#optimizer-lookup-class _%type-t161594%_)))
          (if _%klass161599%_
              (let* ((_%vtab161601%_ (gxc#!class-method-table _%klass161599%_))
                     (_%$e161603%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab161601%_ _%method161595%_))))
                (if _%$e161603%_
                    ((lambda (_%existing161606%_)
                       (if _%rebind?161597%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t161594%_
                                '" "
                                _%method161595%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab161601%_
                                _%method161595%_
                                _%sym161596%_)))
                           (if (eq? _%existing161606%_ _%sym161596%_)
                               '#!void
                               (let ((__tmp164361
                                      (cons 'bind-method!
                                            (cons _%type-t161594%_
                                                  (cons _%method161595%_
                                                        (cons _%sym161596%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp164361
                                  _%method161595%_)))))
                     _%$e161603%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t161594%_
                         '" "
                         _%method161595%_
                         '" => "
                         _%sym161596%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab161601%_
                         _%method161595%_
                         _%sym161596%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t161594%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t161615%_ _%method161616%_ _%sym161617%_)
        (let ((_%rebind?161619%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t161615%_
           _%method161616%_
           _%sym161617%_
           _%rebind?161619%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g164362_
        (let ((_g164363_ (let () (declare (not safe)) (##length _g164362_))))
          (cond ((let () (declare (not safe)) (##fx= _g164363_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g164362_))
                ((let () (declare (not safe)) (##fx= _g164363_ 4))
                 (apply gxc#optimizer-declare-method!__% _g164362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g164362_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym161579%_)
        (let ((_%$e161581%_
               (let ((__tmp164364
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym161579%_ __tmp164364))))
          (if _%$e161581%_
              _%$e161581%_
              (let ((_%$e161590%_
                     (let ((_%ht161583161585%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht161583161585%_
                           (let ((_%ht161588%_ _%ht161583161585%_))
                             (declare (not safe))
                             (hash-get _%ht161588%_ _%sym161579%_))
                           '#f))))
                (if _%$e161590%_
                    _%$e161590%_
                    (let ((__tmp164365
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp164365 _%sym161579%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym161571%_)
        (let ((_%type161572161574%_ (gxc#optimizer-lookup-type _%sym161571%_)))
          (if _%type161572161574%_
              (let ((_%type161577%_ _%type161572161574%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type161577%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type161577%_ '1 '#f '#f)))
                    _%type161577%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym161567%_)
        (let ((_%table161569%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table161569%_ _%sym161567%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where161552%_ _%sym161553%_)
        (let ((_%$e161556%_ (gxc#optimizer-lookup-class _%sym161553%_)))
          (if _%$e161556%_
              ((lambda (_%g161558161560%_)
                 (let ((_%val161563%_ _%g161558161560%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val161563%_
                          'gxc#!class::t))
                       _%val161563%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val161563%_)))))
               _%$e161556%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where161552%_
                   _%sym161553%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass161550%_)
        (let ((__tmp164366
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp164366 _%klass161550%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t161547%_ _%method161548%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t161547%_)
         _%method161548%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym161545%_)
        (let ((__tmp164367
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp164367 _%sym161545%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e161427%_
                  (lambda (_%t161528%_)
                    (if (symbol? _%t161528%_)
                        (_%type-e161427%_
                         (gxc#optimizer-lookup-type _%t161528%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t161528%_
                               'gxc#!lambda::t))
                            (_%__lambda-type161429%_ _%t161528%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t161528%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type161431%_ _%t161528%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t161528%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type161433%_
                                     _%t161528%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t161528%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t161535%_ _%t161528%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t161535%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp164368
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t161535%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp164368
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t161528%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t161528%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type161428%_
                  (lambda (_%t161516%_)
                    (let ((_%t161519%_ _%t161516%_))
                      (_%__lambda-type161429%_ _%t161519%_))))
                 (_%__lambda-type161429%_
                  (lambda (_%t161504%_)
                    (let ((_%t161507%_ _%t161504%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t161507%_ '4 '#f '#f))
                          (_%type-e161427%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t161507%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t161507%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp164369
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t161507%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp164369
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type161430%_
                  (lambda (_%t161492%_)
                    (let ((_%t161495%_ _%t161492%_))
                      (_%__kw-lambda-type161431%_ _%t161495%_))))
                 (_%__kw-lambda-type161431%_
                  (lambda (_%t161480%_)
                    (let ((_%t161483%_ _%t161480%_))
                      (_%type-e161427%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t161483%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type161432%_
                  (lambda (_%t161468%_)
                    (let ((_%t161471%_ _%t161468%_))
                      (_%__kw-lambda-primary-type161433%_ _%t161471%_))))
                 (_%__kw-lambda-primary-type161433%_
                  (lambda (_%t161454%_)
                    (let ((_%t161457%_ _%t161454%_))
                      (_%type-e161427%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t161457%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1161435%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2161437%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result161439%_
                  (if _%ht1161435%_
                      (let () (declare (not safe)) (hash->list _%ht1161435%_))
                      '()))
                 (_%result161441%_
                  (if _%ht2161437%_
                      (let ((__tmp164370
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2161437%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result161439%_ __tmp164370))
                      _%result161439%_)))
            (for-each
             (lambda (_%p161444%_)
               (let* ((_%t161446%_ (cdr _%p161444%_))
                      (_%tr161448%_ (_%type-e161427%_ _%t161446%_)))
                 (set-cdr! _%p161444%_ _%tr161448%_)))
             _%result161441%_)
            (list-sort
             (lambda (_%a161451%_ _%b161452%_)
               (let ((__tmp164372 (symbol->string (car _%a161451%_)))
                     (__tmp164371 (symbol->string (car _%b161452%_))))
                 (declare (not safe))
                 (##string<? __tmp164372 __tmp164371)))
             _%result161441%_)))))))
