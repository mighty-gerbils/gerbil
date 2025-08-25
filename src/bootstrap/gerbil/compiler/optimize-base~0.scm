(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1756156302)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp160575 (list)) (__tmp160574 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp160575
         '(type classes ssxi methods)
         __tmp160574
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args160546%_
        (apply make-instance gxc#optimizer-info::t _%$args160546%_)))
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
      (lambda (_%self160533%_)
        (let ((_%self160536%_ _%self160533%_))
          (if (let ((__tmp160576
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self160536%_))))
                (declare (not safe))
                (##fx< '4 __tmp160576))
              (begin
                (let ((__tmp160577
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160536%_
                   __tmp160577
                   '1
                   '#f
                   '#f))
                (let ((__tmp160578
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160536%_
                   __tmp160578
                   '2
                   '#f
                   '#f))
                (let ((__tmp160579
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160536%_
                   __tmp160579
                   '3
                   '#f
                   '#f))
                (let ((__tmp160580
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160536%_
                   __tmp160580
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp160581
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self160536%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self160536%_
                       '4
                       __tmp160581))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp160583 (list))
            (__tmp160582
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp160583
         '(id)
         __tmp160582
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args160408%_
        (apply make-instance gxc#!type::t _%$args160408%_)))
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
      (let ((__tmp160585 (list gxc#!type::t))
            (__tmp160584 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp160585
         '()
         __tmp160584
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args160405%_
        (apply make-instance gxc#!abort::t _%$args160405%_)))
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
      (let ((__tmp160587 (list gxc#!type::t))
            (__tmp160586 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp160587
         '()
         __tmp160586
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args160402%_
        (apply make-instance gxc#!alias::t _%$args160402%_)))
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
      (let ((__tmp160589 (list))
            (__tmp160588
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp160589
         '(return effect arguments unchecked origin)
         __tmp160588
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args160399%_
        (apply make-instance gxc#!signature::t _%$args160399%_)))
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
      (let ((__tmp160591 (list gxc#!type::t))
            (__tmp160590
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp160591
         '(signature)
         __tmp160590
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
      (lambda (_%id160378%_ _%signature160379%_)
        (if ((lambda (_%$obj160382%_)
               (or (not _%$obj160382%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj160382%_
                      'gxc#!signature::t))))
             _%signature160379%_)
            (let ((_%signature160389%_ _%signature160379%_))
              (gxc#__make-!procedure _%id160378%_ _%signature160389%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature160379%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id160364%_ _%signature160366%_)
        (let ((_%signature160369%_ _%signature160366%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id160364%_ _%signature160369%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj160333%_ _%signature160334%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj160333%_ 'gxc#!procedure::t))
            (let ((_%$obj160338%_ _%$obj160333%_))
              (if ((lambda (_%$obj160347%_)
                     (or (not _%$obj160347%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj160347%_
                            'gxc#!signature::t))))
                   _%signature160334%_)
                  (let ((_%signature160354%_ _%signature160334%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj160338%_
                     _%signature160354%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature160334%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj160333%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj160310%_ _%signature160312%_)
        (let* ((_%$obj160316%_ _%$obj160310%_)
               (_%signature160324%_ _%signature160312%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj160316%_
           _%signature160324%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp160593 (list gxc#!type::t))
            (__tmp160592 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp160593
         '(class)
         __tmp160592
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args160307%_
        (apply make-instance gxc#!class-meta::t _%$args160307%_)))
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
      (let ((__tmp160595 (list gxc#!type::t))
            (__tmp160594
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
         __tmp160595
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp160594
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args160304%_
        (apply make-instance gxc#!class::t _%$args160304%_)))
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
      (let ((__tmp160597 (list gxc#!procedure::t))
            (__tmp160596 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp160597
         '()
         __tmp160596
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args160301%_
        (apply make-instance gxc#!predicate::t _%$args160301%_)))
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
      (let ((__tmp160599 (list gxc#!procedure::t))
            (__tmp160598 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp160599
         '()
         __tmp160598
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args160298%_
        (apply make-instance gxc#!constructor::t _%$args160298%_)))
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
      (let ((__tmp160601 (list gxc#!procedure::t))
            (__tmp160600 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp160601
         '(slot checked?)
         __tmp160600
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args160295%_
        (apply make-instance gxc#!accessor::t _%$args160295%_)))
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
      (let ((__tmp160603 (list gxc#!procedure::t))
            (__tmp160602 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp160603
         '(slot checked?)
         __tmp160602
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args160292%_
        (apply make-instance gxc#!mutator::t _%$args160292%_)))
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
      (let ((__tmp160605 (list gxc#!type::t))
            (__tmp160604 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp160605
         '(methods)
         __tmp160604
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args160289%_
        (apply make-instance gxc#!interface::t _%$args160289%_)))
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
      (let ((__tmp160607 (list gxc#!procedure::t))
            (__tmp160606
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp160607
         '(arity dispatch inline inline-typedecl)
         __tmp160606
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args160286%_
        (apply make-instance gxc#!lambda::t _%$args160286%_)))
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
      (let ((__tmp160609 (list gxc#!procedure::t))
            (__tmp160608 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp160609
         '(clauses)
         __tmp160608
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args160283%_
        (apply make-instance gxc#!case-lambda::t _%$args160283%_)))
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
      (let ((__tmp160611 (list gxc#!procedure::t))
            (__tmp160610
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp160611
         '(table dispatch)
         __tmp160610
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args160280%_
        (apply make-instance gxc#!kw-lambda::t _%$args160280%_)))
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
      (let ((__tmp160613 (list gxc#!procedure::t))
            (__tmp160612 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp160613
         '(keys main)
         __tmp160612
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args160277%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args160277%_)))
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
      (let ((__tmp160614 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp160614
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args160274%_
        (apply make-instance gxc#!primitive::t _%$args160274%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp160616 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp160615 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp160616
         '()
         __tmp160615
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args160271%_
        (apply make-instance gxc#!primitive-predicate::t _%$args160271%_)))
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
      (let ((__tmp160618 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp160617 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp160618
         '()
         __tmp160617
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args160268%_
        (apply make-instance gxc#!primitive-lambda::t _%$args160268%_)))
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
      (let ((__tmp160620 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp160619 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp160620
         '()
         __tmp160619
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args160265%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args160265%_)))
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
      (lambda (_%self160252%_)
        (let ((_%self160255%_ _%self160252%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self160255%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self160115%_ _%klass160116%_)
        (let ((_%self160119%_ _%self160115%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self160119%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160119%_
             _%klass160116%_
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
      (lambda (_%self159805%_
               _%id159806%_
               _%super159807%_
               _%slots159808%_
               _%ctor-method159809%_
               _%struct?159810%_
               _%final?159811%_
               _%system?159812%_
               _%metaclass159813%_)
        (let ((_%self159816%_ _%self159805%_))
          (let _%lp159827%_ ((_%rest159829%_ _%super159807%_))
            (let* ((_%rest159830159838%_ _%rest159829%_)
                   (_%else159832159846%_ (lambda () '#!void))
                   (_%K159834159852%_
                    (lambda (_%rest159849%_ _%super-id159850%_)
                      (if (let ((__tmp160621
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id159806%_ '()))
                                  _%super-id159850%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp160621 '8 '#f '#f))
                          (let ((__tmp160622
                                 (cons '!class (cons _%id159806%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp160622
                             _%super-id159850%_))
                          '#!void)
                      (_%lp159827%_ _%rest159849%_))))
              (if (pair? _%rest159830159838%_)
                  (let ((_%hd159835159855%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest159830159838%_)))
                        (_%tl159836159857%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest159830159838%_))))
                    (let* ((_%super-id159860%_ _%hd159835159855%_)
                           (_%rest159862%_ _%tl159836159857%_))
                      (_%K159834159852%_ _%rest159862%_ _%super-id159860%_)))
                  '#!void)))
          (let* ((_%ctor-method159913%_
                  (let ((_%$e159864%_ _%ctor-method159809%_))
                    (if _%$e159864%_
                        _%$e159864%_
                        (let _%lp159867%_ ((_%rest159869%_ _%super159807%_)
                                           (_%method159870%_ '#f))
                          (let* ((_%rest159871159879%_ _%rest159869%_)
                                 (_%else159873159887%_
                                  (lambda () _%method159870%_))
                                 (_%K159875159901%_
                                  (lambda (_%rest159890%_ _%super-id159891%_)
                                    (let* ((_%klass159893%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id159806%_ '()))
                                             _%super-id159891%_))
                                           (_%$e159895%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass159893%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e159895%_
                                          ((lambda (_%ctor-method159898%_)
                                             (if _%method159870%_
                                                 (if (eq? _%ctor-method159898%_
                                                          _%method159870%_)
                                                     (_%lp159867%_
                                                      _%rest159890%_
                                                      _%ctor-method159898%_)
                                                     (let ((__tmp160623
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id159806%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp160623
                _%method159870%_
                _%ctor-method159898%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp159867%_
                                                  _%rest159890%_
                                                  _%ctor-method159898%_)))
                                           _%$e159895%_)
                                          (_%lp159867%_
                                           _%rest159890%_
                                           _%method159870%_))))))
                            (if (pair? _%rest159871159879%_)
                                (let ((_%hd159876159904%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest159871159879%_)))
                                      (_%tl159877159906%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest159871159879%_))))
                                  (let* ((_%super-id159909%_
                                          _%hd159876159904%_)
                                         (_%rest159911%_ _%tl159877159906%_))
                                    (_%K159875159901%_
                                     _%rest159911%_
                                     _%super-id159909%_)))
                                (_%else159873159887%_)))))))
                 (_g160624_
                  (let ((__tmp160628
                         (lambda (_%klass-id159915%_)
                           (cons _%klass-id159915%_
                                 (let ((__tmp160629
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id159806%_ '()))
                                         _%klass-id159915%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp160629
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp160626
                         (lambda (_%klass-id159917%_)
                           (let ((__tmp160627
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id159806%_ '()))
                                   _%klass-id159917%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp160627
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp160628
                     __tmp160626
                     eq?
                     identity
                     '()
                     _%super159807%_))))
            (begin
              (let ((_g160625_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g160624_)
                           (##values-length _g160624_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g160625_ 2)))
                    (error "Context expects 2 values" _g160625_)))
              (let ((_%precedence-list159919%_
                     (let () (declare (not safe)) (##values-ref _g160624_ 0)))
                    (_%base-struct159920%_
                     (let () (declare (not safe)) (##values-ref _g160624_ 1))))
                (let* ((_%precedence-list159964%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id159806%_ '(t object class)))
                            _%precedence-list159919%_
                            (if (memq 'object::t _%precedence-list159919%_)
                                _%precedence-list159919%_
                                (if _%system?159812%_
                                    (if (memq 't::t _%precedence-list159919%_)
                                        _%precedence-list159919%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list159919%_
                                           '(t::t))))
                                    (let _%loop159926%_ ((_%tail159928%_
                                                          _%precedence-list159919%_)
                                                         (_%head159929%_ '()))
                                      (let* ((_%tail159930159938%_
                                              _%tail159928%_)
                                             (_%else159932159946%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head159929%_))))
                                             (_%K159934159952%_
                                              (lambda (_%rest159949%_
                                                       _%hd159950%_)
                                                (if (eq? _%hd159950%_ 't::t)
                                                    (let ((__tmp160630
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail159928%_)))
              (declare (not safe))
              (__foldl1 cons __tmp160630 _%head159929%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop159926%_
                                                     _%rest159949%_
                                                     (cons _%hd159950%_
                                                           _%head159929%_))))))
                                        (if (pair? _%tail159930159938%_)
                                            (let ((_%hd159935159955%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail159930159938%_)))
                                                  (_%tl159936159957%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail159930159938%_))))
                                              (let* ((_%hd159960%_
                                                      _%hd159935159955%_)
                                                     (_%rest159962%_
                                                      _%tl159936159957%_))
                                                (_%K159934159952%_
                                                 _%rest159962%_
                                                 _%hd159960%_)))
                                            (_%else159932159946%_))))))))
                       (_%fields159966%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id159806%_ '()))
                         _%base-struct159920%_
                         _%precedence-list159964%_
                         _%slots159808%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159816%_
                     _%id159806%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159816%_
                     _%super159807%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159816%_
                     _%precedence-list159964%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159816%_
                     _%slots159808%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159816%_
                     _%fields159966%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159816%_
                     _%ctor-method159913%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159816%_
                     _%struct?159810%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159816%_
                     _%final?159811%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159816%_
                     _%metaclass159813%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self159969%_
               _%id159970%_
               _%super159971%_
               _%precedence-list159972%_
               _%slots159973%_
               _%fields159974%_
               _%constructor159975%_
               _%struct?159976%_
               _%final?159977%_
               _%system?159978%_
               _%metaclass159979%_
               _%methods159980%_)
        (let ((_%self159983%_ _%self159969%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159983%_
             _%id159970%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159983%_
             _%super159971%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159983%_
             _%precedence-list159972%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159983%_
             _%slots159973%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159983%_
             _%fields159974%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159983%_
             _%constructor159975%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159983%_
             _%struct?159976%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159983%_
             _%final?159977%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159983%_
             _%metaclass159979%_
             '10
             '#f
             '#f))
          (if _%methods159980%_
              (let ((__tmp160631
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods159980%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self159983%_
                 __tmp160631
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g160632_
        (let ((_g160633_ (let () (declare (not safe)) (##length _g160632_))))
          (cond ((let () (declare (not safe)) (##fx= _g160633_ 9))
                 (apply gxc#!class:::init!__0 _g160632_))
                ((let () (declare (not safe)) (##fx= _g160633_ 12))
                 (apply gxc#!class:::init!__1 _g160632_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g160632_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where159657%_
               _%base-struct159658%_
               _%precedence-list159659%_
               _%direct-slots159660%_)
        (let* ((_%base-fields159662%_
                (if _%base-struct159658%_
                    (let ((__tmp160634
                           (gxc#optimizer-resolve-class
                            _%where159657%_
                            _%base-struct159658%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp160634 '5 '#f '#f))
                    '()))
               (_%r-fields159664%_ (reverse _%base-fields159662%_))
               (_%seen-slots159672%_
                (let ((_%tab159666%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g159667159669%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab159666%_ _%g159667159669%_ '#t)))
                   _%base-fields159662%_)
                  _%tab159666%_))
               (_%process-slot159676%_
                (lambda (_%slot159674%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots159672%_ _%slot159674%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots159672%_
                           _%slot159674%_
                           '#t))
                        (set! _%r-fields159664%_
                              (cons _%slot159674%_ _%r-fields159664%_)))))))
          (for-each
           (lambda (_%mixin159679%_)
             (let ((_%klass159681%_
                    (gxc#optimizer-resolve-class
                     _%where159657%_
                     _%mixin159679%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass159681%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot159676%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass159681%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list159659%_)
          (for-each _%process-slot159676%_ _%direct-slots159660%_)
          (let () (declare (not safe)) (##reverse _%r-fields159664%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass159616%_ _%slot159617%_)
        (let _%lp159619%_ ((_%rest159621%_
                            (##structure-ref
                             _%klass159616%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset159622%_ '1))
          (let* ((_%rest159623159631%_ _%rest159621%_)
                 (_%else159625159639%_
                  (lambda ()
                    (let ((__tmp160636
                           (##structure-ref
                            _%klass159616%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp160635
                           (##structure-ref
                            _%klass159616%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp160636
                       __tmp160635
                       _%slot159617%_))))
                 (_%K159627159645%_
                  (lambda (_%rest159642%_ _%s159643%_)
                    (if (eq? _%s159643%_ _%slot159617%_)
                        _%offset159622%_
                        (_%lp159619%_
                         _%rest159642%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset159622%_ '1)))))))
            (if (pair? _%rest159623159631%_)
                (let ((_%hd159628159648%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest159623159631%_)))
                      (_%tl159629159650%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest159623159631%_))))
                  (let* ((_%s159653%_ _%hd159628159648%_)
                         (_%rest159655%_ _%tl159629159650%_))
                    (_%K159627159645%_ _%rest159655%_ _%s159653%_)))
                (_%else159625159639%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass159574%_ _%slot159575%_)
        (if (gxc#!class-struct-slot? _%klass159574%_ _%slot159575%_)
            _%klass159574%_
            (let _%lp159577%_ ((_%rest159579%_
                                (##structure-ref
                                 _%klass159574%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest159580159588%_ _%rest159579%_)
                     (_%else159582159596%_ (lambda () '#f))
                     (_%K159584159604%_
                      (lambda (_%rest159599%_ _%super159600%_)
                        (let ((_%super-class159602%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass159574%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot159575%_ '())))
                                _%super159600%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class159602%_
                               _%slot159575%_)
                              _%super-class159602%_
                              (_%lp159577%_ _%rest159599%_))))))
                (if (pair? _%rest159580159588%_)
                    (let ((_%hd159585159607%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest159580159588%_)))
                          (_%tl159586159609%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest159580159588%_))))
                      (let* ((_%super159612%_ _%hd159585159607%_)
                             (_%rest159614%_ _%tl159586159609%_))
                        (_%K159584159604%_ _%rest159614%_ _%super159612%_)))
                    (_%else159582159596%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass159571%_ _%slot159572%_)
        (if (##structure-ref _%klass159571%_ '7 gxc#!class::t '#f)
            (memq _%slot159572%_
                  (##structure-ref _%klass159571%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self159556%_ _%id159557%_)
        (let ((_%self159560%_ _%self159556%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159560%_
             _%id159557%_
             '1
             '#f
             '#f))
          (let ((__tmp160637
                 (let ((__obj160569
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
                      __obj160569
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160569
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160569
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj160569)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159560%_
             __tmp160637
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self159419%_ _%id159420%_)
        (let ((_%self159423%_ _%self159419%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159423%_
             _%id159420%_
             '1
             '#f
             '#f))
          (let ((__tmp160638
                 (let ((__obj160570
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
                      __obj160570
                      _%id159420%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160570
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj160570)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159423%_
             __tmp160638
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
      (lambda (_%self159280%_ _%id159281%_ _%slot159282%_ _%checked?159283%_)
        (let ((_%self159286%_ _%self159280%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159286%_
             _%id159281%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159286%_
             _%slot159282%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159286%_
             _%checked?159283%_
             '4
             '#f
             '#f))
          (let ((__tmp160639
                 (let ((__obj160571
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
                     (##unchecked-structure-set! __obj160571 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160571
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp160640 (cons _%id159281%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160571
                      __tmp160640
                      '3
                      '#f
                      '#f))
                   __obj160571)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159286%_
             __tmp160639
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self159141%_ _%id159142%_ _%slot159143%_ _%checked?159144%_)
        (let ((_%self159147%_ _%self159141%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159147%_
             _%id159142%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159147%_
             _%slot159143%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159147%_
             _%checked?159144%_
             '4
             '#f
             '#f))
          (let ((__tmp160641
                 (let ((__obj160572
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
                      __obj160572
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160572
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp160642 (cons _%id159142%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160572
                      __tmp160642
                      '3
                      '#f
                      '#f))
                   __obj160572)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159147%_
             __tmp160641
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords158984%_
               _%signature158981158985%_
               _%self158987%_
               _%arity158988%_
               _%dispatch158989%_)
        (let* ((_%signature158991%_
                (if (eq? _%signature158981158985%_ absent-value)
                    '#f
                    _%signature158981158985%_))
               (_%self158994%_ _%self158987%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self158994%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158994%_
             _%arity158988%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158994%_
             _%dispatch158989%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158994%_
             _%signature158991%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords159009%_ . _%args159010%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords159009%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159009%_
                  'signature:
                  absent-value))
               _%args159010%_)))
    (define gxc#!lambda:::init!
      (lambda _%args158982159016%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args158982159016%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords158824%_
               _%signature158821158825%_
               _%self158827%_
               _%clauses158828%_)
        (let* ((_%signature158830%_
                (if (eq? _%signature158821158825%_ absent-value)
                    '#f
                    _%signature158821158825%_))
               (_%self158833%_ _%self158827%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self158833%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158833%_
             _%signature158830%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158833%_
             _%clauses158828%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords158848%_ . _%args158849%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords158848%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords158848%_
                  'signature:
                  absent-value))
               _%args158849%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args158822158855%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args158822158855%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self158682%_ _%tab158683%_ _%dispatch158684%_)
        (let ((_%self158687%_ _%self158682%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self158687%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158687%_
             _%tab158683%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158687%_
             _%dispatch158684%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self158544%_ _%keys158545%_ _%main158546%_)
        (let ((_%self158549%_ _%self158544%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self158549%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158549%_
             _%keys158545%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158549%_
             _%main158546%_
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
      (lambda (_%self158163%_ _%id158164%_)
        (let ((_%self158167%_ _%self158163%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158167%_
             _%id158164%_
             '1
             '#f
             '#f))
          (let ((__tmp160643
                 (let ((__obj160573
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
                      __obj160573
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160573
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160573
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj160573)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158167%_
             __tmp160643
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
      (lambda (_%klass158032%_)
        (let ((_%$e158034%_
               (##structure-ref _%klass158032%_ '11 gxc#!class::t '#f)))
          (if _%$e158034%_
              _%$e158034%_
              (let ((_%tab158038%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass158032%_
                 _%tab158038%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab158038%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass158023%_ _%method158024%_)
        (let ((_%tab158025158027%_
               (##structure-ref _%klass158023%_ '11 gxc#!class::t '#f)))
          (if _%tab158025158027%_
              (let ((_%tab158030%_ _%tab158025158027%_))
                (declare (not safe))
                (hash-get _%tab158030%_ _%method158024%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a158011%_ _%type-b158012%_)
        (if _%type-a158011%_
            (if _%type-b158012%_
                (let ((_%$e158014%_ (eq? _%type-a158011%_ _%type-b158012%_)))
                  (if _%$e158014%_
                      _%$e158014%_
                      (let ((_%$e158017%_
                             (eq? (##structure-ref
                                   _%type-b158012%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e158017%_
                            _%$e158017%_
                            (let ((_%$e158020%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a158011%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b158012%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e158020%_
                                  _%$e158020%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a158011%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b158012%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a158011%_
                                           _%type-b158012%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a157962%_ _%klass-b157963%_)
        (let ((_%$e157965%_
               (eq? (##structure-ref _%klass-a157962%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b157963%_ '1 gxc#!type::t '#f))))
          (if _%$e157965%_
              _%$e157965%_
              (let ((_%klass-id-b157968%_
                     (##structure-ref _%klass-b157963%_ '1 gxc#!type::t '#f))
                    (_%precedence-list157969%_
                     (##structure-ref _%klass-a157962%_ '3 gxc#!class::t '#f)))
                (let _%loop157971%_ ((_%rest157973%_
                                      _%precedence-list157969%_))
                  (let* ((_%rest157974157982%_ _%rest157973%_)
                         (_%else157976157990%_ (lambda () '#f))
                         (_%K157978157999%_
                          (lambda (_%rest157993%_ _%klass-name157994%_)
                            (let ((_%$e157996%_
                                   (eq? (let ((__tmp160644
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a157962%_
                                                            (cons _%klass-b157963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name157994%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp160644
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b157968%_)))
                              (if _%$e157996%_
                                  _%$e157996%_
                                  (_%loop157971%_ _%rest157993%_))))))
                    (if (pair? _%rest157974157982%_)
                        (let ((_%hd157979158002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest157974157982%_)))
                              (_%tl157980158004%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest157974157982%_))))
                          (let* ((_%klass-name158007%_ _%hd157979158002%_)
                                 (_%rest158009%_ _%tl157980158004%_))
                            (_%K157978157999%_
                             _%rest158009%_
                             _%klass-name158007%_)))
                        (_%else157976157990%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type157960%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type157960%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type157960%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc157949%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc157949%_ 'gxc#!procedure::t))
            (let ((_%proc157952%_ _%proc157949%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc157952%_ '2 '#f '#f))
                  (let ((__tmp160645
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc157952%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp160645 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc157949%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym157931%_ _%type157932%_ _%local?157933%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type157932%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym157931%_
                     _%type157932%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym157931%_ '" " _%type157932%_))
        (let ((_%table157935%_
               (if _%local?157933%_
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
          (hash-put! _%table157935%_ _%sym157931%_ _%type157932%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym157940%_ _%type157941%_)
        (let ((_%local?157943%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym157940%_
           _%type157941%_
           _%local?157943%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g160646_
        (let ((_g160647_ (let () (declare (not safe)) (##length _g160646_))))
          (cond ((let () (declare (not safe)) (##fx= _g160647_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g160646_))
                ((let () (declare (not safe)) (##fx= _g160647_ 3))
                 (apply gxc#optimizer-declare-type!__% _g160646_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g160646_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym157925%_ _%type157926%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type157926%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym157925%_
                     _%type157926%_)))
        (let ((_%table157928%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp160648
                 (let () (declare (not safe)) (struct->list _%type157926%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym157925%_ '" " __tmp160648))
          (let ()
            (declare (not safe))
            (hash-put! _%table157928%_ _%sym157925%_ _%type157926%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table157928%_ _%type157926%_ _%sym157925%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym157920%_ _%type157921%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type157921%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym157920%_
                     _%type157921%_)))
        (let ((_%table157923%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table157923%_ _%sym157920%_))
              '#!void
              (begin
                (let ((__tmp160649
                       (let ()
                         (declare (not safe))
                         (struct->list _%type157921%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym157920%_
                   '" "
                   __tmp160649))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table157923%_ _%sym157920%_ _%type157921%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table157923%_
                   _%type157921%_
                   _%sym157920%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym157918%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym157918%_))
        (let ((__tmp160650
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp160650 _%sym157918%_))
        (let ((__tmp160651
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp160651 _%sym157918%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t157886%_
               _%method157887%_
               _%sym157888%_
               _%rebind?157889%_)
        (let ((__tmp160652
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp160652 _%sym157888%_ '#t))
        (let ((_%klass157891%_ (gxc#optimizer-lookup-class _%type-t157886%_)))
          (if _%klass157891%_
              (let* ((_%vtab157893%_ (gxc#!class-method-table _%klass157891%_))
                     (_%$e157895%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab157893%_ _%method157887%_))))
                (if _%$e157895%_
                    ((lambda (_%existing157898%_)
                       (if _%rebind?157889%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t157886%_
                                '" "
                                _%method157887%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab157893%_
                                _%method157887%_
                                _%sym157888%_)))
                           (if (eq? _%existing157898%_ _%sym157888%_)
                               '#!void
                               (let ((__tmp160653
                                      (cons 'bind-method!
                                            (cons _%type-t157886%_
                                                  (cons _%method157887%_
                                                        (cons _%sym157888%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp160653
                                  _%method157887%_)))))
                     _%$e157895%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t157886%_
                         '" "
                         _%method157887%_
                         '" => "
                         _%sym157888%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab157893%_
                         _%method157887%_
                         _%sym157888%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t157886%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t157907%_ _%method157908%_ _%sym157909%_)
        (let ((_%rebind?157911%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t157907%_
           _%method157908%_
           _%sym157909%_
           _%rebind?157911%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g160654_
        (let ((_g160655_ (let () (declare (not safe)) (##length _g160654_))))
          (cond ((let () (declare (not safe)) (##fx= _g160655_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g160654_))
                ((let () (declare (not safe)) (##fx= _g160655_ 4))
                 (apply gxc#optimizer-declare-method!__% _g160654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g160654_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym157871%_)
        (let ((_%$e157873%_
               (let ((__tmp160656
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym157871%_ __tmp160656))))
          (if _%$e157873%_
              _%$e157873%_
              (let ((_%$e157882%_
                     (let ((_%ht157875157877%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht157875157877%_
                           (let ((_%ht157880%_ _%ht157875157877%_))
                             (declare (not safe))
                             (hash-get _%ht157880%_ _%sym157871%_))
                           '#f))))
                (if _%$e157882%_
                    _%$e157882%_
                    (let ((__tmp160657
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp160657 _%sym157871%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym157863%_)
        (let ((_%type157864157866%_ (gxc#optimizer-lookup-type _%sym157863%_)))
          (if _%type157864157866%_
              (let ((_%type157869%_ _%type157864157866%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type157869%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type157869%_ '1 '#f '#f)))
                    _%type157869%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym157859%_)
        (let ((_%table157861%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table157861%_ _%sym157859%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where157844%_ _%sym157845%_)
        (let ((_%$e157848%_ (gxc#optimizer-lookup-class _%sym157845%_)))
          (if _%$e157848%_
              ((lambda (_%g157850157852%_)
                 (let ((_%val157855%_ _%g157850157852%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val157855%_
                          'gxc#!class::t))
                       _%val157855%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val157855%_)))))
               _%$e157848%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where157844%_
                   _%sym157845%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass157842%_)
        (let ((__tmp160658
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp160658 _%klass157842%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t157839%_ _%method157840%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t157839%_)
         _%method157840%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym157837%_)
        (let ((__tmp160659
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp160659 _%sym157837%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e157719%_
                  (lambda (_%t157820%_)
                    (if (symbol? _%t157820%_)
                        (_%type-e157719%_
                         (gxc#optimizer-lookup-type _%t157820%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t157820%_
                               'gxc#!lambda::t))
                            (_%__lambda-type157721%_ _%t157820%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t157820%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type157723%_ _%t157820%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t157820%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type157725%_
                                     _%t157820%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t157820%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t157827%_ _%t157820%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t157827%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp160660
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t157827%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp160660
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t157820%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t157820%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type157720%_
                  (lambda (_%t157808%_)
                    (let ((_%t157811%_ _%t157808%_))
                      (_%__lambda-type157721%_ _%t157811%_))))
                 (_%__lambda-type157721%_
                  (lambda (_%t157796%_)
                    (let ((_%t157799%_ _%t157796%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t157799%_ '4 '#f '#f))
                          (_%type-e157719%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t157799%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t157799%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp160661
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t157799%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp160661
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type157722%_
                  (lambda (_%t157784%_)
                    (let ((_%t157787%_ _%t157784%_))
                      (_%__kw-lambda-type157723%_ _%t157787%_))))
                 (_%__kw-lambda-type157723%_
                  (lambda (_%t157772%_)
                    (let ((_%t157775%_ _%t157772%_))
                      (_%type-e157719%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t157775%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type157724%_
                  (lambda (_%t157760%_)
                    (let ((_%t157763%_ _%t157760%_))
                      (_%__kw-lambda-primary-type157725%_ _%t157763%_))))
                 (_%__kw-lambda-primary-type157725%_
                  (lambda (_%t157746%_)
                    (let ((_%t157749%_ _%t157746%_))
                      (_%type-e157719%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t157749%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1157727%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2157729%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result157731%_
                  (if _%ht1157727%_
                      (let () (declare (not safe)) (hash->list _%ht1157727%_))
                      '()))
                 (_%result157733%_
                  (if _%ht2157729%_
                      (let ((__tmp160662
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2157729%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result157731%_ __tmp160662))
                      _%result157731%_)))
            (for-each
             (lambda (_%p157736%_)
               (let* ((_%t157738%_ (cdr _%p157736%_))
                      (_%tr157740%_ (_%type-e157719%_ _%t157738%_)))
                 (set-cdr! _%p157736%_ _%tr157740%_)))
             _%result157733%_)
            (list-sort
             (lambda (_%a157743%_ _%b157744%_)
               (let ((__tmp160664 (symbol->string (car _%a157743%_)))
                     (__tmp160663 (symbol->string (car _%b157744%_))))
                 (declare (not safe))
                 (##string<? __tmp160664 __tmp160663)))
             _%result157733%_)))))))
