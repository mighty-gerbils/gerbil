(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1768865825)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp164298 (list)) (__tmp164297 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp164298
         '(type classes ssxi methods)
         __tmp164297
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args164269%_
        (apply make-instance gxc#optimizer-info::t _%$args164269%_)))
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
      (lambda (_%self164256%_)
        (let ((_%self164259%_ _%self164256%_))
          (if (let ((__tmp164299
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self164259%_))))
                (declare (not safe))
                (##fx< '4 __tmp164299))
              (begin
                (let ((__tmp164300
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164259%_
                   __tmp164300
                   '1
                   '#f
                   '#f))
                (let ((__tmp164301
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164259%_
                   __tmp164301
                   '2
                   '#f
                   '#f))
                (let ((__tmp164302
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164259%_
                   __tmp164302
                   '3
                   '#f
                   '#f))
                (let ((__tmp164303
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self164259%_
                   __tmp164303
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp164304
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self164259%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self164259%_
                       '4
                       __tmp164304))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp164306 (list)) (__tmp164305 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp164306
         '(id)
         __tmp164305
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args164131%_
        (apply make-instance gxc#!type::t _%$args164131%_)))
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
      (let ((__tmp164308 (list gxc#!type::t))
            (__tmp164307 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp164308
         '()
         __tmp164307
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args164128%_
        (apply make-instance gxc#!abort::t _%$args164128%_)))
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
      (let ((__tmp164310 (list gxc#!type::t))
            (__tmp164309 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp164310
         '()
         __tmp164309
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args164125%_
        (apply make-instance gxc#!alias::t _%$args164125%_)))
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
      (let ((__tmp164312 (list)) (__tmp164311 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp164312
         '(return effect arguments unchecked origin)
         __tmp164311
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args164122%_
        (apply make-instance gxc#!signature::t _%$args164122%_)))
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
      (let ((__tmp164314 (list gxc#!type::t))
            (__tmp164313 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp164314
         '(signature)
         __tmp164313
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
      (lambda (_%id164101%_ _%signature164102%_)
        (if ((lambda (_%$obj164105%_)
               (or (not _%$obj164105%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj164105%_
                      'gxc#!signature::t))))
             _%signature164102%_)
            (let ((_%signature164112%_ _%signature164102%_))
              (gxc#__make-!procedure _%id164101%_ _%signature164112%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature164102%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id164087%_ _%signature164089%_)
        (let ((_%signature164092%_ _%signature164089%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id164087%_ _%signature164092%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj164056%_ _%signature164057%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj164056%_ 'gxc#!procedure::t))
            (let ((_%$obj164061%_ _%$obj164056%_))
              (if ((lambda (_%$obj164070%_)
                     (or (not _%$obj164070%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj164070%_
                            'gxc#!signature::t))))
                   _%signature164057%_)
                  (let ((_%signature164077%_ _%signature164057%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj164061%_
                     _%signature164077%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature164057%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj164056%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj164033%_ _%signature164035%_)
        (let* ((_%$obj164039%_ _%$obj164033%_)
               (_%signature164047%_ _%signature164035%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj164039%_
           _%signature164047%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp164316 (list gxc#!type::t))
            (__tmp164315 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp164316
         '(class)
         __tmp164315
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args164030%_
        (apply make-instance gxc#!class-meta::t _%$args164030%_)))
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
      (let ((__tmp164318 (list gxc#!type::t))
            (__tmp164317 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp164318
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp164317
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args164027%_
        (apply make-instance gxc#!class::t _%$args164027%_)))
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
      (let ((__tmp164320 (list gxc#!procedure::t))
            (__tmp164319 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp164320
         '()
         __tmp164319
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args164024%_
        (apply make-instance gxc#!predicate::t _%$args164024%_)))
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
      (let ((__tmp164322 (list gxc#!procedure::t))
            (__tmp164321 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp164322
         '()
         __tmp164321
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args164021%_
        (apply make-instance gxc#!constructor::t _%$args164021%_)))
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
      (let ((__tmp164324 (list gxc#!procedure::t))
            (__tmp164323 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp164324
         '(slot checked?)
         __tmp164323
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args164018%_
        (apply make-instance gxc#!accessor::t _%$args164018%_)))
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
      (let ((__tmp164326 (list gxc#!procedure::t))
            (__tmp164325 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp164326
         '(slot checked?)
         __tmp164325
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args164015%_
        (apply make-instance gxc#!mutator::t _%$args164015%_)))
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
      (let ((__tmp164328 (list gxc#!type::t))
            (__tmp164327 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp164328
         '(methods)
         __tmp164327
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args164012%_
        (apply make-instance gxc#!interface::t _%$args164012%_)))
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
      (let ((__tmp164330 (list gxc#!procedure::t))
            (__tmp164329 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp164330
         '(arity dispatch inline inline-typedecl)
         __tmp164329
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args164009%_
        (apply make-instance gxc#!lambda::t _%$args164009%_)))
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
      (let ((__tmp164332 (list gxc#!procedure::t))
            (__tmp164331 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp164332
         '(clauses)
         __tmp164331
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args164006%_
        (apply make-instance gxc#!case-lambda::t _%$args164006%_)))
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
      (let ((__tmp164334 (list gxc#!procedure::t))
            (__tmp164333 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp164334
         '(table dispatch)
         __tmp164333
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args164003%_
        (apply make-instance gxc#!kw-lambda::t _%$args164003%_)))
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
      (let ((__tmp164336 (list gxc#!procedure::t))
            (__tmp164335 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp164336
         '(keys main)
         __tmp164335
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args164000%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args164000%_)))
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
      (let ((__tmp164337 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp164337
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args163997%_
        (apply make-instance gxc#!primitive::t _%$args163997%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp164339 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp164338 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp164339
         '()
         __tmp164338
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args163994%_
        (apply make-instance gxc#!primitive-predicate::t _%$args163994%_)))
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
      (let ((__tmp164341 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp164340 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp164341
         '()
         __tmp164340
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args163991%_
        (apply make-instance gxc#!primitive-lambda::t _%$args163991%_)))
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
      (let ((__tmp164343 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp164342 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp164343
         '()
         __tmp164342
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args163988%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args163988%_)))
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
      (lambda (_%self163975%_)
        (let ((_%self163978%_ _%self163975%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self163978%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self163838%_ _%klass163839%_)
        (let ((_%self163842%_ _%self163838%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self163842%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163842%_
             _%klass163839%_
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
      (lambda (_%self163528%_
               _%id163529%_
               _%super163530%_
               _%slots163531%_
               _%ctor-method163532%_
               _%struct?163533%_
               _%final?163534%_
               _%system?163535%_
               _%metaclass163536%_)
        (let ((_%self163539%_ _%self163528%_))
          (let _%lp163550%_ ((_%rest163552%_ _%super163530%_))
            (let* ((_%rest163553163561%_ _%rest163552%_)
                   (_%else163555163569%_ (lambda () '#!void))
                   (_%K163557163575%_
                    (lambda (_%rest163572%_ _%super-id163573%_)
                      (if (let ((__tmp164344
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id163529%_ '()))
                                  _%super-id163573%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp164344 '8 '#f '#f))
                          (let ((__tmp164345
                                 (cons '!class (cons _%id163529%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp164345
                             _%super-id163573%_))
                          '#!void)
                      (_%lp163550%_ _%rest163572%_))))
              (if (pair? _%rest163553163561%_)
                  (let ((_%hd163558163578%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest163553163561%_)))
                        (_%tl163559163580%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest163553163561%_))))
                    (let* ((_%super-id163583%_ _%hd163558163578%_)
                           (_%rest163585%_ _%tl163559163580%_))
                      (_%K163557163575%_ _%rest163585%_ _%super-id163583%_)))
                  '#!void)))
          (let* ((_%ctor-method163636%_
                  (let ((_%$e163587%_ _%ctor-method163532%_))
                    (if _%$e163587%_
                        _%$e163587%_
                        (let _%lp163590%_ ((_%rest163592%_ _%super163530%_)
                                           (_%method163593%_ '#f))
                          (let* ((_%rest163594163602%_ _%rest163592%_)
                                 (_%else163596163610%_
                                  (lambda () _%method163593%_))
                                 (_%K163598163624%_
                                  (lambda (_%rest163613%_ _%super-id163614%_)
                                    (let* ((_%klass163616%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id163529%_ '()))
                                             _%super-id163614%_))
                                           (_%$e163618%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass163616%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e163618%_
                                          ((lambda (_%ctor-method163621%_)
                                             (if _%method163593%_
                                                 (if (eq? _%ctor-method163621%_
                                                          _%method163593%_)
                                                     (_%lp163590%_
                                                      _%rest163613%_
                                                      _%ctor-method163621%_)
                                                     (let ((__tmp164346
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id163529%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp164346
                _%method163593%_
                _%ctor-method163621%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp163590%_
                                                  _%rest163613%_
                                                  _%ctor-method163621%_)))
                                           _%$e163618%_)
                                          (_%lp163590%_
                                           _%rest163613%_
                                           _%method163593%_))))))
                            (if (pair? _%rest163594163602%_)
                                (let ((_%hd163599163627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest163594163602%_)))
                                      (_%tl163600163629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest163594163602%_))))
                                  (let* ((_%super-id163632%_
                                          _%hd163599163627%_)
                                         (_%rest163634%_ _%tl163600163629%_))
                                    (_%K163598163624%_
                                     _%rest163634%_
                                     _%super-id163632%_)))
                                (_%else163596163610%_)))))))
                 (_g164347_
                  (let ((__tmp164351
                         (lambda (_%klass-id163638%_)
                           (cons _%klass-id163638%_
                                 (let ((__tmp164352
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id163529%_ '()))
                                         _%klass-id163638%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp164352
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp164349
                         (lambda (_%klass-id163640%_)
                           (let ((__tmp164350
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id163529%_ '()))
                                   _%klass-id163640%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp164350
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp164351
                     __tmp164349
                     eq?
                     identity
                     '()
                     _%super163530%_))))
            (begin
              (let ((_g164348_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g164347_)
                           (##values-length _g164347_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g164348_ 2)))
                    (error "Context expects 2 values" _g164348_)))
              (let ((_%precedence-list163642%_
                     (let () (declare (not safe)) (##values-ref _g164347_ 0)))
                    (_%base-struct163643%_
                     (let () (declare (not safe)) (##values-ref _g164347_ 1))))
                (let* ((_%precedence-list163687%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id163529%_ '(t object class)))
                            _%precedence-list163642%_
                            (if (memq 'object::t _%precedence-list163642%_)
                                _%precedence-list163642%_
                                (if _%system?163535%_
                                    (if (memq 't::t _%precedence-list163642%_)
                                        _%precedence-list163642%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list163642%_
                                           '(t::t))))
                                    (let _%loop163649%_ ((_%tail163651%_
                                                          _%precedence-list163642%_)
                                                         (_%head163652%_ '()))
                                      (let* ((_%tail163653163661%_
                                              _%tail163651%_)
                                             (_%else163655163669%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head163652%_))))
                                             (_%K163657163675%_
                                              (lambda (_%rest163672%_
                                                       _%hd163673%_)
                                                (if (eq? _%hd163673%_ 't::t)
                                                    (let ((__tmp164353
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail163651%_)))
              (declare (not safe))
              (__foldl1 cons __tmp164353 _%head163652%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop163649%_
                                                     _%rest163672%_
                                                     (cons _%hd163673%_
                                                           _%head163652%_))))))
                                        (if (pair? _%tail163653163661%_)
                                            (let ((_%hd163658163678%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail163653163661%_)))
                                                  (_%tl163659163680%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail163653163661%_))))
                                              (let* ((_%hd163683%_
                                                      _%hd163658163678%_)
                                                     (_%rest163685%_
                                                      _%tl163659163680%_))
                                                (_%K163657163675%_
                                                 _%rest163685%_
                                                 _%hd163683%_)))
                                            (_%else163655163669%_))))))))
                       (_%fields163689%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id163529%_ '()))
                         _%base-struct163643%_
                         _%precedence-list163687%_
                         _%slots163531%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163539%_
                     _%id163529%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163539%_
                     _%super163530%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163539%_
                     _%precedence-list163687%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163539%_
                     _%slots163531%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163539%_
                     _%fields163689%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163539%_
                     _%ctor-method163636%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163539%_
                     _%struct?163533%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163539%_
                     _%final?163534%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self163539%_
                     _%metaclass163536%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self163692%_
               _%id163693%_
               _%super163694%_
               _%precedence-list163695%_
               _%slots163696%_
               _%fields163697%_
               _%constructor163698%_
               _%struct?163699%_
               _%final?163700%_
               _%system?163701%_
               _%metaclass163702%_
               _%methods163703%_)
        (let ((_%self163706%_ _%self163692%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163706%_
             _%id163693%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163706%_
             _%super163694%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163706%_
             _%precedence-list163695%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163706%_
             _%slots163696%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163706%_
             _%fields163697%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163706%_
             _%constructor163698%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163706%_
             _%struct?163699%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163706%_
             _%final?163700%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163706%_
             _%metaclass163702%_
             '10
             '#f
             '#f))
          (if _%methods163703%_
              (let ((__tmp164354
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods163703%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self163706%_
                 __tmp164354
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g164355_
        (let ((_g164356_ (let () (declare (not safe)) (##length _g164355_))))
          (cond ((let () (declare (not safe)) (##fx= _g164356_ 9))
                 (apply gxc#!class:::init!__0 _g164355_))
                ((let () (declare (not safe)) (##fx= _g164356_ 12))
                 (apply gxc#!class:::init!__1 _g164355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g164355_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where163380%_
               _%base-struct163381%_
               _%precedence-list163382%_
               _%direct-slots163383%_)
        (let* ((_%base-fields163385%_
                (if _%base-struct163381%_
                    (let ((__tmp164357
                           (gxc#optimizer-resolve-class
                            _%where163380%_
                            _%base-struct163381%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp164357 '5 '#f '#f))
                    '()))
               (_%r-fields163387%_ (reverse _%base-fields163385%_))
               (_%seen-slots163395%_
                (let ((_%tab163389%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g163390163392%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab163389%_ _%g163390163392%_ '#t)))
                   _%base-fields163385%_)
                  _%tab163389%_))
               (_%process-slot163399%_
                (lambda (_%slot163397%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots163395%_ _%slot163397%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots163395%_
                           _%slot163397%_
                           '#t))
                        (set! _%r-fields163387%_
                              (cons _%slot163397%_ _%r-fields163387%_)))))))
          (for-each
           (lambda (_%mixin163402%_)
             (let ((_%klass163404%_
                    (gxc#optimizer-resolve-class
                     _%where163380%_
                     _%mixin163402%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass163404%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot163399%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass163404%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list163382%_)
          (for-each _%process-slot163399%_ _%direct-slots163383%_)
          (let () (declare (not safe)) (##reverse _%r-fields163387%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass163339%_ _%slot163340%_)
        (let _%lp163342%_ ((_%rest163344%_
                            (##structure-ref
                             _%klass163339%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset163345%_ '1))
          (let* ((_%rest163346163354%_ _%rest163344%_)
                 (_%else163348163362%_
                  (lambda ()
                    (let ((__tmp164359
                           (##structure-ref
                            _%klass163339%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp164358
                           (##structure-ref
                            _%klass163339%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp164359
                       __tmp164358
                       _%slot163340%_))))
                 (_%K163350163368%_
                  (lambda (_%rest163365%_ _%s163366%_)
                    (if (eq? _%s163366%_ _%slot163340%_)
                        _%offset163345%_
                        (_%lp163342%_
                         _%rest163365%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset163345%_ '1)))))))
            (if (pair? _%rest163346163354%_)
                (let ((_%hd163351163371%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest163346163354%_)))
                      (_%tl163352163373%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest163346163354%_))))
                  (let* ((_%s163376%_ _%hd163351163371%_)
                         (_%rest163378%_ _%tl163352163373%_))
                    (_%K163350163368%_ _%rest163378%_ _%s163376%_)))
                (_%else163348163362%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass163297%_ _%slot163298%_)
        (if (gxc#!class-struct-slot? _%klass163297%_ _%slot163298%_)
            _%klass163297%_
            (let _%lp163300%_ ((_%rest163302%_
                                (##structure-ref
                                 _%klass163297%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest163303163311%_ _%rest163302%_)
                     (_%else163305163319%_ (lambda () '#f))
                     (_%K163307163327%_
                      (lambda (_%rest163322%_ _%super163323%_)
                        (let ((_%super-class163325%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass163297%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot163298%_ '())))
                                _%super163323%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class163325%_
                               _%slot163298%_)
                              _%super-class163325%_
                              (_%lp163300%_ _%rest163322%_))))))
                (if (pair? _%rest163303163311%_)
                    (let ((_%hd163308163330%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest163303163311%_)))
                          (_%tl163309163332%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest163303163311%_))))
                      (let* ((_%super163335%_ _%hd163308163330%_)
                             (_%rest163337%_ _%tl163309163332%_))
                        (_%K163307163327%_ _%rest163337%_ _%super163335%_)))
                    (_%else163305163319%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass163294%_ _%slot163295%_)
        (if (##structure-ref _%klass163294%_ '7 gxc#!class::t '#f)
            (memq _%slot163295%_
                  (##structure-ref _%klass163294%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self163279%_ _%id163280%_)
        (let ((_%self163283%_ _%self163279%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163283%_
             _%id163280%_
             '1
             '#f
             '#f))
          (let ((__tmp164360
                 (let ((__obj164292
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
                      __obj164292
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164292
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164292
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj164292)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163283%_
             __tmp164360
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self163142%_ _%id163143%_)
        (let ((_%self163146%_ _%self163142%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163146%_
             _%id163143%_
             '1
             '#f
             '#f))
          (let ((__tmp164361
                 (let ((__obj164293
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
                      __obj164293
                      _%id163143%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164293
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj164293)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163146%_
             __tmp164361
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
      (lambda (_%self163003%_ _%id163004%_ _%slot163005%_ _%checked?163006%_)
        (let ((_%self163009%_ _%self163003%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163009%_
             _%id163004%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163009%_
             _%slot163005%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163009%_
             _%checked?163006%_
             '4
             '#f
             '#f))
          (let ((__tmp164362
                 (let ((__obj164294
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
                     (##unchecked-structure-set! __obj164294 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164294
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp164363 (cons _%id163004%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164294
                      __tmp164363
                      '3
                      '#f
                      '#f))
                   __obj164294)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self163009%_
             __tmp164362
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self162864%_ _%id162865%_ _%slot162866%_ _%checked?162867%_)
        (let ((_%self162870%_ _%self162864%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162870%_
             _%id162865%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162870%_
             _%slot162866%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162870%_
             _%checked?162867%_
             '4
             '#f
             '#f))
          (let ((__tmp164364
                 (let ((__obj164295
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
                      __obj164295
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164295
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp164365 (cons _%id162865%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164295
                      __tmp164365
                      '3
                      '#f
                      '#f))
                   __obj164295)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162870%_
             __tmp164364
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords162707%_
               _%signature162704162708%_
               _%self162710%_
               _%arity162711%_
               _%dispatch162712%_)
        (let* ((_%signature162714%_
                (if (eq? _%signature162704162708%_ absent-value)
                    '#f
                    _%signature162704162708%_))
               (_%self162717%_ _%self162710%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162717%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162717%_
             _%arity162711%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162717%_
             _%dispatch162712%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162717%_
             _%signature162714%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords162732%_ . _%args162733%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords162732%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162732%_
                  'signature:
                  absent-value))
               _%args162733%_)))
    (define gxc#!lambda:::init!
      (lambda _%args162705162739%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args162705162739%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords162547%_
               _%signature162544162548%_
               _%self162550%_
               _%clauses162551%_)
        (let* ((_%signature162553%_
                (if (eq? _%signature162544162548%_ absent-value)
                    '#f
                    _%signature162544162548%_))
               (_%self162556%_ _%self162550%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162556%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162556%_
             _%signature162553%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162556%_
             _%clauses162551%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords162571%_ . _%args162572%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords162571%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords162571%_
                  'signature:
                  absent-value))
               _%args162572%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args162545162578%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args162545162578%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self162405%_ _%tab162406%_ _%dispatch162407%_)
        (let ((_%self162410%_ _%self162405%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162410%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162410%_
             _%tab162406%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162410%_
             _%dispatch162407%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self162267%_ _%keys162268%_ _%main162269%_)
        (let ((_%self162272%_ _%self162267%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self162272%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162272%_
             _%keys162268%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self162272%_
             _%main162269%_
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
      (lambda (_%self161886%_ _%id161887%_)
        (let ((_%self161890%_ _%self161886%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self161890%_
             _%id161887%_
             '1
             '#f
             '#f))
          (let ((__tmp164366
                 (let ((__obj164296
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
                      __obj164296
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164296
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj164296
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj164296)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self161890%_
             __tmp164366
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
      (lambda (_%klass161755%_)
        (let ((_%$e161757%_
               (##structure-ref _%klass161755%_ '11 gxc#!class::t '#f)))
          (if _%$e161757%_
              _%$e161757%_
              (let ((_%tab161761%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass161755%_
                 _%tab161761%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab161761%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass161746%_ _%method161747%_)
        (let ((_%tab161748161750%_
               (##structure-ref _%klass161746%_ '11 gxc#!class::t '#f)))
          (if _%tab161748161750%_
              (let ((_%tab161753%_ _%tab161748161750%_))
                (declare (not safe))
                (hash-get _%tab161753%_ _%method161747%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a161734%_ _%type-b161735%_)
        (if _%type-a161734%_
            (if _%type-b161735%_
                (let ((_%$e161737%_ (eq? _%type-a161734%_ _%type-b161735%_)))
                  (if _%$e161737%_
                      _%$e161737%_
                      (let ((_%$e161740%_
                             (eq? (##structure-ref
                                   _%type-b161735%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e161740%_
                            _%$e161740%_
                            (let ((_%$e161743%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a161734%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b161735%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e161743%_
                                  _%$e161743%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a161734%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b161735%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a161734%_
                                           _%type-b161735%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a161685%_ _%klass-b161686%_)
        (let ((_%$e161688%_
               (eq? (##structure-ref _%klass-a161685%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b161686%_ '1 gxc#!type::t '#f))))
          (if _%$e161688%_
              _%$e161688%_
              (let ((_%klass-id-b161691%_
                     (##structure-ref _%klass-b161686%_ '1 gxc#!type::t '#f))
                    (_%precedence-list161692%_
                     (##structure-ref _%klass-a161685%_ '3 gxc#!class::t '#f)))
                (let _%loop161694%_ ((_%rest161696%_
                                      _%precedence-list161692%_))
                  (let* ((_%rest161697161705%_ _%rest161696%_)
                         (_%else161699161713%_ (lambda () '#f))
                         (_%K161701161722%_
                          (lambda (_%rest161716%_ _%klass-name161717%_)
                            (let ((_%$e161719%_
                                   (eq? (let ((__tmp164367
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a161685%_
                                                            (cons _%klass-b161686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name161717%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp164367
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b161691%_)))
                              (if _%$e161719%_
                                  _%$e161719%_
                                  (_%loop161694%_ _%rest161716%_))))))
                    (if (pair? _%rest161697161705%_)
                        (let ((_%hd161702161725%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest161697161705%_)))
                              (_%tl161703161727%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest161697161705%_))))
                          (let* ((_%klass-name161730%_ _%hd161702161725%_)
                                 (_%rest161732%_ _%tl161703161727%_))
                            (_%K161701161722%_
                             _%rest161732%_
                             _%klass-name161730%_)))
                        (_%else161699161713%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type161683%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161683%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type161683%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc161672%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc161672%_ 'gxc#!procedure::t))
            (let ((_%proc161675%_ _%proc161672%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc161675%_ '2 '#f '#f))
                  (let ((__tmp164368
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc161675%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp164368 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc161672%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym161654%_ _%type161655%_ _%local?161656%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161655%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym161654%_
                     _%type161655%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym161654%_ '" " _%type161655%_))
        (let ((_%table161658%_
               (if _%local?161656%_
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
          (hash-put! _%table161658%_ _%sym161654%_ _%type161655%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym161663%_ _%type161664%_)
        (let ((_%local?161666%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym161663%_
           _%type161664%_
           _%local?161666%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g164369_
        (let ((_g164370_ (let () (declare (not safe)) (##length _g164369_))))
          (cond ((let () (declare (not safe)) (##fx= _g164370_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g164369_))
                ((let () (declare (not safe)) (##fx= _g164370_ 3))
                 (apply gxc#optimizer-declare-type!__% _g164369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g164369_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym161648%_ _%type161649%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161649%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym161648%_
                     _%type161649%_)))
        (let ((_%table161651%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp164371
                 (let () (declare (not safe)) (struct->list _%type161649%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym161648%_ '" " __tmp164371))
          (let ()
            (declare (not safe))
            (hash-put! _%table161651%_ _%sym161648%_ _%type161649%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table161651%_ _%type161649%_ _%sym161648%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym161643%_ _%type161644%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type161644%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym161643%_
                     _%type161644%_)))
        (let ((_%table161646%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table161646%_ _%sym161643%_))
              '#!void
              (begin
                (let ((__tmp164372
                       (let ()
                         (declare (not safe))
                         (struct->list _%type161644%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym161643%_
                   '" "
                   __tmp164372))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table161646%_ _%sym161643%_ _%type161644%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table161646%_
                   _%type161644%_
                   _%sym161643%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym161641%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym161641%_))
        (let ((__tmp164373
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp164373 _%sym161641%_))
        (let ((__tmp164374
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp164374 _%sym161641%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t161609%_
               _%method161610%_
               _%sym161611%_
               _%rebind?161612%_)
        (let ((__tmp164375
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp164375 _%sym161611%_ '#t))
        (let ((_%klass161614%_ (gxc#optimizer-lookup-class _%type-t161609%_)))
          (if _%klass161614%_
              (let* ((_%vtab161616%_ (gxc#!class-method-table _%klass161614%_))
                     (_%$e161618%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab161616%_ _%method161610%_))))
                (if _%$e161618%_
                    ((lambda (_%existing161621%_)
                       (if _%rebind?161612%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t161609%_
                                '" "
                                _%method161610%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab161616%_
                                _%method161610%_
                                _%sym161611%_)))
                           (if (eq? _%existing161621%_ _%sym161611%_)
                               '#!void
                               (let ((__tmp164376
                                      (cons 'bind-method!
                                            (cons _%type-t161609%_
                                                  (cons _%method161610%_
                                                        (cons _%sym161611%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp164376
                                  _%method161610%_)))))
                     _%$e161618%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t161609%_
                         '" "
                         _%method161610%_
                         '" => "
                         _%sym161611%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab161616%_
                         _%method161610%_
                         _%sym161611%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t161609%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t161630%_ _%method161631%_ _%sym161632%_)
        (let ((_%rebind?161634%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t161630%_
           _%method161631%_
           _%sym161632%_
           _%rebind?161634%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g164377_
        (let ((_g164378_ (let () (declare (not safe)) (##length _g164377_))))
          (cond ((let () (declare (not safe)) (##fx= _g164378_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g164377_))
                ((let () (declare (not safe)) (##fx= _g164378_ 4))
                 (apply gxc#optimizer-declare-method!__% _g164377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g164377_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym161594%_)
        (let ((_%$e161596%_
               (let ((__tmp164379
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym161594%_ __tmp164379))))
          (if _%$e161596%_
              _%$e161596%_
              (let ((_%$e161605%_
                     (let ((_%ht161598161600%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht161598161600%_
                           (let ((_%ht161603%_ _%ht161598161600%_))
                             (declare (not safe))
                             (hash-get _%ht161603%_ _%sym161594%_))
                           '#f))))
                (if _%$e161605%_
                    _%$e161605%_
                    (let ((__tmp164380
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp164380 _%sym161594%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym161586%_)
        (let ((_%type161587161589%_ (gxc#optimizer-lookup-type _%sym161586%_)))
          (if _%type161587161589%_
              (let ((_%type161592%_ _%type161587161589%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type161592%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type161592%_ '1 '#f '#f)))
                    _%type161592%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym161582%_)
        (let ((_%table161584%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table161584%_ _%sym161582%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where161567%_ _%sym161568%_)
        (let ((_%$e161571%_ (gxc#optimizer-lookup-class _%sym161568%_)))
          (if _%$e161571%_
              ((lambda (_%g161573161575%_)
                 (let ((_%val161578%_ _%g161573161575%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val161578%_
                          'gxc#!class::t))
                       _%val161578%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val161578%_)))))
               _%$e161571%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where161567%_
                   _%sym161568%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass161565%_)
        (let ((__tmp164381
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp164381 _%klass161565%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t161562%_ _%method161563%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t161562%_)
         _%method161563%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym161560%_)
        (let ((__tmp164382
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp164382 _%sym161560%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e161442%_
                  (lambda (_%t161543%_)
                    (if (symbol? _%t161543%_)
                        (_%type-e161442%_
                         (gxc#optimizer-lookup-type _%t161543%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t161543%_
                               'gxc#!lambda::t))
                            (_%__lambda-type161444%_ _%t161543%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t161543%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type161446%_ _%t161543%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t161543%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type161448%_
                                     _%t161543%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t161543%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t161550%_ _%t161543%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t161550%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp164383
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t161550%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp164383
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t161543%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t161543%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type161443%_
                  (lambda (_%t161531%_)
                    (let ((_%t161534%_ _%t161531%_))
                      (_%__lambda-type161444%_ _%t161534%_))))
                 (_%__lambda-type161444%_
                  (lambda (_%t161519%_)
                    (let ((_%t161522%_ _%t161519%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t161522%_ '4 '#f '#f))
                          (_%type-e161442%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t161522%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t161522%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp164384
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t161522%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp164384
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type161445%_
                  (lambda (_%t161507%_)
                    (let ((_%t161510%_ _%t161507%_))
                      (_%__kw-lambda-type161446%_ _%t161510%_))))
                 (_%__kw-lambda-type161446%_
                  (lambda (_%t161495%_)
                    (let ((_%t161498%_ _%t161495%_))
                      (_%type-e161442%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t161498%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type161447%_
                  (lambda (_%t161483%_)
                    (let ((_%t161486%_ _%t161483%_))
                      (_%__kw-lambda-primary-type161448%_ _%t161486%_))))
                 (_%__kw-lambda-primary-type161448%_
                  (lambda (_%t161469%_)
                    (let ((_%t161472%_ _%t161469%_))
                      (_%type-e161442%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t161472%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1161450%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2161452%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result161454%_
                  (if _%ht1161450%_
                      (let () (declare (not safe)) (hash->list _%ht1161450%_))
                      '()))
                 (_%result161456%_
                  (if _%ht2161452%_
                      (let ((__tmp164385
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2161452%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result161454%_ __tmp164385))
                      _%result161454%_)))
            (for-each
             (lambda (_%p161459%_)
               (let* ((_%t161461%_ (cdr _%p161459%_))
                      (_%tr161463%_ (_%type-e161442%_ _%t161461%_)))
                 (set-cdr! _%p161459%_ _%tr161463%_)))
             _%result161456%_)
            (list-sort
             (lambda (_%a161466%_ _%b161467%_)
               (let ((__tmp164387 (symbol->string (car _%a161466%_)))
                     (__tmp164386 (symbol->string (car _%b161467%_))))
                 (declare (not safe))
                 (##string<? __tmp164387 __tmp164386)))
             _%result161456%_)))))))
