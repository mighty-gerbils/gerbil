(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1742223874)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp153481 (list)) (__tmp153480 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp153481
         '(type classes ssxi methods)
         __tmp153480
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args153452%_
        (apply make-instance gxc#optimizer-info::t _%$args153452%_)))
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
      (lambda (_%self150593153437%_)
        (let* ((_%self153440%_ _%self150593153437%_)
               (_%self153442%_ _%self153440%_))
          (if (let ((__tmp153482
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self153442%_))))
                (declare (not safe))
                (##fx< '4 __tmp153482))
              (begin
                (let ((__tmp153483
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153442%_
                   __tmp153483
                   '1
                   '#f
                   '#f))
                (let ((__tmp153484
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153442%_
                   __tmp153484
                   '2
                   '#f
                   '#f))
                (let ((__tmp153485
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153442%_
                   __tmp153485
                   '3
                   '#f
                   '#f))
                (let ((__tmp153486
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self153442%_
                   __tmp153486
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp153487
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self153442%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self153442%_
                       '4
                       __tmp153487))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp153489 (list))
            (__tmp153488
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp153489
         '(id)
         __tmp153488
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args153312%_
        (apply make-instance gxc#!type::t _%$args153312%_)))
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
      (let ((__tmp153491 (list gxc#!type::t))
            (__tmp153490 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp153491
         '()
         __tmp153490
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args153309%_
        (apply make-instance gxc#!abort::t _%$args153309%_)))
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
      (let ((__tmp153493 (list gxc#!type::t))
            (__tmp153492 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp153493
         '()
         __tmp153492
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args153306%_
        (apply make-instance gxc#!alias::t _%$args153306%_)))
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
      (let ((__tmp153495 (list))
            (__tmp153494
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp153495
         '(return effect arguments unchecked origin)
         __tmp153494
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args153303%_
        (apply make-instance gxc#!signature::t _%$args153303%_)))
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
      (let ((__tmp153497 (list gxc#!type::t))
            (__tmp153496
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp153497
         '(signature)
         __tmp153496
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
      (lambda (_%id153282%_ _%signature153283%_)
        (if ((lambda (_%$obj153286%_)
               (or (not _%$obj153286%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj153286%_
                      'gxc#!signature::t))))
             _%signature153283%_)
            (let ((_%signature153293%_ _%signature153283%_))
              (gxc#__make-!procedure _%id153282%_ _%signature153293%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature153283%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id153268%_ _%signature153270%_)
        (let ((_%signature153273%_ _%signature153270%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id153268%_ _%signature153273%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj153237%_ _%signature153238%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj153237%_ 'gxc#!procedure::t))
            (let ((_%$obj153242%_ _%$obj153237%_))
              (if ((lambda (_%$obj153251%_)
                     (or (not _%$obj153251%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj153251%_
                            'gxc#!signature::t))))
                   _%signature153238%_)
                  (let ((_%signature153258%_ _%signature153238%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj153242%_
                     _%signature153258%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature153238%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj153237%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj153214%_ _%signature153216%_)
        (let* ((_%$obj153220%_ _%$obj153214%_)
               (_%signature153228%_ _%signature153216%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj153220%_
           _%signature153228%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp153499 (list gxc#!type::t))
            (__tmp153498 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp153499
         '(class)
         __tmp153498
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args153211%_
        (apply make-instance gxc#!class-meta::t _%$args153211%_)))
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
      (let ((__tmp153501 (list gxc#!type::t))
            (__tmp153500
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
         __tmp153501
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp153500
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args153208%_
        (apply make-instance gxc#!class::t _%$args153208%_)))
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
      (let ((__tmp153503 (list gxc#!procedure::t))
            (__tmp153502 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp153503
         '()
         __tmp153502
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args153205%_
        (apply make-instance gxc#!predicate::t _%$args153205%_)))
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
      (let ((__tmp153505 (list gxc#!procedure::t))
            (__tmp153504 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp153505
         '()
         __tmp153504
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args153202%_
        (apply make-instance gxc#!constructor::t _%$args153202%_)))
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
      (let ((__tmp153507 (list gxc#!procedure::t))
            (__tmp153506 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp153507
         '(slot checked?)
         __tmp153506
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args153199%_
        (apply make-instance gxc#!accessor::t _%$args153199%_)))
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
      (let ((__tmp153509 (list gxc#!procedure::t))
            (__tmp153508 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp153509
         '(slot checked?)
         __tmp153508
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args153196%_
        (apply make-instance gxc#!mutator::t _%$args153196%_)))
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
      (let ((__tmp153511 (list gxc#!type::t))
            (__tmp153510 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp153511
         '(methods)
         __tmp153510
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args153193%_
        (apply make-instance gxc#!interface::t _%$args153193%_)))
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
      (let ((__tmp153513 (list gxc#!procedure::t))
            (__tmp153512
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp153513
         '(arity dispatch inline inline-typedecl)
         __tmp153512
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args153190%_
        (apply make-instance gxc#!lambda::t _%$args153190%_)))
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
      (let ((__tmp153515 (list gxc#!procedure::t))
            (__tmp153514 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp153515
         '(clauses)
         __tmp153514
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args153187%_
        (apply make-instance gxc#!case-lambda::t _%$args153187%_)))
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
      (let ((__tmp153517 (list gxc#!procedure::t))
            (__tmp153516
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp153517
         '(table dispatch)
         __tmp153516
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args153184%_
        (apply make-instance gxc#!kw-lambda::t _%$args153184%_)))
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
      (let ((__tmp153519 (list gxc#!procedure::t))
            (__tmp153518 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp153519
         '(keys main)
         __tmp153518
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args153181%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args153181%_)))
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
      (let ((__tmp153520 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp153520
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args153178%_
        (apply make-instance gxc#!primitive::t _%$args153178%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp153522 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp153521 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp153522
         '()
         __tmp153521
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args153175%_
        (apply make-instance gxc#!primitive-predicate::t _%$args153175%_)))
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
      (let ((__tmp153524 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp153523 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp153524
         '()
         __tmp153523
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args153172%_
        (apply make-instance gxc#!primitive-lambda::t _%$args153172%_)))
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
      (let ((__tmp153526 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp153525 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp153526
         '()
         __tmp153525
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args153169%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args153169%_)))
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
      (lambda (_%self150594153154%_)
        (let* ((_%self153157%_ _%self150594153154%_)
               (_%self153159%_ _%self153157%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self153159%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self150595153016%_ _%klass153018%_)
        (let* ((_%self153020%_ _%self150595153016%_)
               (_%self153022%_ _%self153020%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self153022%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self153022%_
             _%klass153018%_
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
      (lambda (_%self150596152704%_
               _%id152706%_
               _%super152707%_
               _%slots152708%_
               _%ctor-method152709%_
               _%struct?152710%_
               _%final?152711%_
               _%system?152712%_
               _%metaclass152713%_)
        (let* ((_%self152715%_ _%self150596152704%_)
               (_%self152717%_ _%self152715%_))
          (let _%lp152727%_ ((_%rest152729%_ _%super152707%_))
            (let* ((_%rest152730152738%_ _%rest152729%_)
                   (_%else152732152746%_ (lambda () '#!void))
                   (_%K152734152752%_
                    (lambda (_%rest152749%_ _%super-id152750%_)
                      (if (let ((__tmp153527
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id152706%_ '()))
                                  _%super-id152750%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp153527 '8 '#f '#f))
                          (let ((__tmp153528
                                 (cons '!class (cons _%id152706%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp153528
                             _%super-id152750%_))
                          '#!void)
                      (_%lp152727%_ _%rest152749%_))))
              (if (pair? _%rest152730152738%_)
                  (let ((_%hd152735152755%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest152730152738%_)))
                        (_%tl152736152757%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest152730152738%_))))
                    (let* ((_%super-id152760%_ _%hd152735152755%_)
                           (_%rest152762%_ _%tl152736152757%_))
                      (_%K152734152752%_ _%rest152762%_ _%super-id152760%_)))
                  '#!void)))
          (let* ((_%ctor-method152813%_
                  (let ((_%$e152764%_ _%ctor-method152709%_))
                    (if _%$e152764%_
                        _%$e152764%_
                        (let _%lp152767%_ ((_%rest152769%_ _%super152707%_)
                                           (_%method152770%_ '#f))
                          (let* ((_%rest152771152779%_ _%rest152769%_)
                                 (_%else152773152787%_
                                  (lambda () _%method152770%_))
                                 (_%K152775152801%_
                                  (lambda (_%rest152790%_ _%super-id152791%_)
                                    (let* ((_%klass152793%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id152706%_ '()))
                                             _%super-id152791%_))
                                           (_%$e152795%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass152793%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e152795%_
                                          ((lambda (_%ctor-method152798%_)
                                             (if _%method152770%_
                                                 (if (eq? _%ctor-method152798%_
                                                          _%method152770%_)
                                                     (_%lp152767%_
                                                      _%rest152790%_
                                                      _%ctor-method152798%_)
                                                     (let ((__tmp153529
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id152706%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp153529
                _%method152770%_
                _%ctor-method152798%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp152767%_
                                                  _%rest152790%_
                                                  _%ctor-method152798%_)))
                                           _%$e152795%_)
                                          (_%lp152767%_
                                           _%rest152790%_
                                           _%method152770%_))))))
                            (if (pair? _%rest152771152779%_)
                                (let ((_%hd152776152804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest152771152779%_)))
                                      (_%tl152777152806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest152771152779%_))))
                                  (let* ((_%super-id152809%_
                                          _%hd152776152804%_)
                                         (_%rest152811%_ _%tl152777152806%_))
                                    (_%K152775152801%_
                                     _%rest152811%_
                                     _%super-id152809%_)))
                                (_%else152773152787%_)))))))
                 (_g153530_
                  (let ((__tmp153534
                         (lambda (_%klass-id152815%_)
                           (cons _%klass-id152815%_
                                 (let ((__tmp153535
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id152706%_ '()))
                                         _%klass-id152815%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp153535
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp153532
                         (lambda (_%klass-id152817%_)
                           (let ((__tmp153533
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id152706%_ '()))
                                   _%klass-id152817%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp153533
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp153534
                     __tmp153532
                     eq?
                     identity
                     '()
                     _%super152707%_))))
            (begin
              (let ((_g153531_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g153530_)
                           (##values-length _g153530_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g153531_ 2)))
                    (error "Context expects 2 values" _g153531_)))
              (let ((_%precedence-list152819%_
                     (let () (declare (not safe)) (##values-ref _g153530_ 0)))
                    (_%base-struct152820%_
                     (let () (declare (not safe)) (##values-ref _g153530_ 1))))
                (let* ((_%precedence-list152864%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id152706%_ '(t object class)))
                            _%precedence-list152819%_
                            (if (memq 'object::t _%precedence-list152819%_)
                                _%precedence-list152819%_
                                (if _%system?152712%_
                                    (if (memq 't::t _%precedence-list152819%_)
                                        _%precedence-list152819%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list152819%_
                                           '(t::t))))
                                    (let _%loop152826%_ ((_%tail152828%_
                                                          _%precedence-list152819%_)
                                                         (_%head152829%_ '()))
                                      (let* ((_%tail152830152838%_
                                              _%tail152828%_)
                                             (_%else152832152846%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head152829%_))))
                                             (_%K152834152852%_
                                              (lambda (_%rest152849%_
                                                       _%hd152850%_)
                                                (if (eq? _%hd152850%_ 't::t)
                                                    (let ((__tmp153536
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail152828%_)))
              (declare (not safe))
              (__foldl1 cons __tmp153536 _%head152829%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop152826%_
                                                     _%rest152849%_
                                                     (cons _%hd152850%_
                                                           _%head152829%_))))))
                                        (if (pair? _%tail152830152838%_)
                                            (let ((_%hd152835152855%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail152830152838%_)))
                                                  (_%tl152836152857%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail152830152838%_))))
                                              (let* ((_%hd152860%_
                                                      _%hd152835152855%_)
                                                     (_%rest152862%_
                                                      _%tl152836152857%_))
                                                (_%K152834152852%_
                                                 _%rest152862%_
                                                 _%hd152860%_)))
                                            (_%else152832152846%_))))))))
                       (_%fields152866%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id152706%_ '()))
                         _%base-struct152820%_
                         _%precedence-list152864%_
                         _%slots152708%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152717%_
                     _%id152706%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152717%_
                     _%super152707%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152717%_
                     _%precedence-list152864%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152717%_
                     _%slots152708%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152717%_
                     _%fields152866%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152717%_
                     _%ctor-method152813%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152717%_
                     _%struct?152710%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152717%_
                     _%final?152711%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self152717%_
                     _%metaclass152713%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self150597152869%_
               _%id152871%_
               _%super152872%_
               _%precedence-list152873%_
               _%slots152874%_
               _%fields152875%_
               _%constructor152876%_
               _%struct?152877%_
               _%final?152878%_
               _%system?152879%_
               _%metaclass152880%_
               _%methods152881%_)
        (let* ((_%self152883%_ _%self150597152869%_)
               (_%self152885%_ _%self152883%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152885%_
             _%id152871%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152885%_
             _%super152872%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152885%_
             _%precedence-list152873%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152885%_
             _%slots152874%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152885%_
             _%fields152875%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152885%_
             _%constructor152876%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152885%_
             _%struct?152877%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152885%_
             _%final?152878%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152885%_
             _%metaclass152880%_
             '10
             '#f
             '#f))
          (if _%methods152881%_
              (let ((__tmp153537
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods152881%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self152885%_
                 __tmp153537
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g153539_
        (let ((_g153538_ (let () (declare (not safe)) (##length _g153539_))))
          (cond ((let () (declare (not safe)) (##fx= _g153538_ 9))
                 (apply gxc#!class:::init!__0 _g153539_))
                ((let () (declare (not safe)) (##fx= _g153538_ 12))
                 (apply gxc#!class:::init!__1 _g153539_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g153539_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where152556%_
               _%base-struct152557%_
               _%precedence-list152558%_
               _%direct-slots152559%_)
        (let* ((_%base-fields152561%_
                (if _%base-struct152557%_
                    (let ((__tmp153540
                           (gxc#optimizer-resolve-class
                            _%where152556%_
                            _%base-struct152557%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp153540 '5 '#f '#f))
                    '()))
               (_%r-fields152563%_ (reverse _%base-fields152561%_))
               (_%seen-slots152571%_
                (let ((_%tab152565%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g152566152568%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab152565%_ _%g152566152568%_ '#t)))
                   _%base-fields152561%_)
                  _%tab152565%_))
               (_%process-slot152575%_
                (lambda (_%slot152573%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots152571%_ _%slot152573%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots152571%_
                           _%slot152573%_
                           '#t))
                        (set! _%r-fields152563%_
                              (cons _%slot152573%_ _%r-fields152563%_)))))))
          (for-each
           (lambda (_%mixin152578%_)
             (let ((_%klass152580%_
                    (gxc#optimizer-resolve-class
                     _%where152556%_
                     _%mixin152578%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass152580%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot152575%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass152580%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list152558%_)
          (for-each _%process-slot152575%_ _%direct-slots152559%_)
          (let () (declare (not safe)) (##reverse _%r-fields152563%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass152515%_ _%slot152516%_)
        (let _%lp152518%_ ((_%rest152520%_
                            (##structure-ref
                             _%klass152515%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset152521%_ '1))
          (let* ((_%rest152522152530%_ _%rest152520%_)
                 (_%else152524152538%_
                  (lambda ()
                    (let ((__tmp153542
                           (##structure-ref
                            _%klass152515%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp153541
                           (##structure-ref
                            _%klass152515%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp153542
                       __tmp153541
                       _%slot152516%_))))
                 (_%K152526152544%_
                  (lambda (_%rest152541%_ _%s152542%_)
                    (if (eq? _%s152542%_ _%slot152516%_)
                        _%offset152521%_
                        (_%lp152518%_
                         _%rest152541%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset152521%_ '1)))))))
            (if (pair? _%rest152522152530%_)
                (let ((_%hd152527152547%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest152522152530%_)))
                      (_%tl152528152549%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest152522152530%_))))
                  (let* ((_%s152552%_ _%hd152527152547%_)
                         (_%rest152554%_ _%tl152528152549%_))
                    (_%K152526152544%_ _%rest152554%_ _%s152552%_)))
                (_%else152524152538%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass152473%_ _%slot152474%_)
        (if (gxc#!class-struct-slot? _%klass152473%_ _%slot152474%_)
            _%klass152473%_
            (let _%lp152476%_ ((_%rest152478%_
                                (##structure-ref
                                 _%klass152473%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest152479152487%_ _%rest152478%_)
                     (_%else152481152495%_ (lambda () '#f))
                     (_%K152483152503%_
                      (lambda (_%rest152498%_ _%super152499%_)
                        (let ((_%super-class152501%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass152473%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot152474%_ '())))
                                _%super152499%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class152501%_
                               _%slot152474%_)
                              _%super-class152501%_
                              (_%lp152476%_ _%rest152498%_))))))
                (if (pair? _%rest152479152487%_)
                    (let ((_%hd152484152506%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest152479152487%_)))
                          (_%tl152485152508%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest152479152487%_))))
                      (let* ((_%super152511%_ _%hd152484152506%_)
                             (_%rest152513%_ _%tl152485152508%_))
                        (_%K152483152503%_ _%rest152513%_ _%super152511%_)))
                    (_%else152481152495%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass152470%_ _%slot152471%_)
        (if (##structure-ref _%klass152470%_ '7 gxc#!class::t '#f)
            (memq _%slot152471%_
                  (##structure-ref _%klass152470%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self150598152454%_ _%id152456%_)
        (let* ((_%self152458%_ _%self150598152454%_)
               (_%self152460%_ _%self152458%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152460%_
             _%id152456%_
             '1
             '#f
             '#f))
          (let ((__tmp153543
                 (let ((__obj153475
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
                      __obj153475
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153475
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153475
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj153475)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152460%_
             __tmp153543
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self150599152316%_ _%id152318%_)
        (let* ((_%self152320%_ _%self150599152316%_)
               (_%self152322%_ _%self152320%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152322%_
             _%id152318%_
             '1
             '#f
             '#f))
          (let ((__tmp153544
                 (let ((__obj153476
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
                      __obj153476
                      _%id152318%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153476
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj153476)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152322%_
             __tmp153544
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
      (lambda (_%self150600152176%_
               _%id152178%_
               _%slot152179%_
               _%checked?152180%_)
        (let* ((_%self152182%_ _%self150600152176%_)
               (_%self152184%_ _%self152182%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152184%_
             _%id152178%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152184%_
             _%slot152179%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152184%_
             _%checked?152180%_
             '4
             '#f
             '#f))
          (let ((__tmp153545
                 (let ((__obj153477
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
                     (##unchecked-structure-set! __obj153477 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153477
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp153546 (cons _%id152178%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153477
                      __tmp153546
                      '3
                      '#f
                      '#f))
                   __obj153477)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152184%_
             __tmp153545
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self150601152036%_
               _%id152038%_
               _%slot152039%_
               _%checked?152040%_)
        (let* ((_%self152042%_ _%self150601152036%_)
               (_%self152044%_ _%self152042%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152044%_
             _%id152038%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152044%_
             _%slot152039%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152044%_
             _%checked?152040%_
             '4
             '#f
             '#f))
          (let ((__tmp153547
                 (let ((__obj153478
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
                      __obj153478
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153478
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp153548 (cons _%id152038%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153478
                      __tmp153548
                      '3
                      '#f
                      '#f))
                   __obj153478)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152044%_
             __tmp153547
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords151878%_
               _%signature151875151879%_
               _%self150602151881%_
               _%arity151883%_
               _%dispatch151884%_)
        (let* ((_%signature151886%_
                (if (eq? _%signature151875151879%_ absent-value)
                    '#f
                    _%signature151875151879%_))
               (_%self151888%_ _%self150602151881%_)
               (_%self151890%_ _%self151888%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151890%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151890%_
             _%arity151883%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151890%_
             _%dispatch151884%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151890%_
             _%signature151886%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords151904%_ . _%args151905%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords151904%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151904%_
                  'signature:
                  absent-value))
               _%args151905%_)))
    (define gxc#!lambda:::init!
      (lambda _%args151876151911%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args151876151911%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords151717%_
               _%signature151714151718%_
               _%self150603151720%_
               _%clauses151722%_)
        (let* ((_%signature151724%_
                (if (eq? _%signature151714151718%_ absent-value)
                    '#f
                    _%signature151714151718%_))
               (_%self151726%_ _%self150603151720%_)
               (_%self151728%_ _%self151726%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151728%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151728%_
             _%signature151724%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151728%_
             _%clauses151722%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords151742%_ . _%args151743%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords151742%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151742%_
                  'signature:
                  absent-value))
               _%args151743%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args151715151749%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args151715151749%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self150604151574%_ _%tab151576%_ _%dispatch151577%_)
        (let* ((_%self151579%_ _%self150604151574%_)
               (_%self151581%_ _%self151579%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151581%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151581%_
             _%tab151576%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151581%_
             _%dispatch151577%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self150605151435%_ _%keys151437%_ _%main151438%_)
        (let* ((_%self151440%_ _%self150605151435%_)
               (_%self151442%_ _%self151440%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151442%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151442%_
             _%keys151437%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151442%_
             _%main151438%_
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
      (lambda (_%self150606151053%_ _%id151055%_)
        (let* ((_%self151057%_ _%self150606151053%_)
               (_%self151059%_ _%self151057%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151059%_
             _%id151055%_
             '1
             '#f
             '#f))
          (let ((__tmp153549
                 (let ((__obj153479
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
                      __obj153479
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153479
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj153479
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj153479)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151059%_
             __tmp153549
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
      (lambda (_%klass150922%_)
        (let ((_%$e150924%_
               (##structure-ref _%klass150922%_ '11 gxc#!class::t '#f)))
          (if _%$e150924%_
              _%$e150924%_
              (let ((_%tab150928%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass150922%_
                 _%tab150928%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab150928%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass150913%_ _%method150914%_)
        (let ((_%tab150915150917%_
               (##structure-ref _%klass150913%_ '11 gxc#!class::t '#f)))
          (if _%tab150915150917%_
              (let ((_%tab150920%_ _%tab150915150917%_))
                (declare (not safe))
                (hash-get _%tab150920%_ _%method150914%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a150901%_ _%type-b150902%_)
        (if _%type-a150901%_
            (if _%type-b150902%_
                (let ((_%$e150904%_ (eq? _%type-a150901%_ _%type-b150902%_)))
                  (if _%$e150904%_
                      _%$e150904%_
                      (let ((_%$e150907%_
                             (eq? (##structure-ref
                                   _%type-b150902%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e150907%_
                            _%$e150907%_
                            (let ((_%$e150910%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a150901%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b150902%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e150910%_
                                  _%$e150910%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a150901%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b150902%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a150901%_
                                           _%type-b150902%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a150852%_ _%klass-b150853%_)
        (let ((_%$e150855%_
               (eq? (##structure-ref _%klass-a150852%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b150853%_ '1 gxc#!type::t '#f))))
          (if _%$e150855%_
              _%$e150855%_
              (let ((_%klass-id-b150858%_
                     (##structure-ref _%klass-b150853%_ '1 gxc#!type::t '#f))
                    (_%precedence-list150859%_
                     (##structure-ref _%klass-a150852%_ '3 gxc#!class::t '#f)))
                (let _%loop150861%_ ((_%rest150863%_
                                      _%precedence-list150859%_))
                  (let* ((_%rest150864150872%_ _%rest150863%_)
                         (_%else150866150880%_ (lambda () '#f))
                         (_%K150868150889%_
                          (lambda (_%rest150883%_ _%klass-name150884%_)
                            (let ((_%$e150886%_
                                   (eq? (let ((__tmp153550
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a150852%_
                                                            (cons _%klass-b150853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name150884%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp153550
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b150858%_)))
                              (if _%$e150886%_
                                  _%$e150886%_
                                  (_%loop150861%_ _%rest150883%_))))))
                    (if (pair? _%rest150864150872%_)
                        (let ((_%hd150869150892%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest150864150872%_)))
                              (_%tl150870150894%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest150864150872%_))))
                          (let* ((_%klass-name150897%_ _%hd150869150892%_)
                                 (_%rest150899%_ _%tl150870150894%_))
                            (_%K150868150889%_
                             _%rest150899%_
                             _%klass-name150897%_)))
                        (_%else150866150880%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type150850%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150850%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type150850%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc150839%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc150839%_ 'gxc#!procedure::t))
            (let ((_%proc150842%_ _%proc150839%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc150842%_ '2 '#f '#f))
                  (let ((__tmp153551
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc150842%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp153551 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc150839%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym150821%_ _%type150822%_ _%local?150823%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150822%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym150821%_
                     _%type150822%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym150821%_ '" " _%type150822%_))
        (let ((_%table150825%_
               (if _%local?150823%_
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
          (hash-put! _%table150825%_ _%sym150821%_ _%type150822%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym150830%_ _%type150831%_)
        (let ((_%local?150833%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym150830%_
           _%type150831%_
           _%local?150833%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g153553_
        (let ((_g153552_ (let () (declare (not safe)) (##length _g153553_))))
          (cond ((let () (declare (not safe)) (##fx= _g153552_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g153553_))
                ((let () (declare (not safe)) (##fx= _g153552_ 3))
                 (apply gxc#optimizer-declare-type!__% _g153553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g153553_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym150815%_ _%type150816%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150816%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym150815%_
                     _%type150816%_)))
        (let ((_%table150818%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp153554
                 (let () (declare (not safe)) (struct->list _%type150816%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym150815%_ '" " __tmp153554))
          (let ()
            (declare (not safe))
            (hash-put! _%table150818%_ _%sym150815%_ _%type150816%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table150818%_ _%type150816%_ _%sym150815%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym150810%_ _%type150811%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type150811%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym150810%_
                     _%type150811%_)))
        (let ((_%table150813%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table150813%_ _%sym150810%_))
              '#!void
              (begin
                (let ((__tmp153555
                       (let ()
                         (declare (not safe))
                         (struct->list _%type150811%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym150810%_
                   '" "
                   __tmp153555))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table150813%_ _%sym150810%_ _%type150811%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table150813%_
                   _%type150811%_
                   _%sym150810%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym150808%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym150808%_))
        (let ((__tmp153556
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp153556 _%sym150808%_))
        (let ((__tmp153557
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp153557 _%sym150808%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t150776%_
               _%method150777%_
               _%sym150778%_
               _%rebind?150779%_)
        (let ((__tmp153558
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp153558 _%sym150778%_ '#t))
        (let ((_%klass150781%_ (gxc#optimizer-lookup-class _%type-t150776%_)))
          (if _%klass150781%_
              (let* ((_%vtab150783%_ (gxc#!class-method-table _%klass150781%_))
                     (_%$e150785%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab150783%_ _%method150777%_))))
                (if _%$e150785%_
                    ((lambda (_%existing150788%_)
                       (if _%rebind?150779%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t150776%_
                                '" "
                                _%method150777%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab150783%_
                                _%method150777%_
                                _%sym150778%_)))
                           (if (eq? _%existing150788%_ _%sym150778%_)
                               '#!void
                               (let ((__tmp153559
                                      (cons 'bind-method!
                                            (cons _%type-t150776%_
                                                  (cons _%method150777%_
                                                        (cons _%sym150778%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp153559
                                  _%method150777%_)))))
                     _%$e150785%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t150776%_
                         '" "
                         _%method150777%_
                         '" => "
                         _%sym150778%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab150783%_
                         _%method150777%_
                         _%sym150778%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t150776%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t150797%_ _%method150798%_ _%sym150799%_)
        (let ((_%rebind?150801%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t150797%_
           _%method150798%_
           _%sym150799%_
           _%rebind?150801%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g153561_
        (let ((_g153560_ (let () (declare (not safe)) (##length _g153561_))))
          (cond ((let () (declare (not safe)) (##fx= _g153560_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g153561_))
                ((let () (declare (not safe)) (##fx= _g153560_ 4))
                 (apply gxc#optimizer-declare-method!__% _g153561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g153561_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym150761%_)
        (let ((_%$e150763%_
               (let ((__tmp153562
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym150761%_ __tmp153562))))
          (if _%$e150763%_
              _%$e150763%_
              (let ((_%$e150772%_
                     (let ((_%ht150765150767%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht150765150767%_
                           (let ((_%ht150770%_ _%ht150765150767%_))
                             (declare (not safe))
                             (hash-get _%ht150770%_ _%sym150761%_))
                           '#f))))
                (if _%$e150772%_
                    _%$e150772%_
                    (let ((__tmp153563
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp153563 _%sym150761%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym150753%_)
        (let ((_%type150754150756%_ (gxc#optimizer-lookup-type _%sym150753%_)))
          (if _%type150754150756%_
              (let ((_%type150759%_ _%type150754150756%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type150759%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type150759%_ '1 '#f '#f)))
                    _%type150759%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym150749%_)
        (let ((_%table150751%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table150751%_ _%sym150749%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where150734%_ _%sym150735%_)
        (let ((_%$e150738%_ (gxc#optimizer-lookup-class _%sym150735%_)))
          (if _%$e150738%_
              ((lambda (_%g150740150742%_)
                 (let ((_%val150745%_ _%g150740150742%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val150745%_
                          'gxc#!class::t))
                       _%val150745%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val150745%_)))))
               _%$e150738%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where150734%_
                   _%sym150735%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass150732%_)
        (let ((__tmp153564
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp153564 _%klass150732%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t150729%_ _%method150730%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t150729%_)
         _%method150730%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym150727%_)
        (let ((__tmp153565
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp153565 _%sym150727%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e150609%_
                  (lambda (_%t150710%_)
                    (if (symbol? _%t150710%_)
                        (_%type-e150609%_
                         (gxc#optimizer-lookup-type _%t150710%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t150710%_
                               'gxc#!lambda::t))
                            (_%__lambda-type150611%_ _%t150710%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t150710%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type150613%_ _%t150710%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t150710%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type150615%_
                                     _%t150710%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t150710%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t150717%_ _%t150710%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t150717%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp153566
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t150717%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp153566
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t150710%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t150710%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type150610%_
                  (lambda (_%t150698%_)
                    (let ((_%t150701%_ _%t150698%_))
                      (_%__lambda-type150611%_ _%t150701%_))))
                 (_%__lambda-type150611%_
                  (lambda (_%t150686%_)
                    (let ((_%t150689%_ _%t150686%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t150689%_ '4 '#f '#f))
                          (_%type-e150609%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t150689%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t150689%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp153567
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t150689%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp153567
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type150612%_
                  (lambda (_%t150674%_)
                    (let ((_%t150677%_ _%t150674%_))
                      (_%__kw-lambda-type150613%_ _%t150677%_))))
                 (_%__kw-lambda-type150613%_
                  (lambda (_%t150662%_)
                    (let ((_%t150665%_ _%t150662%_))
                      (_%type-e150609%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t150665%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type150614%_
                  (lambda (_%t150650%_)
                    (let ((_%t150653%_ _%t150650%_))
                      (_%__kw-lambda-primary-type150615%_ _%t150653%_))))
                 (_%__kw-lambda-primary-type150615%_
                  (lambda (_%t150636%_)
                    (let ((_%t150639%_ _%t150636%_))
                      (_%type-e150609%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t150639%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1150617%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2150619%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result150621%_
                  (if _%ht1150617%_
                      (let () (declare (not safe)) (hash->list _%ht1150617%_))
                      '()))
                 (_%result150623%_
                  (if _%ht2150619%_
                      (let ((__tmp153568
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2150619%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result150621%_ __tmp153568))
                      _%result150621%_)))
            (for-each
             (lambda (_%p150626%_)
               (let* ((_%t150628%_ (cdr _%p150626%_))
                      (_%tr150630%_ (_%type-e150609%_ _%t150628%_)))
                 (set-cdr! _%p150626%_ _%tr150630%_)))
             _%result150623%_)
            (list-sort
             (lambda (_%a150633%_ _%b150634%_)
               (let ((__tmp153570 (symbol->string (car _%a150633%_)))
                     (__tmp153569 (symbol->string (car _%b150634%_))))
                 (declare (not safe))
                 (##string<? __tmp153570 __tmp153569)))
             _%result150623%_)))))))
