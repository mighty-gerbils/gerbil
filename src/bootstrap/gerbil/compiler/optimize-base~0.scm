(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1768863414)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp164256 (list)) (__tmp164255 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp164256
         '(type classes ssxi methods)
         __tmp164255
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args164227%_
        (apply make-instance gxc#optimizer-info::t _%$args164227%_)))
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
      (lambda (_%self164214%_)
        (let ((_%self164217%_ _%self164214%_))
          (if (let ((__tmp164257
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self164217%_))))
                (declare (not safe))
                (##fx< '4 __tmp164257))
              (begin
                (let ((__tmp164258
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164217%_
                   __tmp164258
                   '1
                   '#f
                   '#f))
                (let ((__tmp164259
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164217%_
                   __tmp164259
                   '2
                   '#f
                   '#f))
                (let ((__tmp164260
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164217%_
                   __tmp164260
                   '3
                   '#f
                   '#f))
                (let ((__tmp164261
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164217%_
                   __tmp164261
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp164262
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self164217%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self164217%_
                       '4
                       __tmp164262))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp164264 (list)) (__tmp164263 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp164264
         '(id)
         __tmp164263
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args164089%_
        (apply make-instance gxc#!type::t _%$args164089%_)))
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
      (let ((__tmp164266 (list gxc#!type::t))
            (__tmp164265 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp164266
         '()
         __tmp164265
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args164086%_
        (apply make-instance gxc#!abort::t _%$args164086%_)))
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
      (let ((__tmp164268 (list gxc#!type::t))
            (__tmp164267 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp164268
         '()
         __tmp164267
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args164083%_
        (apply make-instance gxc#!alias::t _%$args164083%_)))
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
      (let ((__tmp164270 (list)) (__tmp164269 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp164270
         '(return effect arguments unchecked origin)
         __tmp164269
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args164080%_
        (apply make-instance gxc#!signature::t _%$args164080%_)))
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
      (let ((__tmp164272 (list gxc#!type::t))
            (__tmp164271 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp164272
         '(signature)
         __tmp164271
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
      (lambda (_%id164059%_ _%signature164060%_)
        (if ((lambda (_%$obj164063%_)
               (or (not _%$obj164063%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj164063%_
                      'gxc#!signature::t))))
             _%signature164060%_)
            (let ((_%signature164070%_ _%signature164060%_))
              (gxc#__make-!procedure _%id164059%_ _%signature164070%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature164060%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id164045%_ _%signature164047%_)
        (let ((_%signature164050%_ _%signature164047%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id164045%_ _%signature164050%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj164014%_ _%signature164015%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj164014%_ 'gxc#!procedure::t))
            (let ((_%$obj164019%_ _%$obj164014%_))
              (if ((lambda (_%$obj164028%_)
                     (or (not _%$obj164028%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj164028%_
                            'gxc#!signature::t))))
                   _%signature164015%_)
                  (let ((_%signature164035%_ _%signature164015%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj164019%_
                     _%signature164035%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature164015%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj164014%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj163991%_ _%signature163993%_)
        (let* ((_%$obj163997%_ _%$obj163991%_)
               (_%signature164005%_ _%signature163993%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj163997%_
           _%signature164005%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp164274 (list gxc#!type::t))
            (__tmp164273 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp164274
         '(class)
         __tmp164273
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args163988%_
        (apply make-instance gxc#!class-meta::t _%$args163988%_)))
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
      (let ((__tmp164276 (list gxc#!type::t))
            (__tmp164275 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp164276
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp164275
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args163985%_
        (apply make-instance gxc#!class::t _%$args163985%_)))
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
      (let ((__tmp164278 (list gxc#!procedure::t))
            (__tmp164277 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp164278
         '()
         __tmp164277
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args163982%_
        (apply make-instance gxc#!predicate::t _%$args163982%_)))
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
      (let ((__tmp164280 (list gxc#!procedure::t))
            (__tmp164279 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp164280
         '()
         __tmp164279
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args163979%_
        (apply make-instance gxc#!constructor::t _%$args163979%_)))
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
      (let ((__tmp164282 (list gxc#!procedure::t))
            (__tmp164281 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp164282
         '(slot checked?)
         __tmp164281
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args163976%_
        (apply make-instance gxc#!accessor::t _%$args163976%_)))
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
      (let ((__tmp164284 (list gxc#!procedure::t))
            (__tmp164283 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp164284
         '(slot checked?)
         __tmp164283
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args163973%_
        (apply make-instance gxc#!mutator::t _%$args163973%_)))
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
      (let ((__tmp164286 (list gxc#!type::t))
            (__tmp164285 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp164286
         '(methods)
         __tmp164285
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args163970%_
        (apply make-instance gxc#!interface::t _%$args163970%_)))
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
      (let ((__tmp164288 (list gxc#!procedure::t))
            (__tmp164287 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp164288
         '(arity dispatch inline inline-typedecl)
         __tmp164287
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args163967%_
        (apply make-instance gxc#!lambda::t _%$args163967%_)))
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
      (let ((__tmp164290 (list gxc#!procedure::t))
            (__tmp164289 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp164290
         '(clauses)
         __tmp164289
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args163964%_
        (apply make-instance gxc#!case-lambda::t _%$args163964%_)))
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
      (let ((__tmp164292 (list gxc#!procedure::t))
            (__tmp164291 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp164292
         '(table dispatch)
         __tmp164291
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args163961%_
        (apply make-instance gxc#!kw-lambda::t _%$args163961%_)))
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
      (let ((__tmp164294 (list gxc#!procedure::t))
            (__tmp164293 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp164294
         '(keys main)
         __tmp164293
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args163958%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args163958%_)))
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
      (let ((__tmp164295 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp164295
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args163955%_
        (apply make-instance gxc#!primitive::t _%$args163955%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp164297 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp164296 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp164297
         '()
         __tmp164296
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args163952%_
        (apply make-instance gxc#!primitive-predicate::t _%$args163952%_)))
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
      (let ((__tmp164299 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp164298 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp164299
         '()
         __tmp164298
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args163949%_
        (apply make-instance gxc#!primitive-lambda::t _%$args163949%_)))
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
      (let ((__tmp164301 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp164300 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp164301
         '()
         __tmp164300
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args163946%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args163946%_)))
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
      (lambda (_%self163933%_)
        (let ((_%self163936%_ _%self163933%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self163936%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self163796%_ _%klass163797%_)
        (let ((_%self163800%_ _%self163796%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self163800%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163800%_
             _%klass163797%_
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
      (lambda (_%self163486%_
               _%id163487%_
               _%super163488%_
               _%slots163489%_
               _%ctor-method163490%_
               _%struct?163491%_
               _%final?163492%_
               _%system?163493%_
               _%metaclass163494%_)
        (let ((_%self163497%_ _%self163486%_))
          (let _%lp163508%_ ((_%rest163510%_ _%super163488%_))
            (let* ((_%rest163511163519%_ _%rest163510%_)
                   (_%else163513163527%_ (lambda () '#!void))
                   (_%K163515163533%_
                    (lambda (_%rest163530%_ _%super-id163531%_)
                      (if (let ((__tmp164302
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id163487%_ '()))
                                  _%super-id163531%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp164302 '8 '#f '#f))
                          (let ((__tmp164303
                                 (cons '!class (cons _%id163487%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp164303
                             _%super-id163531%_))
                          '#!void)
                      (_%lp163508%_ _%rest163530%_))))
              (if (pair? _%rest163511163519%_)
                  (let ((_%hd163516163536%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest163511163519%_)))
                        (_%tl163517163538%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest163511163519%_))))
                    (let* ((_%super-id163541%_ _%hd163516163536%_)
                           (_%rest163543%_ _%tl163517163538%_))
                      (_%K163515163533%_ _%rest163543%_ _%super-id163541%_)))
                  '#!void)))
          (let* ((_%ctor-method163594%_
                  (let ((_%$e163545%_ _%ctor-method163490%_))
                    (if _%$e163545%_
                        _%$e163545%_
                        (let _%lp163548%_ ((_%rest163550%_ _%super163488%_)
                                           (_%method163551%_ '#f))
                          (let* ((_%rest163552163560%_ _%rest163550%_)
                                 (_%else163554163568%_
                                  (lambda () _%method163551%_))
                                 (_%K163556163582%_
                                  (lambda (_%rest163571%_ _%super-id163572%_)
                                    (let* ((_%klass163574%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id163487%_ '()))
                                             _%super-id163572%_))
                                           (_%$e163576%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass163574%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e163576%_
                                          ((lambda (_%ctor-method163579%_)
                                             (if _%method163551%_
                                                 (if (eq? _%ctor-method163579%_
                                                          _%method163551%_)
                                                     (_%lp163548%_
                                                      _%rest163571%_
                                                      _%ctor-method163579%_)
                                                     (let ((__tmp164304
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id163487%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp164304
                _%method163551%_
                _%ctor-method163579%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp163548%_
                                                  _%rest163571%_
                                                  _%ctor-method163579%_)))
                                           _%$e163576%_)
                                          (_%lp163548%_
                                           _%rest163571%_
                                           _%method163551%_))))))
                            (if (pair? _%rest163552163560%_)
                                (let ((_%hd163557163585%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest163552163560%_)))
                                      (_%tl163558163587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest163552163560%_))))
                                  (let* ((_%super-id163590%_
                                          _%hd163557163585%_)
                                         (_%rest163592%_ _%tl163558163587%_))
                                    (_%K163556163582%_
                                     _%rest163592%_
                                     _%super-id163590%_)))
                                (_%else163554163568%_)))))))
                 (_g164305_
                  (let ((__tmp164309
                         (lambda (_%klass-id163596%_)
                           (cons _%klass-id163596%_
                                 (let ((__tmp164310
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id163487%_ '()))
                                         _%klass-id163596%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp164310
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp164307
                         (lambda (_%klass-id163598%_)
                           (let ((__tmp164308
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id163487%_ '()))
                                   _%klass-id163598%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp164308
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp164309
                     __tmp164307
                     eq?
                     identity
                     '()
                     _%super163488%_))))
            (begin
              (let ((_g164306_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g164305_)
                           (##values-length _g164305_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g164306_ 2)))
                    (error "Context expects 2 values" _g164306_)))
              (let ((_%precedence-list163600%_
                     (let () (declare (not safe)) (##values-ref _g164305_ 0)))
                    (_%base-struct163601%_
                     (let () (declare (not safe)) (##values-ref _g164305_ 1))))
                (let* ((_%precedence-list163645%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id163487%_ '(t object class)))
                            _%precedence-list163600%_
                            (if (memq 'object::t _%precedence-list163600%_)
                                _%precedence-list163600%_
                                (if _%system?163493%_
                                    (if (memq 't::t _%precedence-list163600%_)
                                        _%precedence-list163600%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list163600%_
                                           '(t::t))))
                                    (let _%loop163607%_ ((_%tail163609%_
                                                          _%precedence-list163600%_)
                                                         (_%head163610%_ '()))
                                      (let* ((_%tail163611163619%_
                                              _%tail163609%_)
                                             (_%else163613163627%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head163610%_))))
                                             (_%K163615163633%_
                                              (lambda (_%rest163630%_
                                                       _%hd163631%_)
                                                (if (eq? _%hd163631%_ 't::t)
                                                    (let ((__tmp164311
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail163609%_)))
              (declare (not safe))
              (__foldl1 cons __tmp164311 _%head163610%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop163607%_
                                                     _%rest163630%_
                                                     (cons _%hd163631%_
                                                           _%head163610%_))))))
                                        (if (pair? _%tail163611163619%_)
                                            (let ((_%hd163616163636%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail163611163619%_)))
                                                  (_%tl163617163638%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail163611163619%_))))
                                              (let* ((_%hd163641%_
                                                      _%hd163616163636%_)
                                                     (_%rest163643%_
                                                      _%tl163617163638%_))
                                                (_%K163615163633%_
                                                 _%rest163643%_
                                                 _%hd163641%_)))
                                            (_%else163613163627%_))))))))
                       (_%fields163647%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id163487%_ '()))
                         _%base-struct163601%_
                         _%precedence-list163645%_
                         _%slots163489%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163497%_
                     _%id163487%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163497%_
                     _%super163488%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163497%_
                     _%precedence-list163645%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163497%_
                     _%slots163489%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163497%_
                     _%fields163647%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163497%_
                     _%ctor-method163594%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163497%_
                     _%struct?163491%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163497%_
                     _%final?163492%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163497%_
                     _%metaclass163494%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self163650%_
               _%id163651%_
               _%super163652%_
               _%precedence-list163653%_
               _%slots163654%_
               _%fields163655%_
               _%constructor163656%_
               _%struct?163657%_
               _%final?163658%_
               _%system?163659%_
               _%metaclass163660%_
               _%methods163661%_)
        (let ((_%self163664%_ _%self163650%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163664%_
             _%id163651%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163664%_
             _%super163652%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163664%_
             _%precedence-list163653%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163664%_
             _%slots163654%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163664%_
             _%fields163655%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163664%_
             _%constructor163656%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163664%_
             _%struct?163657%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163664%_
             _%final?163658%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163664%_
             _%metaclass163660%_
             '10
             '#f
             '#f))
          (if _%methods163661%_
              (let ((__tmp164312
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods163661%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self163664%_
                 __tmp164312
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g164313_
        (let ((_g164314_ (let () (declare (not safe)) (##length _g164313_))))
          (cond ((let () (declare (not safe)) (##fx= _g164314_ 9))
                 (apply gxc#!class:::init!__0 _g164313_))
                ((let () (declare (not safe)) (##fx= _g164314_ 12))
                 (apply gxc#!class:::init!__1 _g164313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g164313_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where163338%_
               _%base-struct163339%_
               _%precedence-list163340%_
               _%direct-slots163341%_)
        (let* ((_%base-fields163343%_
                (if _%base-struct163339%_
                    (let ((__tmp164315
                           (gxc#optimizer-resolve-class
                            _%where163338%_
                            _%base-struct163339%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp164315 '5 '#f '#f))
                    '()))
               (_%r-fields163345%_ (reverse _%base-fields163343%_))
               (_%seen-slots163353%_
                (let ((_%tab163347%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g163348163350%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab163347%_ _%g163348163350%_ '#t)))
                   _%base-fields163343%_)
                  _%tab163347%_))
               (_%process-slot163357%_
                (lambda (_%slot163355%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots163353%_ _%slot163355%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots163353%_
                           _%slot163355%_
                           '#t))
                        (set! _%r-fields163345%_
                              (cons _%slot163355%_ _%r-fields163345%_)))))))
          (for-each
           (lambda (_%mixin163360%_)
             (let ((_%klass163362%_
                    (gxc#optimizer-resolve-class
                     _%where163338%_
                     _%mixin163360%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass163362%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot163357%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass163362%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list163340%_)
          (for-each _%process-slot163357%_ _%direct-slots163341%_)
          (let () (declare (not safe)) (##reverse _%r-fields163345%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass163297%_ _%slot163298%_)
        (let _%lp163300%_ ((_%rest163302%_
                            (##structure-ref
                             _%klass163297%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset163303%_ '1))
          (let* ((_%rest163304163312%_ _%rest163302%_)
                 (_%else163306163320%_
                  (lambda ()
                    (let ((__tmp164317
                           (##structure-ref
                            _%klass163297%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp164316
                           (##structure-ref
                            _%klass163297%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp164317
                       __tmp164316
                       _%slot163298%_))))
                 (_%K163308163326%_
                  (lambda (_%rest163323%_ _%s163324%_)
                    (if (eq? _%s163324%_ _%slot163298%_)
                        _%offset163303%_
                        (_%lp163300%_
                         _%rest163323%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset163303%_ '1)))))))
            (if (pair? _%rest163304163312%_)
                (let ((_%hd163309163329%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest163304163312%_)))
                      (_%tl163310163331%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest163304163312%_))))
                  (let* ((_%s163334%_ _%hd163309163329%_)
                         (_%rest163336%_ _%tl163310163331%_))
                    (_%K163308163326%_ _%rest163336%_ _%s163334%_)))
                (_%else163306163320%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass163255%_ _%slot163256%_)
        (if (gxc#!class-struct-slot? _%klass163255%_ _%slot163256%_)
            _%klass163255%_
            (let _%lp163258%_ ((_%rest163260%_
                                (##structure-ref
                                 _%klass163255%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest163261163269%_ _%rest163260%_)
                     (_%else163263163277%_ (lambda () '#f))
                     (_%K163265163285%_
                      (lambda (_%rest163280%_ _%super163281%_)
                        (let ((_%super-class163283%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass163255%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot163256%_ '())))
                                _%super163281%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class163283%_
                               _%slot163256%_)
                              _%super-class163283%_
                              (_%lp163258%_ _%rest163280%_))))))
                (if (pair? _%rest163261163269%_)
                    (let ((_%hd163266163288%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest163261163269%_)))
                          (_%tl163267163290%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest163261163269%_))))
                      (let* ((_%super163293%_ _%hd163266163288%_)
                             (_%rest163295%_ _%tl163267163290%_))
                        (_%K163265163285%_ _%rest163295%_ _%super163293%_)))
                    (_%else163263163277%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass163252%_ _%slot163253%_)
        (if (##structure-ref _%klass163252%_ '7 gxc#!class::t '#f)
            (memq _%slot163253%_
                  (##structure-ref _%klass163252%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self163237%_ _%id163238%_)
        (let ((_%self163241%_ _%self163237%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163241%_
             _%id163238%_
             '1
             '#f
             '#f))
          (let ((__tmp164318
                 (let ((__obj164250
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
                      __obj164250
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164250
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164250
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj164250)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163241%_
             __tmp164318
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self163100%_ _%id163101%_)
        (let ((_%self163104%_ _%self163100%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163104%_
             _%id163101%_
             '1
             '#f
             '#f))
          (let ((__tmp164319
                 (let ((__obj164251
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
                      __obj164251
                      _%id163101%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164251
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj164251)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163104%_
             __tmp164319
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
      (lambda (_%self162961%_ _%id162962%_ _%slot162963%_ _%checked?162964%_)
        (let ((_%self162967%_ _%self162961%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162967%_
             _%id162962%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162967%_
             _%slot162963%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162967%_
             _%checked?162964%_
             '4
             '#f
             '#f))
          (let ((__tmp164320
                 (let ((__obj164252
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
                     (##unchecked-structure-set! __obj164252 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164252
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp164321 (cons _%id162962%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164252
                      __tmp164321
                      '3
                      '#f
                      '#f))
                   __obj164252)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162967%_
             __tmp164320
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self162822%_ _%id162823%_ _%slot162824%_ _%checked?162825%_)
        (let ((_%self162828%_ _%self162822%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162828%_
             _%id162823%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162828%_
             _%slot162824%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162828%_
             _%checked?162825%_
             '4
             '#f
             '#f))
          (let ((__tmp164322
                 (let ((__obj164253
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
                      __obj164253
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164253
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp164323 (cons _%id162823%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164253
                      __tmp164323
                      '3
                      '#f
                      '#f))
                   __obj164253)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162828%_
             __tmp164322
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords162665%_
               _%signature162662162666%_
               _%self162668%_
               _%arity162669%_
               _%dispatch162670%_)
        (let* ((_%signature162672%_
                (if (eq? _%signature162662162666%_ absent-value)
                    '#f
                    _%signature162662162666%_))
               (_%self162675%_ _%self162668%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162675%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162675%_
             _%arity162669%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162675%_
             _%dispatch162670%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162675%_
             _%signature162672%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords162690%_ . _%args162691%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords162690%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162690%_
                  'signature:
                  absent-value))
               _%args162691%_)))
    (define gxc#!lambda:::init!
      (lambda _%args162663162697%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args162663162697%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords162505%_
               _%signature162502162506%_
               _%self162508%_
               _%clauses162509%_)
        (let* ((_%signature162511%_
                (if (eq? _%signature162502162506%_ absent-value)
                    '#f
                    _%signature162502162506%_))
               (_%self162514%_ _%self162508%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162514%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162514%_
             _%signature162511%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162514%_
             _%clauses162509%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords162529%_ . _%args162530%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords162529%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162529%_
                  'signature:
                  absent-value))
               _%args162530%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args162503162536%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args162503162536%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self162363%_ _%tab162364%_ _%dispatch162365%_)
        (let ((_%self162368%_ _%self162363%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162368%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162368%_
             _%tab162364%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162368%_
             _%dispatch162365%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self162225%_ _%keys162226%_ _%main162227%_)
        (let ((_%self162230%_ _%self162225%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162230%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162230%_
             _%keys162226%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162230%_
             _%main162227%_
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
      (lambda (_%self161844%_ _%id161845%_)
        (let ((_%self161848%_ _%self161844%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self161848%_
             _%id161845%_
             '1
             '#f
             '#f))
          (let ((__tmp164324
                 (let ((__obj164254
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
                      __obj164254
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164254
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164254
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj164254)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self161848%_
             __tmp164324
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
      (lambda (_%klass161713%_)
        (let ((_%$e161715%_
               (##structure-ref _%klass161713%_ '11 gxc#!class::t '#f)))
          (if _%$e161715%_
              _%$e161715%_
              (let ((_%tab161719%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass161713%_
                 _%tab161719%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab161719%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass161704%_ _%method161705%_)
        (let ((_%tab161706161708%_
               (##structure-ref _%klass161704%_ '11 gxc#!class::t '#f)))
          (if _%tab161706161708%_
              (let ((_%tab161711%_ _%tab161706161708%_))
                (declare (not safe))
                (hash-get _%tab161711%_ _%method161705%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a161692%_ _%type-b161693%_)
        (if _%type-a161692%_
            (if _%type-b161693%_
                (let ((_%$e161695%_ (eq? _%type-a161692%_ _%type-b161693%_)))
                  (if _%$e161695%_
                      _%$e161695%_
                      (let ((_%$e161698%_
                             (eq? (##structure-ref
                                   _%type-b161693%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e161698%_
                            _%$e161698%_
                            (let ((_%$e161701%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a161692%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b161693%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e161701%_
                                  _%$e161701%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a161692%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b161693%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a161692%_
                                           _%type-b161693%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a161643%_ _%klass-b161644%_)
        (let ((_%$e161646%_
               (eq? (##structure-ref _%klass-a161643%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b161644%_ '1 gxc#!type::t '#f))))
          (if _%$e161646%_
              _%$e161646%_
              (let ((_%klass-id-b161649%_
                     (##structure-ref _%klass-b161644%_ '1 gxc#!type::t '#f))
                    (_%precedence-list161650%_
                     (##structure-ref _%klass-a161643%_ '3 gxc#!class::t '#f)))
                (let _%loop161652%_ ((_%rest161654%_
                                      _%precedence-list161650%_))
                  (let* ((_%rest161655161663%_ _%rest161654%_)
                         (_%else161657161671%_ (lambda () '#f))
                         (_%K161659161680%_
                          (lambda (_%rest161674%_ _%klass-name161675%_)
                            (let ((_%$e161677%_
                                   (eq? (let ((__tmp164325
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a161643%_
                                                            (cons _%klass-b161644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name161675%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp164325
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b161649%_)))
                              (if _%$e161677%_
                                  _%$e161677%_
                                  (_%loop161652%_ _%rest161674%_))))))
                    (if (pair? _%rest161655161663%_)
                        (let ((_%hd161660161683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest161655161663%_)))
                              (_%tl161661161685%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest161655161663%_))))
                          (let* ((_%klass-name161688%_ _%hd161660161683%_)
                                 (_%rest161690%_ _%tl161661161685%_))
                            (_%K161659161680%_
                             _%rest161690%_
                             _%klass-name161688%_)))
                        (_%else161657161671%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type161641%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161641%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type161641%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc161630%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc161630%_ 'gxc#!procedure::t))
            (let ((_%proc161633%_ _%proc161630%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc161633%_ '2 '#f '#f))
                  (let ((__tmp164326
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc161633%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp164326 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc161630%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym161612%_ _%type161613%_ _%local?161614%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161613%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym161612%_
                     _%type161613%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym161612%_ '" " _%type161613%_))
        (let ((_%table161616%_
               (if _%local?161614%_
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
          (hash-put! _%table161616%_ _%sym161612%_ _%type161613%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym161621%_ _%type161622%_)
        (let ((_%local?161624%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym161621%_
           _%type161622%_
           _%local?161624%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g164327_
        (let ((_g164328_ (let () (declare (not safe)) (##length _g164327_))))
          (cond ((let () (declare (not safe)) (##fx= _g164328_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g164327_))
                ((let () (declare (not safe)) (##fx= _g164328_ 3))
                 (apply gxc#optimizer-declare-type!__% _g164327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g164327_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym161606%_ _%type161607%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161607%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym161606%_
                     _%type161607%_)))
        (let ((_%table161609%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp164329
                 (let () (declare (not safe)) (struct->list _%type161607%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym161606%_ '" " __tmp164329))
          (let ()
            (declare (not safe))
            (hash-put! _%table161609%_ _%sym161606%_ _%type161607%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table161609%_ _%type161607%_ _%sym161606%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym161601%_ _%type161602%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161602%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym161601%_
                     _%type161602%_)))
        (let ((_%table161604%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table161604%_ _%sym161601%_))
              '#!void
              (begin
                (let ((__tmp164330
                       (let ()
                         (declare (not safe))
                         (struct->list _%type161602%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym161601%_
                   '" "
                   __tmp164330))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table161604%_ _%sym161601%_ _%type161602%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table161604%_
                   _%type161602%_
                   _%sym161601%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym161599%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym161599%_))
        (let ((__tmp164331
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp164331 _%sym161599%_))
        (let ((__tmp164332
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp164332 _%sym161599%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t161567%_
               _%method161568%_
               _%sym161569%_
               _%rebind?161570%_)
        (let ((__tmp164333
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp164333 _%sym161569%_ '#t))
        (let ((_%klass161572%_ (gxc#optimizer-lookup-class _%type-t161567%_)))
          (if _%klass161572%_
              (let* ((_%vtab161574%_ (gxc#!class-method-table _%klass161572%_))
                     (_%$e161576%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab161574%_ _%method161568%_))))
                (if _%$e161576%_
                    ((lambda (_%existing161579%_)
                       (if _%rebind?161570%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t161567%_
                                '" "
                                _%method161568%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab161574%_
                                _%method161568%_
                                _%sym161569%_)))
                           (if (eq? _%existing161579%_ _%sym161569%_)
                               '#!void
                               (let ((__tmp164334
                                      (cons 'bind-method!
                                            (cons _%type-t161567%_
                                                  (cons _%method161568%_
                                                        (cons _%sym161569%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp164334
                                  _%method161568%_)))))
                     _%$e161576%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t161567%_
                         '" "
                         _%method161568%_
                         '" => "
                         _%sym161569%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab161574%_
                         _%method161568%_
                         _%sym161569%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t161567%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t161588%_ _%method161589%_ _%sym161590%_)
        (let ((_%rebind?161592%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t161588%_
           _%method161589%_
           _%sym161590%_
           _%rebind?161592%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g164335_
        (let ((_g164336_ (let () (declare (not safe)) (##length _g164335_))))
          (cond ((let () (declare (not safe)) (##fx= _g164336_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g164335_))
                ((let () (declare (not safe)) (##fx= _g164336_ 4))
                 (apply gxc#optimizer-declare-method!__% _g164335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g164335_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym161552%_)
        (let ((_%$e161554%_
               (let ((__tmp164337
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym161552%_ __tmp164337))))
          (if _%$e161554%_
              _%$e161554%_
              (let ((_%$e161563%_
                     (let ((_%ht161556161558%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht161556161558%_
                           (let ((_%ht161561%_ _%ht161556161558%_))
                             (declare (not safe))
                             (hash-get _%ht161561%_ _%sym161552%_))
                           '#f))))
                (if _%$e161563%_
                    _%$e161563%_
                    (let ((__tmp164338
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp164338 _%sym161552%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym161544%_)
        (let ((_%type161545161547%_ (gxc#optimizer-lookup-type _%sym161544%_)))
          (if _%type161545161547%_
              (let ((_%type161550%_ _%type161545161547%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type161550%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type161550%_ '1 '#f '#f)))
                    _%type161550%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym161540%_)
        (let ((_%table161542%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table161542%_ _%sym161540%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where161525%_ _%sym161526%_)
        (let ((_%$e161529%_ (gxc#optimizer-lookup-class _%sym161526%_)))
          (if _%$e161529%_
              ((lambda (_%g161531161533%_)
                 (let ((_%val161536%_ _%g161531161533%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val161536%_
                          'gxc#!class::t))
                       _%val161536%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val161536%_)))))
               _%$e161529%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where161525%_
                   _%sym161526%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass161523%_)
        (let ((__tmp164339
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp164339 _%klass161523%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t161520%_ _%method161521%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t161520%_)
         _%method161521%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym161518%_)
        (let ((__tmp164340
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp164340 _%sym161518%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e161400%_
                  (lambda (_%t161501%_)
                    (if (symbol? _%t161501%_)
                        (_%type-e161400%_
                         (gxc#optimizer-lookup-type _%t161501%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t161501%_
                               'gxc#!lambda::t))
                            (_%__lambda-type161402%_ _%t161501%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t161501%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type161404%_ _%t161501%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t161501%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type161406%_
                                     _%t161501%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t161501%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t161508%_ _%t161501%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t161508%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp164341
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t161508%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp164341
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t161501%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t161501%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type161401%_
                  (lambda (_%t161489%_)
                    (let ((_%t161492%_ _%t161489%_))
                      (_%__lambda-type161402%_ _%t161492%_))))
                 (_%__lambda-type161402%_
                  (lambda (_%t161477%_)
                    (let ((_%t161480%_ _%t161477%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t161480%_ '4 '#f '#f))
                          (_%type-e161400%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t161480%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t161480%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp164342
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t161480%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp164342
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type161403%_
                  (lambda (_%t161465%_)
                    (let ((_%t161468%_ _%t161465%_))
                      (_%__kw-lambda-type161404%_ _%t161468%_))))
                 (_%__kw-lambda-type161404%_
                  (lambda (_%t161453%_)
                    (let ((_%t161456%_ _%t161453%_))
                      (_%type-e161400%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t161456%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type161405%_
                  (lambda (_%t161441%_)
                    (let ((_%t161444%_ _%t161441%_))
                      (_%__kw-lambda-primary-type161406%_ _%t161444%_))))
                 (_%__kw-lambda-primary-type161406%_
                  (lambda (_%t161427%_)
                    (let ((_%t161430%_ _%t161427%_))
                      (_%type-e161400%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t161430%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1161408%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2161410%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result161412%_
                  (if _%ht1161408%_
                      (let () (declare (not safe)) (hash->list _%ht1161408%_))
                      '()))
                 (_%result161414%_
                  (if _%ht2161410%_
                      (let ((__tmp164343
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2161410%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result161412%_ __tmp164343))
                      _%result161412%_)))
            (for-each
             (lambda (_%p161417%_)
               (let* ((_%t161419%_ (cdr _%p161417%_))
                      (_%tr161421%_ (_%type-e161400%_ _%t161419%_)))
                 (set-cdr! _%p161417%_ _%tr161421%_)))
             _%result161414%_)
            (list-sort
             (lambda (_%a161424%_ _%b161425%_)
               (let ((__tmp164345 (symbol->string (car _%a161424%_)))
                     (__tmp164344 (symbol->string (car _%b161425%_))))
                 (declare (not safe))
                 (##string<? __tmp164345 __tmp164344)))
             _%result161414%_)))))))
